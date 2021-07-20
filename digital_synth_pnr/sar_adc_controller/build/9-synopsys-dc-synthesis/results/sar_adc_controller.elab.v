/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : L-2016.03-SP5-5
// Date      : Mon Jul 19 16:00:11 2021
/////////////////////////////////////////////////////////////


module sar_adc_controller ( clk, rst_n, adc_start, comparator_val, run_adc_n, 
        adc_val, out_valid );
  output [7:0] adc_val;
  input clk, rst_n, adc_start, comparator_val;
  output run_adc_n, out_valid;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, N45;
  wire   [7:0] dac_select_bits;
  wire   [7:0] dac_mask;
  wire   [1:0] state_r;

  GTECH_AND2 C11 ( .A(N5), .B(N6), .Z(N7) );
  GTECH_OR2 C13 ( .A(state_r[1]), .B(N6), .Z(N8) );
  GTECH_OR2 C16 ( .A(N5), .B(state_r[0]), .Z(N10) );
  GTECH_AND2 C18 ( .A(state_r[1]), .B(state_r[0]), .Z(N12) );
  \**SEQGEN**  \state_r_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N42), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(state_r[1]), 
        .synch_clear(N4), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \state_r_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N41), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(state_r[0]), 
        .synch_clear(N4), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  run_adc_n_reg ( .clear(1'b0), .preset(1'b0), .next_state(N22), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(run_adc_n), 
        .synch_clear(1'b0), .synch_preset(N4), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  out_valid_reg ( .clear(1'b0), .preset(1'b0), .next_state(N23), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(out_valid), 
        .synch_clear(N4), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \dac_select_bits_reg[7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N32), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dac_select_bits[7]), .synch_clear(N4), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N45) );
  \**SEQGEN**  \dac_select_bits_reg[6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N31), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dac_select_bits[6]), .synch_clear(N4), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N45) );
  \**SEQGEN**  \dac_select_bits_reg[5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N30), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dac_select_bits[5]), .synch_clear(N4), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N45) );
  \**SEQGEN**  \dac_select_bits_reg[4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N29), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dac_select_bits[4]), .synch_clear(N4), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N45) );
  \**SEQGEN**  \dac_select_bits_reg[3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N28), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dac_select_bits[3]), .synch_clear(N4), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N45) );
  \**SEQGEN**  \dac_select_bits_reg[2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N27), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dac_select_bits[2]), .synch_clear(N4), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N45) );
  \**SEQGEN**  \dac_select_bits_reg[1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N26), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dac_select_bits[1]), .synch_clear(N4), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N45) );
  \**SEQGEN**  \dac_select_bits_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N25), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        dac_select_bits[0]), .synch_clear(N4), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N45) );
  \**SEQGEN**  \dac_mask_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N40), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(dac_mask[7]), 
        .synch_clear(N4), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \dac_mask_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N39), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(dac_mask[6]), 
        .synch_clear(N4), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \dac_mask_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N38), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(dac_mask[5]), 
        .synch_clear(N4), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \dac_mask_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N37), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(dac_mask[4]), 
        .synch_clear(N4), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \dac_mask_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N36), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(dac_mask[3]), 
        .synch_clear(N4), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \dac_mask_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N35), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(dac_mask[2]), 
        .synch_clear(N4), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \dac_mask_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N34), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(dac_mask[1]), 
        .synch_clear(N4), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \dac_mask_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N33), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(dac_mask[0]), 
        .synch_clear(N4), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  SELECT_OP C149 ( .DATA1(1'b1), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .CONTROL1(N0), .CONTROL2(N1), .CONTROL3(N2), .CONTROL4(N3), .Z(N22) );
  GTECH_BUF B_0 ( .A(N7), .Z(N0) );
  GTECH_BUF B_1 ( .A(N9), .Z(N1) );
  GTECH_BUF B_2 ( .A(N11), .Z(N2) );
  GTECH_BUF B_3 ( .A(N12), .Z(N3) );
  SELECT_OP C150 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b1), 
        .CONTROL1(N0), .CONTROL2(N1), .CONTROL3(N2), .CONTROL4(N3), .Z(N23) );
  SELECT_OP C151 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b0), 
        .CONTROL1(N0), .CONTROL2(N1), .CONTROL3(N2), .CONTROL4(N3), .Z(N24) );
  SELECT_OP C152 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA3({N14, 
        N15, N16, N17, N18, N19, N20, N21}), .CONTROL1(N0), .CONTROL2(N1), 
        .CONTROL3(N2), .Z({N32, N31, N30, N29, N28, N27, N26, N25}) );
  SELECT_OP C153 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .DATA2({1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA3({1'b0, 
        dac_mask[7:1]}), .DATA4({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .CONTROL1(N0), .CONTROL2(N1), .CONTROL3(N2), .CONTROL4(N3), 
        .Z({N40, N39, N38, N37, N36, N35, N34, N33}) );
  SELECT_OP C154 ( .DATA1({1'b0, adc_start}), .DATA2({1'b1, 1'b0}), .DATA3({
        1'b1, dac_mask[0]}), .DATA4({1'b1, 1'b1}), .CONTROL1(N0), .CONTROL2(N1), .CONTROL3(N2), .CONTROL4(N3), .Z({N42, N41}) );
  GTECH_NOT I_0 ( .A(rst_n), .Z(N4) );
  GTECH_NOT I_1 ( .A(state_r[1]), .Z(N5) );
  GTECH_NOT I_2 ( .A(state_r[0]), .Z(N6) );
  GTECH_NOT I_3 ( .A(N8), .Z(N9) );
  GTECH_NOT I_4 ( .A(N10), .Z(N11) );
  GTECH_NOT I_5 ( .A(comparator_val), .Z(N13) );
  GTECH_OR2 C171 ( .A(dac_select_bits[7]), .B(dac_mask[7]), .Z(N14) );
  GTECH_OR2 C172 ( .A(dac_select_bits[6]), .B(dac_mask[6]), .Z(N15) );
  GTECH_OR2 C173 ( .A(dac_select_bits[5]), .B(dac_mask[5]), .Z(N16) );
  GTECH_OR2 C174 ( .A(dac_select_bits[4]), .B(dac_mask[4]), .Z(N17) );
  GTECH_OR2 C175 ( .A(dac_select_bits[3]), .B(dac_mask[3]), .Z(N18) );
  GTECH_OR2 C176 ( .A(dac_select_bits[2]), .B(dac_mask[2]), .Z(N19) );
  GTECH_OR2 C177 ( .A(dac_select_bits[1]), .B(dac_mask[1]), .Z(N20) );
  GTECH_OR2 C178 ( .A(dac_select_bits[0]), .B(dac_mask[0]), .Z(N21) );
  GTECH_OR2 C180 ( .A(dac_select_bits[7]), .B(dac_mask[7]), .Z(adc_val[7]) );
  GTECH_OR2 C181 ( .A(dac_select_bits[6]), .B(dac_mask[6]), .Z(adc_val[6]) );
  GTECH_OR2 C182 ( .A(dac_select_bits[5]), .B(dac_mask[5]), .Z(adc_val[5]) );
  GTECH_OR2 C183 ( .A(dac_select_bits[4]), .B(dac_mask[4]), .Z(adc_val[4]) );
  GTECH_OR2 C184 ( .A(dac_select_bits[3]), .B(dac_mask[3]), .Z(adc_val[3]) );
  GTECH_OR2 C185 ( .A(dac_select_bits[2]), .B(dac_mask[2]), .Z(adc_val[2]) );
  GTECH_OR2 C186 ( .A(dac_select_bits[1]), .B(dac_mask[1]), .Z(adc_val[1]) );
  GTECH_OR2 C187 ( .A(dac_select_bits[0]), .B(dac_mask[0]), .Z(adc_val[0]) );
  GTECH_AND2 C188 ( .A(N13), .B(N11), .Z(N43) );
  GTECH_NOT I_6 ( .A(N43), .Z(N44) );
  GTECH_AND2 C190 ( .A(N24), .B(N44), .Z(N45) );
endmodule

