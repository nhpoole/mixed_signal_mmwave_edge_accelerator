////////////////////////////////////////////////////////////////////////////////
//
// Filename:  ../rtl/cordic_polar_to_rect.v
// {{{
// Project: A series of CORDIC related projects
//
// Purpose: This file executes a vector rotation on the values
//  (i_xval, i_yval).  This vector is rotated left by
// i_phase.  i_phase is given by the angle, in radians, multiplied by
// 2^32/(2pi).  In that fashion, a two pi value is zero just as a zero
// angle is zero.
//
// This particular version of the CORDIC processes one value at a
// time in a sequential, vs pipelined or parallel, fashion.
//
// This core was generated via a core generator using the following command
// line:
//
//  ./gencordic -vca -f ../rtl/cordic_polar_to_rect.v -v -i 16 -o 16 -p 16 -t sp2r -x 2 -c
//
// Creator: Dan Gisselquist, Ph.D.
//  Gisselquist Technology, LLC
//
////////////////////////////////////////////////////////////////////////////////
// }}}
// Copyright (C) 2017-2021, Gisselquist Technology, LLC
// {{{
// This file is part of the CORDIC related project set.
//
// The CORDIC related project set is free software (firmware): you can
// redistribute it and/or modify it under the terms of the GNU Lesser General
// Public License as published by the Free Software Foundation, either version
// 3 of the License, or (at your option) any later version.
//
// The CORDIC related project set is distributed in the hope that it will be
// useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTIBILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser
// General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  (It's in the $(ROOT)/doc directory.  Run make
// with no target there if the PDF file isn't present.)  If not, see
// License: LGPL, v3, as defined and found on www.gnu.org,
//  http://www.gnu.org/licenses/lgpl.html
//
////////////////////////////////////////////////////////////////////////////////
//
// }}}
module cordic_polar_to_rect #(
    // {{{
    // These parameters are fixed by the core generator.  They
    // have been used in the definitions of internal constants,
    // so they can't really be changed here.
    parameter IW=16,    // The number of bits in our inputs
    parameter OW=16,    // The number of output bits to produce
                        // NSTAGES=13,
                        // XTRA= 3,// Extra bits for internal precision
    parameter WW=19,    // Our working bit-width
    parameter PW=16     // Bits in our phase variables
    // }}}
) (
    // {{{
    input wire    i_clk, i_reset, i_stb,
    input wire    i_aux,
    input wire signed [(IW-1):0] i_xval, i_yval,
    input wire  [(PW-1):0] i_phase,
    output wire    o_busy,
    output reg    o_done,
    output reg signed [(OW-1):0] o_xval, o_yval,
    output reg    o_aux
    // }}}
);
    // First step: expand our input to our working width.
    // {{{
    // This is going to involve extending our input by one
    // (or more) bits in addition to adding any xtra bits on
    // bits on the right.  The one bit extra on the left is to
    // allow for any accumulation due to the cordic gain
    // within the algorithm.
    // 
    wire signed [(WW-1):0] e_xval, e_yval;
    assign e_xval = { {i_xval[(IW-1)]}, i_xval, {(WW-IW-1){1'b0}} };
    assign e_yval = { {i_yval[(IW-1)]}, i_yval, {(WW-IW-1){1'b0}} };

    // }}}
    // Declare variables for all of the separate stages
    // {{{
    reg signed [(WW-1):0] xv, prex, yv, prey;
    reg  [(PW-1):0] ph, preph;
    reg    idle, pre_valid;
    reg  [3:0]  state;

    reg    aux;
    // }}}

    //
    // Handle the auxilliary logic.
    // {{{
    // The auxilliary bit is designed so that you can place a valid bit into
    // the CORDIC function, and see when it comes out.  While the bit is
    // allowed to be anything, the requirement of this bit is that it *must*
    // be aligned with the output when done.  That is, if i_xval and i_yval
    // are input together with i_aux, then when o_xval and o_yval are set
    // to this value, o_aux *must* contain the value that was in i_aux.
    //

    initial aux = 0;
    always @(posedge i_clk) begin
        if (i_reset)
            aux <= 0;
        else if ((i_stb)&&(!o_busy))
            aux <= i_aux;
    end
    // }}}

    // First step, get rid of all but the last 45 degrees
    // {{{
    // The resulting phase needs to be between -45 and 45
    // degrees but in units of normalized phase
    //
    // We'll do this by walking through all possible quick phase
    // shifts necessary to constrain the input to within +/- 45
    // degrees.
    always @(posedge i_clk) begin
        case (i_phase[(PW-1):(PW-3)])
            3'b000: begin // 0 .. 45, No change
                // {{{
                prex  <=  e_xval;
                prey  <=  e_yval;
                preph <= i_phase;
            end
            // }}}
            3'b001: begin // 45 .. 90
                // {{{
                prex  <= -e_yval;
                prey  <=  e_xval;
                preph <= i_phase - 16'h4000;
            end
            // }}}
            3'b010: begin // 90 .. 135
                // {{{
                prex  <= -e_yval;
                prey  <=  e_xval;
                preph <= i_phase - 16'h4000;
            end
            // }}}
            3'b011: begin // 135 .. 180
                // {{{
                prex  <= -e_xval;
                prey  <= -e_yval;
                preph <= i_phase - 16'h8000;
            end
            // }}}
            3'b100: begin // 180 .. 225
                // {{{
                prex  <= -e_xval;
                prey  <= -e_yval;
                preph <= i_phase - 16'h8000;
            end
            // }}}
            3'b101: begin // 225 .. 270
                // {{{
                prex  <=  e_yval;
                prey  <= -e_xval;
                preph <= i_phase - 16'hc000;
            end
            // }}}
            3'b110: begin // 270 .. 315
                // {{{
                prex  <=  e_yval;
                prey  <= -e_xval;
                preph <= i_phase - 16'hc000;
            end
            // }}}
            3'b111: begin // 315 .. 360, No change
                // {{{
                prex  <=  e_xval;
                prey  <=  e_yval;
                preph <= i_phase;
            end
            // }}}
        endcase
    end
    // }}}

    // Cordic angle table
    // {{{
    // In many ways, the key to this whole algorithm lies in the angles
    // necessary to do this.  These angles are also our basic reason for
    // building this CORDIC in C++: Verilog just can't parameterize this
    // much.  Further, these angle's risk becoming unsupportable magic
    // numbers, hence we define these and set them in C++, based upon
    // the needs of our problem, specifically the number of stages and
    // the number of bits required in our phase accumulator
    //
    reg [15:0] cordic_angle [0:15];
    reg [15:0] cangle;

    initial cordic_angle[ 0] = 16'h12e4; //  26.565051 deg
    initial cordic_angle[ 1] = 16'h09fb; //  14.036243 deg
    initial cordic_angle[ 2] = 16'h0511; //   7.125016 deg
    initial cordic_angle[ 3] = 16'h028b; //   3.576334 deg
    initial cordic_angle[ 4] = 16'h0145; //   1.789911 deg
    initial cordic_angle[ 5] = 16'h00a2; //   0.895174 deg
    initial cordic_angle[ 6] = 16'h0051; //   0.447614 deg
    initial cordic_angle[ 7] = 16'h0028; //   0.223811 deg
    initial cordic_angle[ 8] = 16'h0014; //   0.111906 deg
    initial cordic_angle[ 9] = 16'h000a; //   0.055953 deg
    initial cordic_angle[10] = 16'h0005; //   0.027976 deg
    initial cordic_angle[11] = 16'h0002; //   0.013988 deg
    initial cordic_angle[12] = 16'h0001; //   0.006994 deg
    initial cordic_angle[13] = 16'h0000; //   0.003497 deg
    initial cordic_angle[14] = 16'h0000; //   0.001749 deg
    initial cordic_angle[15] = 16'h0000; //   0.000874 deg
    // {{{
    // Std-Dev    : 0.00 (Units)
    // Phase Quantization: 0.000183 (Radians)
    // Gain is 1.164435
    // You can annihilate this gain by multiplying by 32'hdbd95b16
    // and right shifting by 32 bits.
    // }}}
    // }}}

    // idle
    // {{{
    initial idle = 1'b1;
    always @(posedge i_clk) begin
        if (i_reset)
            idle <= 1'b1;
        else if (i_stb)
            idle <= 1'b0;
        else if (state == 12)
            idle <= 1'b1;
    end
    // }}}

    // pre_valid
    // {{{
    initial pre_valid = 1'b0;
    always @(posedge i_clk) begin
        if (i_reset)
            pre_valid <= 1'b0;
        else
            pre_valid <= (i_stb)&&(idle);
    end
    // }}}

    // cangle - CORDIC angle table lookup
    // {{{
    always @(posedge i_clk) begin
        cangle <= cordic_angle[state];
    end
    // }}}

    // state
    // {{{
    initial state = 0;
    always @(posedge i_clk) begin
        if (i_reset)
            state <= 0;
        else if (idle)
            state <= 0;
        else if (state == 12)
            state <= 0;
        else
            state <= state + 1;
        // }}}
    end

    // CORDIC rotations
    // {{{
    // Here's where we are going to put the actual CORDIC
    // we've been studying and discussing.  Everything up to
    // this point has simply been necessary preliminaries.
    always @(posedge i_clk) begin
        if (pre_valid) begin
            // {{{
            xv <= prex;
            yv <= prey;
            ph <= preph;
            // }}}
        end
        else if (ph[PW-1]) begin
            // {{{
            xv <= xv + (yv >>> state);
            yv <= yv - (xv >>> state);
            ph <= ph + (cangle);
            // }}}
        end
        else begin
            // {{{
            xv <= xv - (yv >>> state);
            yv <= yv + (xv >>> state);
            ph <= ph - (cangle);
            // }}}
        end
    end
    // }}}

    // Round our result towards even
    // {{{
    wire [(WW-1):0] final_xv, final_yv;

    /*assign final_xv = xv + $signed({{(OW){1'b0}},
                xv[(WW-OW)],
                {(WW-OW-1){!xv[WW-OW]}} });
    assign final_yv = yv + $signed({{(OW){1'b0}},
                yv[(WW-OW)],
                {(WW-OW-1){!yv[WW-OW]}} });*/
    assign final_xv = xv + $signed({{(OW){1'b0}},
                xv[(WW-OW-1)],
                {(WW-OW-2){!xv[WW-OW-1]}} });
    assign final_yv = yv + $signed({{(OW){1'b0}},
                yv[(WW-OW-1)],
                {(WW-OW-2){!yv[WW-OW-1]}} });
    // }}}
    // o_done
    // {{{
    initial o_done = 1'b0;
    always @(posedge i_clk) begin
        if (i_reset)
            o_done <= 1'b0;
        else if (state >= 12)
            o_done <= 1'b1;
    end
    // }}}

    // Output assignments: o_xval, o_yval, o_aux
    // {{{
    initial o_aux = 0;
    always @(posedge i_clk) begin
        if (state >= 12) begin
            //o_xval <= final_xv[WW-1:WW-OW];
            //o_yval <= final_yv[WW-1:WW-OW];
            o_xval <= final_xv[WW-2:WW-OW-1];
            o_yval <= final_yv[WW-2:WW-OW-1];
            o_aux <= aux;
        end
    end
    // }}}

    assign o_busy = !idle;

    // Make Verilator happy with pre_.val
    // {{{
    // verilator lint_off UNUSED
    wire unused_val;
    //assign unused_val = &{ 1'b0,  final_xv[WW-OW-1:0], final_yv[WW-OW-1:0] };
    assign unused_val = &{ 1'b0, final_xv[WW-1], final_xv[WW-OW-2:0], final_yv[WW-1], final_yv[WW-OW-2:0] };
    // verilator lint_on UNUSED
    // }}}
endmodule
////////////////////////////////////////////////////////////////////////////////
//
// Filename:  ../rtl/cordic_rect_to_polar.v
// {{{
// Project: A series of CORDIC related projects
//
// Purpose: This is a rectangular to polar conversion routine based upon an
//  internal CORDIC implementation.  Basically, the input is
// provided in i_xval and i_yval.  The internal CORDIC rotator will rotate
// (i_xval, i_yval) until i_yval is approximately zero.  The resulting
// xvalue and phase will be placed into o_xval and o_phase respectively.
//
// This particular version of the polar to rectangular CORDIC converter
// converter processes a somple one at a time.  It is completely
// sequential, not parallel at all.
//
//
// This core was generated via a core generator using the following command
// line:
//
//  ./gencordic -vca -f ../rtl/cordic_rect_to_polar.v -v -i 16 -o 16 -p 16 -t sr2p -x 2 -c
//
// Creator: Dan Gisselquist, Ph.D.
//  Gisselquist Technology, LLC
//
////////////////////////////////////////////////////////////////////////////////
// }}}
// Copyright (C) 2017-2021, Gisselquist Technology, LLC
// {{{
// This file is part of the CORDIC related project set.
//
// The CORDIC related project set is free software (firmware): you can
// redistribute it and/or modify it under the terms of the GNU Lesser General
// Public License as published by the Free Software Foundation, either version
// 3 of the License, or (at your option) any later version.
//
// The CORDIC related project set is distributed in the hope that it will be
// useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTIBILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser
// General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  (It's in the $(ROOT)/doc directory.  Run make
// with no target there if the PDF file isn't present.)  If not, see
// License: LGPL, v3, as defined and found on www.gnu.org,
//  http://www.gnu.org/licenses/lgpl.html
//
////////////////////////////////////////////////////////////////////////////////
//
// }}}
module cordic_rect_to_polar #(
    // {{{
    parameter IW=16,    // The number of bits in our inputs
    parameter OW=16,    // The number of output bits to produce
                        // NSTAGES=13,
                        // XTRA= 4,// Extra bits for internal precision
    parameter WW=24,    // Our working bit-width
    parameter PW=16     // Bits in our phase variables
    // }}}
) (
    // {{{
    input wire    i_clk, i_reset, i_stb,
    input wire signed [(IW-1):0] i_xval, i_yval,
    input wire    i_aux,
    output wire    o_busy,
    output reg    o_done,
    output reg signed [(OW-1):0] o_mag,
    output reg  [(PW-1):0] o_phase,
    output reg    o_aux
    // }}}
);

    // First step: expand our input to our working width.
    // {{{
    // This is going to involve extending our input by one
    // (or more) bits in addition to adding any xtra bits on
    // bits on the right.  The one bit extra on the left is to
    // allow for any accumulation due to the cordic gain
    // within the algorithm.
    // 
    wire signed [(WW-1):0] e_xval, e_yval;
    assign e_xval = { {(2){i_xval[(IW-1)]}}, i_xval, {(WW-IW-2){1'b0}} };
    assign e_yval = { {(2){i_yval[(IW-1)]}}, i_yval, {(WW-IW-2){1'b0}} };

    // }}}
    // Declare variables for all of the separate stages
    // {{{
    reg signed [(WW-1):0] xv, yv, prex, prey;
    reg  [(PW-1):0] ph, preph;

    reg  aux;
    reg  idle, pre_valid;
    reg [3:0] state;

    wire  last_state;
    // }}}

    //
    // Handle the auxilliary logic.
    // {{{
    // The auxilliary bit is designed so that you can place a valid bit into
    // the CORDIC function, and see when it comes out.  While the bit is
    // allowed to be anything, the requirement of this bit is that it *must*
    // be aligned with the output when done.  That is, if i_xval and i_yval
    // are input together with i_aux, then when o_xval and o_yval are set
    // to this value, o_aux *must* contain the value that was in i_aux.
    //
    initial aux = 0;
    always @(posedge i_clk) begin
        if (i_reset)
            aux <= 0;
        else if ((i_stb)&&(!o_busy))
            aux <= i_aux;
    end
    // }}}

    // First stage, map to within +/- 45 degrees
    // {{{
    always @(posedge i_clk) begin
        case ({i_xval[IW-1], i_yval[IW-1]})
            2'b01: begin // Rotate by -315 degrees
                // {{{
                prex <=  e_xval - e_yval;
                prey <=  e_xval + e_yval;
                preph <= 16'he000;
            end
                // }}}
            2'b10: begin // Rotate by -135 degrees
                // {{{
                prex <= -e_xval + e_yval;
                prey <= -e_xval - e_yval;
                preph <= 16'h6000;
            end
                // }}}
            2'b11: begin // Rotate by -225 degrees
                // {{{
                prex <= -e_xval - e_yval;
                prey <=  e_xval - e_yval;
                preph <= 16'ha000;
            end
                // }}}
            // 2'b00:
            default: begin // Rotate by -45 degrees
                // {{{
                prex <=  e_xval + e_yval;
                prey <= -e_xval + e_yval;
                preph <= 16'h2000;
            end
            // }}}
        endcase
    end
    // }}}

    // Cordic angle table
    // {{{
    // In many ways, the key to this whole algorithm lies in the angles
    // necessary to do this.  These angles are also our basic reason for
    // building this CORDIC in C++: Verilog just can't parameterize this
    // much.  Further, these angle's risk becoming unsupportable magic
    // numbers, hence we define these and set them in C++, based upon
    // the needs of our problem, specifically the number of stages and
    // the number of bits required in our phase accumulator
    //
    reg [15:0] cordic_angle [0:15];
    reg [15:0] cangle;

    initial cordic_angle[ 0] = 16'h12e4; //  26.565051 deg
    initial cordic_angle[ 1] = 16'h09fb; //  14.036243 deg
    initial cordic_angle[ 2] = 16'h0511; //   7.125016 deg
    initial cordic_angle[ 3] = 16'h028b; //   3.576334 deg
    initial cordic_angle[ 4] = 16'h0145; //   1.789911 deg
    initial cordic_angle[ 5] = 16'h00a2; //   0.895174 deg
    initial cordic_angle[ 6] = 16'h0051; //   0.447614 deg
    initial cordic_angle[ 7] = 16'h0028; //   0.223811 deg
    initial cordic_angle[ 8] = 16'h0014; //   0.111906 deg
    initial cordic_angle[ 9] = 16'h000a; //   0.055953 deg
    initial cordic_angle[10] = 16'h0005; //   0.027976 deg
    initial cordic_angle[11] = 16'h0002; //   0.013988 deg
    initial cordic_angle[12] = 16'h0001; //   0.006994 deg
    initial cordic_angle[13] = 16'h0000; //   0.003497 deg
    initial cordic_angle[14] = 16'h0000; //   0.001749 deg
    initial cordic_angle[15] = 16'h0000; //   0.000874 deg
    // {{{
    // Std-Dev    : 0.00 (Units)
    // Phase Quantization: 0.000183 (Radians)
    // Gain is 1.646760
    // You can annihilate this gain by multiplying by 32'h9b74edae
    // and right shifting by 32 bits.
    // }}}
    // }}}

    assign last_state = (state >= 14);

    // idle
    // {{{
    initial idle = 1'b1;
    always @(posedge i_clk) begin
        if (i_reset)
            idle <= 1'b1;
        else if (i_stb)
            idle <= 1'b0;
        else if (last_state)
            idle <= 1'b1;
    end
    // }}}
    // pre_valid
    // {{{
    initial pre_valid = 1'b0;
    always @(posedge i_clk) begin
        if (i_reset)
            pre_valid <= 1'b0;
        else
            pre_valid <= (i_stb)&&(idle);
    end
    // }}}

    // state
    // {{{
    initial state = 0;
    always @(posedge i_clk) begin
        if (i_reset)
            state <= 0;
        else if (idle)
            state <= 0;
        else if (last_state)
            state <= 0;
        else
            state <= state + 1;
    end
    // }}}
    // cangle -- table lookup
    // {{{
    always @(posedge i_clk) begin
        cangle <= cordic_angle[state[3:0]];
    end
    // }}}
    // Actual CORDIC rotation
    // {{{
    // Here's where we are going to put the actual CORDIC
    // rectangular to polar loop.  Everything up to this
    // point has simply been necessary preliminaries.
    always @(posedge i_clk) begin
        if (pre_valid) begin
            // {{{
            xv <= prex;
            yv <= prey;
            ph <= preph;
            // }}}
        end
        else if (yv[(WW-1)]) begin // Below the axis
            // {{{
            // If the vector is below the x-axis, rotate by
            // the CORDIC angle in a positive direction.
            xv <= xv - (yv>>>state);
            yv <= yv + (xv>>>state);
            ph <= ph - cangle;
            // }}}
        end
        else begin
            // {{{
            // On the other hand, if the vector is above the
            // x-axis, then rotate in the other direction
            xv <= xv + (yv>>>state);
            yv <= yv - (xv>>>state);
            ph <= ph + cangle;
            // }}}
        end
    end
    // }}}

    // o_done
    // {{{
    always @(posedge i_clk) begin
        if (i_reset)
            o_done <= 1'b0;
        else if (last_state)
            o_done <= 1'b1;
    end
    // }}}
    // Round our magnitude towards even
    // {{{
    wire [(WW-1):0] final_mag;

    /*assign final_mag = xv + $signed({{(OW){1'b0}},
                xv[(WW-OW)],
                {(WW-OW-1){!xv[WW-OW]}} });*/
    assign final_mag = xv + $signed({{(OW){1'b0}},
                xv[(WW-OW-2)],
                {(WW-OW-3){!xv[WW-OW-2]}} });
    // }}}

    // Output assignments: o_mag, o_phase, and o_aux
    // {{{
    initial o_aux = 0;
    always @(posedge i_clk) begin
        if (last_state) begin
            //o_mag   <= final_mag[(WW-1):(WW-OW)];
            o_mag   <= final_mag[(WW-3):(WW-OW-2)];
            o_phase <= ph;
            o_aux   <= aux;
        end
    end
    // }}}
    assign o_busy = !idle;

    // Make Verilator happy with pre_.val
    // {{{
    // verilator lint_off UNUSED
    wire unused_val;
    //assign unused_val = &{ 1'b0, final_mag[WW-1], final_mag[(WW-OW-1):0] };
    assign unused_val = &{ 1'b0, final_mag[WW-1:WW-2], final_mag[(WW-OW-3):0] };
    // verilator lint_on UNUSED
    // }}}
endmodule
/* Top-Level Deconvolution Kernel Estimator. */

`define STATE_WIDTH 3
`define IDLE 0
`define COMPUTE_IIR_COEFFS_A0 1
`define COMPUTE_IIR_COEFFS_A1_B1 2
`define COMPUTE_IIR_COEFFS_A2 3
`define COMPUTE_IIR_COEFFS_B0_B2 4
`define COMPUTE_IIR_COEFFS_WAIT_1 5
`define COMPUTE_IIR_COEFFS_WAIT_2 6
`define RUN_KERNEL_EVAL 7

module deconv_kernel_estimator_top_level #(
    parameter DATA_WIDTH = 16,
    parameter ADC_BITS = 8,
    parameter FRAC_BITS = 13,
    parameter FILTER_ORDER = 2,
    parameter LATENCY = 4,
    parameter ADDR_WIDTH = 12,          /* Equal to ceil(log2(DEPTH))+1. */
    parameter DEPTH = 2048
)
(
    input clk,
    input rst_n,
    input load_en,
    input debug_en,
    input serial_in,
    input [1:0] sram_select,
    input frequency_adc_done,
    input amplitude_adc_done,
    input wire unsigned [ADC_BITS-1:0] sig_frequency,
    input wire unsigned [ADC_BITS-1:0] sig_amplitude,
    input adc_bypass_en,
    output reg serial_out,
    output reg serial_out_valid,
    output reg freq_eval_done
);

    reg [`STATE_WIDTH-1:0] state_r;
    wire eval_deconv_kernel;

    reg [ADDR_WIDTH-1:0] config_nfft;
    reg [ADDR_WIDTH-1:0] nfft_cntr;
    reg nfft_cntr_en;
    reg nfft_cntr_en_d1;

    reg wdata_valid;
    reg [DATA_WIDTH-1:0] parallel_in;
    reg debug_en_d1;
    reg debug_en_d2;
    wire [DATA_WIDTH-1:0] rdata_mux;

    reg unsigned [ADDR_WIDTH-3:0] coeff_table_base_addr;
    reg unsigned [ADDR_WIDTH-3:0] coeff_table_base_addr_bypass;
    reg signed [DATA_WIDTH-1:0] a_coeffs[FILTER_ORDER:0];
    reg signed [DATA_WIDTH-1:0] b_coeffs[FILTER_ORDER:0];
    reg eval_iir_freq_resp;
    reg unsigned [DATA_WIDTH-1:0] phase_mem_data[1:0];
    reg unsigned [ADDR_WIDTH-1:0] phase_mem_indices[1:0];
    reg unsigned [DATA_WIDTH-1:0] tf_val_magnitude;
    reg unsigned [DATA_WIDTH-1:0] tf_val_phase;
    reg tf_val_valid;

    reg phase_vec_ren;
    reg phase_vec_rwen;

    reg tf_coeff_ren;
    reg tf_coeff_rwen;
    reg unsigned [ADDR_WIDTH-1:0] tf_coeff_radr;
    wire unsigned [ADDR_WIDTH-1:0] tf_coeff_rwadr;
    reg unsigned [DATA_WIDTH-1:0] tf_coeff_rdata;
    reg unsigned [DATA_WIDTH-1:0] tf_coeff_rwdata;

    reg unsigned [DATA_WIDTH-1:0] kernel_magnitude_rdata;
    reg unsigned [DATA_WIDTH-1:0] kernel_phase_rdata;

    wire phase_vec_sram_en;
    wire tf_coeff_sram_en;
    wire kernel_magnitude_sram_en;
    wire kernel_phase_vec_sram_en;

    // Deconvolution kernel evaluation trigger.
    assign eval_deconv_kernel = frequency_adc_done & amplitude_adc_done;

    // SRAM select decoder logic.
    assign phase_vec_sram_en = (sram_select == 2'b00);
    assign tf_coeff_sram_en = (sram_select == 2'b01);
    assign kernel_magnitude_sram_en = (sram_select == 2'b10);
    assign kernel_phase_sram_en = (sram_select == 2'b11);

    // Output data mux (select between phase/frequency vector SRAM data, transfer function coefficient
    // SRAM data, or kernel frequency response phase or magnitude SRAM data).
    assign rdata_mux = adc_bypass_en ? {sig_amplitude, sig_frequency} :
        ((sram_select == 2'b00) ? phase_mem_data[1] :
        ((sram_select == 2'b01) ? tf_coeff_rdata :
        ((sram_select == 2'b10) ? kernel_magnitude_rdata : kernel_phase_rdata)));

    // Determine config_nfft (i.e. length of the frequency evaluation vector).
    always @(posedge clk) begin
        if (rst_n) begin
            nfft_cntr_en <= load_en & phase_vec_sram_en & wdata_valid;
            nfft_cntr_en_d1 <= nfft_cntr_en;
            if (nfft_cntr_en) begin
                nfft_cntr <= nfft_cntr + 1;
            end
            if (nfft_cntr_en ^ nfft_cntr_en_d1) begin
                config_nfft <= nfft_cntr + 1;
            end
        end
        else begin
            nfft_cntr <= {ADDR_WIDTH{1'b0}};
            nfft_cntr_en <= 0;
            nfft_cntr_en_d1 <= 0;
        end
    end

    // Load the ADC frequency and amplitude in from off-chip to determine the coefficient table base address
    // if adc_bypass_en is enabled.
    always @(posedge clk) begin
        if (rst_n) begin
            if (adc_bypass_en & wdata_valid) begin
                coeff_table_base_addr_bypass <= parallel_in[ADDR_WIDTH-3:0];
            end
        end
    end

    // Compute the 10-bit base address for the coefficient table using the input signal frequency/amplitude.
    // The base address consists of the top 3 bits of the 8-bit amplitude concatenated with the top 7 bits
    // of the 8-bit frequency.
    assign coeff_table_base_addr = adc_bypass_en ? coeff_table_base_addr_bypass :
        {sig_amplitude[ADC_BITS-1:ADC_BITS-3], sig_frequency[ADC_BITS-1:1]};
    assign tf_coeff_rwadr = {ADDR_WIDTH{1'b0}};

    /* Instantiate the input deserializer module. */
    deserializer #(
        .FETCH_WIDTH(DATA_WIDTH)
    ) deserializer_inst (
        .clk(clk),
        .rst_n(rst_n),
        .serial_data(serial_in),
        .en(load_en),
        .parallel_data(parallel_in),
        .out_valid(wdata_valid)
    );

    /* Register the debug enable signal (delay of two clocks relative to input SRAM access). */
    always @(posedge clk) begin
        debug_en_d1 <= debug_en;
        debug_en_d2 <= debug_en_d1;
    end

    /* Instantiate the output serializer module. */
    serializer #(
        .FETCH_WIDTH(DATA_WIDTH)
    ) serializer_inst (
        .clk(clk),
        .rst_n(rst_n),
        .en(debug_en_d2),
        .parallel_data(rdata_mux),
        .sender_deq(serializer_rdy),
        .serial_data(serial_out),
        .out_valid(serial_out_valid)
    );

    // Instantiate the deconvolution kernel estimator module.
    iir_notch_filter #(
        .CONFIG_SIZE(ADDR_WIDTH),
        .CORDIC_XY_BITS(DATA_WIDTH),
        .CORDIC_PHASE_BITS(DATA_WIDTH),
        .ADC_BITS(ADC_BITS),
        .FIXED_Q(FRAC_BITS),
        .FILTER_ORDER(FILTER_ORDER),
        .LATENCY(LATENCY)
    ) iir_notch_filter_inst (
        .clk(clk),
        .rst_n(rst_n),
        .config_nfft(config_nfft),
        .a_coeffs(a_coeffs),
        .b_coeffs(b_coeffs),
        .eval_iir_freq_resp(eval_iir_freq_resp),
        .phase_mem_data(phase_mem_data),
        .phase_mem_indices(phase_mem_indices),
        .tf_val_magnitude(tf_val_magnitude),
        .tf_val_phase(tf_val_phase),
        .tf_val_valid(tf_val_valid),
        .freq_eval_done(freq_eval_done)
    );

    // Instantiate the phase SRAM interface module.
    phase_vec_sram_interface #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH),
        .DEPTH(DEPTH)
    ) phase_vec_sram_interface_inst (
        .clk(clk),
        .rst_n(rst_n),
        .debug(debug_en & phase_vec_sram_en & ~adc_bypass_en),
        .debug_read_trig(serializer_rdy),
        .load(load_en & phase_vec_sram_en & ~adc_bypass_en),
        .wdata_valid(wdata_valid & phase_vec_sram_en & ~adc_bypass_en),
        .wdata_in(parallel_in),
        .ren(phase_vec_ren),
        .rwen(phase_vec_rwen),
        .radr(phase_mem_indices[1]),
        .rwadr(phase_mem_indices[0]),
        .rdata(phase_mem_data[1]),
        .rwdata(phase_mem_data[0])
    );

    // Instantiate the transfer function coefficient SRAM interface module.
    tf_coeff_sram_interface #( 
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH),
        .DEPTH(DEPTH)
    ) tf_coeff_sram_interface_inst (
        .clk(clk),
        .rst_n(rst_n),
        .debug(debug_en & tf_coeff_sram_en & ~adc_bypass_en),
        .debug_read_trig(serializer_rdy),
        .load(load_en & tf_coeff_sram_en & ~adc_bypass_en),
        .wdata_valid(wdata_valid & tf_coeff_sram_en & ~adc_bypass_en),
        .wdata_in(parallel_in),
        .ren(tf_coeff_ren),
        .rwen(tf_coeff_rwen),
        .radr(tf_coeff_radr),
        .rwadr(tf_coeff_rwadr),
        .rdata(tf_coeff_rdata),
        .rwdata(tf_coeff_rwdata)
    );

    // Instantiate the deconvolution kernel frequency response magnitude SRAM interface module.
    deconv_kernel_magnitude_sram_interface #( 
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH),
        .DEPTH(DEPTH)
    ) deconv_kernel_magnitude_sram_interface_inst (
        .clk(clk),
        .rst_n(rst_n),
        .debug(debug_en & kernel_magnitude_sram_en & ~adc_bypass_en),
        .debug_read_trig(serializer_rdy),
        .wen(tf_val_valid),
        .wdata_in(tf_val_magnitude),
        .rdata(kernel_magnitude_rdata)
    );

    // Instantiate the deconvolution kernel frequency response phase SRAM interface module.
    deconv_kernel_phase_sram_interface #( 
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH),
        .DEPTH(DEPTH)
    ) deconv_kernel_phase_sram_interface_inst (
        .clk(clk),
        .rst_n(rst_n),
        .debug(debug_en & kernel_phase_sram_en & ~adc_bypass_en),
        .debug_read_trig(serializer_rdy),
        .wen(tf_val_valid),
        .wdata_in(tf_val_phase),
        .rdata(kernel_phase_rdata)
    );

    // Core logic state machine.
    always @(posedge clk) begin
        if (~rst_n) begin
            state_r <= `IDLE;
        end
        else begin
            case (state_r)
                `IDLE : begin
                    eval_iir_freq_resp <= 0;
                    phase_vec_ren <= 0;
                    phase_vec_rwen <= 0;
                    tf_coeff_ren <= 0;
                    tf_coeff_rwen <= 0;
                    tf_coeff_radr <= {ADDR_WIDTH{1'b0}};
                    state_r <= eval_deconv_kernel ? `COMPUTE_IIR_COEFFS_A0 : `IDLE;
                end

                `COMPUTE_IIR_COEFFS_A0 : begin
                    tf_coeff_radr <= {coeff_table_base_addr, 2'b00};
                    tf_coeff_ren <= 1;
                    tf_coeff_rwen <= 0;
                    eval_iir_freq_resp <= 0;
                    phase_vec_ren <= 0;
                    phase_vec_rwen <= 0;
                    state_r <= `COMPUTE_IIR_COEFFS_A1_B1;
                end

                `COMPUTE_IIR_COEFFS_A1_B1 : begin
                    tf_coeff_radr <= {coeff_table_base_addr, 2'b01};
                    tf_coeff_ren <= 1;
                    tf_coeff_rwen <= 0;
                    eval_iir_freq_resp <= 0;
                    phase_vec_ren <= 0;
                    phase_vec_rwen <= 0;
                    state_r <= `COMPUTE_IIR_COEFFS_A2;
                end

                `COMPUTE_IIR_COEFFS_A2 : begin
                    a_coeffs[0] <= tf_coeff_rdata;
                    tf_coeff_radr <= {coeff_table_base_addr, 2'b10};
                    tf_coeff_ren <= 1;
                    tf_coeff_rwen <= 0;
                    eval_iir_freq_resp <= 0;
                    phase_vec_ren <= 0;
                    phase_vec_rwen <= 0;
                    state_r <= `COMPUTE_IIR_COEFFS_B0_B2;
                end

                `COMPUTE_IIR_COEFFS_B0_B2 : begin
                    a_coeffs[1] <= tf_coeff_rdata;
                    b_coeffs[1] <= tf_coeff_rdata;
                    tf_coeff_radr <= {coeff_table_base_addr, 2'b11};
                    tf_coeff_ren <= 1;
                    tf_coeff_rwen <= 0;
                    eval_iir_freq_resp <= 0;
                    phase_vec_ren <= 0;
                    phase_vec_rwen <= 0;
                    state_r <= `COMPUTE_IIR_COEFFS_WAIT_1;
                end

                `COMPUTE_IIR_COEFFS_WAIT_1 : begin
                    a_coeffs[2] <= tf_coeff_rdata;
                    tf_coeff_radr <= {coeff_table_base_addr, 2'b11};
                    tf_coeff_ren <= 1;
                    tf_coeff_rwen <= 0;
                    eval_iir_freq_resp <= 0;
                    phase_vec_ren <= 0;
                    phase_vec_rwen <= 0;
                    state_r <= `COMPUTE_IIR_COEFFS_WAIT_2;
                end

                `COMPUTE_IIR_COEFFS_WAIT_2 : begin
                    b_coeffs[0] <= tf_coeff_rdata;
                    b_coeffs[2] <= tf_coeff_rdata;
                    tf_coeff_radr <= {coeff_table_base_addr, 2'b11};
                    tf_coeff_ren <= 1;
                    tf_coeff_rwen <= 0;
                    eval_iir_freq_resp <= 0;
                    phase_vec_ren <= 0;
                    phase_vec_rwen <= 0;
                    state_r <= `RUN_KERNEL_EVAL;
                end

                `RUN_KERNEL_EVAL : begin
                    tf_coeff_radr <= {ADDR_WIDTH{1'b0}};
                    tf_coeff_ren <= 0;
                    tf_coeff_rwen <= 0;
                    eval_iir_freq_resp <= ~freq_eval_done;
                    phase_vec_ren <= 1;
                    phase_vec_rwen <= 1;
                    state_r <= freq_eval_done ? `IDLE : `RUN_KERNEL_EVAL;
                end
            endcase
        end
    end
endmodule/* Output deconvolution kernel frequency response magnitude SRAM interface module.
 * Writing to the SRAM is accomplished via the write port. For debugging, data is
 * read out sequentially via the R/O read port, with the R/W read port disabled.
 */

module deconv_kernel_magnitude_sram_interface
#(
    parameter DATA_WIDTH = 16,
    parameter ADDR_WIDTH = 12,                      /* Equal to ceil(log2(DEPTH))+1. */
    parameter DEPTH = 2048
)
(
    input clk,
    input rst_n,
    input debug,
    input debug_read_trig,
    input wen,
    input [DATA_WIDTH-1:0] wdata_in,
    output [DATA_WIDTH-1:0] rdata
);

    reg [ADDR_WIDTH-1:0] radr_r;
    reg [ADDR_WIDTH-1:0] wadr_r;

    always @(posedge clk) begin
        if (rst_n) begin
            if (wen) begin                          /* Writing the SRAM. */
                wadr_r <= wadr_r + 1;
            end
            
            if (debug) begin                        /* Reading the SRAM. */
                if (debug_read_trig) begin
                    radr_r <= radr_r + 1;
                end
            end
            else begin
                radr_r <= {ADDR_WIDTH{1'b0}};                
            end
        end
        else begin
            radr_r <= {ADDR_WIDTH{1'b0}};
            wadr_r <= {ADDR_WIDTH{1'b0}};
        end
    end

    /* Instantiate the deconvolution kernel magnitude frequency response SRAM module. */
    ram_sync_1rw1r #( 
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH),
        .DEPTH(DEPTH)
    ) ram_sync_1rw1r_inst (
        .clk(clk),
        .wen(wen),
        .rwen(1'b0),
        .rwadr(wadr_r),
        .wdata(wdata_in),
        .ren(debug),
        .radr(radr_r),
        .rwdata(),
        .rdata(rdata)
    );

endmodule
/* Output deconvolution kernel frequency response phase SRAM interface module.
 * Writing to the SRAM is accomplished via the write port. For debugging, data is
 * read out sequentially via the R/O read port, with the R/W read port disabled.
 */

module deconv_kernel_phase_sram_interface
#(
    parameter DATA_WIDTH = 16,
    parameter ADDR_WIDTH = 12,                      /* Equal to ceil(log2(DEPTH))+1. */
    parameter DEPTH = 2048
)
(
    input clk,
    input rst_n,
    input debug,
    input debug_read_trig,
    input wen,
    input [DATA_WIDTH-1:0] wdata_in,
    output [DATA_WIDTH-1:0] rdata
);

    reg [ADDR_WIDTH-1:0] radr_r;
    reg [ADDR_WIDTH-1:0] wadr_r;

    always @(posedge clk) begin
        if (rst_n) begin
            if (wen) begin                          /* Writing the SRAM. */
                wadr_r <= wadr_r + 1;
            end
            
            if (debug) begin                        /* Reading the SRAM. */
                if (debug_read_trig) begin
                    radr_r <= radr_r + 1;
                end
            end
            else begin
                radr_r <= {ADDR_WIDTH{1'b0}};                
            end
        end
        else begin
            radr_r <= {ADDR_WIDTH{1'b0}};
            wadr_r <= {ADDR_WIDTH{1'b0}};
        end
    end

    /* Instantiate the deconvolution kernel phase frequency response SRAM module. */
    ram_sync_1rw1r #( 
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH),
        .DEPTH(DEPTH)
    ) ram_sync_1rw1r_inst (
        .clk(clk),
        .wen(wen),
        .rwen(1'b0),
        .rwadr(wadr_r),
        .wdata(wdata_in),
        .ren(debug),
        .radr(radr_r),
        .rwdata(),
        .rdata(rdata)
    );

endmodule
/* Deserializer module. */

module deserializer
#(
    parameter FETCH_WIDTH = 16
)
(
    input clk,
    input rst_n,
    input serial_data,
    input en,
    output reg [FETCH_WIDTH-1:0] parallel_data,
    output reg out_valid
);

    localparam COUNTER_WIDTH = $clog2(FETCH_WIDTH);
    reg [COUNTER_WIDTH-1:0] count_r;
        
    always @(posedge clk) begin
        if (rst_n) begin
            if (en) begin
                parallel_data[count_r] <= serial_data;
                count_r <= (count_r == FETCH_WIDTH - 1) ? 0 : count_r + 1;
                out_valid <= (count_r == FETCH_WIDTH - 1);
            end
            else begin
                count_r <= 0;
                out_valid <= 0;
            end
        end
        else begin
            parallel_data <= {FETCH_WIDTH{1'b0}};
            count_r <= 0;
            out_valid <= 0;
        end
    end
endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 			Burke
// Engineer: 			Tom Burke
// 
// Create Date:		19:39:14 08/24/2011 
// Design Name: 	
// Module Name:		fixed_pt_div.v
// Project Name:		Fixed-point Math Library (Verilog)
// Target Devices: 
// Tool versions:		Xilinx ISE WebPack v14.7
// Description: 		Fixed-point division in (Q,N) format
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
//	Revision 0.02 - 25 May 2014
//							Updated to fix an error
//
// Additional Comments: Based on my description on youtube:
//			http://youtu.be/TEnaPMYiuR8
//
//////////////////////////////////////////////////////////////////////////////////
 
module fixed_pt_div #(
	//Parameterized values
	parameter Q = 15,
	parameter N = 32
)
(
	input 	[N-1:0] i_dividend,
	input 	[N-1:0] i_divisor,
	input 	i_start,
	input 	i_clk,
	output 	[N-1:0] o_quotient_out,
	output 	o_complete,
	output	o_overflow
);
 
	reg [2*N+Q-3:0]	reg_working_quotient;	//	Our working copy of the quotient
	reg [N-1:0] 		reg_quotient;				//	Final quotient
	reg [N-2+Q:0] 		reg_working_dividend;	//	Working copy of the dividend
	reg [2*N+Q-3:0]	reg_working_divisor;		// Working copy of the divisor
 
	reg [N-1:0] 			reg_count; 		//	This is obviously a lot bigger than it needs to be, as we only need 
													//		count to N-1+Q but, computing that number of bits requires a 
													//		logarithm (base 2), and I don't know how to do that in a 
													//		way that will work for everyone
 
	reg					reg_done;			//	Computation completed flag
	reg					reg_sign;			//	The quotient's sign bit
	reg					reg_overflow;		//	Overflow flag
 
	initial reg_done = 1'b1;				//	Initial state is to not be doing anything
	initial reg_overflow = 1'b0;			//		And there should be no woverflow present
	initial reg_sign = 1'b0;				//		And the sign should be positive
 
	initial reg_working_quotient = 0;	
	initial reg_quotient = 0;				
	initial reg_working_dividend = 0;	
	initial reg_working_divisor = 0;		
 	initial reg_count = 0; 		
 
 
	assign o_quotient_out[N-2:0] = reg_quotient[N-2:0];	//	The division results
	assign o_quotient_out[N-1] = reg_sign;						//	The sign of the quotient
	assign o_complete = reg_done;
	assign o_overflow = reg_overflow;
 
	always @( posedge i_clk ) begin
		if( reg_done && i_start ) begin										//	This is our startup condition
			//  Need to check for a divide by zero right here, I think....
			reg_done <= 1'b0;												//	We're not done			
			reg_count <= N+Q-1;											//	Set the count
			reg_working_quotient <= 0;									//	Clear out the quotient register
			reg_working_dividend <= 0;									//	Clear out the dividend register 
			reg_working_divisor <= 0;									//	Clear out the divisor register 
			reg_overflow <= 1'b0;										//	Clear the overflow register
 
			reg_working_dividend[N+Q-2:Q] <= i_dividend[N-2:0];				//	Left-align the dividend in its working register
			reg_working_divisor[2*N+Q-3:N+Q-1] <= i_divisor[N-2:0];		//	Left-align the divisor into its working register
 
			reg_sign <= i_dividend[N-1] ^ i_divisor[N-1];		//	Set the sign bit
			end 
		else if(!reg_done) begin
			reg_working_divisor <= reg_working_divisor >> 1;	//	Right shift the divisor (that is, divide it by two - aka reduce the divisor)
			reg_count <= reg_count - 1;								//	Decrement the count
 
			//	If the dividend is greater than the divisor
			if(reg_working_dividend >= reg_working_divisor) begin
				reg_working_quotient[reg_count] <= 1'b1;										//	Set the quotient bit
				reg_working_dividend <= reg_working_dividend - reg_working_divisor;	//		and subtract the divisor from the dividend
				end
 
			//stop condition
			if(reg_count == 0) begin
				reg_done <= 1'b1;										//	If we're done, it's time to tell the calling process
				reg_quotient <= reg_working_quotient;			//	Move in our working copy to the outside world
				if (reg_working_quotient[2*N+Q-3:N]>0)
					reg_overflow <= 1'b1;
					end
			else
				reg_count <= reg_count - 1;	
			end
		end
endmodule

/* IIR Notch Filter Unit. */

`define STATE_WIDTH 3
`define IDLE 0
`define START_FILT_EVAL 1
`define RUN_FILT_EVAL 2
`define DONE_FREQ_BIN 3
`define DONE_FREQ_VEC 4
`define DONE_FREQ_VEC_WAIT 5

module iir_notch_filter #(
    parameter CONFIG_SIZE = 16,
    parameter CORDIC_XY_BITS = 16,
    parameter CORDIC_PHASE_BITS = 16,
    parameter ADC_BITS = 8,
    parameter FIXED_Q = 12,
    parameter FILTER_ORDER = 2,
    parameter LATENCY = 4,
    parameter CORDIC_GAIN_INVERSE_SP2R = 32'hdbd95b16,
    parameter CORDIC_GAIN_INVERSE_SR2P = 32'h9b74edae
)
(
    input clk,
    input rst_n,
    input [CONFIG_SIZE-1:0] config_nfft,
    input wire signed [CORDIC_XY_BITS-1:0] a_coeffs[FILTER_ORDER:0],
    input wire signed [CORDIC_XY_BITS-1:0] b_coeffs[FILTER_ORDER:0],
    input eval_iir_freq_resp,
    input [CORDIC_PHASE_BITS-1:0] phase_mem_data[1:0],
    output reg unsigned [CONFIG_SIZE-1:0] phase_mem_indices[1:0],
    output reg unsigned [CORDIC_XY_BITS-1:0] tf_val_magnitude,
    output reg unsigned [CORDIC_XY_BITS-1:0] tf_val_phase,
    output reg tf_val_valid,
    output reg freq_eval_done
);

    reg unsigned [CORDIC_PHASE_BITS-1:0] complex_phases[FILTER_ORDER-1:0];

    reg signed [CORDIC_XY_BITS-1:0] a_real[FILTER_ORDER-1:0];
    reg signed [CORDIC_XY_BITS-1:0] a_imag[FILTER_ORDER-1:0];
    reg [FILTER_ORDER-1:0] a_cordic_busy;
    reg [FILTER_ORDER-1:0] a_cordic_done;

    reg signed [CORDIC_XY_BITS-1:0] b_real[FILTER_ORDER-1:0];
    reg signed [CORDIC_XY_BITS-1:0] b_imag[FILTER_ORDER-1:0];
    reg [FILTER_ORDER-1:0] b_cordic_busy;
    reg [FILTER_ORDER-1:0] b_cordic_done;

    reg signed [CORDIC_XY_BITS-1:0] num_eval_real;
    reg signed [CORDIC_XY_BITS-1:0] num_eval_imag;
    reg signed [CORDIC_XY_BITS-1:0] den_eval_real;
    reg signed [CORDIC_XY_BITS-1:0] den_eval_imag;

    reg unsigned [CORDIC_XY_BITS-1:0] den_magnitude;
    reg unsigned [CORDIC_PHASE_BITS-1:0] den_phase;
    reg unsigned [CORDIC_XY_BITS-1:0] den_magnitude_out;
    reg unsigned [CORDIC_PHASE_BITS-1:0] den_phase_out;
    reg den_cordic_busy;
    reg den_cordic_done;

    reg unsigned [CORDIC_XY_BITS-1:0] num_magnitude;
    reg unsigned [CORDIC_PHASE_BITS-1:0] num_phase;
    reg unsigned [CORDIC_XY_BITS-1:0] num_magnitude_out;
    reg unsigned [CORDIC_PHASE_BITS-1:0] num_phase_out;
    reg num_cordic_busy;
    reg num_cordic_done;

    reg fixed_div_done;
    reg fixed_div_overflow;
    reg unsigned [CORDIC_XY_BITS-1:0] tf_quotient;

    reg [`STATE_WIDTH-1:0] state_r;
    reg [CONFIG_SIZE-1:0] freq_k_step;
    reg [CONFIG_SIZE-1:0] eval_cntr;
    reg run_filt_trig;
    reg reset_filt;

    wire cordic_aux_in;
    assign cordic_aux_in = 0;

    //wire unsigned [CONFIG_SIZE-1:0] notch_w0;
    wire signed [CORDIC_XY_BITS+32-1:0] a_coeffs_gain_adjusted[FILTER_ORDER-1:0];
    wire signed [CORDIC_XY_BITS+32-1:0] b_coeffs_gain_adjusted[FILTER_ORDER-1:0];
    wire unsigned [CORDIC_XY_BITS+32-1:0] num_magnitude_gain_adjusted;
    wire unsigned [CORDIC_XY_BITS+32-1:0] den_magnitude_gain_adjusted;

    generate
        for (genvar i = 0; i < FILTER_ORDER; i = i + 1) begin
            assign a_coeffs_gain_adjusted[i] = {{32{a_coeffs[i+1][CORDIC_XY_BITS-1]}}, a_coeffs[i+1]} *
                {{CORDIC_XY_BITS{1'b0}}, CORDIC_GAIN_INVERSE_SP2R} >>> 32;
            assign b_coeffs_gain_adjusted[i] = {{32{b_coeffs[i+1][CORDIC_XY_BITS-1]}}, b_coeffs[i+1]} *
                {{CORDIC_XY_BITS{1'b0}}, CORDIC_GAIN_INVERSE_SP2R} >>> 32;
        end
    endgenerate

    /*assign num_magnitude_gain_adjusted = {{32{num_magnitude_out[CORDIC_XY_BITS-1]}}, num_magnitude_out} *
                {{CORDIC_XY_BITS{1'b0}}, CORDIC_GAIN_INVERSE_SR2P} >>> 32;
    assign den_magnitude_gain_adjusted = {{32{den_magnitude_out[CORDIC_XY_BITS-1]}}, den_magnitude_out} *
                {{CORDIC_XY_BITS{1'b0}}, CORDIC_GAIN_INVERSE_SR2P} >>> 32;*/
    assign num_magnitude_gain_adjusted = {{32{1'b0}}, num_magnitude_out} *
                {{CORDIC_XY_BITS{1'b0}}, CORDIC_GAIN_INVERSE_SR2P} >>> 32;
    assign den_magnitude_gain_adjusted = {{32{1'b0}}, den_magnitude_out} *
                {{CORDIC_XY_BITS{1'b0}}, CORDIC_GAIN_INVERSE_SR2P} >>> 32;

    generate
        for (genvar i = 0; i < FILTER_ORDER; i = i + 1) begin
            /* Instantiate a CORDIC rotator for the transfer function denominator term (a). */
            cordic_polar_to_rect #(
                /* Parameters pre-generated. */
            ) cordic_polar_to_rect_inst_a (
                .i_clk(clk),
                .i_reset(reset_filt),
                .i_stb(run_filt_trig),
                .i_aux(cordic_aux_in),
                .i_xval(a_coeffs_gain_adjusted[i][CORDIC_XY_BITS-1:0]),
                .i_yval({CORDIC_XY_BITS{1'b0}}),
                .i_phase(complex_phases[i]),
                .o_busy(a_cordic_busy[i]),
                .o_done(a_cordic_done[i]),
                .o_xval(a_real[i]),
                .o_yval(a_imag[i]),
                .o_aux()
            );

            /* Instantiate a CORDIC rotator for the transfer function numerator term (b). */
            cordic_polar_to_rect #(
                /* Parameters pre-generated. */
            ) cordic_polar_to_rect_inst_b (
                .i_clk(clk),
                .i_reset(reset_filt),
                .i_stb(run_filt_trig),
                .i_aux(cordic_aux_in),
                .i_xval(b_coeffs_gain_adjusted[i][CORDIC_XY_BITS-1:0]),
                .i_yval({CORDIC_XY_BITS{1'b0}}),
                .i_phase(complex_phases[i]),
                .o_busy(b_cordic_busy[i]),
                .o_done(b_cordic_done[i]),
                .o_xval(b_real[i]),
                .o_yval(b_imag[i]),
                .o_aux()
            );
        end
    endgenerate

    /* Instantiate CORDIC Cartesian-to-polar converters for both the transfer function numerator and denominator. */
    cordic_rect_to_polar #(
        /* Parameters pre-generated. */
    ) cordic_rect_to_polar_inst_num (
        .i_clk(clk),
        .i_reset(reset_filt),
        .i_stb(run_filt_trig),
        .i_aux(cordic_aux_in),
        .i_xval(num_eval_real),
        .i_yval(num_eval_imag),
        .o_busy(num_cordic_busy),
        .o_done(num_cordic_done),
        .o_mag(num_magnitude_out),
        .o_phase(num_phase_out),
        .o_aux()
    );

    cordic_rect_to_polar #(
        /* Parameters pre-generated. */
    ) cordic_rect_to_polar_inst_den (
        .i_clk(clk),
        .i_reset(reset_filt),
        .i_stb(run_filt_trig),
        .i_aux(cordic_aux_in),
        .i_xval(den_eval_real),
        .i_yval(den_eval_imag),
        .o_busy(den_cordic_busy),
        .o_done(den_cordic_done),
        .o_mag(den_magnitude_out),
        .o_phase(den_phase_out),
        .o_aux()
    );

    /* Instantiate a fixed-point divider to compute the final transfer function magnitude for the selected frequency bin. */
    fixed_pt_div #(
        .Q(FIXED_Q),
        .N(CORDIC_XY_BITS)
    ) fixed_pt_div_inst (
        .i_dividend(num_magnitude),
        .i_divisor(den_magnitude),
        .i_start(run_filt_trig),
        .i_clk(clk),
        .o_quotient_out(tf_quotient),
        .o_complete(fixed_div_done),
        .o_overflow(fixed_div_overflow)
    );

    always @(posedge clk) begin
        if (~rst_n) begin
            state_r <= `IDLE;
        end
        else begin
            case (state_r)
                `IDLE : begin
                    reset_filt <= 1;
                    run_filt_trig <= 0;                
                    tf_val_valid <= 0;                
                    freq_eval_done <= 0;
                    complex_phases[0] <= {CORDIC_XY_BITS{1'b1}};
                    complex_phases[1] <= {CORDIC_XY_BITS{1'b1}};
                    den_eval_real <= {CORDIC_XY_BITS{1'b0}};
                    den_eval_imag <= {CORDIC_XY_BITS{1'b0}};
                    num_eval_real <= {CORDIC_XY_BITS{1'b0}};
                    num_eval_imag <= {CORDIC_XY_BITS{1'b0}};
                    freq_k_step <= {CONFIG_SIZE{1'b0}};
                    eval_cntr <= {CONFIG_SIZE{1'b0}};
                    num_magnitude <= {CORDIC_XY_BITS{1'b0}};
                    den_magnitude <= {CORDIC_XY_BITS{1'b1}};
                    num_phase <= {CORDIC_PHASE_BITS{1'b0}};
                    den_phase <= {CORDIC_PHASE_BITS{1'b0}};
                    tf_val_magnitude <= {CORDIC_XY_BITS{1'b0}};
                    tf_val_phase <= {CORDIC_PHASE_BITS{1'b0}};

                    if (eval_iir_freq_resp) begin
                        state_r <= `START_FILT_EVAL;
                    end
                    else begin
                        state_r <= `IDLE;                    
                    end
                end

                `START_FILT_EVAL : begin
                    reset_filt <= 0;
                    run_filt_trig <= 1;                
                    tf_val_valid <= 0;                
                    freq_eval_done <= 0;
                    state_r <= `RUN_FILT_EVAL;
                end

                `RUN_FILT_EVAL : begin
                    reset_filt <= 0;
                    run_filt_trig <= 0;                
                    tf_val_valid <= 0;
                    freq_eval_done <= 0;
                    if ((&a_cordic_done) & (&b_cordic_done) & num_cordic_done & den_cordic_done & fixed_div_done) begin
                        state_r <= `DONE_FREQ_BIN;
                    end
                    else begin
                        state_r <= `RUN_FILT_EVAL;                    
                    end                
                end

                `DONE_FREQ_BIN : begin
                    reset_filt <= 1;
                    run_filt_trig <= 0;                
                    tf_val_valid <= (eval_cntr >= LATENCY);
                    freq_eval_done <= 0;

                    /* Update input values for the three pipeline stages. */
                    den_eval_real <= a_coeffs[0] + a_real[0] + a_real[1];
                    den_eval_imag <= a_imag[0] + a_imag[1];
                    num_eval_real <= b_coeffs[0] + b_real[0] + b_real[1];
                    num_eval_imag <= b_imag[0] + b_imag[1];
                    freq_k_step <= (freq_k_step == config_nfft - 1) ? freq_k_step : (freq_k_step + 1);
                    eval_cntr <= eval_cntr + 1;
                    num_magnitude <= num_magnitude_gain_adjusted[CORDIC_XY_BITS-1:0];
                    den_magnitude <= den_magnitude_gain_adjusted[CORDIC_XY_BITS-1:0];
                    num_phase <= num_phase_out;
                    den_phase <= den_phase_out;
                    tf_val_magnitude <= tf_quotient;
                    tf_val_phase <= num_phase - den_phase;
                    phase_mem_indices[0] <= freq_k_step;
                    phase_mem_indices[1] <= ((freq_k_step << 1) > (config_nfft - 1))
                        ? ((freq_k_step << 1) - config_nfft)
                        : (freq_k_step << 1);
                    /*complex_phases[0] <= phase_mem[freq_k_step];
                    complex_phases[1] <= ((freq_k_step << 1) > (config_nfft - 1))
                        ? phase_mem[(freq_k_step << 1) - config_nfft]
                        : phase_mem[freq_k_step << 1];*/
                    complex_phases[0] <= phase_mem_data[0];
                    complex_phases[1] <= phase_mem_data[1];
                    if (eval_cntr == (config_nfft + LATENCY - 1)) begin
                        state_r <= `DONE_FREQ_VEC;
                    end
                    else begin
                        state_r <= `START_FILT_EVAL;
                    end
                end

                `DONE_FREQ_VEC : begin
                    reset_filt <= 1;
                    run_filt_trig <= 0;                
                    tf_val_valid <= 1;
                    freq_eval_done <= 1;
                    state_r <= `DONE_FREQ_VEC_WAIT;
                end

                // Necessary state since there is a one-cycle delay before eval_iir_freq_resp registers
                // the freq_eval_done signal. Otherwise, evaluation will start again automatically.
                `DONE_FREQ_VEC_WAIT : begin
                    reset_filt <= 1;
                    run_filt_trig <= 0;                
                    tf_val_valid <= 0;
                    freq_eval_done <= 0;
                    state_r <= `IDLE;                    
                end
            endcase
        end
    end
endmodule
/* Phase/frequency vector SRAM interface module. Loading of the SRAM is
 * accomplished via the write port. For debugging, data is read out sequentially
 * via the R/O read port, with the R/W read port disabled. Normal read operation
 * by the kernel estimator module depends upon the input ren and rwen signals.
 */

module phase_vec_sram_interface
#(
    parameter DATA_WIDTH = 16,
    parameter ADDR_WIDTH = 12,                      /* Equal to ceil(log2(DEPTH))+1. */
    parameter DEPTH = 2048
)
(
    input clk,
    input rst_n,
    input debug,
    input debug_read_trig,
    input load,
    input wdata_valid,
    input [DATA_WIDTH-1:0] wdata_in,
    input ren,
    input rwen,
    input [ADDR_WIDTH-1:0] radr,
    input [ADDR_WIDTH-1:0] rwadr,
    output [DATA_WIDTH-1:0] rdata,
    output [DATA_WIDTH-1:0] rwdata
);

    reg [ADDR_WIDTH-1:0] radr_r;
    reg [ADDR_WIDTH-1:0] rwadr_r;
    wire ren_mux;
    wire rwen_mux;
    wire [ADDR_WIDTH-1:0] radr_mux;
    wire [ADDR_WIDTH-1:0] rwadr_mux;

    assign ren_mux = debug ? 1 : ren;
    assign rwen_mux = debug ? 0 : rwen;
    assign radr_mux = debug ? radr_r : radr;
    assign rwadr_mux = wdata_valid ? rwadr_r : rwadr;

    always @(posedge clk) begin
        if (rst_n) begin
            if (load) begin                         /* Loading the SRAM. */
                if (wdata_valid) begin
                    rwadr_r <= rwadr_r + 1;
                end
            end
            else begin
                rwadr_r <= {ADDR_WIDTH{1'b0}};                
            end
            
            if (debug) begin                        /* Reading the SRAM. */
                if (debug_read_trig) begin
                    radr_r <= radr_r + 1;
                end
            end
            else begin
                radr_r <= {ADDR_WIDTH{1'b0}};                
            end
        end
        else begin
            radr_r <= {ADDR_WIDTH{1'b0}};
            rwadr_r <= {ADDR_WIDTH{1'b0}};
        end
    end

    /* Instantiate the phase/frequency evaluation vector SRAM module. */
    ram_sync_1rw1r #( 
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH),
        .DEPTH(DEPTH)
    ) ram_sync_1rw1r_inst (
        .clk(clk),
        .wen(wdata_valid),
        .rwen(rwen_mux),
        .rwadr(rwadr_mux),
        .wdata(wdata_in),
        .ren(ren_mux),
        .radr(radr_mux),
        .rwdata(rwdata),
        .rdata(rdata)
    );

endmodule
/* This SRAM wrapper is intended to be compatible with the Skywater 130nm
 * 2KB, 4KB and 8KB SRAM macros only. Furthermore, it assumes a data width of
 * exactly 16 bits, thereby requiring masking for read and write operations
 * (since the SRAM macros are 32 bits wide). As a result, the ADDR_WIDTH
 * parameter is equal to ceil(log2(DEPTH))+1, with the LSB indicating the
 * appropriate word (first or second pair of bytes) in the 4-byte SRAM row.
 */

`define USE_4KB_ONLY 0
`define USE_2KB_ONLY 1

module ram_sync_1rw1r
#(
    parameter DATA_WIDTH = 16,
    parameter ADDR_WIDTH = 12,                      /* Equal to ceil(log2(DEPTH))+1. */
    parameter DEPTH = 2048
)(
    input clk,
    input wen,
    input rwen,
    input [ADDR_WIDTH-1:0] rwadr,
    input [DATA_WIDTH-1:0] wdata,
    input ren,
    input [ADDR_WIDTH-1:0] radr,
    output [DATA_WIDTH-1:0] rwdata,
    output [DATA_WIDTH-1:0] rdata
);
        
    if (DEPTH == 1024) begin                        /* Implies an address width of 11 bits (not checked!). */
        reg [ADDR_WIDTH-1:0] radr_r;
        reg [ADDR_WIDTH-1:0] rwadr_r;

        always @(posedge clk) begin
            radr_r <= radr;
            rwadr_r <= rwadr;
        end

        if (`USE_2KB_ONLY) begin
            wire [31:0] rdata_w_0;
            wire [31:0] rdata_w_1;
            wire [31:0] rwdata_w_0;
            wire [31:0] rwdata_w_1;

            sky130_sram_2kbyte_1rw1r_32x512_8 #(
                .VERBOSE(0)
            ) sram_2kb_inst_0 (
                .clk0(clk),
                .csb0(~((wen | rwen) & ~rwadr[ADDR_WIDTH-1])),
                .web0(~(wen & ~rwadr[ADDR_WIDTH-1])),
                .wmask0({{2{rwadr[0]}}, {2{~rwadr[0]}}}),
                .addr0(rwadr[ADDR_WIDTH-2:1]),
                .din0({wdata, wdata}),
                .dout0(rwdata_w_0),
                .clk1(clk),
                .csb1(~(ren & ~radr[ADDR_WIDTH-1])),
                .addr1(radr[ADDR_WIDTH-2:1]),
                .dout1(rdata_w_0)
            );

            sky130_sram_2kbyte_1rw1r_32x512_8 #(
                .VERBOSE(0)
            ) sram_2kb_inst_1 (
                .clk0(clk),
                .csb0(~((wen | rwen) & rwadr[ADDR_WIDTH-1])),
                .web0(~(wen & rwadr[ADDR_WIDTH-1])),
                .wmask0({{2{rwadr[0]}}, {2{~rwadr[0]}}}),
                .addr0(rwadr[ADDR_WIDTH-2:1]),
                .din0({wdata, wdata}),
                .dout0(rwdata_w_1),
                .clk1(clk),
                .csb1(~(ren & radr[ADDR_WIDTH-1])),
                .addr1(radr[ADDR_WIDTH-2:1]),
                .dout1(rdata_w_1)
            );

            assign rdata = radr_r[ADDR_WIDTH-1] ? (radr_r[0] ? rdata_w_1[31:DATA_WIDTH] : rdata_w_1[DATA_WIDTH-1:0])
                                                : (radr_r[0] ? rdata_w_0[31:DATA_WIDTH] : rdata_w_0[DATA_WIDTH-1:0]);
            assign rwdata = rwadr_r[ADDR_WIDTH-1] ? (rwadr_r[0] ? rwdata_w_1[31:DATA_WIDTH] : rwdata_w_1[DATA_WIDTH-1:0])
                                                  : (rwadr_r[0] ? rwdata_w_0[31:DATA_WIDTH] : rwdata_w_0[DATA_WIDTH-1:0]);
        end

        else begin
            wire [31:0] rdata_w;
            wire [31:0] rwdata_w;

            sky130_sram_4kbyte_1rw1r_32x1024_8 #(
                .VERBOSE(0)
            ) sram_4kb_inst (
                .clk0(clk),
                .csb0(~(wen | rwen)),
                .web0(~wen),
                .wmask0({{2{rwadr[0]}}, {2{~rwadr[0]}}}),
                .addr0(rwadr[ADDR_WIDTH-1:1]),
                .din0({wdata, wdata}),
                .dout0(rwdata_w),
                .clk1(clk),
                .csb1(~ren),
                .addr1(radr[ADDR_WIDTH-1:1]),
                .dout1(rdata_w)
            );

            assign rdata = radr_r[0] ? rdata_w[31:DATA_WIDTH] : rdata_w[DATA_WIDTH-1:0];
            assign rwdata = rwadr_r[0] ? rwdata_w[31:DATA_WIDTH] : rwdata_w[DATA_WIDTH-1:0];
        end
    end

    else if (DEPTH == 2048) begin                   /* Implies an address width of 12 bits (not checked!). */
        reg [ADDR_WIDTH-1:0] radr_r;
        reg [ADDR_WIDTH-1:0] rwadr_r;

        always @(posedge clk) begin
            radr_r <= radr;
            rwadr_r <= rwadr;
        end

        if (`USE_4KB_ONLY) begin
            wire [31:0] rdata_w_0;
            wire [31:0] rdata_w_1;
            wire [31:0] rwdata_w_0;
            wire [31:0] rwdata_w_1;

            sky130_sram_4kbyte_1rw1r_32x1024_8 #(
                .VERBOSE(0)
            ) sram_4kb_inst_0 (
                .clk0(clk),
                .csb0(~((wen | rwen) & ~rwadr[ADDR_WIDTH-1])),
                .web0(~(wen & ~rwadr[ADDR_WIDTH-1])),
                .wmask0({{2{rwadr[0]}}, {2{~rwadr[0]}}}),
                .addr0(rwadr[ADDR_WIDTH-2:1]),
                .din0({wdata, wdata}),
                .dout0(rwdata_w_0),
                .clk1(clk),
                .csb1(~(ren & ~radr[ADDR_WIDTH-1])),
                .addr1(radr[ADDR_WIDTH-2:1]),
                .dout1(rdata_w_0)
            );

            sky130_sram_4kbyte_1rw1r_32x1024_8 #(
                .VERBOSE(0)
            ) sram_4kb_inst_1 (
                .clk0(clk),
                .csb0(~((wen | rwen) & rwadr[ADDR_WIDTH-1])),
                .web0(~(wen & rwadr[ADDR_WIDTH-1])),
                .wmask0({{2{rwadr[0]}}, {2{~rwadr[0]}}}),
                .addr0(rwadr[ADDR_WIDTH-2:1]),
                .din0({wdata, wdata}),
                .dout0(rwdata_w_1),
                .clk1(clk),
                .csb1(~(ren & radr[ADDR_WIDTH-1])),
                .addr1(radr[ADDR_WIDTH-2:1]),
                .dout1(rdata_w_1)
            );

            assign rdata = radr_r[ADDR_WIDTH-1] ? (radr_r[0] ? rdata_w_1[31:DATA_WIDTH] : rdata_w_1[DATA_WIDTH-1:0])
                                                : (radr_r[0] ? rdata_w_0[31:DATA_WIDTH] : rdata_w_0[DATA_WIDTH-1:0]);
            assign rwdata = rwadr_r[ADDR_WIDTH-1] ? (rwadr_r[0] ? rwdata_w_1[31:DATA_WIDTH] : rwdata_w_1[DATA_WIDTH-1:0])
                                                  : (rwadr_r[0] ? rwdata_w_0[31:DATA_WIDTH] : rwdata_w_0[DATA_WIDTH-1:0]);
        end

        else if (`USE_2KB_ONLY) begin
            wire [31:0] rdata_w_0;
            wire [31:0] rdata_w_1;
            wire [31:0] rdata_w_2;
            wire [31:0] rdata_w_3;
            wire [31:0] rwdata_w_0;
            wire [31:0] rwdata_w_1;
            wire [31:0] rwdata_w_2;
            wire [31:0] rwdata_w_3;

            sky130_sram_2kbyte_1rw1r_32x512_8 #(
                .VERBOSE(0)
            ) sram_2kb_inst_0 (
                .clk0(clk),
                .csb0(~((wen | rwen) & ~rwadr[ADDR_WIDTH-1] & ~rwadr[ADDR_WIDTH-2])),
                .web0(~(wen & ~rwadr[ADDR_WIDTH-1] & ~rwadr[ADDR_WIDTH-2])),
                .wmask0({{2{rwadr[0]}}, {2{~rwadr[0]}}}),
                .addr0(rwadr[ADDR_WIDTH-3:1]),
                .din0({wdata, wdata}),
                .dout0(rwdata_w_0),
                .clk1(clk),
                .csb1(~(ren & ~radr[ADDR_WIDTH-1] & ~radr[ADDR_WIDTH-2])),
                .addr1(radr[ADDR_WIDTH-3:1]),
                .dout1(rdata_w_0)
            );

            sky130_sram_2kbyte_1rw1r_32x512_8 #(
                .VERBOSE(0)
            ) sram_2kb_inst_1 (
                .clk0(clk),
                .csb0(~((wen | rwen) & ~rwadr[ADDR_WIDTH-1] & rwadr[ADDR_WIDTH-2])),
                .web0(~(wen & ~rwadr[ADDR_WIDTH-1] & rwadr[ADDR_WIDTH-2])),
                .wmask0({{2{rwadr[0]}}, {2{~rwadr[0]}}}),
                .addr0(rwadr[ADDR_WIDTH-3:1]),
                .din0({wdata, wdata}),
                .dout0(rwdata_w_1),
                .clk1(clk),
                .csb1(~(ren & ~radr[ADDR_WIDTH-1] & radr[ADDR_WIDTH-2])),
                .addr1(radr[ADDR_WIDTH-3:1]),
                .dout1(rdata_w_1)
            );

            sky130_sram_2kbyte_1rw1r_32x512_8 #(
                .VERBOSE(0)
            ) sram_2kb_inst_2 (
                .clk0(clk),
                .csb0(~((wen | rwen) & rwadr[ADDR_WIDTH-1] & ~rwadr[ADDR_WIDTH-2])),
                .web0(~(wen & rwadr[ADDR_WIDTH-1] & ~rwadr[ADDR_WIDTH-2])),
                .wmask0({{2{rwadr[0]}}, {2{~rwadr[0]}}}),
                .addr0(rwadr[ADDR_WIDTH-3:1]),
                .din0({wdata, wdata}),
                .dout0(rwdata_w_2),
                .clk1(clk),
                .csb1(~(ren & radr[ADDR_WIDTH-1] & ~radr[ADDR_WIDTH-2])),
                .addr1(radr[ADDR_WIDTH-3:1]),
                .dout1(rdata_w_2)
            );

            sky130_sram_2kbyte_1rw1r_32x512_8 #(
                .VERBOSE(0)
            ) sram_2kb_inst_3 (
                .clk0(clk),
                .csb0(~((wen | rwen) & rwadr[ADDR_WIDTH-1] & rwadr[ADDR_WIDTH-2])),
                .web0(~(wen & rwadr[ADDR_WIDTH-1] & rwadr[ADDR_WIDTH-2])),
                .wmask0({{2{rwadr[0]}}, {2{~rwadr[0]}}}),
                .addr0(rwadr[ADDR_WIDTH-3:1]),
                .din0({wdata, wdata}),
                .dout0(rwdata_w_3),
                .clk1(clk),
                .csb1(~(ren & radr[ADDR_WIDTH-1] & radr[ADDR_WIDTH-2])),
                .addr1(radr[ADDR_WIDTH-3:1]),
                .dout1(rdata_w_3)
            );

            assign rdata =    (radr_r[(ADDR_WIDTH-1):(ADDR_WIDTH-2)] == 2'b11) ? (radr_r[0] ? rdata_w_3[31:DATA_WIDTH] : rdata_w_3[DATA_WIDTH-1:0])
                           : ((radr_r[(ADDR_WIDTH-1):(ADDR_WIDTH-2)] == 2'b10) ? (radr_r[0] ? rdata_w_2[31:DATA_WIDTH] : rdata_w_2[DATA_WIDTH-1:0])
                           : ((radr_r[(ADDR_WIDTH-1):(ADDR_WIDTH-2)] == 2'b01) ? (radr_r[0] ? rdata_w_1[31:DATA_WIDTH] : rdata_w_1[DATA_WIDTH-1:0])
                                                                               : (radr_r[0] ? rdata_w_0[31:DATA_WIDTH] : rdata_w_0[DATA_WIDTH-1:0])));

            assign rwdata =    (rwadr_r[(ADDR_WIDTH-1):(ADDR_WIDTH-2)] == 2'b11) ? (rwadr_r[0] ? rwdata_w_3[31:DATA_WIDTH] : rwdata_w_3[DATA_WIDTH-1:0])
                            : ((rwadr_r[(ADDR_WIDTH-1):(ADDR_WIDTH-2)] == 2'b10) ? (rwadr_r[0] ? rwdata_w_2[31:DATA_WIDTH] : rwdata_w_2[DATA_WIDTH-1:0])
                            : ((rwadr_r[(ADDR_WIDTH-1):(ADDR_WIDTH-2)] == 2'b01) ? (rwadr_r[0] ? rwdata_w_1[31:DATA_WIDTH] : rwdata_w_1[DATA_WIDTH-1:0])
                                                                                 : (rwadr_r[0] ? rwdata_w_0[31:DATA_WIDTH] : rwdata_w_0[DATA_WIDTH-1:0])));
        end

        else begin
            wire [31:0] rdata_w;
            wire [31:0] rwdata_w;

            sky130_sram_8kbyte_1rw1r_32x2048_8 #(
                .VERBOSE(0)
            ) sram_8kb_inst (
                .clk0(clk),
                .csb0(~(wen | rwen)),
                .web0(~wen),
                .wmask0({{2{rwadr[0]}}, {2{~rwadr[0]}}}),
                .addr0(rwadr[ADDR_WIDTH-1:1]),
                .din0({wdata, wdata}),
                .dout0(rwdata_w),
                .clk1(clk),
                .csb1(~ren),
                .addr1(radr[ADDR_WIDTH-1:1]),
                .dout1(rdata_w)
            );

            assign rdata = radr_r[0] ? rdata_w[31:DATA_WIDTH] : rdata_w[DATA_WIDTH-1:0];
            assign rwdata = rwadr_r[0] ? rwdata_w[31:DATA_WIDTH] : rwdata_w[DATA_WIDTH-1:0];
        end
    end
endmodule
/* Serializer module. */

module serializer
#(
    parameter FETCH_WIDTH = 16
)
(
    input clk,
    input rst_n,
    input en,
    input [FETCH_WIDTH-1:0] parallel_data,
    output reg sender_deq,
    output reg serial_data,
    output reg out_valid
);

    localparam COUNTER_WIDTH = $clog2(FETCH_WIDTH);
    reg [COUNTER_WIDTH-1:0] select_r;
    
    always @(posedge clk) begin
        if (rst_n) begin
            if (en) begin
                select_r <= (select_r + 1) % FETCH_WIDTH;
            end
            else begin
                select_r <= 0;
            end
        end
        else begin
            select_r <= 0;
        end
    end

    always @(posedge clk) begin
        if (rst_n && en) begin
            serial_data <= parallel_data[select_r];
            out_valid <= 1;
        end
        else begin
            serial_data <= 0;
            out_valid <= 0;
        end
    end

    always @(posedge clk) begin
        if (rst_n && en) begin
            // Need to trigger the sender dequeue signal on the third to last cycle since
            // there is a two-cycle read delay. This ensures that we have no gaps between
            // serial data packets.
            sender_deq <= (select_r == FETCH_WIDTH - 3);
        end
        else begin
            sender_deq <= 0;
        end
    end
endmodule
/* IIR transfer function coefficient table SRAM interface module. Loading of the SRAM
 * is accomplished via the write port. For debugging, data is read out sequentially
 * via the R/O read port, with the R/W read port disabled. Normal read operation
 * by the kernel estimator module depends upon the input ren and rwen signals.
 */

module tf_coeff_sram_interface
#(
    parameter DATA_WIDTH = 16,
    parameter ADDR_WIDTH = 12,                      /* Equal to ceil(log2(DEPTH))+1. */
    parameter DEPTH = 2048
)
(
    input clk,
    input rst_n,
    input debug,
    input debug_read_trig,
    input load,
    input wdata_valid,
    input [DATA_WIDTH-1:0] wdata_in,
    input ren,
    input rwen,
    input [ADDR_WIDTH-1:0] radr,
    input [ADDR_WIDTH-1:0] rwadr,
    output [DATA_WIDTH-1:0] rdata,
    output [DATA_WIDTH-1:0] rwdata
);

    reg [ADDR_WIDTH-1:0] radr_r;
    reg [ADDR_WIDTH-1:0] rwadr_r;
    wire ren_mux;
    wire rwen_mux;
    wire [ADDR_WIDTH-1:0] radr_mux;
    wire [ADDR_WIDTH-1:0] rwadr_mux;

    assign ren_mux = debug ? 1 : ren;
    assign rwen_mux = debug ? 0 : rwen;
    assign radr_mux = debug ? radr_r : radr;
    assign rwadr_mux = wdata_valid ? rwadr_r : rwadr;

    always @(posedge clk) begin
        if (rst_n) begin
            if (load) begin                         /* Loading the SRAM. */
                if (wdata_valid) begin
                    rwadr_r <= rwadr_r + 1;
                end
            end
            else begin
                rwadr_r <= {ADDR_WIDTH{1'b0}};                
            end
            
            if (debug) begin                        /* Reading the SRAM. */
                if (debug_read_trig) begin
                    radr_r <= radr_r + 1;
                end
            end
            else begin
                radr_r <= {ADDR_WIDTH{1'b0}};                
            end
        end
        else begin
            radr_r <= {ADDR_WIDTH{1'b0}};
            rwadr_r <= {ADDR_WIDTH{1'b0}};
        end
    end

    /* Instantiate the IIR transfer function coefficient table SRAM module. */
    ram_sync_1rw1r #( 
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH),
        .DEPTH(DEPTH)
    ) ram_sync_1rw1r_inst (
        .clk(clk),
        .wen(wdata_valid),
        .rwen(rwen_mux),
        .rwadr(rwadr_mux),
        .wdata(wdata_in),
        .ren(ren_mux),
        .radr(radr_mux),
        .rwdata(rwdata),
        .rdata(rdata)
    );

endmodule
