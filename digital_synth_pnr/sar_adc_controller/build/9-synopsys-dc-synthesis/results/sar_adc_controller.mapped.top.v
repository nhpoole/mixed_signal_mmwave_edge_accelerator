/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in topographical mode
// Version   : L-2016.03-SP5-5
// Date      : Mon Jul 19 16:02:25 2021
/////////////////////////////////////////////////////////////


module sar_adc_controller ( clk, rst_n, adc_start, comparator_val, run_adc_n, 
        adc_val, out_valid );
  output [7:0] adc_val;
  input clk, rst_n, adc_start, comparator_val;
  output run_adc_n, out_valid;
  wire   N22, N23, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36,
         N37, N38, N39, N40, N41, N42, net44, net48, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47;
  wire   [7:0] dac_select_bits;
  wire   [7:0] dac_mask;
  wire   [1:0] state_r;

  sar_adc_controller_SNPS_CLOCK_GATE_HIGH_sar_adc_controller_0 clk_gate_dac_select_bits_reg ( 
        .CLK(clk), .EN(net44), .ENCLK(net48), .TE(1'b0) );
  sky130_fd_sc_hd__dfxtp_1 dac_mask_reg_0_ ( .D(n20), .CLK(clk), .Q(
        dac_mask[0]) );
  sky130_fd_sc_hd__dfxtp_1 state_r_reg_0_ ( .D(n19), .CLK(clk), .Q(state_r[0])
         );
  sky130_fd_sc_hd__dfxtp_1 state_r_reg_1_ ( .D(n18), .CLK(clk), .Q(state_r[1])
         );
  sky130_fd_sc_hd__dfxtp_1 out_valid_reg ( .D(n17), .CLK(clk), .Q(out_valid)
         );
  sky130_fd_sc_hd__dfxtp_1 run_adc_n_reg ( .D(n16), .CLK(clk), .Q(run_adc_n)
         );
  sky130_fd_sc_hd__dfxtp_1 dac_mask_reg_7_ ( .D(n15), .CLK(clk), .Q(
        dac_mask[7]) );
  sky130_fd_sc_hd__dfxtp_1 dac_select_bits_reg_0_ ( .D(n14), .CLK(net48), .Q(
        dac_select_bits[0]) );
  sky130_fd_sc_hd__dfxtp_1 dac_select_bits_reg_7_ ( .D(n13), .CLK(net48), .Q(
        dac_select_bits[7]) );
  sky130_fd_sc_hd__dfxtp_1 dac_mask_reg_6_ ( .D(n12), .CLK(clk), .Q(
        dac_mask[6]) );
  sky130_fd_sc_hd__dfxtp_1 dac_select_bits_reg_6_ ( .D(n11), .CLK(net48), .Q(
        dac_select_bits[6]) );
  sky130_fd_sc_hd__dfxtp_1 dac_mask_reg_5_ ( .D(n10), .CLK(clk), .Q(
        dac_mask[5]) );
  sky130_fd_sc_hd__dfxtp_1 dac_select_bits_reg_5_ ( .D(n9), .CLK(net48), .Q(
        dac_select_bits[5]) );
  sky130_fd_sc_hd__dfxtp_1 dac_mask_reg_4_ ( .D(n8), .CLK(clk), .Q(dac_mask[4]) );
  sky130_fd_sc_hd__dfxtp_1 dac_select_bits_reg_4_ ( .D(n7), .CLK(net48), .Q(
        dac_select_bits[4]) );
  sky130_fd_sc_hd__dfxtp_1 dac_mask_reg_3_ ( .D(n6), .CLK(clk), .Q(dac_mask[3]) );
  sky130_fd_sc_hd__dfxtp_1 dac_select_bits_reg_3_ ( .D(n5), .CLK(net48), .Q(
        dac_select_bits[3]) );
  sky130_fd_sc_hd__dfxtp_1 dac_mask_reg_2_ ( .D(n4), .CLK(clk), .Q(dac_mask[2]) );
  sky130_fd_sc_hd__dfxtp_1 dac_select_bits_reg_2_ ( .D(n3), .CLK(net48), .Q(
        dac_select_bits[2]) );
  sky130_fd_sc_hd__dfxtp_1 dac_mask_reg_1_ ( .D(n2), .CLK(clk), .Q(dac_mask[1]) );
  sky130_fd_sc_hd__dfxtp_1 dac_select_bits_reg_1_ ( .D(n1), .CLK(net48), .Q(
        dac_select_bits[1]) );
  sky130_fd_sc_hd__nand2b_1 U18 ( .A_N(N22), .B(rst_n), .Y(n16) );
  sky130_fd_sc_hd__and2_1 U21 ( .A(N41), .B(rst_n), .X(n19) );
  sky130_fd_sc_hd__and2_1 U4 ( .A(N34), .B(rst_n), .X(n2) );
  sky130_fd_sc_hd__and2_1 U3 ( .A(N26), .B(rst_n), .X(n1) );
  sky130_fd_sc_hd__and2_1 U6 ( .A(N35), .B(rst_n), .X(n4) );
  sky130_fd_sc_hd__and2_1 U7 ( .A(N28), .B(rst_n), .X(n5) );
  sky130_fd_sc_hd__and2_1 U9 ( .A(N29), .B(rst_n), .X(n7) );
  sky130_fd_sc_hd__and2_1 U10 ( .A(N37), .B(rst_n), .X(n8) );
  sky130_fd_sc_hd__and2_1 U11 ( .A(N30), .B(rst_n), .X(n9) );
  sky130_fd_sc_hd__and2_1 U5 ( .A(N27), .B(rst_n), .X(n3) );
  sky130_fd_sc_hd__and2_1 U12 ( .A(N38), .B(rst_n), .X(n10) );
  sky130_fd_sc_hd__and2_1 U13 ( .A(N31), .B(rst_n), .X(n11) );
  sky130_fd_sc_hd__and2_1 U14 ( .A(N39), .B(rst_n), .X(n12) );
  sky130_fd_sc_hd__and2_1 U15 ( .A(N32), .B(rst_n), .X(n13) );
  sky130_fd_sc_hd__and2_1 U8 ( .A(N36), .B(rst_n), .X(n6) );
  sky130_fd_sc_hd__and2_1 U16 ( .A(N25), .B(rst_n), .X(n14) );
  sky130_fd_sc_hd__and2_1 U17 ( .A(N40), .B(rst_n), .X(n15) );
  sky130_fd_sc_hd__and2_1 U20 ( .A(N42), .B(rst_n), .X(n18) );
  sky130_fd_sc_hd__and2_1 U19 ( .A(N23), .B(rst_n), .X(n17) );
  sky130_fd_sc_hd__and2_1 U22 ( .A(N33), .B(rst_n), .X(n20) );
  sky130_fd_sc_hd__nor2_1 U67 ( .A(dac_select_bits[0]), .B(dac_mask[0]), .Y(
        n35) );
  sky130_fd_sc_hd__inv_1 U68 ( .A(n35), .Y(adc_val[0]) );
  sky130_fd_sc_hd__nor2_1 U69 ( .A(dac_mask[5]), .B(dac_select_bits[5]), .Y(
        n40) );
  sky130_fd_sc_hd__inv_1 U70 ( .A(n40), .Y(adc_val[5]) );
  sky130_fd_sc_hd__nor2_1 U71 ( .A(dac_mask[6]), .B(dac_select_bits[6]), .Y(
        n41) );
  sky130_fd_sc_hd__inv_1 U72 ( .A(n41), .Y(adc_val[6]) );
  sky130_fd_sc_hd__nor2_1 U73 ( .A(dac_mask[3]), .B(dac_select_bits[3]), .Y(
        n38) );
  sky130_fd_sc_hd__inv_1 U74 ( .A(n38), .Y(adc_val[3]) );
  sky130_fd_sc_hd__nor2_1 U75 ( .A(dac_mask[2]), .B(dac_select_bits[2]), .Y(
        n37) );
  sky130_fd_sc_hd__inv_1 U76 ( .A(n37), .Y(adc_val[2]) );
  sky130_fd_sc_hd__nor2_1 U77 ( .A(dac_mask[1]), .B(dac_select_bits[1]), .Y(
        n36) );
  sky130_fd_sc_hd__inv_1 U78 ( .A(n36), .Y(adc_val[1]) );
  sky130_fd_sc_hd__nor2_1 U79 ( .A(dac_mask[7]), .B(dac_select_bits[7]), .Y(
        n42) );
  sky130_fd_sc_hd__inv_1 U80 ( .A(n42), .Y(adc_val[7]) );
  sky130_fd_sc_hd__nor2_1 U81 ( .A(dac_mask[4]), .B(dac_select_bits[4]), .Y(
        n39) );
  sky130_fd_sc_hd__inv_1 U82 ( .A(n39), .Y(adc_val[4]) );
  sky130_fd_sc_hd__inv_2 U83 ( .A(state_r[0]), .Y(n46) );
  sky130_fd_sc_hd__inv_1 U84 ( .A(state_r[1]), .Y(n45) );
  sky130_fd_sc_hd__nand2_1 U85 ( .A(n46), .B(n45), .Y(N42) );
  sky130_fd_sc_hd__inv_1 U86 ( .A(N42), .Y(N22) );
  sky130_fd_sc_hd__nand2_1 U88 ( .A(comparator_val), .B(n46), .Y(n34) );
  sky130_fd_sc_hd__nand3_1 U89 ( .A(n34), .B(state_r[1]), .C(rst_n), .Y(net44)
         );
  sky130_fd_sc_hd__nand2_1 U90 ( .A(state_r[1]), .B(n46), .Y(n47) );
  sky130_fd_sc_hd__nor2_1 U91 ( .A(n35), .B(n47), .Y(N25) );
  sky130_fd_sc_hd__nor2_1 U92 ( .A(n36), .B(n47), .Y(N26) );
  sky130_fd_sc_hd__nor2_1 U93 ( .A(n37), .B(n47), .Y(N27) );
  sky130_fd_sc_hd__nor2_1 U94 ( .A(n38), .B(n47), .Y(N28) );
  sky130_fd_sc_hd__nor2_1 U95 ( .A(n39), .B(n47), .Y(N29) );
  sky130_fd_sc_hd__nor2_1 U96 ( .A(n40), .B(n47), .Y(N30) );
  sky130_fd_sc_hd__nor2_1 U97 ( .A(n41), .B(n47), .Y(N31) );
  sky130_fd_sc_hd__nor2_1 U98 ( .A(n42), .B(n47), .Y(N32) );
  sky130_fd_sc_hd__nor2_1 U99 ( .A(n46), .B(n45), .Y(N23) );
  sky130_fd_sc_hd__inv_1 U100 ( .A(dac_mask[0]), .Y(n44) );
  sky130_fd_sc_hd__a21oi_1 U101 ( .A1(N22), .A2(adc_start), .B1(N23), .Y(n43)
         );
  sky130_fd_sc_hd__o21ai_1 U102 ( .A1(n45), .A2(n44), .B1(n43), .Y(N41) );
  sky130_fd_sc_hd__nor2_1 U103 ( .A(state_r[1]), .B(n46), .Y(N40) );
  sky130_fd_sc_hd__nor2b_1 U104 ( .B_N(dac_mask[7]), .A(n47), .Y(N39) );
  sky130_fd_sc_hd__nor2b_1 U105 ( .B_N(dac_mask[6]), .A(n47), .Y(N38) );
  sky130_fd_sc_hd__nor2b_1 U106 ( .B_N(dac_mask[5]), .A(n47), .Y(N37) );
  sky130_fd_sc_hd__nor2b_1 U107 ( .B_N(dac_mask[4]), .A(n47), .Y(N36) );
  sky130_fd_sc_hd__nor2b_1 U108 ( .B_N(dac_mask[3]), .A(n47), .Y(N35) );
  sky130_fd_sc_hd__nor2b_1 U109 ( .B_N(dac_mask[2]), .A(n47), .Y(N34) );
  sky130_fd_sc_hd__nor2b_1 U110 ( .B_N(dac_mask[1]), .A(n47), .Y(N33) );
endmodule

