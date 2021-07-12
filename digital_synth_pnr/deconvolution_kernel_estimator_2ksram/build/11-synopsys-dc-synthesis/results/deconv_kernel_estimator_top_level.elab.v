/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : L-2016.03-SP5-5
// Date      : Sat Jul 10 20:58:22 2021
/////////////////////////////////////////////////////////////


module deserializer_FETCH_WIDTH16 ( clk, rst_n, serial_data, en, parallel_data, 
        out_valid );
  output [15:0] parallel_data;
  input clk, rst_n, serial_data, en;
  output out_valid;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57,
         N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70;
  wire   [3:0] count_r;

  \**SEQGEN**  \count_r_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N39), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count_r[3]), 
        .synch_clear(N56), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \count_r_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N38), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count_r[2]), 
        .synch_clear(N56), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \count_r_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N37), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count_r[1]), 
        .synch_clear(N56), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \count_r_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N36), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count_r[0]), 
        .synch_clear(N56), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  out_valid_reg ( .clear(1'b0), .preset(1'b0), .next_state(N59), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(out_valid), 
        .synch_clear(N56), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \parallel_data_reg[15]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(serial_data), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(parallel_data[15]), .synch_clear(N11), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N55) );
  \**SEQGEN**  \parallel_data_reg[14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(serial_data), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(parallel_data[14]), .synch_clear(N11), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N54) );
  \**SEQGEN**  \parallel_data_reg[13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(serial_data), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(parallel_data[13]), .synch_clear(N11), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N53) );
  \**SEQGEN**  \parallel_data_reg[12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(serial_data), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(parallel_data[12]), .synch_clear(N11), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N52) );
  \**SEQGEN**  \parallel_data_reg[11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(serial_data), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(parallel_data[11]), .synch_clear(N11), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N51) );
  \**SEQGEN**  \parallel_data_reg[10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(serial_data), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(parallel_data[10]), .synch_clear(N11), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N50) );
  \**SEQGEN**  \parallel_data_reg[9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(serial_data), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(parallel_data[9]), .synch_clear(N11), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N49) );
  \**SEQGEN**  \parallel_data_reg[8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(serial_data), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(parallel_data[8]), .synch_clear(N11), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N48) );
  \**SEQGEN**  \parallel_data_reg[7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(serial_data), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(parallel_data[7]), .synch_clear(N11), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N47) );
  \**SEQGEN**  \parallel_data_reg[6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(serial_data), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(parallel_data[6]), .synch_clear(N11), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N46) );
  \**SEQGEN**  \parallel_data_reg[5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(serial_data), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(parallel_data[5]), .synch_clear(N11), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N45) );
  \**SEQGEN**  \parallel_data_reg[4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(serial_data), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(parallel_data[4]), .synch_clear(N11), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N44) );
  \**SEQGEN**  \parallel_data_reg[3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(serial_data), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(parallel_data[3]), .synch_clear(N11), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N43) );
  \**SEQGEN**  \parallel_data_reg[2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(serial_data), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(parallel_data[2]), .synch_clear(N11), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N42) );
  \**SEQGEN**  \parallel_data_reg[1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(serial_data), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(parallel_data[1]), .synch_clear(N11), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N41) );
  \**SEQGEN**  \parallel_data_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(serial_data), .clocked_on(clk), .data_in(1'b0), .enable(
        1'b0), .Q(parallel_data[0]), .synch_clear(N11), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N40) );
  GTECH_OR2 C97 ( .A(N11), .B(N13), .Z(N56) );
  GTECH_AND2 C103 ( .A(count_r[2]), .B(count_r[3]), .Z(N57) );
  GTECH_AND2 C104 ( .A(count_r[1]), .B(N57), .Z(N58) );
  GTECH_AND2 C105 ( .A(count_r[0]), .B(N58), .Z(N59) );
  GTECH_AND2 C106 ( .A(count_r[2]), .B(count_r[3]), .Z(N60) );
  GTECH_AND2 C107 ( .A(count_r[1]), .B(N60), .Z(N61) );
  GTECH_AND2 C108 ( .A(count_r[0]), .B(N61), .Z(N62) );
  ADD_UNS_OP add_1170 ( .A(count_r), .B(1'b1), .Z({N35, N34, N33, N32}) );
  GTECH_AND2 C109 ( .A(count_r[2]), .B(count_r[3]), .Z(N63) );
  GTECH_AND2 C110 ( .A(N0), .B(count_r[3]), .Z(N64) );
  GTECH_NOT I_0 ( .A(count_r[2]), .Z(N0) );
  GTECH_AND2 C111 ( .A(count_r[2]), .B(N1), .Z(N65) );
  GTECH_NOT I_1 ( .A(count_r[3]), .Z(N1) );
  GTECH_AND2 C112 ( .A(N2), .B(N3), .Z(N66) );
  GTECH_NOT I_2 ( .A(count_r[2]), .Z(N2) );
  GTECH_NOT I_3 ( .A(count_r[3]), .Z(N3) );
  GTECH_AND2 C113 ( .A(count_r[0]), .B(count_r[1]), .Z(N67) );
  GTECH_AND2 C114 ( .A(N4), .B(count_r[1]), .Z(N68) );
  GTECH_NOT I_4 ( .A(count_r[0]), .Z(N4) );
  GTECH_AND2 C115 ( .A(count_r[0]), .B(N5), .Z(N69) );
  GTECH_NOT I_5 ( .A(count_r[1]), .Z(N5) );
  GTECH_AND2 C116 ( .A(N6), .B(N7), .Z(N70) );
  GTECH_NOT I_6 ( .A(count_r[0]), .Z(N6) );
  GTECH_NOT I_7 ( .A(count_r[1]), .Z(N7) );
  GTECH_AND2 C117 ( .A(N63), .B(N67), .Z(N30) );
  GTECH_AND2 C118 ( .A(N63), .B(N68), .Z(N29) );
  GTECH_AND2 C119 ( .A(N63), .B(N69), .Z(N28) );
  GTECH_AND2 C120 ( .A(N63), .B(N70), .Z(N27) );
  GTECH_AND2 C121 ( .A(N64), .B(N67), .Z(N26) );
  GTECH_AND2 C122 ( .A(N64), .B(N68), .Z(N25) );
  GTECH_AND2 C123 ( .A(N64), .B(N69), .Z(N24) );
  GTECH_AND2 C124 ( .A(N64), .B(N70), .Z(N23) );
  GTECH_AND2 C125 ( .A(N65), .B(N67), .Z(N22) );
  GTECH_AND2 C126 ( .A(N65), .B(N68), .Z(N21) );
  GTECH_AND2 C127 ( .A(N65), .B(N69), .Z(N20) );
  GTECH_AND2 C128 ( .A(N65), .B(N70), .Z(N19) );
  GTECH_AND2 C129 ( .A(N66), .B(N67), .Z(N18) );
  GTECH_AND2 C130 ( .A(N66), .B(N68), .Z(N17) );
  GTECH_AND2 C131 ( .A(N66), .B(N69), .Z(N16) );
  GTECH_AND2 C132 ( .A(N66), .B(N70), .Z(N15) );
  SELECT_OP C133 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({N35, N34, N33, 
        N32}), .CONTROL1(N8), .CONTROL2(N31), .Z({N39, N38, N37, N36}) );
  GTECH_BUF B_0 ( .A(N62), .Z(N8) );
  SELECT_OP C134 ( .DATA1({N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, 
        N20, N19, N18, N17, N16, N15}), .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .CONTROL1(N9), .CONTROL2(N10), .Z({N55, N54, N53, N52, N51, N50, N49, 
        N48, N47, N46, N45, N44, N43, N42, N41, N40}) );
  GTECH_BUF B_1 ( .A(en), .Z(N9) );
  GTECH_BUF B_2 ( .A(N13), .Z(N10) );
  GTECH_NOT I_8 ( .A(rst_n), .Z(N11) );
  GTECH_BUF B_3 ( .A(rst_n), .Z(N12) );
  GTECH_NOT I_9 ( .A(en), .Z(N13) );
  GTECH_AND2 C143 ( .A(N12), .B(en), .Z(N14) );
  GTECH_NOT I_10 ( .A(N62), .Z(N31) );
  GTECH_AND2 C146 ( .A(N14), .B(N31) );
endmodule


module serializer_FETCH_WIDTH16 ( clk, rst_n, en, parallel_data, sender_deq, 
        serial_data, out_valid );
  input [15:0] parallel_data;
  input clk, rst_n, en;
  output sender_deq, serial_data, out_valid;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24;
  wire   [3:0] select_r;

  \**SEQGEN**  \select_r_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N11), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(select_r[3]), 
        .synch_clear(N17), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \select_r_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N10), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(select_r[2]), 
        .synch_clear(N17), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \select_r_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N9), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(select_r[1]), 
        .synch_clear(N17), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \select_r_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N8), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(select_r[0]), 
        .synch_clear(N17), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  out_valid_reg ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(out_valid), 
        .synch_clear(1'b0), .synch_preset(N12), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  serial_data_reg ( .clear(1'b0), .preset(1'b0), .next_state(N15), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(serial_data), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  sender_deq_reg ( .clear(1'b0), .preset(1'b0), .next_state(N16), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(sender_deq), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  GTECH_OR2 C38 ( .A(N5), .B(N7), .Z(N17) );
  GTECH_NOT I_0 ( .A(select_r[3]), .Z(N18) );
  GTECH_NOT I_1 ( .A(select_r[2]), .Z(N19) );
  GTECH_NOT I_2 ( .A(select_r[0]), .Z(N20) );
  GTECH_OR2 C46 ( .A(N19), .B(N18), .Z(N21) );
  GTECH_OR2 C47 ( .A(select_r[1]), .B(N21), .Z(N22) );
  GTECH_OR2 C48 ( .A(N20), .B(N22), .Z(N23) );
  GTECH_NOT I_3 ( .A(N23), .Z(N24) );
  ADD_UNS_OP add_1974 ( .A(select_r), .B(1'b1), .Z({N11, N10, N9, N8}) );
  SELECT_OP C50 ( .DATA1(N14), .DATA2(1'b0), .CONTROL1(N0), .CONTROL2(N13), 
        .Z(N15) );
  GTECH_BUF B_0 ( .A(N12), .Z(N0) );
  SELECT_OP C51 ( .DATA1(N24), .DATA2(1'b0), .CONTROL1(N0), .CONTROL2(N13), 
        .Z(N16) );
  MUX_OP C52 ( .D0(parallel_data[0]), .D1(parallel_data[1]), .D2(
        parallel_data[2]), .D3(parallel_data[3]), .D4(parallel_data[4]), .D5(
        parallel_data[5]), .D6(parallel_data[6]), .D7(parallel_data[7]), .D8(
        parallel_data[8]), .D9(parallel_data[9]), .D10(parallel_data[10]), 
        .D11(parallel_data[11]), .D12(parallel_data[12]), .D13(
        parallel_data[13]), .D14(parallel_data[14]), .D15(parallel_data[15]), 
        .S0(N1), .S1(N2), .S2(N3), .S3(N4), .Z(N14) );
  GTECH_BUF B_1 ( .A(select_r[0]), .Z(N1) );
  GTECH_BUF B_2 ( .A(select_r[1]), .Z(N2) );
  GTECH_BUF B_3 ( .A(select_r[2]), .Z(N3) );
  GTECH_BUF B_4 ( .A(select_r[3]), .Z(N4) );
  GTECH_NOT I_4 ( .A(rst_n), .Z(N5) );
  GTECH_BUF B_5 ( .A(rst_n), .Z(N6) );
  GTECH_NOT I_5 ( .A(en), .Z(N7) );
  GTECH_AND2 C60 ( .A(N6), .B(en) );
  GTECH_AND2 C61 ( .A(rst_n), .B(en), .Z(N12) );
  GTECH_NOT I_6 ( .A(N12), .Z(N13) );
endmodule


module cordic_polar_to_rect ( i_clk, i_reset, i_stb, i_aux, i_xval, i_yval, 
        i_phase, o_busy, o_done, o_xval, o_yval, o_aux );
  input [15:0] i_xval;
  input [15:0] i_yval;
  input [15:0] i_phase;
  output [15:0] o_xval;
  output [15:0] o_yval;
  input i_clk, i_reset, i_stb, i_aux;
  output o_busy, o_done, o_aux;
  wire   N0, N1, N2, N3, N4, N7, N8, N9, N10, N12, N13, N14, N15, N16, N17,
         N18, N19, N20, N21, N22, N23, N24, aux, N25, N26, N27, N28, N29, N30,
         N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44,
         N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58,
         N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71, N72,
         N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86,
         N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N107, N108, N109, N110, N111,
         N112, N113, N114, N115, N116, N117, N118, N119, N120, N121, N122,
         N123, N124, N125, N126, N127, N128, N129, N130, N131, N132, N133,
         N134, N135, N136, N137, N138, N139, N140, N141, N142, N143, N144,
         N145, N146, N147, N148, N149, N150, N151, N152, N153, N154, N155,
         N156, N157, N158, N159, N160, N161, N162, N163, N164, N165, N166,
         N167, N168, N169, N170, N171, N172, N173, N174, N175, N176, N177,
         N178, N179, N180, N181, N182, N183, N184, N185, N186, N187, N188,
         N189, N190, N191, N192, N193, N194, N195, N196, N197, N198, N199,
         N200, N201, N202, N203, N204, N205, N206, N207, N208, N209, N210,
         N211, N212, N213, N214, N215, N216, N217, N218, N219, N220, N221,
         N222, N223, N224, N225, N226, N227, N228, N229, N230, N231, N232,
         N233, N234, N235, N236, N237, N238, N239, N240, N241, N242, N243,
         N244, N245, N246, N247, N248, N249, N250, N251, N252, N253, N254,
         N255, N256, N257, N258, N259, N260, N261, N262, N263, N264, N265,
         N266, N267, N268, N269, N270, N271, N272, N273, N274, N275, N276,
         N277, N278, N279, N280, N281, N282, N283, N284, N285, N286, N287,
         N288, N289, N290, N291, N292, N293, N294, N295, N296, N297, N298,
         N299, N300, N301, N302, N303, N304, N305, N306, N307, N308, N309,
         N310, N311, N312, N313, N314, N315, N316, N317, N318, N319, N320,
         N321, N322, N323, N324, N325, N326, N327, N328, N329, N330, N331,
         N332, N333, N334, N335, N336, N337, N338, N339, N340, N341, N342,
         N343, N344, N345, N346, N347, N348, N349, N350, N351, idle, N352,
         pre_valid, N353, N354, N355, N356, N357, N358, N359, N360, N361, N362,
         N363, N364, N365, N366, N367, N368, N369, N370, N371, N372, N373,
         N374, N375, N376, N377, N378, N379, N380, N381, N382, N383, N384,
         N385, N386, N387, N388, N389, N390, N391, N392, N393, N394, N395,
         N396, N397, N398, N399, N400, N401, N402, N403, N404, N405, N406,
         N407, N408, N409, N410, N411, N412, N413, N414, N415, N416, N417,
         N418, N419, N420, N421, N422, N423, N424, N425, N426, N427, N428,
         N429, N430, N431, N432, N433, N434, N435, N436, N437, N438, N439,
         N440, N441, N442, N443, N444, N445, N446, N447, N448, N449, N450,
         N451, N452, N453, N454, N455, N456, N457, N458, N459, N460, N461,
         N462, N463, N464, N465, N466, N467, N468, N469, N470, N471, N472,
         N473, N474, N475, N476, N477, N478, N479, N480, N481, N482, N483,
         N484, N485, N486, N487, N488, N489, N490, N491, N492, N493, N494,
         N495, N496, N497, N498, N499, N500, N501, N502, N503, N504, N505,
         N506, N507, N508, N509, N510, N511, N512, N513, N514, N515, N516,
         N517, N518, N519, N520, N521, N522, N523, N524, N525, N526, N527,
         N528, N529, N530, N531, N532, N533, N534, N535, N536, N537, N538,
         N539, N540, N541, N542, N543, N544, N545, N546, N547, N548, N549,
         N550, N551, N552, N553, N554, N555, N556, N557, N558, N559, N560,
         N561, N562, N563, N564, N565, N566, N567, N568, N569, N570, N571,
         N572, N573, N574, N575, N576, N577, N578, N579, N580, N581, N582,
         N583, N584, N585, N586, N587, N588, N589, N590, N591, N592, N593,
         N594, N595, N596, N597, N598, N599, N600, N601, N602, N603, N604,
         N605, N606, N607, N608, N609, N610, N611, N612, N613, N614, N615,
         N616, N5, N6, N11, N617, N618, N619, N620, N621, N622, N623, N624,
         N625;
  wire   [18:0] prex;
  wire   [18:0] prey;
  wire   [15:0] preph;
  wire   [3:0] state;
  wire   [15:0] cangle;
  wire   [15:0] ph;
  wire   [18:0] xv;
  wire   [18:0] yv;
  wire   [17:2] final_xv;
  wire   [17:2] final_yv;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  \**SEQGEN**  aux_reg ( .clear(1'b0), .preset(1'b0), .next_state(i_aux), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(aux), 
        .synch_clear(i_reset), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  GTECH_AND2 C22 ( .A(N26), .B(N27), .Z(N29) );
  GTECH_AND2 C23 ( .A(N29), .B(N28), .Z(N30) );
  GTECH_OR2 C25 ( .A(i_phase[15]), .B(i_phase[14]), .Z(N31) );
  GTECH_OR2 C26 ( .A(N31), .B(N28), .Z(N32) );
  GTECH_OR2 C29 ( .A(i_phase[15]), .B(N27), .Z(N34) );
  GTECH_OR2 C30 ( .A(N34), .B(i_phase[13]), .Z(N35) );
  GTECH_OR2 C35 ( .A(N34), .B(N28), .Z(N37) );
  GTECH_OR2 C39 ( .A(N41), .B(i_phase[13]), .Z(N39) );
  GTECH_OR2 C43 ( .A(N26), .B(i_phase[14]), .Z(N41) );
  GTECH_OR2 C44 ( .A(N41), .B(N28), .Z(N42) );
  GTECH_OR2 C48 ( .A(N26), .B(N27), .Z(N44) );
  GTECH_OR2 C49 ( .A(N44), .B(i_phase[13]), .Z(N45) );
  GTECH_AND2 C51 ( .A(i_phase[15]), .B(i_phase[14]), .Z(N47) );
  GTECH_AND2 C52 ( .A(N47), .B(i_phase[13]), .Z(N48) );
  \**SEQGEN**  \prey_reg[18]  ( .clear(1'b0), .preset(1'b0), .next_state(N334), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[18]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[17]  ( .clear(1'b0), .preset(1'b0), .next_state(N333), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[17]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[16]  ( .clear(1'b0), .preset(1'b0), .next_state(N332), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[16]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[15]  ( .clear(1'b0), .preset(1'b0), .next_state(N331), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[15]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[14]  ( .clear(1'b0), .preset(1'b0), .next_state(N330), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[14]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[13]  ( .clear(1'b0), .preset(1'b0), .next_state(N329), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[13]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[12]  ( .clear(1'b0), .preset(1'b0), .next_state(N328), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[12]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(N327), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[11]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(N326), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[10]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(N325), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(N324), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N323), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N322), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N321), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N320), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N319), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N318), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N317), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[1]), 
        .synch_clear(N616), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N316), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[0]), 
        .synch_clear(N616), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[15]  ( .clear(1'b0), .preset(1'b0), .next_state(N350), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[15]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[14]  ( .clear(1'b0), .preset(1'b0), .next_state(N349), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[14]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[13]  ( .clear(1'b0), .preset(1'b0), .next_state(N348), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[13]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[12]  ( .clear(1'b0), .preset(1'b0), .next_state(N347), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[12]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(N346), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[11]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(N345), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[10]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(N344), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(N343), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N342), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N341), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N340), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N339), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N338), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N337), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N336), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N335), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[18]  ( .clear(1'b0), .preset(1'b0), .next_state(N315), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[18]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[17]  ( .clear(1'b0), .preset(1'b0), .next_state(N314), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[17]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[16]  ( .clear(1'b0), .preset(1'b0), .next_state(N313), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[16]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[15]  ( .clear(1'b0), .preset(1'b0), .next_state(N312), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[15]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[14]  ( .clear(1'b0), .preset(1'b0), .next_state(N311), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[14]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[13]  ( .clear(1'b0), .preset(1'b0), .next_state(N310), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[13]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[12]  ( .clear(1'b0), .preset(1'b0), .next_state(N309), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[12]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(N308), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[11]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(N307), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[10]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(N306), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(N305), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N304), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N303), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N302), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N301), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N300), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N299), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N298), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[1]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N297), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[0]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  idle_reg ( .clear(1'b0), .preset(1'b0), .next_state(1'b1), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(idle), 
        .synch_clear(i_stb), .synch_preset(i_reset), .synch_toggle(1'b0), 
        .synch_enable(N352) );
  \**SEQGEN**  pre_valid_reg ( .clear(1'b0), .preset(1'b0), .next_state(N353), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(pre_valid), 
        .synch_clear(i_reset), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[15]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N354), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        cangle[15]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[14]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N354), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        cangle[14]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[13]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N354), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        cangle[13]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[12]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N354), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        cangle[12]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N354), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        cangle[11]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N354), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        cangle[10]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(N354), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(cangle[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(N354), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(cangle[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N354), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(cangle[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N354), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(cangle[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N354), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(cangle[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N354), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(cangle[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N354), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(cangle[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N354), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(cangle[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N354), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(cangle[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N354), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(cangle[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \state_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N365), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(state[3]), 
        .synch_clear(i_reset), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \state_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N364), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(state[2]), 
        .synch_clear(i_reset), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \state_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N363), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(state[1]), 
        .synch_clear(i_reset), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \state_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N362), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(state[0]), 
        .synch_clear(i_reset), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  ASHR_TC_UNS_OP sra_285 ( .A(yv), .SH(state), .Z({N388, N387, N386, N385, 
        N384, N383, N382, N381, N380, N379, N378, N377, N376, N375, N374, N373, 
        N372, N371, N370}) );
  ASHR_TC_UNS_OP sra_286 ( .A(xv), .SH(state), .Z({N426, N425, N424, N423, 
        N422, N421, N420, N419, N418, N417, N416, N415, N414, N413, N412, N411, 
        N410, N409, N408}) );
  ASHR_TC_UNS_OP sra_292 ( .A(yv), .SH(state), .Z({N480, N479, N478, N477, 
        N476, N475, N474, N473, N472, N471, N470, N469, N468, N467, N466, N465, 
        N464, N463, N462}) );
  ASHR_TC_UNS_OP sra_293 ( .A(xv), .SH(state), .Z({N518, N517, N516, N515, 
        N514, N513, N512, N511, N510, N509, N508, N507, N506, N505, N504, N503, 
        N502, N501, N500}) );
  \**SEQGEN**  \ph_reg[15]  ( .clear(1'b0), .preset(1'b0), .next_state(N607), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[15]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[14]  ( .clear(1'b0), .preset(1'b0), .next_state(N606), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[14]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[13]  ( .clear(1'b0), .preset(1'b0), .next_state(N605), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[13]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[12]  ( .clear(1'b0), .preset(1'b0), .next_state(N604), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[12]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(N603), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[11]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(N602), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[10]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(N601), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(N600), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N599), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N598), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N597), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N596), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N595), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N594), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N593), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N592), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[18]  ( .clear(1'b0), .preset(1'b0), .next_state(N572), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[18]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[17]  ( .clear(1'b0), .preset(1'b0), .next_state(N571), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[17]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[16]  ( .clear(1'b0), .preset(1'b0), .next_state(N570), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[16]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[15]  ( .clear(1'b0), .preset(1'b0), .next_state(N569), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[15]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[14]  ( .clear(1'b0), .preset(1'b0), .next_state(N568), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[14]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[13]  ( .clear(1'b0), .preset(1'b0), .next_state(N567), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[13]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[12]  ( .clear(1'b0), .preset(1'b0), .next_state(N566), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[12]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(N565), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[11]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(N564), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[10]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(N563), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(N562), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N561), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N560), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N559), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N558), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N557), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N556), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N555), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N554), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[18]  ( .clear(1'b0), .preset(1'b0), .next_state(N591), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[18]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[17]  ( .clear(1'b0), .preset(1'b0), .next_state(N590), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[17]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[16]  ( .clear(1'b0), .preset(1'b0), .next_state(N589), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[16]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[15]  ( .clear(1'b0), .preset(1'b0), .next_state(N588), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[15]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[14]  ( .clear(1'b0), .preset(1'b0), .next_state(N587), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[14]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[13]  ( .clear(1'b0), .preset(1'b0), .next_state(N586), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[13]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[12]  ( .clear(1'b0), .preset(1'b0), .next_state(N585), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[12]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(N584), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[11]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(N583), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[10]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(N582), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(N581), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N580), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N579), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N578), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N577), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N576), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N575), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N574), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N573), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  GEQ_UNS_OP gte_323 ( .A(state), .B({1'b1, 1'b1, 1'b0, 1'b0}), .Z(N612) );
  \**SEQGEN**  o_done_reg ( .clear(1'b0), .preset(1'b0), .next_state(1'b1), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(o_done), 
        .synch_clear(i_reset), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N614) );
  GEQ_UNS_OP gte_332 ( .A(state), .B({1'b1, 1'b1, 1'b0, 1'b0}), .Z(N615) );
  \**SEQGEN**  o_aux_reg ( .clear(1'b0), .preset(1'b0), .next_state(aux), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(o_aux), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N615) );
  \**SEQGEN**  \o_xval_reg[15]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_xv[17]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_xval[15]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_xval_reg[14]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_xv[16]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_xval[14]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_xval_reg[13]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_xv[15]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_xval[13]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_xval_reg[12]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_xv[14]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_xval[12]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_xval_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_xv[13]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_xval[11]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_xval_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_xv[12]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_xval[10]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_xval_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_xv[11]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_xval[9]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_xval_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_xv[10]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_xval[8]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_xval_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_xv[9]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_xval[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_xval_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_xv[8]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_xval[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_xval_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_xv[7]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_xval[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_xval_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_xv[6]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_xval[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_xval_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_xv[5]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_xval[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_xval_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_xv[4]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_xval[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_xval_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_xv[3]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_xval[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_xval_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_xv[2]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_xval[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_yval_reg[15]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_yv[17]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_yval[15]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_yval_reg[14]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_yv[16]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_yval[14]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_yval_reg[13]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_yv[15]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_yval[13]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_yval_reg[12]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_yv[14]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_yval[12]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_yval_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_yv[13]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_yval[11]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_yval_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_yv[12]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_yval[10]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_yval_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_yv[11]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_yval[9]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_yval_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_yv[10]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_yval[8]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_yval_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_yv[9]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_yval[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_yval_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_yv[8]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_yval[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_yval_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_yv[7]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_yval[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_yval_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_yv[6]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_yval[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_yval_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_yv[5]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_yval[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_yval_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_yv[4]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_yval[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_yval_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_yv[3]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_yval[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  \o_yval_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_yv[2]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_yval[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  GTECH_OR2 C328 ( .A(N30), .B(N33), .Z(N616) );
  GTECH_NOT I_0 ( .A(state[3]), .Z(N617) );
  GTECH_NOT I_1 ( .A(state[2]), .Z(N618) );
  GTECH_OR2 C333 ( .A(N618), .B(N617), .Z(N619) );
  GTECH_OR2 C334 ( .A(state[1]), .B(N619), .Z(N620) );
  GTECH_OR2 C335 ( .A(state[0]), .B(N620), .Z(N621) );
  GTECH_NOT I_2 ( .A(N621), .Z(N351) );
  GTECH_OR2 C339 ( .A(N618), .B(N617), .Z(N622) );
  GTECH_OR2 C340 ( .A(state[1]), .B(N622), .Z(N623) );
  GTECH_OR2 C341 ( .A(state[0]), .B(N623), .Z(N624) );
  GTECH_NOT I_3 ( .A(N624), .Z(N625) );
  ADD_TC_OP add_310 ( .A(xv[17:0]), .B({1'b0, xv[2], N610}), .Z({final_xv, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1}) );
  ADD_TC_OP add_313 ( .A(yv[17:0]), .B({1'b0, yv[2], N611}), .Z({final_yv, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3}) );
  SUB_UNS_OP sub_294 ( .A(ph), .B(cangle), .Z({N553, N552, N551, N550, N549, 
        N548, N547, N546, N545, N544, N543, N542, N541, N540, N539, N538}) );
  SUB_TC_OP sub_135 ( .A(1'b0), .B({i_yval, 1'b0, 1'b0}), .Z({N67, N66, N65, 
        N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, 
        N50, N49}) );
  SUB_UNS_OP sub_137 ( .A(i_phase), .B({1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Z({N83, N82, 
        N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68})
         );
  SUB_TC_OP sub_292 ( .A(xv), .B({N480, N479, N478, N477, N476, N475, N474, 
        N473, N472, N471, N470, N469, N468, N467, N466, N465, N464, N463, N462}), .Z({N499, N498, N497, N496, N495, N494, N493, N492, N491, N490, N489, N488, 
        N487, N486, N485, N484, N483, N482, N481}) );
  ADD_TC_OP add_293 ( .A(yv), .B({N518, N517, N516, N515, N514, N513, N512, 
        N511, N510, N509, N508, N507, N506, N505, N504, N503, N502, N501, N500}), .Z({N537, N536, N535, N534, N533, N532, N531, N530, N529, N528, N527, N526, 
        N525, N524, N523, N522, N521, N520, N519}) );
  ADD_UNS_OP add_287 ( .A(ph), .B(cangle), .Z({N461, N460, N459, N458, N457, 
        N456, N455, N454, N453, N452, N451, N450, N449, N448, N447, N446}) );
  SUB_TC_OP sub_164 ( .A(1'b0), .B({i_xval, 1'b0, 1'b0}), .Z({N245, N244, N243, 
        N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232, N231, 
        N230, N229, N228, N227}) );
  SUB_UNS_OP sub_165 ( .A(i_phase), .B({1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Z({N261, 
        N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, 
        N248, N247, N246}) );
  SUB_TC_OP sub_171 ( .A(1'b0), .B({i_xval, 1'b0, 1'b0}), .Z({N280, N279, N278, 
        N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, N266, 
        N265, N264, N263, N262}) );
  SUB_UNS_OP sub_172 ( .A(i_phase), .B({1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Z({N296, 
        N295, N294, N293, N292, N291, N290, N289, N288, N287, N286, N285, N284, 
        N283, N282, N281}) );
  SUB_TC_OP sub_142 ( .A(1'b0), .B({i_yval, 1'b0, 1'b0}), .Z({N102, N101, N100, 
        N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, 
        N85, N84}) );
  SUB_UNS_OP sub_144 ( .A(i_phase), .B({1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Z({N118, N117, 
        N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, 
        N104, N103}) );
  SUB_TC_OP sub_149 ( .A(1'b0), .B({i_xval, 1'b0, 1'b0}), .Z({N137, N136, N135, 
        N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, 
        N122, N121, N120, N119}) );
  SUB_TC_OP sub_150 ( .A(1'b0), .B({i_yval, 1'b0, 1'b0}), .Z({N156, N155, N154, 
        N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, 
        N141, N140, N139, N138}) );
  SUB_UNS_OP sub_151 ( .A(i_phase), .B({1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Z({N172, 
        N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, 
        N159, N158, N157}) );
  SUB_TC_OP sub_156 ( .A(1'b0), .B({i_xval, 1'b0, 1'b0}), .Z({N191, N190, N189, 
        N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, 
        N176, N175, N174, N173}) );
  SUB_TC_OP sub_157 ( .A(1'b0), .B({i_yval, 1'b0, 1'b0}), .Z({N210, N209, N208, 
        N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, 
        N195, N194, N193, N192}) );
  SUB_UNS_OP sub_158 ( .A(i_phase), .B({1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Z({N226, 
        N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, 
        N213, N212, N211}) );
  ADD_TC_OP add_285 ( .A(xv), .B({N388, N387, N386, N385, N384, N383, N382, 
        N381, N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370}), .Z({N407, N406, N405, N404, N403, N402, N401, N400, N399, N398, N397, N396, 
        N395, N394, N393, N392, N391, N390, N389}) );
  SUB_TC_OP sub_286 ( .A(yv), .B({N426, N425, N424, N423, N422, N421, N420, 
        N419, N418, N417, N416, N415, N414, N413, N412, N411, N410, N409, N408}), .Z({N445, N444, N443, N442, N441, N440, N439, N438, N437, N436, N435, N434, 
        N433, N432, N431, N430, N429, N428, N427}) );
  ADD_UNS_OP add_266 ( .A(state), .B(1'b1), .Z({N361, N360, N359, N358}) );
  GTECH_NOT I_4 ( .A(N23), .Z(N24) );
  GTECH_AND2 C355 ( .A(N0), .B(i_stb), .Z(N23) );
  GTECH_NOT I_5 ( .A(o_busy), .Z(N0) );
  SELECT_OP C357 ( .DATA1(1'b1), .DATA2(1'b0), .CONTROL1(N1), .CONTROL2(N2), 
        .Z(N25) );
  GTECH_BUF B_0 ( .A(N23), .Z(N1) );
  GTECH_BUF B_1 ( .A(N24), .Z(N2) );
  SELECT_OP C358 ( .DATA1({N50, N49}), .DATA2({N85, N84}), .DATA3({N120, N119}), .DATA4({N174, N173}), .DATA5({1'b0, 1'b0}), .DATA6({1'b0, 1'b0}), .DATA7({
        1'b0, 1'b0}), .CONTROL1(N3), .CONTROL2(N4), .CONTROL3(N7), .CONTROL4(
        N8), .CONTROL5(N9), .CONTROL6(N10), .CONTROL7(N12), .Z({N298, N297})
         );
  GTECH_BUF B_2 ( .A(N33), .Z(N3) );
  GTECH_BUF B_3 ( .A(N36), .Z(N4) );
  GTECH_BUF B_4 ( .A(N38), .Z(N7) );
  GTECH_BUF B_5 ( .A(N40), .Z(N8) );
  GTECH_BUF B_6 ( .A(N43), .Z(N9) );
  GTECH_BUF B_7 ( .A(N46), .Z(N10) );
  GTECH_BUF B_8 ( .A(N48), .Z(N12) );
  SELECT_OP C359 ( .DATA1({i_xval[15], i_xval}), .DATA2({N67, N66, N65, N64, 
        N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51}), 
        .DATA3({N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, 
        N90, N89, N88, N87, N86}), .DATA4({N137, N136, N135, N134, N133, N132, 
        N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121}), 
        .DATA5({N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, 
        N181, N180, N179, N178, N177, N176, N175}), .DATA6({i_yval[15], i_yval}), .DATA7({i_yval[15], i_yval}), .DATA8({i_xval[15], i_xval}), .CONTROL1(N13), 
        .CONTROL2(N3), .CONTROL3(N4), .CONTROL4(N7), .CONTROL5(N8), .CONTROL6(
        N9), .CONTROL7(N10), .CONTROL8(N12), .Z({N315, N314, N313, N312, N311, 
        N310, N309, N308, N307, N306, N305, N304, N303, N302, N301, N300, N299}) );
  GTECH_BUF B_9 ( .A(N30), .Z(N13) );
  SELECT_OP C360 ( .DATA1({1'b0, 1'b0}), .DATA2({N139, N138}), .DATA3({N193, 
        N192}), .DATA4({N228, N227}), .DATA5({N263, N262}), .DATA6({1'b0, 1'b0}), .CONTROL1(N4), .CONTROL2(N7), .CONTROL3(N8), .CONTROL4(N9), .CONTROL5(N10), 
        .CONTROL6(N12), .Z({N317, N316}) );
  SELECT_OP C361 ( .DATA1({i_yval[15], i_yval}), .DATA2({i_xval[15], i_xval}), 
        .DATA3({i_xval[15], i_xval}), .DATA4({N156, N155, N154, N153, N152, 
        N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140}), .DATA5({N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200, 
        N199, N198, N197, N196, N195, N194}), .DATA6({N245, N244, N243, N242, 
        N241, N240, N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, 
        N229}), .DATA7({N280, N279, N278, N277, N276, N275, N274, N273, N272, 
        N271, N270, N269, N268, N267, N266, N265, N264}), .DATA8({i_yval[15], 
        i_yval}), .CONTROL1(N13), .CONTROL2(N3), .CONTROL3(N4), .CONTROL4(N7), 
        .CONTROL5(N8), .CONTROL6(N9), .CONTROL7(N10), .CONTROL8(N12), .Z({N334, 
        N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, 
        N321, N320, N319, N318}) );
  SELECT_OP C362 ( .DATA1(i_phase), .DATA2({N83, N82, N81, N80, N79, N78, N77, 
        N76, N75, N74, N73, N72, N71, N70, N69, N68}), .DATA3({N118, N117, 
        N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, 
        N104, N103}), .DATA4({N172, N171, N170, N169, N168, N167, N166, N165, 
        N164, N163, N162, N161, N160, N159, N158, N157}), .DATA5({N226, N225, 
        N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, N213, 
        N212, N211}), .DATA6({N261, N260, N259, N258, N257, N256, N255, N254, 
        N253, N252, N251, N250, N249, N248, N247, N246}), .DATA7({N296, N295, 
        N294, N293, N292, N291, N290, N289, N288, N287, N286, N285, N284, N283, 
        N282, N281}), .DATA8(i_phase), .CONTROL1(N13), .CONTROL2(N3), 
        .CONTROL3(N4), .CONTROL4(N7), .CONTROL5(N8), .CONTROL6(N9), .CONTROL7(
        N10), .CONTROL8(N12), .Z({N350, N349, N348, N347, N346, N345, N344, 
        N343, N342, N341, N340, N339, N338, N337, N336, N335}) );
  SELECT_OP C363 ( .DATA1(1'b1), .DATA2(1'b0), .CONTROL1(N14), .CONTROL2(N15), 
        .Z(N352) );
  GTECH_BUF B_10 ( .A(N351), .Z(N14) );
  GTECH_BUF B_11 ( .A(N621), .Z(N15) );
  SELECT_OP C364 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({1'b0, 1'b0, 1'b0, 
        1'b0}), .DATA3({N361, N360, N359, N358}), .CONTROL1(N16), .CONTROL2(
        N11), .CONTROL3(N6), .Z({N365, N364, N363, N362}) );
  GTECH_BUF B_12 ( .A(idle), .Z(N16) );
  SELECT_OP C365 ( .DATA1(prex), .DATA2({N407, N406, N405, N404, N403, N402, 
        N401, N400, N399, N398, N397, N396, N395, N394, N393, N392, N391, N390, 
        N389}), .DATA3({N499, N498, N497, N496, N495, N494, N493, N492, N491, 
        N490, N489, N488, N487, N486, N485, N484, N483, N482, N481}), 
        .CONTROL1(N17), .CONTROL2(N609), .CONTROL3(N368), .Z({N572, N571, N570, 
        N569, N568, N567, N566, N565, N564, N563, N562, N561, N560, N559, N558, 
        N557, N556, N555, N554}) );
  GTECH_BUF B_13 ( .A(pre_valid), .Z(N17) );
  SELECT_OP C366 ( .DATA1(prey), .DATA2({N445, N444, N443, N442, N441, N440, 
        N439, N438, N437, N436, N435, N434, N433, N432, N431, N430, N429, N428, 
        N427}), .DATA3({N537, N536, N535, N534, N533, N532, N531, N530, N529, 
        N528, N527, N526, N525, N524, N523, N522, N521, N520, N519}), 
        .CONTROL1(N17), .CONTROL2(N609), .CONTROL3(N368), .Z({N591, N590, N589, 
        N588, N587, N586, N585, N584, N583, N582, N581, N580, N579, N578, N577, 
        N576, N575, N574, N573}) );
  SELECT_OP C367 ( .DATA1(preph), .DATA2({N461, N460, N459, N458, N457, N456, 
        N455, N454, N453, N452, N451, N450, N449, N448, N447, N446}), .DATA3({
        N553, N552, N551, N550, N549, N548, N547, N546, N545, N544, N543, N542, 
        N541, N540, N539, N538}), .CONTROL1(N17), .CONTROL2(N609), .CONTROL3(
        N368), .Z({N607, N606, N605, N604, N603, N602, N601, N600, N599, N598, 
        N597, N596, N595, N594, N593, N592}) );
  SELECT_OP C368 ( .DATA1(1'b1), .DATA2(1'b0), .CONTROL1(N18), .CONTROL2(N613), 
        .Z(N614) );
  GTECH_BUF B_14 ( .A(N612), .Z(N18) );
  MUX_OP C369 ( .D0(1'b0), .D1(1'b0), .D2(1'b0), .D3(1'b0), .D4(1'b0), .D5(
        1'b0), .D6(1'b0), .D7(1'b0), .D8(1'b0), .D9(1'b0), .D10(1'b0), .D11(
        1'b0), .D12(1'b0), .D13(1'b0), .D14(1'b0), .D15(1'b0), .S0(N19), .S1(
        N20), .S2(N21), .S3(N22), .Z(N354) );
  GTECH_BUF B_15 ( .A(state[0]), .Z(N19) );
  GTECH_BUF B_16 ( .A(state[1]), .Z(N20) );
  GTECH_BUF B_17 ( .A(state[2]), .Z(N21) );
  GTECH_BUF B_18 ( .A(state[3]), .Z(N22) );
  GTECH_NOT I_6 ( .A(i_phase[15]), .Z(N26) );
  GTECH_NOT I_7 ( .A(i_phase[14]), .Z(N27) );
  GTECH_NOT I_8 ( .A(i_phase[13]), .Z(N28) );
  GTECH_NOT I_9 ( .A(N32), .Z(N33) );
  GTECH_NOT I_10 ( .A(N35), .Z(N36) );
  GTECH_NOT I_11 ( .A(N37), .Z(N38) );
  GTECH_NOT I_12 ( .A(N39), .Z(N40) );
  GTECH_NOT I_13 ( .A(N42), .Z(N43) );
  GTECH_NOT I_14 ( .A(N45), .Z(N46) );
  GTECH_BUF B_19 ( .A(N33) );
  GTECH_BUF B_20 ( .A(N36) );
  GTECH_BUF B_21 ( .A(N38) );
  GTECH_BUF B_22 ( .A(N40) );
  GTECH_BUF B_23 ( .A(N43) );
  GTECH_BUF B_24 ( .A(N46) );
  GTECH_AND2 C395 ( .A(i_stb), .B(idle), .Z(N353) );
  GTECH_OR2 C399 ( .A(idle), .B(i_reset), .Z(N355) );
  GTECH_OR2 C400 ( .A(N625), .B(N355), .Z(N356) );
  GTECH_NOT I_15 ( .A(N356), .Z(N357) );
  GTECH_BUF B_25 ( .A(N357) );
  GTECH_NOT I_16 ( .A(idle), .Z(N366) );
  GTECH_OR2 C406 ( .A(ph[15]), .B(pre_valid), .Z(N367) );
  GTECH_NOT I_17 ( .A(N367), .Z(N368) );
  GTECH_BUF B_26 ( .A(N609), .Z(N369) );
  GTECH_BUF B_27 ( .A(N368) );
  GTECH_NOT I_18 ( .A(pre_valid), .Z(N608) );
  GTECH_AND2 C411 ( .A(ph[15]), .B(N608), .Z(N609) );
  GTECH_AND2 C412 ( .A(N369), .B(N608) );
  GTECH_NOT I_19 ( .A(xv[2]), .Z(N610) );
  GTECH_NOT I_20 ( .A(yv[2]), .Z(N611) );
  GTECH_NOT I_21 ( .A(N612), .Z(N613) );
  GTECH_NOT I_22 ( .A(idle), .Z(o_busy) );
  GTECH_OR2 C419 ( .A(N625), .B(idle), .Z(N5) );
  GTECH_NOT I_23 ( .A(N5), .Z(N6) );
  GTECH_AND2 C421 ( .A(N625), .B(N366), .Z(N11) );
endmodule


module cordic_rect_to_polar ( i_clk, i_reset, i_stb, i_xval, i_yval, i_aux, 
        o_busy, o_done, o_mag, o_phase, o_aux );
  input [15:0] i_xval;
  input [15:0] i_yval;
  output [15:0] o_mag;
  output [15:0] o_phase;
  input i_clk, i_reset, i_stb, i_aux;
  output o_busy, o_done, o_aux;
  wire   N0, N1, N2, N3, N4, N5, N8, N9, N10, N11, N13, N14, N15, N16, N17,
         N18, aux, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30,
         N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44,
         N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58,
         N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71, N72,
         N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86,
         N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N107, N108, N109, N110, N111,
         N112, N113, N114, N115, N116, N117, N118, N119, N120, N121, N122,
         N123, N124, N125, N126, N127, N128, N129, N130, N131, N132, N133,
         N134, N135, N136, N137, N138, N139, N140, N141, N142, N143, N144,
         N145, N146, N147, N148, N149, N150, N151, N152, N153, N154, N155,
         N156, N157, N158, N159, N160, N161, N162, N163, N164, N165, N166,
         N167, N168, N169, N170, N171, N172, N173, N174, N175, N176, N177,
         N178, N179, N180, N181, N182, N183, N184, N185, N186, N187, N188,
         N189, N190, N191, N192, N193, N194, N195, N196, N197, N198, N199,
         N200, N201, N202, N203, N204, N205, N206, N207, N208, N209, N210,
         N211, N212, N213, N214, N215, N216, N217, N218, N219, N220, N221,
         N222, N223, N224, N225, N226, N227, N228, N229, N230, N231, N232,
         N233, N234, N235, N236, N237, N238, N239, N240, N241, N242, N243,
         N244, N245, N246, N247, N248, N249, N250, N251, N252, N253, N254,
         N255, N256, N257, N258, N259, N260, N261, N262, N263, N264, N265,
         N266, N267, N268, N269, N270, N271, N272, N273, N274, N275, N276,
         N277, N278, N279, N280, N281, N282, N283, N284, N285, N286, N287,
         N288, N289, N290, N291, N292, N293, N294, N295, N296, N297, N298,
         N299, N300, N301, N302, N303, N304, N305, N306, N307, N308, N309,
         N310, N311, N312, N313, N314, N315, N316, N317, N318, N319, N320,
         N321, N322, N323, N324, N325, N326, N327, N328, N329, N330, N331,
         N332, N333, last_state, N334, idle, N335, pre_valid, N336, N337, N338,
         N339, N340, N341, N342, N343, N344, N345, N346, N347, N348, N349,
         N350, N351, N352, N353, N354, N355, N356, N357, N358, N359, N360,
         N361, N362, N363, N364, N365, N366, N367, N368, N369, N370, N371,
         N372, N373, N374, N375, N376, N377, N378, N379, N380, N381, N382,
         N383, N384, N385, N386, N387, N388, N389, N390, N391, N392, N393,
         N394, N395, N396, N397, N398, N399, N400, N401, N402, N403, N404,
         N405, N406, N407, N408, N409, N410, N411, N412, N413, N414, N415,
         N416, N417, N418, N419, N420, N421, N422, N423, N424, N425, N426,
         N427, N428, N429, N430, N431, N432, N433, N434, N435, N436, N437,
         N438, N439, N440, N441, N442, N443, N444, N445, N446, N447, N448,
         N449, N450, N451, N452, N453, N454, N455, N456, N457, N458, N459,
         N460, N461, N462, N463, N464, N465, N466, N467, N468, N469, N470,
         N471, N472, N473, N474, N475, N476, N477, N478, N479, N480, N481,
         N482, N483, N484, N485, N486, N487, N488, N489, N490, N491, N492,
         N493, N494, N495, N496, N497, N498, N499, N500, N501, N502, N503,
         N504, N505, N506, N507, N508, N509, N510, N511, N512, N513, N514,
         N515, N516, N517, N518, N519, N520, N521, N522, N523, N524, N525,
         N526, N527, N528, N529, N530, N531, N532, N533, N534, N535, N536,
         N537, N538, N539, N540, N541, N542, N543, N544, N545, N546, N547,
         N548, N549, N550, N551, N552, N553, N554, N555, N556, N557, N558,
         N559, N560, N561, N562, N563, N564, N565, N566, N567, N568, N569,
         N570, N571, N572, N573, N574, N575, N576, N577, N578, N579, N580,
         N581, N582, N583, N584, N585, N586, N587, N588, N589, N590, N591,
         N592, N593, N594, N595, N596, N597, N598, N599, N600, N601, N602,
         N603, N604, N605, N606, N607, N608, N609, N610, N611, N612, N613,
         N614, N615, N616, N617, N618, N619, N620, N621, N622, N623, N624,
         N625, N626, N627, N628, N629, N630, N631, N632, N633, N634, N635,
         N636, N637, N638, N639, N640, N641, N642, N643, N644, N645, N6, N7,
         N12;
  wire   [23:0] prex;
  wire   [23:0] prey;
  wire   [15:0] preph;
  wire   [3:0] state;
  wire   [15:0] cangle;
  wire   [23:0] yv;
  wire   [23:0] xv;
  wire   [15:0] ph;
  wire   [21:6] final_mag;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5;

  \**SEQGEN**  aux_reg ( .clear(1'b0), .preset(1'b0), .next_state(i_aux), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(aux), 
        .synch_clear(i_reset), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N19) );
  GTECH_OR2 C20 ( .A(i_xval[15]), .B(N26), .Z(N20) );
  GTECH_OR2 C23 ( .A(N25), .B(i_yval[15]), .Z(N22) );
  GTECH_AND2 C25 ( .A(i_xval[15]), .B(i_yval[15]), .Z(N24) );
  GTECH_AND2 C28 ( .A(N25), .B(N26), .Z(N27) );
  \**SEQGEN**  \prey_reg[23]  ( .clear(1'b0), .preset(1'b0), .next_state(N332), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[23]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[22]  ( .clear(1'b0), .preset(1'b0), .next_state(N331), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[22]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[21]  ( .clear(1'b0), .preset(1'b0), .next_state(N330), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[21]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[20]  ( .clear(1'b0), .preset(1'b0), .next_state(N329), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[20]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[19]  ( .clear(1'b0), .preset(1'b0), .next_state(N328), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[19]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[18]  ( .clear(1'b0), .preset(1'b0), .next_state(N327), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[18]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[17]  ( .clear(1'b0), .preset(1'b0), .next_state(N326), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[17]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[16]  ( .clear(1'b0), .preset(1'b0), .next_state(N325), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[16]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[15]  ( .clear(1'b0), .preset(1'b0), .next_state(N324), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[15]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[14]  ( .clear(1'b0), .preset(1'b0), .next_state(N323), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[14]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[13]  ( .clear(1'b0), .preset(1'b0), .next_state(N322), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[13]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[12]  ( .clear(1'b0), .preset(1'b0), .next_state(N321), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[12]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(N320), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[11]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(N319), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[10]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(N318), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(N317), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N316), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N315), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N314), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N313), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N312), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N311), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N310), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prey_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N309), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prey[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[15]  ( .clear(1'b0), .preset(1'b0), .next_state(N333), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[15]), 
        .synch_clear(N23), .synch_preset(N21), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[14]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[14]), 
        .synch_clear(1'b0), .synch_preset(N645), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[13]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b1), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[13]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[12]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[12]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[11]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[10]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \preph_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(preph[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[23]  ( .clear(1'b0), .preset(1'b0), .next_state(N308), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[23]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[22]  ( .clear(1'b0), .preset(1'b0), .next_state(N307), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[22]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[21]  ( .clear(1'b0), .preset(1'b0), .next_state(N306), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[21]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[20]  ( .clear(1'b0), .preset(1'b0), .next_state(N305), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[20]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[19]  ( .clear(1'b0), .preset(1'b0), .next_state(N304), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[19]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[18]  ( .clear(1'b0), .preset(1'b0), .next_state(N303), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[18]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[17]  ( .clear(1'b0), .preset(1'b0), .next_state(N302), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[17]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[16]  ( .clear(1'b0), .preset(1'b0), .next_state(N301), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[16]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[15]  ( .clear(1'b0), .preset(1'b0), .next_state(N300), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[15]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[14]  ( .clear(1'b0), .preset(1'b0), .next_state(N299), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[14]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[13]  ( .clear(1'b0), .preset(1'b0), .next_state(N298), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[13]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[12]  ( .clear(1'b0), .preset(1'b0), .next_state(N297), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[12]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(N296), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[11]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(N295), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[10]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(N294), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(N293), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N292), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N291), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N290), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N289), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N288), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N287), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N286), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \prex_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N285), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(prex[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  GEQ_UNS_OP gte_544 ( .A(state), .B({1'b1, 1'b1, 1'b1, 1'b0}), .Z(last_state)
         );
  \**SEQGEN**  idle_reg ( .clear(1'b0), .preset(1'b0), .next_state(1'b1), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(idle), 
        .synch_clear(i_stb), .synch_preset(i_reset), .synch_toggle(1'b0), 
        .synch_enable(N335) );
  \**SEQGEN**  pre_valid_reg ( .clear(1'b0), .preset(1'b0), .next_state(N336), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(pre_valid), 
        .synch_clear(i_reset), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \state_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N347), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(state[3]), 
        .synch_clear(i_reset), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \state_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N346), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(state[2]), 
        .synch_clear(i_reset), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \state_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N345), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(state[1]), 
        .synch_clear(i_reset), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \state_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N344), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(state[0]), 
        .synch_clear(i_reset), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[15]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N349), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        cangle[15]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[14]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N349), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        cangle[14]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[13]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N349), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        cangle[13]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[12]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N349), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        cangle[12]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N349), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        cangle[11]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N349), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        cangle[10]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(N349), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(cangle[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(N349), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(cangle[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N349), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(cangle[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N349), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(cangle[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N349), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(cangle[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N349), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(cangle[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N349), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(cangle[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N349), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(cangle[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N349), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(cangle[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \cangle_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N349), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(cangle[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  ASHR_TC_UNS_OP sra_606 ( .A(yv), .SH(state), .Z({N376, N375, N374, N373, 
        N372, N371, N370, N369, N368, N367, N366, N365, N364, N363, N362, N361, 
        N360, N359, N358, N357, N356, N355, N354, N353}) );
  ASHR_TC_UNS_OP sra_607 ( .A(xv), .SH(state), .Z({N424, N423, N422, N421, 
        N420, N419, N418, N417, N416, N415, N414, N413, N412, N411, N410, N409, 
        N408, N407, N406, N405, N404, N403, N402, N401}) );
  ASHR_TC_UNS_OP sra_615 ( .A(yv), .SH(state), .Z({N488, N487, N486, N485, 
        N484, N483, N482, N481, N480, N479, N478, N477, N476, N475, N474, N473, 
        N472, N471, N470, N469, N468, N467, N466, N465}) );
  ASHR_TC_UNS_OP sra_616 ( .A(xv), .SH(state), .Z({N536, N535, N534, N533, 
        N532, N531, N530, N529, N528, N527, N526, N525, N524, N523, N522, N521, 
        N520, N519, N518, N517, N516, N515, N514, N513}) );
  \**SEQGEN**  \ph_reg[15]  ( .clear(1'b0), .preset(1'b0), .next_state(N640), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[15]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[14]  ( .clear(1'b0), .preset(1'b0), .next_state(N639), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[14]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[13]  ( .clear(1'b0), .preset(1'b0), .next_state(N638), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[13]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[12]  ( .clear(1'b0), .preset(1'b0), .next_state(N637), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[12]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(N636), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[11]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(N635), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[10]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(N634), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(N633), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N632), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N631), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N630), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N629), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N628), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N627), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N626), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ph_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N625), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(ph[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[23]  ( .clear(1'b0), .preset(1'b0), .next_state(N600), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[23]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[22]  ( .clear(1'b0), .preset(1'b0), .next_state(N599), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[22]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[21]  ( .clear(1'b0), .preset(1'b0), .next_state(N598), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[21]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[20]  ( .clear(1'b0), .preset(1'b0), .next_state(N597), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[20]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[19]  ( .clear(1'b0), .preset(1'b0), .next_state(N596), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[19]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[18]  ( .clear(1'b0), .preset(1'b0), .next_state(N595), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[18]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[17]  ( .clear(1'b0), .preset(1'b0), .next_state(N594), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[17]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[16]  ( .clear(1'b0), .preset(1'b0), .next_state(N593), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[16]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[15]  ( .clear(1'b0), .preset(1'b0), .next_state(N592), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[15]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[14]  ( .clear(1'b0), .preset(1'b0), .next_state(N591), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[14]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[13]  ( .clear(1'b0), .preset(1'b0), .next_state(N590), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[13]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[12]  ( .clear(1'b0), .preset(1'b0), .next_state(N589), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[12]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(N588), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[11]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(N587), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[10]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(N586), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(N585), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N584), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N583), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N582), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N581), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N580), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N579), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N578), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \xv_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N577), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(xv[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[23]  ( .clear(1'b0), .preset(1'b0), .next_state(N624), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[23]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[22]  ( .clear(1'b0), .preset(1'b0), .next_state(N623), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[22]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[21]  ( .clear(1'b0), .preset(1'b0), .next_state(N622), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[21]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[20]  ( .clear(1'b0), .preset(1'b0), .next_state(N621), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[20]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[19]  ( .clear(1'b0), .preset(1'b0), .next_state(N620), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[19]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[18]  ( .clear(1'b0), .preset(1'b0), .next_state(N619), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[18]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[17]  ( .clear(1'b0), .preset(1'b0), .next_state(N618), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[17]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[16]  ( .clear(1'b0), .preset(1'b0), .next_state(N617), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[16]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[15]  ( .clear(1'b0), .preset(1'b0), .next_state(N616), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[15]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[14]  ( .clear(1'b0), .preset(1'b0), .next_state(N615), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[14]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[13]  ( .clear(1'b0), .preset(1'b0), .next_state(N614), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[13]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[12]  ( .clear(1'b0), .preset(1'b0), .next_state(N613), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[12]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(N612), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[11]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(N611), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[10]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(N610), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(N609), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N608), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N607), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N606), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N605), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N604), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N603), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N602), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \yv_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N601), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(yv[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  o_done_reg ( .clear(1'b0), .preset(1'b0), .next_state(1'b1), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(o_done), 
        .synch_clear(i_reset), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N643) );
  \**SEQGEN**  o_aux_reg ( .clear(1'b0), .preset(1'b0), .next_state(aux), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(o_aux), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(last_state) );
  \**SEQGEN**  \o_mag_reg[15]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_mag[21]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_mag[15]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_mag_reg[14]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_mag[20]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_mag[14]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_mag_reg[13]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_mag[19]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_mag[13]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_mag_reg[12]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_mag[18]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_mag[12]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_mag_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_mag[17]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_mag[11]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_mag_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_mag[16]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_mag[10]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_mag_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_mag[15]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_mag[9]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_mag_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_mag[14]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_mag[8]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_mag_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_mag[13]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_mag[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_mag_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_mag[12]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_mag[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_mag_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_mag[11]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_mag[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_mag_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_mag[10]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_mag[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_mag_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_mag[9]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_mag[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_mag_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_mag[8]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_mag[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_mag_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_mag[7]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_mag[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_mag_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(
        final_mag[6]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_mag[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_phase_reg[15]  ( .clear(1'b0), .preset(1'b0), .next_state(
        ph[15]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_phase[15]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_phase_reg[14]  ( .clear(1'b0), .preset(1'b0), .next_state(
        ph[14]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_phase[14]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_phase_reg[13]  ( .clear(1'b0), .preset(1'b0), .next_state(
        ph[13]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_phase[13]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_phase_reg[12]  ( .clear(1'b0), .preset(1'b0), .next_state(
        ph[12]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_phase[12]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_phase_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(
        ph[11]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_phase[11]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_phase_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(
        ph[10]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_phase[10]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_phase_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(
        ph[9]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_phase[9]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_phase_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(
        ph[8]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_phase[8]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_phase_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(
        ph[7]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_phase[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_phase_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(
        ph[6]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_phase[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_phase_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(
        ph[5]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_phase[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_phase_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(
        ph[4]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_phase[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_phase_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(
        ph[3]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_phase[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_phase_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(
        ph[2]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_phase[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_phase_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(
        ph[1]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_phase[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(last_state) );
  \**SEQGEN**  \o_phase_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(
        ph[0]), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_phase[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(last_state) );
  GTECH_OR2 C305 ( .A(N21), .B(N23), .Z(N645) );
  ADD_TC_OP add_639 ( .A(xv[21:0]), .B({1'b0, xv[6], N644, N644, N644, N644, 
        N644}), .Z({final_mag, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5}) );
  SUB_TC_OP sub_490 ( .A({i_xval, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({
        i_yval, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Z({N214, N213, N212, 
        N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200, 
        N199, N198, N197, N196, N195, N194, N193, N192}) );
  SUB_TC_OP sub_489 ( .A(1'b0), .B({i_xval, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Z({N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, 
        N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145}) );
  SUB_TC_OP sub_489_2 ( .A({N167, N166, N165, N164, N163, N162, N161, N160, 
        N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, 
        N147, N146, N145}), .B({i_yval, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .Z({N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, 
        N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, 
        N168}) );
  ADD_TC_OP add_497 ( .A({i_xval, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({
        i_yval, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Z({N237, N236, N235, 
        N234, N233, N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, 
        N222, N221, N220, N219, N218, N217, N216, N215}) );
  ADD_UNS_OP add_617 ( .A(ph), .B(cangle), .Z({N576, N575, N574, N573, N572, 
        N571, N570, N569, N568, N567, N566, N565, N564, N563, N562, N561}) );
  SUB_TC_OP sub_498 ( .A(1'b0), .B({i_xval, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Z({N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, 
        N248, N247, N246, N245, N244, N243, N242, N241, N240, N239, N238}) );
  ADD_TC_OP add_498 ( .A({N260, N259, N258, N257, N256, N255, N254, N253, N252, 
        N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, 
        N239, N238}), .B({i_yval, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Z({
        N284, N283, N282, N281, N280, N279, N278, N277, N276, N275, N274, N273, 
        N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, N261}) );
  SUB_TC_OP sub_475 ( .A({i_xval, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({
        i_yval, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Z({N50, N49, N48, N47, 
        N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, 
        N32, N31, N30, N29, N28}) );
  ADD_TC_OP add_476 ( .A({i_xval, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({
        i_yval, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Z({N73, N72, N71, N70, 
        N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, 
        N55, N54, N53, N52, N51}) );
  ADD_TC_OP add_615 ( .A(xv), .B({N488, N487, N486, N485, N484, N483, N482, 
        N481, N480, N479, N478, N477, N476, N475, N474, N473, N472, N471, N470, 
        N469, N468, N467, N466, N465}), .Z({N512, N511, N510, N509, N508, N507, 
        N506, N505, N504, N503, N502, N501, N500, N499, N498, N497, N496, N495, 
        N494, N493, N492, N491, N490, N489}) );
  SUB_TC_OP sub_616 ( .A(yv), .B({N536, N535, N534, N533, N532, N531, N530, 
        N529, N528, N527, N526, N525, N524, N523, N522, N521, N520, N519, N518, 
        N517, N516, N515, N514, N513}), .Z({N560, N559, N558, N557, N556, N555, 
        N554, N553, N552, N551, N550, N549, N548, N547, N546, N545, N544, N543, 
        N542, N541, N540, N539, N538, N537}) );
  SUB_UNS_OP sub_608 ( .A(ph), .B(cangle), .Z({N464, N463, N462, N461, N460, 
        N459, N458, N457, N456, N455, N454, N453, N452, N451, N450, N449}) );
  SUB_TC_OP sub_482 ( .A(1'b0), .B({i_xval, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Z({N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, 
        N82, N81, N80, N79, N78, N77, N76, N75, N74}) );
  ADD_TC_OP add_482 ( .A({N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, 
        N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74}), .B(
        {i_yval, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Z({N120, N119, N118, 
        N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, 
        N105, N104, N103, N102, N101, N100, N99, N98, N97}) );
  SUB_TC_OP sub_483_2 ( .A({N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, 
        N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74}), .B(
        {i_yval, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Z({N144, N143, N142, 
        N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, 
        N129, N128, N127, N126, N125, N124, N123, N122, N121}) );
  SUB_TC_OP sub_606 ( .A(xv), .B({N376, N375, N374, N373, N372, N371, N370, 
        N369, N368, N367, N366, N365, N364, N363, N362, N361, N360, N359, N358, 
        N357, N356, N355, N354, N353}), .Z({N400, N399, N398, N397, N396, N395, 
        N394, N393, N392, N391, N390, N389, N388, N387, N386, N385, N384, N383, 
        N382, N381, N380, N379, N378, N377}) );
  ADD_TC_OP add_607 ( .A(yv), .B({N424, N423, N422, N421, N420, N419, N418, 
        N417, N416, N415, N414, N413, N412, N411, N410, N409, N408, N407, N406, 
        N405, N404, N403, N402, N401}), .Z({N448, N447, N446, N445, N444, N443, 
        N442, N441, N440, N439, N438, N437, N436, N435, N434, N433, N432, N431, 
        N430, N429, N428, N427, N426, N425}) );
  ADD_UNS_OP add_580 ( .A(state), .B(1'b1), .Z({N343, N342, N341, N340}) );
  GTECH_NOT I_0 ( .A(N17), .Z(N18) );
  GTECH_AND2 C316 ( .A(N0), .B(i_stb), .Z(N17) );
  GTECH_NOT I_1 ( .A(o_busy), .Z(N0) );
  SELECT_OP C317 ( .DATA1(1'b1), .DATA2(1'b0), .CONTROL1(N1), .CONTROL2(N2), 
        .Z(N19) );
  GTECH_BUF B_0 ( .A(N17), .Z(N1) );
  GTECH_BUF B_1 ( .A(N18), .Z(N2) );
  SELECT_OP C318 ( .DATA1({N50, N50, N49, N48, N47, N46, N45, N44, N43, N42, 
        N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28}), 
        .DATA2({N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, 
        N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, 
        N98, N97}), .DATA3({N191, N190, N189, N188, N187, N186, N185, N184, 
        N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, 
        N171, N170, N169, N168}), .DATA4({N237, N237, N236, N235, N234, N233, 
        N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, 
        N220, N219, N218, N217, N216, N215}), .CONTROL1(N3), .CONTROL2(N4), 
        .CONTROL3(N5), .CONTROL4(N8), .Z({N308, N307, N306, N305, N304, N303, 
        N302, N301, N300, N299, N298, N297, N296, N295, N294, N293, N292, N291, 
        N290, N289, N288, N287, N286, N285}) );
  GTECH_BUF B_2 ( .A(N21), .Z(N3) );
  GTECH_BUF B_3 ( .A(N23), .Z(N4) );
  GTECH_BUF B_4 ( .A(N24), .Z(N5) );
  GTECH_BUF B_5 ( .A(N27), .Z(N8) );
  SELECT_OP C319 ( .DATA1({N73, N73, N72, N71, N70, N69, N68, N67, N66, N65, 
        N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51}), 
        .DATA2({N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, 
        N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, 
        N122, N121}), .DATA3({N214, N214, N213, N212, N211, N210, N209, N208, 
        N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, 
        N195, N194, N193, N192}), .DATA4({N284, N283, N282, N281, N280, N279, 
        N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, 
        N266, N265, N264, N263, N262, N261}), .CONTROL1(N3), .CONTROL2(N4), 
        .CONTROL3(N5), .CONTROL4(N8), .Z({N332, N331, N330, N329, N328, N327, 
        N326, N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, 
        N314, N313, N312, N311, N310, N309}) );
  SELECT_OP C320 ( .DATA1(1'b1), .DATA2(1'b0), .CONTROL1(N5), .CONTROL2(N8), 
        .Z(N333) );
  SELECT_OP C321 ( .DATA1(1'b1), .DATA2(1'b0), .CONTROL1(N9), .CONTROL2(N334), 
        .Z(N335) );
  GTECH_BUF B_6 ( .A(last_state), .Z(N9) );
  SELECT_OP C322 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({1'b0, 1'b0, 1'b0, 
        1'b0}), .DATA3({N343, N342, N341, N340}), .CONTROL1(N10), .CONTROL2(
        N12), .CONTROL3(N7), .Z({N347, N346, N345, N344}) );
  GTECH_BUF B_7 ( .A(idle), .Z(N10) );
  SELECT_OP C323 ( .DATA1(prex), .DATA2({N400, N399, N398, N397, N396, N395, 
        N394, N393, N392, N391, N390, N389, N388, N387, N386, N385, N384, N383, 
        N382, N381, N380, N379, N378, N377}), .DATA3({N512, N511, N510, N509, 
        N508, N507, N506, N505, N504, N503, N502, N501, N500, N499, N498, N497, 
        N496, N495, N494, N493, N492, N491, N490, N489}), .CONTROL1(N11), 
        .CONTROL2(N642), .CONTROL3(N351), .Z({N600, N599, N598, N597, N596, 
        N595, N594, N593, N592, N591, N590, N589, N588, N587, N586, N585, N584, 
        N583, N582, N581, N580, N579, N578, N577}) );
  GTECH_BUF B_8 ( .A(pre_valid), .Z(N11) );
  SELECT_OP C324 ( .DATA1(prey), .DATA2({N448, N447, N446, N445, N444, N443, 
        N442, N441, N440, N439, N438, N437, N436, N435, N434, N433, N432, N431, 
        N430, N429, N428, N427, N426, N425}), .DATA3({N560, N559, N558, N557, 
        N556, N555, N554, N553, N552, N551, N550, N549, N548, N547, N546, N545, 
        N544, N543, N542, N541, N540, N539, N538, N537}), .CONTROL1(N11), 
        .CONTROL2(N642), .CONTROL3(N351), .Z({N624, N623, N622, N621, N620, 
        N619, N618, N617, N616, N615, N614, N613, N612, N611, N610, N609, N608, 
        N607, N606, N605, N604, N603, N602, N601}) );
  SELECT_OP C325 ( .DATA1(preph), .DATA2({N464, N463, N462, N461, N460, N459, 
        N458, N457, N456, N455, N454, N453, N452, N451, N450, N449}), .DATA3({
        N576, N575, N574, N573, N572, N571, N570, N569, N568, N567, N566, N565, 
        N564, N563, N562, N561}), .CONTROL1(N11), .CONTROL2(N642), .CONTROL3(
        N351), .Z({N640, N639, N638, N637, N636, N635, N634, N633, N632, N631, 
        N630, N629, N628, N627, N626, N625}) );
  SELECT_OP C326 ( .DATA1(1'b1), .DATA2(1'b0), .CONTROL1(N9), .CONTROL2(N334), 
        .Z(N643) );
  MUX_OP C327 ( .D0(1'b0), .D1(1'b0), .D2(1'b0), .D3(1'b0), .D4(1'b0), .D5(
        1'b0), .D6(1'b0), .D7(1'b0), .D8(1'b0), .D9(1'b0), .D10(1'b0), .D11(
        1'b0), .D12(1'b0), .D13(1'b0), .D14(1'b0), .D15(1'b0), .S0(N13), .S1(
        N14), .S2(N15), .S3(N16), .Z(N349) );
  GTECH_BUF B_9 ( .A(state[0]), .Z(N13) );
  GTECH_BUF B_10 ( .A(state[1]), .Z(N14) );
  GTECH_BUF B_11 ( .A(state[2]), .Z(N15) );
  GTECH_BUF B_12 ( .A(state[3]), .Z(N16) );
  GTECH_NOT I_2 ( .A(N20), .Z(N21) );
  GTECH_NOT I_3 ( .A(N22), .Z(N23) );
  GTECH_NOT I_4 ( .A(i_xval[15]), .Z(N25) );
  GTECH_NOT I_5 ( .A(i_yval[15]), .Z(N26) );
  GTECH_BUF B_13 ( .A(N21) );
  GTECH_BUF B_14 ( .A(N23) );
  GTECH_BUF B_15 ( .A(N24) );
  GTECH_BUF B_16 ( .A(N27) );
  GTECH_NOT I_6 ( .A(last_state), .Z(N334) );
  GTECH_AND2 C344 ( .A(i_stb), .B(idle), .Z(N336) );
  GTECH_OR2 C348 ( .A(idle), .B(i_reset), .Z(N337) );
  GTECH_OR2 C349 ( .A(last_state), .B(N337), .Z(N338) );
  GTECH_NOT I_7 ( .A(N338), .Z(N339) );
  GTECH_BUF B_17 ( .A(N339) );
  GTECH_NOT I_8 ( .A(idle), .Z(N348) );
  GTECH_OR2 C355 ( .A(yv[23]), .B(pre_valid), .Z(N350) );
  GTECH_NOT I_9 ( .A(N350), .Z(N351) );
  GTECH_BUF B_18 ( .A(N642), .Z(N352) );
  GTECH_BUF B_19 ( .A(N351) );
  GTECH_NOT I_10 ( .A(pre_valid), .Z(N641) );
  GTECH_AND2 C360 ( .A(yv[23]), .B(N641), .Z(N642) );
  GTECH_AND2 C361 ( .A(N352), .B(N641) );
  GTECH_NOT I_11 ( .A(xv[6]), .Z(N644) );
  GTECH_NOT I_12 ( .A(idle), .Z(o_busy) );
  GTECH_OR2 C371 ( .A(last_state), .B(idle), .Z(N6) );
  GTECH_NOT I_13 ( .A(N6), .Z(N7) );
  GTECH_AND2 C373 ( .A(last_state), .B(N348), .Z(N12) );
endmodule


module fixed_pt_div_Q13_N16 ( i_dividend, i_divisor, i_start, i_clk, 
        o_quotient_out, o_complete, o_overflow );
  input [15:0] i_dividend;
  input [15:0] i_divisor;
  output [15:0] o_quotient_out;
  input i_start, i_clk;
  output o_complete, o_overflow;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, reg_working_quotient_14,
         reg_working_quotient_13, reg_working_quotient_12,
         reg_working_quotient_11, reg_working_quotient_10,
         reg_working_quotient_9, reg_working_quotient_8,
         reg_working_quotient_7, reg_working_quotient_6,
         reg_working_quotient_5, reg_working_quotient_4,
         reg_working_quotient_3, reg_working_quotient_2,
         reg_working_quotient_1, reg_working_quotient_0, N25, N26, N27, N28,
         N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42,
         N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56,
         N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70,
         N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84,
         N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98,
         N99, N100, N101, N102, N103, N104, N105, N106, N107, N108, N109, N110,
         N111, N112, N113, N114, N115, N116, N117, N118, N119, N120, N121,
         N122, N123, N124, N125, N126, N127, N128, N129, N130, N131, N132,
         N133, N134, N135, N136, N137, N138, N139, N140, N141, N142, N143,
         N144, N145, N146, N147, N148, N149, N150, N151, N152, N153, N154,
         N155, N156, N157, N158, N159, N160, N161, N162, N163, N164, N165,
         N166, N167, N168, N169, N170, N171, N172, N173, N174, N175, N176,
         N177, N178, N179, N180, N181, N182, N183, N184, N185, N186, N187,
         N188, N189, N190, N191, N192, N193, N194, N195, N196, N197, N198,
         N199, N200, N201, N202, N203, N204, N205, N206, N207, N208, N209,
         N210, N211, N212, N213, N214, N215, N216, N217, N218, N219, N220,
         N221, N222, N223, N224, N225, N226, N227, N228, N229, N230, N231,
         N232, N233, N234, N235, N236, N237, N238, N239, N240, N241, N242,
         N243, N244, N245, N246, N247, N248, N249, N250, N251, N252, N253,
         N254, N255, N256, N257, N258, N259, N260, N261, N262, N263, N264,
         N265, N266, N267, N268, N269, N270, N271, N272, N273, N274, N275,
         N276, N277, N278, N279, N280, N281, N282, N283, N284, N285, N286,
         N287, N288, N289, N290, N291, N292, N293, N294, N295, N296, N297,
         N298, N299, N300, N301, N302, N303, N304, N305, N306, N307, N308,
         N309, N310, N311, N312, N313, N314, N315, N316, N317, N318, N319,
         N320, N321, N322, N323, N324, N325, N326, N327, N328, N329, N330,
         N331, N332, N333, N334, N335, N336, N337, N338, N339, N340, N341,
         N342, N343, N344, N345, N346, N347, N348, N349, N350, N351, N352,
         N353, N354, N355, N356, N357, N358, N359, N360, N361, N362, N363,
         N364, N365, N366, N367, N368, N369, N370, N371, N372, N373, N374,
         N375, N376, N377, N378, N379, N380, N381, N382, N383, N384, N385,
         N386, N387, N388, N389, N390, N391, N392, N393, N394, N395, N396,
         N397, N398, N399, N400, N401, N402, N403, N404, N405, N406, N407,
         N408, N409, N410, N411, N412, N413, N414, N415, N416, N417, N418;
  wire   [15:0] reg_count;
  wire   [42:16] reg_working_quotient;
  wire   [27:0] reg_working_dividend;
  wire   [42:0] reg_working_divisor;

  GEQ_UNS_OP gte_1277 ( .A(reg_working_dividend), .B(reg_working_divisor), .Z(
        N43) );
  GT_UNS_OP gt_1286 ( .A(reg_working_quotient), .B(1'b0), .Z(N157) );
  \**SEQGEN**  \reg_quotient_reg[14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(reg_working_quotient_14), .clocked_on(i_clk), .data_in(
        1'b0), .enable(1'b0), .Q(o_quotient_out[14]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N325) );
  \**SEQGEN**  \reg_quotient_reg[13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(reg_working_quotient_13), .clocked_on(i_clk), .data_in(
        1'b0), .enable(1'b0), .Q(o_quotient_out[13]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N325) );
  \**SEQGEN**  \reg_quotient_reg[12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(reg_working_quotient_12), .clocked_on(i_clk), .data_in(
        1'b0), .enable(1'b0), .Q(o_quotient_out[12]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N325) );
  \**SEQGEN**  \reg_quotient_reg[11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(reg_working_quotient_11), .clocked_on(i_clk), .data_in(
        1'b0), .enable(1'b0), .Q(o_quotient_out[11]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N325) );
  \**SEQGEN**  \reg_quotient_reg[10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(reg_working_quotient_10), .clocked_on(i_clk), .data_in(
        1'b0), .enable(1'b0), .Q(o_quotient_out[10]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N325) );
  \**SEQGEN**  \reg_quotient_reg[9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(reg_working_quotient_9), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(o_quotient_out[9]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N325) );
  \**SEQGEN**  \reg_quotient_reg[8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(reg_working_quotient_8), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(o_quotient_out[8]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N325) );
  \**SEQGEN**  \reg_quotient_reg[7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(reg_working_quotient_7), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(o_quotient_out[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N325) );
  \**SEQGEN**  \reg_quotient_reg[6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(reg_working_quotient_6), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(o_quotient_out[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N325) );
  \**SEQGEN**  \reg_quotient_reg[5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(reg_working_quotient_5), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(o_quotient_out[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N325) );
  \**SEQGEN**  \reg_quotient_reg[4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(reg_working_quotient_4), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(o_quotient_out[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N325) );
  \**SEQGEN**  \reg_quotient_reg[3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(reg_working_quotient_3), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(o_quotient_out[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N325) );
  \**SEQGEN**  \reg_quotient_reg[2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(reg_working_quotient_2), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(o_quotient_out[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N325) );
  \**SEQGEN**  \reg_quotient_reg[1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(reg_working_quotient_1), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(o_quotient_out[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N325) );
  \**SEQGEN**  \reg_quotient_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(reg_working_quotient_0), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(o_quotient_out[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N325) );
  \**SEQGEN**  reg_done_reg ( .clear(1'b0), .preset(1'b0), .next_state(N22), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(o_complete), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N191) );
  \**SEQGEN**  \reg_count_reg[15]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N208), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        reg_count[15]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_count_reg[14]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N207), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        reg_count[14]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_count_reg[13]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N206), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        reg_count[13]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_count_reg[12]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N205), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        reg_count[12]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_count_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N204), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        reg_count[11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_count_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N203), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        reg_count[10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_count_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N202), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        reg_count[9]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_count_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N201), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        reg_count[8]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_count_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N200), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        reg_count[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_count_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N199), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        reg_count[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_count_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N198), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        reg_count[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_count_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N197), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        reg_count[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_count_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N196), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        reg_count[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_count_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N195), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        reg_count[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_count_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N194), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        reg_count[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_count_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N193), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        reg_count[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_quotient_reg[42]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[42]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N250) );
  \**SEQGEN**  \reg_working_quotient_reg[41]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[41]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N249) );
  \**SEQGEN**  \reg_working_quotient_reg[40]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[40]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N248) );
  \**SEQGEN**  \reg_working_quotient_reg[39]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[39]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N247) );
  \**SEQGEN**  \reg_working_quotient_reg[38]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[38]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N246) );
  \**SEQGEN**  \reg_working_quotient_reg[37]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[37]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N245) );
  \**SEQGEN**  \reg_working_quotient_reg[36]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[36]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N244) );
  \**SEQGEN**  \reg_working_quotient_reg[35]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[35]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N243) );
  \**SEQGEN**  \reg_working_quotient_reg[34]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[34]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N242) );
  \**SEQGEN**  \reg_working_quotient_reg[33]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[33]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N241) );
  \**SEQGEN**  \reg_working_quotient_reg[32]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[32]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N240) );
  \**SEQGEN**  \reg_working_quotient_reg[31]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[31]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N239) );
  \**SEQGEN**  \reg_working_quotient_reg[30]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[30]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N238) );
  \**SEQGEN**  \reg_working_quotient_reg[29]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[29]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N237) );
  \**SEQGEN**  \reg_working_quotient_reg[28]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[28]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N236) );
  \**SEQGEN**  \reg_working_quotient_reg[27]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[27]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N235) );
  \**SEQGEN**  \reg_working_quotient_reg[26]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[26]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N234) );
  \**SEQGEN**  \reg_working_quotient_reg[25]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[25]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N233) );
  \**SEQGEN**  \reg_working_quotient_reg[24]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[24]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N232) );
  \**SEQGEN**  \reg_working_quotient_reg[23]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[23]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N231) );
  \**SEQGEN**  \reg_working_quotient_reg[22]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[22]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N230) );
  \**SEQGEN**  \reg_working_quotient_reg[21]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[21]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N229) );
  \**SEQGEN**  \reg_working_quotient_reg[20]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[20]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N228) );
  \**SEQGEN**  \reg_working_quotient_reg[19]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[19]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N227) );
  \**SEQGEN**  \reg_working_quotient_reg[18]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[18]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N226) );
  \**SEQGEN**  \reg_working_quotient_reg[17]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[17]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N225) );
  \**SEQGEN**  \reg_working_quotient_reg[16]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient[16]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N224) );
  \**SEQGEN**  \reg_working_quotient_reg[14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient_14), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N223) );
  \**SEQGEN**  \reg_working_quotient_reg[13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient_13), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N222) );
  \**SEQGEN**  \reg_working_quotient_reg[12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient_12), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N221) );
  \**SEQGEN**  \reg_working_quotient_reg[11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient_11), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N220) );
  \**SEQGEN**  \reg_working_quotient_reg[10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient_10), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N219) );
  \**SEQGEN**  \reg_working_quotient_reg[9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient_9), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N218) );
  \**SEQGEN**  \reg_working_quotient_reg[8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient_8), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N217) );
  \**SEQGEN**  \reg_working_quotient_reg[7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient_7), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N216) );
  \**SEQGEN**  \reg_working_quotient_reg[6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient_6), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N215) );
  \**SEQGEN**  \reg_working_quotient_reg[5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient_5), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N214) );
  \**SEQGEN**  \reg_working_quotient_reg[4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient_4), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N213) );
  \**SEQGEN**  \reg_working_quotient_reg[3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient_3), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N212) );
  \**SEQGEN**  \reg_working_quotient_reg[2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient_2), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N211) );
  \**SEQGEN**  \reg_working_quotient_reg[1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient_1), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N210) );
  \**SEQGEN**  \reg_working_quotient_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_quotient_0), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N209) );
  \**SEQGEN**  \reg_working_dividend_reg[27]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N279), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[27]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[26]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N278), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[26]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[25]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N277), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[25]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[24]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N276), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[24]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[23]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N275), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[23]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[22]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N274), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[22]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[21]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N273), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[21]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[20]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N272), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[20]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[19]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N271), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[19]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[18]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N270), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[18]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[17]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N269), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[17]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[16]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N268), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[16]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[15]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N267), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[15]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N266), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[14]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N265), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[13]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N264), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[12]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N263), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N262), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N261), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[9]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N260), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[8]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N259), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[7]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N258), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[6]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N257), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N256), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N255), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N254), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N253), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_dividend_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N252), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_dividend[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N251) );
  \**SEQGEN**  \reg_working_divisor_reg[42]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N322), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[42]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[41]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N321), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[41]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[40]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N320), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[40]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[39]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N319), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[39]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[38]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N318), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[38]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[37]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N317), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[37]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[36]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N316), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[36]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[35]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N315), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[35]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[34]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N314), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[34]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[33]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N313), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[33]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[32]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N312), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[32]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[31]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N311), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[31]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[30]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N310), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[30]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[29]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N309), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[29]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[28]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N308), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[28]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[27]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N307), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[27]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[26]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N306), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[26]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[25]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N305), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[25]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[24]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N304), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[24]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[23]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N303), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[23]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[22]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N302), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[22]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[21]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N301), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[21]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[20]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N300), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[20]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[19]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N299), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[19]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[18]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N298), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[18]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[17]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N297), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[17]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[16]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N296), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[16]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[15]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N295), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[15]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N294), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[14]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N293), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[13]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N292), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[12]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N291), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N290), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N289), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[9]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N288), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[8]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N287), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[7]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N286), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[6]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N285), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N284), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N283), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N282), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N281), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  \reg_working_divisor_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N280), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(reg_working_divisor[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N192) );
  \**SEQGEN**  reg_overflow_reg ( .clear(1'b0), .preset(1'b0), .next_state(N22), .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(o_overflow), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N323) );
  \**SEQGEN**  reg_sign_reg ( .clear(1'b0), .preset(1'b0), .next_state(N25), 
        .clocked_on(i_clk), .data_in(1'b0), .enable(1'b0), .Q(
        o_quotient_out[15]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N324) );
  GTECH_OR2 C525 ( .A(reg_count[14]), .B(reg_count[15]), .Z(N326) );
  GTECH_OR2 C526 ( .A(reg_count[13]), .B(N326), .Z(N327) );
  GTECH_OR2 C527 ( .A(reg_count[12]), .B(N327), .Z(N328) );
  GTECH_OR2 C528 ( .A(reg_count[11]), .B(N328), .Z(N329) );
  GTECH_OR2 C529 ( .A(reg_count[10]), .B(N329), .Z(N330) );
  GTECH_OR2 C530 ( .A(reg_count[9]), .B(N330), .Z(N331) );
  GTECH_OR2 C531 ( .A(reg_count[8]), .B(N331), .Z(N332) );
  GTECH_OR2 C532 ( .A(reg_count[7]), .B(N332), .Z(N333) );
  GTECH_OR2 C533 ( .A(reg_count[6]), .B(N333), .Z(N334) );
  GTECH_OR2 C534 ( .A(reg_count[5]), .B(N334), .Z(N335) );
  GTECH_OR2 C535 ( .A(reg_count[4]), .B(N335), .Z(N336) );
  GTECH_OR2 C536 ( .A(reg_count[3]), .B(N336), .Z(N337) );
  GTECH_OR2 C537 ( .A(reg_count[2]), .B(N337), .Z(N338) );
  GTECH_OR2 C538 ( .A(reg_count[1]), .B(N338), .Z(N339) );
  GTECH_OR2 C539 ( .A(reg_count[0]), .B(N339), .Z(N340) );
  GTECH_NOT I_0 ( .A(N340), .Z(N341) );
  SUB_UNS_OP sub_1274 ( .A(reg_count), .B(1'b1), .Z({N42, N41, N40, N39, N38, 
        N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27}) );
  SUB_UNS_OP sub_1279 ( .A(reg_working_dividend), .B(reg_working_divisor[27:0]), .Z({N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, 
        N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, 
        N89, N88, N87}) );
  SUB_UNS_OP sub_1290 ( .A(reg_count), .B(1'b1), .Z({N173, N172, N171, N170, 
        N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158}) );
  GTECH_NOT I_1 ( .A(reg_count[5]), .Z(N342) );
  GTECH_AND2 C542 ( .A(reg_count[3]), .B(reg_count[4]), .Z(N343) );
  GTECH_AND2 C543 ( .A(N0), .B(reg_count[4]), .Z(N344) );
  GTECH_NOT I_2 ( .A(reg_count[3]), .Z(N0) );
  GTECH_AND2 C544 ( .A(reg_count[3]), .B(N1), .Z(N345) );
  GTECH_NOT I_3 ( .A(reg_count[4]), .Z(N1) );
  GTECH_AND2 C545 ( .A(N2), .B(N3), .Z(N346) );
  GTECH_NOT I_4 ( .A(reg_count[3]), .Z(N2) );
  GTECH_NOT I_5 ( .A(reg_count[4]), .Z(N3) );
  GTECH_AND2 C548 ( .A(reg_count[5]), .B(N345), .Z(N347) );
  GTECH_AND2 C549 ( .A(reg_count[5]), .B(N346), .Z(N348) );
  GTECH_AND2 C550 ( .A(N342), .B(N343), .Z(N349) );
  GTECH_AND2 C551 ( .A(N342), .B(N344), .Z(N350) );
  GTECH_AND2 C552 ( .A(N342), .B(N345), .Z(N351) );
  GTECH_AND2 C553 ( .A(N342), .B(N346), .Z(N352) );
  GTECH_NOT I_6 ( .A(reg_count[2]), .Z(N353) );
  GTECH_AND2 C555 ( .A(reg_count[0]), .B(reg_count[1]), .Z(N354) );
  GTECH_AND2 C556 ( .A(N4), .B(reg_count[1]), .Z(N355) );
  GTECH_NOT I_7 ( .A(reg_count[0]), .Z(N4) );
  GTECH_AND2 C557 ( .A(reg_count[0]), .B(N5), .Z(N356) );
  GTECH_NOT I_8 ( .A(reg_count[1]), .Z(N5) );
  GTECH_AND2 C558 ( .A(N6), .B(N7), .Z(N357) );
  GTECH_NOT I_9 ( .A(reg_count[0]), .Z(N6) );
  GTECH_NOT I_10 ( .A(reg_count[1]), .Z(N7) );
  GTECH_AND2 C559 ( .A(reg_count[2]), .B(N354), .Z(N358) );
  GTECH_AND2 C560 ( .A(reg_count[2]), .B(N355), .Z(N359) );
  GTECH_AND2 C561 ( .A(reg_count[2]), .B(N356), .Z(N360) );
  GTECH_AND2 C562 ( .A(reg_count[2]), .B(N357), .Z(N361) );
  GTECH_AND2 C563 ( .A(N353), .B(N354), .Z(N362) );
  GTECH_AND2 C564 ( .A(N353), .B(N355), .Z(N363) );
  GTECH_AND2 C565 ( .A(N353), .B(N356), .Z(N364) );
  GTECH_AND2 C566 ( .A(N353), .B(N357), .Z(N365) );
  GTECH_AND2 C588 ( .A(N347), .B(N363), .Z(N366) );
  GTECH_AND2 C589 ( .A(N347), .B(N364), .Z(N367) );
  GTECH_AND2 C590 ( .A(N347), .B(N365), .Z(N368) );
  GTECH_AND2 C591 ( .A(N348), .B(N358), .Z(N369) );
  GTECH_AND2 C592 ( .A(N348), .B(N359), .Z(N370) );
  GTECH_AND2 C593 ( .A(N348), .B(N360), .Z(N371) );
  GTECH_AND2 C594 ( .A(N348), .B(N361), .Z(N372) );
  GTECH_AND2 C595 ( .A(N348), .B(N362), .Z(N373) );
  GTECH_AND2 C596 ( .A(N348), .B(N363), .Z(N374) );
  GTECH_AND2 C597 ( .A(N348), .B(N364), .Z(N375) );
  GTECH_AND2 C598 ( .A(N348), .B(N365), .Z(N376) );
  GTECH_AND2 C599 ( .A(N349), .B(N358), .Z(N377) );
  GTECH_AND2 C600 ( .A(N349), .B(N359), .Z(N378) );
  GTECH_AND2 C601 ( .A(N349), .B(N360), .Z(N379) );
  GTECH_AND2 C602 ( .A(N349), .B(N361), .Z(N380) );
  GTECH_AND2 C603 ( .A(N349), .B(N362), .Z(N381) );
  GTECH_AND2 C604 ( .A(N349), .B(N363), .Z(N382) );
  GTECH_AND2 C605 ( .A(N349), .B(N364), .Z(N383) );
  GTECH_AND2 C606 ( .A(N349), .B(N365), .Z(N384) );
  GTECH_AND2 C607 ( .A(N350), .B(N358), .Z(N385) );
  GTECH_AND2 C608 ( .A(N350), .B(N359), .Z(N386) );
  GTECH_AND2 C609 ( .A(N350), .B(N360), .Z(N387) );
  GTECH_AND2 C610 ( .A(N350), .B(N361), .Z(N388) );
  GTECH_AND2 C611 ( .A(N350), .B(N362), .Z(N389) );
  GTECH_AND2 C612 ( .A(N350), .B(N363), .Z(N390) );
  GTECH_AND2 C613 ( .A(N350), .B(N364), .Z(N391) );
  GTECH_AND2 C614 ( .A(N350), .B(N365), .Z(N392) );
  GTECH_AND2 C616 ( .A(N351), .B(N359), .Z(N393) );
  GTECH_AND2 C617 ( .A(N351), .B(N360), .Z(N394) );
  GTECH_AND2 C618 ( .A(N351), .B(N361), .Z(N395) );
  GTECH_AND2 C619 ( .A(N351), .B(N362), .Z(N396) );
  GTECH_AND2 C620 ( .A(N351), .B(N363), .Z(N397) );
  GTECH_AND2 C621 ( .A(N351), .B(N364), .Z(N398) );
  GTECH_AND2 C622 ( .A(N351), .B(N365), .Z(N399) );
  GTECH_AND2 C623 ( .A(N352), .B(N358), .Z(N400) );
  GTECH_AND2 C624 ( .A(N352), .B(N359), .Z(N401) );
  GTECH_AND2 C625 ( .A(N352), .B(N360), .Z(N402) );
  GTECH_AND2 C626 ( .A(N352), .B(N361), .Z(N403) );
  GTECH_AND2 C627 ( .A(N352), .B(N362), .Z(N404) );
  GTECH_AND2 C628 ( .A(N352), .B(N363), .Z(N405) );
  GTECH_AND2 C629 ( .A(N352), .B(N364), .Z(N406) );
  GTECH_AND2 C630 ( .A(N352), .B(N365), .Z(N407) );
  GTECH_NOT I_11 ( .A(reg_count[6]), .Z(N408) );
  GTECH_NOT I_12 ( .A(reg_count[7]), .Z(N409) );
  GTECH_NOT I_13 ( .A(reg_count[8]), .Z(N410) );
  GTECH_NOT I_14 ( .A(reg_count[9]), .Z(N411) );
  GTECH_NOT I_15 ( .A(reg_count[10]), .Z(N412) );
  GTECH_NOT I_16 ( .A(reg_count[11]), .Z(N413) );
  GTECH_NOT I_17 ( .A(reg_count[12]), .Z(N414) );
  GTECH_NOT I_18 ( .A(reg_count[13]), .Z(N415) );
  GTECH_NOT I_19 ( .A(reg_count[14]), .Z(N416) );
  GTECH_NOT I_20 ( .A(reg_count[15]), .Z(N417) );
  GTECH_AND2 C651_1 ( .A(N408), .B(N409), .Z(N8) );
  GTECH_AND2 C651_2 ( .A(N8), .B(N410), .Z(N9) );
  GTECH_AND2 C651_3 ( .A(N9), .B(N411), .Z(N10) );
  GTECH_AND2 C651_4 ( .A(N10), .B(N412), .Z(N11) );
  GTECH_AND2 C651_5 ( .A(N11), .B(N413), .Z(N12) );
  GTECH_AND2 C651_6 ( .A(N12), .B(N414), .Z(N13) );
  GTECH_AND2 C651_7 ( .A(N13), .B(N415), .Z(N14) );
  GTECH_AND2 C651_8 ( .A(N14), .B(N416), .Z(N15) );
  GTECH_AND2 C651_9 ( .A(N15), .B(N417), .Z(N418) );
  GTECH_AND2 C653 ( .A(N407), .B(N418), .Z(N45) );
  GTECH_AND2 C654 ( .A(N406), .B(N418), .Z(N46) );
  GTECH_AND2 C655 ( .A(N405), .B(N418), .Z(N47) );
  GTECH_AND2 C656 ( .A(N404), .B(N418), .Z(N48) );
  GTECH_AND2 C657 ( .A(N403), .B(N418), .Z(N49) );
  GTECH_AND2 C658 ( .A(N402), .B(N418), .Z(N50) );
  GTECH_AND2 C659 ( .A(N401), .B(N418), .Z(N51) );
  GTECH_AND2 C660 ( .A(N400), .B(N418), .Z(N52) );
  GTECH_AND2 C661 ( .A(N399), .B(N418), .Z(N53) );
  GTECH_AND2 C662 ( .A(N398), .B(N418), .Z(N54) );
  GTECH_AND2 C663 ( .A(N397), .B(N418), .Z(N55) );
  GTECH_AND2 C664 ( .A(N396), .B(N418), .Z(N56) );
  GTECH_AND2 C665 ( .A(N395), .B(N418), .Z(N57) );
  GTECH_AND2 C666 ( .A(N394), .B(N418), .Z(N58) );
  GTECH_AND2 C667 ( .A(N393), .B(N418), .Z(N59) );
  GTECH_AND2 C669 ( .A(N392), .B(N418), .Z(N60) );
  GTECH_AND2 C670 ( .A(N391), .B(N418), .Z(N61) );
  GTECH_AND2 C671 ( .A(N390), .B(N418), .Z(N62) );
  GTECH_AND2 C672 ( .A(N389), .B(N418), .Z(N63) );
  GTECH_AND2 C673 ( .A(N388), .B(N418), .Z(N64) );
  GTECH_AND2 C674 ( .A(N387), .B(N418), .Z(N65) );
  GTECH_AND2 C675 ( .A(N386), .B(N418), .Z(N66) );
  GTECH_AND2 C676 ( .A(N385), .B(N418), .Z(N67) );
  GTECH_AND2 C677 ( .A(N384), .B(N418), .Z(N68) );
  GTECH_AND2 C678 ( .A(N383), .B(N418), .Z(N69) );
  GTECH_AND2 C679 ( .A(N382), .B(N418), .Z(N70) );
  GTECH_AND2 C680 ( .A(N381), .B(N418), .Z(N71) );
  GTECH_AND2 C681 ( .A(N380), .B(N418), .Z(N72) );
  GTECH_AND2 C682 ( .A(N379), .B(N418), .Z(N73) );
  GTECH_AND2 C683 ( .A(N378), .B(N418), .Z(N74) );
  GTECH_AND2 C684 ( .A(N377), .B(N418), .Z(N75) );
  GTECH_AND2 C685 ( .A(N376), .B(N418), .Z(N76) );
  GTECH_AND2 C686 ( .A(N375), .B(N418), .Z(N77) );
  GTECH_AND2 C687 ( .A(N374), .B(N418), .Z(N78) );
  GTECH_AND2 C688 ( .A(N373), .B(N418), .Z(N79) );
  GTECH_AND2 C689 ( .A(N372), .B(N418), .Z(N80) );
  GTECH_AND2 C690 ( .A(N371), .B(N418), .Z(N81) );
  GTECH_AND2 C691 ( .A(N370), .B(N418), .Z(N82) );
  GTECH_AND2 C692 ( .A(N369), .B(N418), .Z(N83) );
  GTECH_AND2 C693 ( .A(N368), .B(N418), .Z(N84) );
  GTECH_AND2 C694 ( .A(N367), .B(N418), .Z(N85) );
  GTECH_AND2 C695 ( .A(N366), .B(N418), .Z(N86) );
  SELECT_OP C696 ( .DATA1({N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, 
        N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, 
        N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, 
        N48, N47, N46, N45}), .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .CONTROL1(N16), .CONTROL2(N44), .Z({N156, N155, N154, N153, N152, N151, 
        N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, 
        N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, 
        N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115}) );
  GTECH_BUF B_0 ( .A(N43), .Z(N16) );
  SELECT_OP C697 ( .DATA1(N157), .DATA2(1'b0), .CONTROL1(N17), .CONTROL2(N18), 
        .Z(N174) );
  GTECH_BUF B_1 ( .A(N341), .Z(N17) );
  GTECH_BUF B_2 ( .A(N340), .Z(N18) );
  SELECT_OP C698 ( .DATA1({N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, 
        N32, N31, N30, N29, N28, N27}), .DATA2({N173, N172, N171, N170, N169, 
        N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158}), 
        .CONTROL1(N17), .CONTROL2(N18), .Z({N190, N189, N188, N187, N186, N185, 
        N184, N183, N182, N181, N180, N179, N178, N177, N176, N175}) );
  SELECT_OP C699 ( .DATA1(1'b1), .DATA2(N341), .DATA3(1'b0), .CONTROL1(N19), 
        .CONTROL2(N20), .CONTROL3(N24), .Z(N191) );
  GTECH_BUF B_3 ( .A(N21), .Z(N19) );
  GTECH_BUF B_4 ( .A(N22), .Z(N20) );
  SELECT_OP C700 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b0), .CONTROL1(N19), 
        .CONTROL2(N20), .CONTROL3(N24), .Z(N192) );
  SELECT_OP C701 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0}), .DATA2({N190, N189, 
        N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, 
        N176, N175}), .CONTROL1(N19), .CONTROL2(N20), .Z({N208, N207, N206, 
        N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, 
        N193}) );
  SELECT_OP C702 ( .DATA1({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .DATA2({
        N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, 
        N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, 
        N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, 
        N120, N119, N118, N117, N116, N115}), .DATA3({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .CONTROL1(N19), .CONTROL2(N20), .CONTROL3(N24), .Z({N250, 
        N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239, N238, 
        N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, 
        N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, 
        N213, N212, N211, N210, N209}) );
  SELECT_OP C703 ( .DATA1(1'b1), .DATA2(N43), .DATA3(1'b0), .CONTROL1(N19), 
        .CONTROL2(N20), .CONTROL3(N24), .Z(N251) );
  SELECT_OP C704 ( .DATA1({i_dividend[14:0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({N114, N113, 
        N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, 
        N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87}), .CONTROL1(N19), .CONTROL2(N20), .Z({N279, N278, N277, N276, N275, N274, N273, 
        N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, N261, 
        N260, N259, N258, N257, N256, N255, N254, N253, N252}) );
  SELECT_OP C705 ( .DATA1({i_divisor[14:0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({
        1'b0, reg_working_divisor[42:1]}), .CONTROL1(N19), .CONTROL2(N20), .Z(
        {N322, N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, 
        N311, N310, N309, N308, N307, N306, N305, N304, N303, N302, N301, N300, 
        N299, N298, N297, N296, N295, N294, N293, N292, N291, N290, N289, N288, 
        N287, N286, N285, N284, N283, N282, N281, N280}) );
  SELECT_OP C706 ( .DATA1(1'b1), .DATA2(N174), .DATA3(1'b0), .CONTROL1(N19), 
        .CONTROL2(N20), .CONTROL3(N24), .Z(N323) );
  SELECT_OP C707 ( .DATA1(1'b1), .DATA2(1'b0), .DATA3(1'b0), .CONTROL1(N19), 
        .CONTROL2(N20), .CONTROL3(N24), .Z(N324) );
  SELECT_OP C708 ( .DATA1(1'b0), .DATA2(N341), .DATA3(1'b0), .CONTROL1(N19), 
        .CONTROL2(N20), .CONTROL3(N24), .Z(N325) );
  GTECH_AND2 C711 ( .A(o_complete), .B(i_start), .Z(N21) );
  GTECH_NOT I_21 ( .A(o_complete), .Z(N22) );
  GTECH_OR2 C715 ( .A(N22), .B(N21), .Z(N23) );
  GTECH_NOT I_22 ( .A(N23), .Z(N24) );
  GTECH_XOR2 C717 ( .A(i_dividend[15]), .B(i_divisor[15]), .Z(N25) );
  GTECH_BUF B_5 ( .A(N22), .Z(N26) );
  GTECH_NOT I_23 ( .A(N43), .Z(N44) );
  GTECH_AND2 C721 ( .A(N26), .B(N43) );
  GTECH_AND2 C724 ( .A(N26), .B(N341) );
  GTECH_AND2 C726 ( .A(N26), .B(N340) );
endmodule



    module iir_notch_filter_CONFIG_SIZE12_CORDIC_XY_BITS16_CORDIC_PHASE_BITS16_ADC_BITS8_FIXED_Q13_FILTER_ORDER2_LATENCY4 ( 
        clk, rst_n, config_nfft, .a_coeffs({\a_coeffs[2][15] , 
        \a_coeffs[2][14] , \a_coeffs[2][13] , \a_coeffs[2][12] , 
        \a_coeffs[2][11] , \a_coeffs[2][10] , \a_coeffs[2][9] , 
        \a_coeffs[2][8] , \a_coeffs[2][7] , \a_coeffs[2][6] , \a_coeffs[2][5] , 
        \a_coeffs[2][4] , \a_coeffs[2][3] , \a_coeffs[2][2] , \a_coeffs[2][1] , 
        \a_coeffs[2][0] , \a_coeffs[1][15] , \a_coeffs[1][14] , 
        \a_coeffs[1][13] , \a_coeffs[1][12] , \a_coeffs[1][11] , 
        \a_coeffs[1][10] , \a_coeffs[1][9] , \a_coeffs[1][8] , 
        \a_coeffs[1][7] , \a_coeffs[1][6] , \a_coeffs[1][5] , \a_coeffs[1][4] , 
        \a_coeffs[1][3] , \a_coeffs[1][2] , \a_coeffs[1][1] , \a_coeffs[1][0] , 
        \a_coeffs[0][15] , \a_coeffs[0][14] , \a_coeffs[0][13] , 
        \a_coeffs[0][12] , \a_coeffs[0][11] , \a_coeffs[0][10] , 
        \a_coeffs[0][9] , \a_coeffs[0][8] , \a_coeffs[0][7] , \a_coeffs[0][6] , 
        \a_coeffs[0][5] , \a_coeffs[0][4] , \a_coeffs[0][3] , \a_coeffs[0][2] , 
        \a_coeffs[0][1] , \a_coeffs[0][0] }), .b_coeffs({\b_coeffs[2][15] , 
        \b_coeffs[2][14] , \b_coeffs[2][13] , \b_coeffs[2][12] , 
        \b_coeffs[2][11] , \b_coeffs[2][10] , \b_coeffs[2][9] , 
        \b_coeffs[2][8] , \b_coeffs[2][7] , \b_coeffs[2][6] , \b_coeffs[2][5] , 
        \b_coeffs[2][4] , \b_coeffs[2][3] , \b_coeffs[2][2] , \b_coeffs[2][1] , 
        \b_coeffs[2][0] , \b_coeffs[1][15] , \b_coeffs[1][14] , 
        \b_coeffs[1][13] , \b_coeffs[1][12] , \b_coeffs[1][11] , 
        \b_coeffs[1][10] , \b_coeffs[1][9] , \b_coeffs[1][8] , 
        \b_coeffs[1][7] , \b_coeffs[1][6] , \b_coeffs[1][5] , \b_coeffs[1][4] , 
        \b_coeffs[1][3] , \b_coeffs[1][2] , \b_coeffs[1][1] , \b_coeffs[1][0] , 
        \b_coeffs[0][15] , \b_coeffs[0][14] , \b_coeffs[0][13] , 
        \b_coeffs[0][12] , \b_coeffs[0][11] , \b_coeffs[0][10] , 
        \b_coeffs[0][9] , \b_coeffs[0][8] , \b_coeffs[0][7] , \b_coeffs[0][6] , 
        \b_coeffs[0][5] , \b_coeffs[0][4] , \b_coeffs[0][3] , \b_coeffs[0][2] , 
        \b_coeffs[0][1] , \b_coeffs[0][0] }), eval_iir_freq_resp, 
    .phase_mem_data({\phase_mem_data[1][15] , \phase_mem_data[1][14] , 
        \phase_mem_data[1][13] , \phase_mem_data[1][12] , 
        \phase_mem_data[1][11] , \phase_mem_data[1][10] , 
        \phase_mem_data[1][9] , \phase_mem_data[1][8] , \phase_mem_data[1][7] , 
        \phase_mem_data[1][6] , \phase_mem_data[1][5] , \phase_mem_data[1][4] , 
        \phase_mem_data[1][3] , \phase_mem_data[1][2] , \phase_mem_data[1][1] , 
        \phase_mem_data[1][0] , \phase_mem_data[0][15] , 
        \phase_mem_data[0][14] , \phase_mem_data[0][13] , 
        \phase_mem_data[0][12] , \phase_mem_data[0][11] , 
        \phase_mem_data[0][10] , \phase_mem_data[0][9] , 
        \phase_mem_data[0][8] , \phase_mem_data[0][7] , \phase_mem_data[0][6] , 
        \phase_mem_data[0][5] , \phase_mem_data[0][4] , \phase_mem_data[0][3] , 
        \phase_mem_data[0][2] , \phase_mem_data[0][1] , \phase_mem_data[0][0] 
        }), .phase_mem_indices({\phase_mem_indices[1][11] , 
        \phase_mem_indices[1][10] , \phase_mem_indices[1][9] , 
        \phase_mem_indices[1][8] , \phase_mem_indices[1][7] , 
        \phase_mem_indices[1][6] , \phase_mem_indices[1][5] , 
        \phase_mem_indices[1][4] , \phase_mem_indices[1][3] , 
        \phase_mem_indices[1][2] , \phase_mem_indices[1][1] , 
        \phase_mem_indices[1][0] , \phase_mem_indices[0][11] , 
        \phase_mem_indices[0][10] , \phase_mem_indices[0][9] , 
        \phase_mem_indices[0][8] , \phase_mem_indices[0][7] , 
        \phase_mem_indices[0][6] , \phase_mem_indices[0][5] , 
        \phase_mem_indices[0][4] , \phase_mem_indices[0][3] , 
        \phase_mem_indices[0][2] , \phase_mem_indices[0][1] , 
        \phase_mem_indices[0][0] }), tf_val_magnitude, tf_val_phase, 
        tf_val_valid, freq_eval_done );
  input [11:0] config_nfft;
  output [15:0] tf_val_magnitude;
  output [15:0] tf_val_phase;
  input clk, rst_n, \a_coeffs[2][15] , \a_coeffs[2][14] , \a_coeffs[2][13] ,
         \a_coeffs[2][12] , \a_coeffs[2][11] , \a_coeffs[2][10] ,
         \a_coeffs[2][9] , \a_coeffs[2][8] , \a_coeffs[2][7] ,
         \a_coeffs[2][6] , \a_coeffs[2][5] , \a_coeffs[2][4] ,
         \a_coeffs[2][3] , \a_coeffs[2][2] , \a_coeffs[2][1] ,
         \a_coeffs[2][0] , \a_coeffs[1][15] , \a_coeffs[1][14] ,
         \a_coeffs[1][13] , \a_coeffs[1][12] , \a_coeffs[1][11] ,
         \a_coeffs[1][10] , \a_coeffs[1][9] , \a_coeffs[1][8] ,
         \a_coeffs[1][7] , \a_coeffs[1][6] , \a_coeffs[1][5] ,
         \a_coeffs[1][4] , \a_coeffs[1][3] , \a_coeffs[1][2] ,
         \a_coeffs[1][1] , \a_coeffs[1][0] , \a_coeffs[0][15] ,
         \a_coeffs[0][14] , \a_coeffs[0][13] , \a_coeffs[0][12] ,
         \a_coeffs[0][11] , \a_coeffs[0][10] , \a_coeffs[0][9] ,
         \a_coeffs[0][8] , \a_coeffs[0][7] , \a_coeffs[0][6] ,
         \a_coeffs[0][5] , \a_coeffs[0][4] , \a_coeffs[0][3] ,
         \a_coeffs[0][2] , \a_coeffs[0][1] , \a_coeffs[0][0] ,
         \b_coeffs[2][15] , \b_coeffs[2][14] , \b_coeffs[2][13] ,
         \b_coeffs[2][12] , \b_coeffs[2][11] , \b_coeffs[2][10] ,
         \b_coeffs[2][9] , \b_coeffs[2][8] , \b_coeffs[2][7] ,
         \b_coeffs[2][6] , \b_coeffs[2][5] , \b_coeffs[2][4] ,
         \b_coeffs[2][3] , \b_coeffs[2][2] , \b_coeffs[2][1] ,
         \b_coeffs[2][0] , \b_coeffs[1][15] , \b_coeffs[1][14] ,
         \b_coeffs[1][13] , \b_coeffs[1][12] , \b_coeffs[1][11] ,
         \b_coeffs[1][10] , \b_coeffs[1][9] , \b_coeffs[1][8] ,
         \b_coeffs[1][7] , \b_coeffs[1][6] , \b_coeffs[1][5] ,
         \b_coeffs[1][4] , \b_coeffs[1][3] , \b_coeffs[1][2] ,
         \b_coeffs[1][1] , \b_coeffs[1][0] , \b_coeffs[0][15] ,
         \b_coeffs[0][14] , \b_coeffs[0][13] , \b_coeffs[0][12] ,
         \b_coeffs[0][11] , \b_coeffs[0][10] , \b_coeffs[0][9] ,
         \b_coeffs[0][8] , \b_coeffs[0][7] , \b_coeffs[0][6] ,
         \b_coeffs[0][5] , \b_coeffs[0][4] , \b_coeffs[0][3] ,
         \b_coeffs[0][2] , \b_coeffs[0][1] , \b_coeffs[0][0] ,
         eval_iir_freq_resp, \phase_mem_data[1][15] , \phase_mem_data[1][14] ,
         \phase_mem_data[1][13] , \phase_mem_data[1][12] ,
         \phase_mem_data[1][11] , \phase_mem_data[1][10] ,
         \phase_mem_data[1][9] , \phase_mem_data[1][8] ,
         \phase_mem_data[1][7] , \phase_mem_data[1][6] ,
         \phase_mem_data[1][5] , \phase_mem_data[1][4] ,
         \phase_mem_data[1][3] , \phase_mem_data[1][2] ,
         \phase_mem_data[1][1] , \phase_mem_data[1][0] ,
         \phase_mem_data[0][15] , \phase_mem_data[0][14] ,
         \phase_mem_data[0][13] , \phase_mem_data[0][12] ,
         \phase_mem_data[0][11] , \phase_mem_data[0][10] ,
         \phase_mem_data[0][9] , \phase_mem_data[0][8] ,
         \phase_mem_data[0][7] , \phase_mem_data[0][6] ,
         \phase_mem_data[0][5] , \phase_mem_data[0][4] ,
         \phase_mem_data[0][3] , \phase_mem_data[0][2] ,
         \phase_mem_data[0][1] , \phase_mem_data[0][0] ;
  output \phase_mem_indices[1][11] , \phase_mem_indices[1][10] ,
         \phase_mem_indices[1][9] , \phase_mem_indices[1][8] ,
         \phase_mem_indices[1][7] , \phase_mem_indices[1][6] ,
         \phase_mem_indices[1][5] , \phase_mem_indices[1][4] ,
         \phase_mem_indices[1][3] , \phase_mem_indices[1][2] ,
         \phase_mem_indices[1][1] , \phase_mem_indices[1][0] ,
         \phase_mem_indices[0][11] , \phase_mem_indices[0][10] ,
         \phase_mem_indices[0][9] , \phase_mem_indices[0][8] ,
         \phase_mem_indices[0][7] , \phase_mem_indices[0][6] ,
         \phase_mem_indices[0][5] , \phase_mem_indices[0][4] ,
         \phase_mem_indices[0][3] , \phase_mem_indices[0][2] ,
         \phase_mem_indices[0][1] , \phase_mem_indices[0][0] , tf_val_valid,
         freq_eval_done;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9,
         \a_coeffs_gain_adjusted[1][15] , \a_coeffs_gain_adjusted[1][14] ,
         \a_coeffs_gain_adjusted[1][13] , \a_coeffs_gain_adjusted[1][12] ,
         \a_coeffs_gain_adjusted[1][11] , \a_coeffs_gain_adjusted[1][10] ,
         \a_coeffs_gain_adjusted[1][9] , \a_coeffs_gain_adjusted[1][8] ,
         \a_coeffs_gain_adjusted[1][7] , \a_coeffs_gain_adjusted[1][6] ,
         \a_coeffs_gain_adjusted[1][5] , \a_coeffs_gain_adjusted[1][4] ,
         \a_coeffs_gain_adjusted[1][3] , \a_coeffs_gain_adjusted[1][2] ,
         \a_coeffs_gain_adjusted[1][1] , \a_coeffs_gain_adjusted[1][0] ,
         \a_coeffs_gain_adjusted[0][15] , \a_coeffs_gain_adjusted[0][14] ,
         \a_coeffs_gain_adjusted[0][13] , \a_coeffs_gain_adjusted[0][12] ,
         \a_coeffs_gain_adjusted[0][11] , \a_coeffs_gain_adjusted[0][10] ,
         \a_coeffs_gain_adjusted[0][9] , \a_coeffs_gain_adjusted[0][8] ,
         \a_coeffs_gain_adjusted[0][7] , \a_coeffs_gain_adjusted[0][6] ,
         \a_coeffs_gain_adjusted[0][5] , \a_coeffs_gain_adjusted[0][4] ,
         \a_coeffs_gain_adjusted[0][3] , \a_coeffs_gain_adjusted[0][2] ,
         \a_coeffs_gain_adjusted[0][1] , \a_coeffs_gain_adjusted[0][0] ,
         \b_coeffs_gain_adjusted[1][15] , \b_coeffs_gain_adjusted[1][14] ,
         \b_coeffs_gain_adjusted[1][13] , \b_coeffs_gain_adjusted[1][12] ,
         \b_coeffs_gain_adjusted[1][11] , \b_coeffs_gain_adjusted[1][10] ,
         \b_coeffs_gain_adjusted[1][9] , \b_coeffs_gain_adjusted[1][8] ,
         \b_coeffs_gain_adjusted[1][7] , \b_coeffs_gain_adjusted[1][6] ,
         \b_coeffs_gain_adjusted[1][5] , \b_coeffs_gain_adjusted[1][4] ,
         \b_coeffs_gain_adjusted[1][3] , \b_coeffs_gain_adjusted[1][2] ,
         \b_coeffs_gain_adjusted[1][1] , \b_coeffs_gain_adjusted[1][0] ,
         \b_coeffs_gain_adjusted[0][15] , \b_coeffs_gain_adjusted[0][14] ,
         \b_coeffs_gain_adjusted[0][13] , \b_coeffs_gain_adjusted[0][12] ,
         \b_coeffs_gain_adjusted[0][11] , \b_coeffs_gain_adjusted[0][10] ,
         \b_coeffs_gain_adjusted[0][9] , \b_coeffs_gain_adjusted[0][8] ,
         \b_coeffs_gain_adjusted[0][7] , \b_coeffs_gain_adjusted[0][6] ,
         \b_coeffs_gain_adjusted[0][5] , \b_coeffs_gain_adjusted[0][4] ,
         \b_coeffs_gain_adjusted[0][3] , \b_coeffs_gain_adjusted[0][2] ,
         \b_coeffs_gain_adjusted[0][1] , \b_coeffs_gain_adjusted[0][0] ,
         reset_filt, run_filt_trig, \complex_phases[1][15] ,
         \complex_phases[1][14] , \complex_phases[1][13] ,
         \complex_phases[1][12] , \complex_phases[1][11] ,
         \complex_phases[1][10] , \complex_phases[1][9] ,
         \complex_phases[1][8] , \complex_phases[1][7] ,
         \complex_phases[1][6] , \complex_phases[1][5] ,
         \complex_phases[1][4] , \complex_phases[1][3] ,
         \complex_phases[1][2] , \complex_phases[1][1] ,
         \complex_phases[1][0] , \complex_phases[0][15] ,
         \complex_phases[0][14] , \complex_phases[0][13] ,
         \complex_phases[0][12] , \complex_phases[0][11] ,
         \complex_phases[0][10] , \complex_phases[0][9] ,
         \complex_phases[0][8] , \complex_phases[0][7] ,
         \complex_phases[0][6] , \complex_phases[0][5] ,
         \complex_phases[0][4] , \complex_phases[0][3] ,
         \complex_phases[0][2] , \complex_phases[0][1] ,
         \complex_phases[0][0] , \a_real[1][15] , \a_real[1][14] ,
         \a_real[1][13] , \a_real[1][12] , \a_real[1][11] , \a_real[1][10] ,
         \a_real[1][9] , \a_real[1][8] , \a_real[1][7] , \a_real[1][6] ,
         \a_real[1][5] , \a_real[1][4] , \a_real[1][3] , \a_real[1][2] ,
         \a_real[1][1] , \a_real[1][0] , \a_real[0][15] , \a_real[0][14] ,
         \a_real[0][13] , \a_real[0][12] , \a_real[0][11] , \a_real[0][10] ,
         \a_real[0][9] , \a_real[0][8] , \a_real[0][7] , \a_real[0][6] ,
         \a_real[0][5] , \a_real[0][4] , \a_real[0][3] , \a_real[0][2] ,
         \a_real[0][1] , \a_real[0][0] , \a_imag[1][15] , \a_imag[1][14] ,
         \a_imag[1][13] , \a_imag[1][12] , \a_imag[1][11] , \a_imag[1][10] ,
         \a_imag[1][9] , \a_imag[1][8] , \a_imag[1][7] , \a_imag[1][6] ,
         \a_imag[1][5] , \a_imag[1][4] , \a_imag[1][3] , \a_imag[1][2] ,
         \a_imag[1][1] , \a_imag[1][0] , \a_imag[0][15] , \a_imag[0][14] ,
         \a_imag[0][13] , \a_imag[0][12] , \a_imag[0][11] , \a_imag[0][10] ,
         \a_imag[0][9] , \a_imag[0][8] , \a_imag[0][7] , \a_imag[0][6] ,
         \a_imag[0][5] , \a_imag[0][4] , \a_imag[0][3] , \a_imag[0][2] ,
         \a_imag[0][1] , \a_imag[0][0] , \b_real[1][15] , \b_real[1][14] ,
         \b_real[1][13] , \b_real[1][12] , \b_real[1][11] , \b_real[1][10] ,
         \b_real[1][9] , \b_real[1][8] , \b_real[1][7] , \b_real[1][6] ,
         \b_real[1][5] , \b_real[1][4] , \b_real[1][3] , \b_real[1][2] ,
         \b_real[1][1] , \b_real[1][0] , \b_real[0][15] , \b_real[0][14] ,
         \b_real[0][13] , \b_real[0][12] , \b_real[0][11] , \b_real[0][10] ,
         \b_real[0][9] , \b_real[0][8] , \b_real[0][7] , \b_real[0][6] ,
         \b_real[0][5] , \b_real[0][4] , \b_real[0][3] , \b_real[0][2] ,
         \b_real[0][1] , \b_real[0][0] , \b_imag[1][15] , \b_imag[1][14] ,
         \b_imag[1][13] , \b_imag[1][12] , \b_imag[1][11] , \b_imag[1][10] ,
         \b_imag[1][9] , \b_imag[1][8] , \b_imag[1][7] , \b_imag[1][6] ,
         \b_imag[1][5] , \b_imag[1][4] , \b_imag[1][3] , \b_imag[1][2] ,
         \b_imag[1][1] , \b_imag[1][0] , \b_imag[0][15] , \b_imag[0][14] ,
         \b_imag[0][13] , \b_imag[0][12] , \b_imag[0][11] , \b_imag[0][10] ,
         \b_imag[0][9] , \b_imag[0][8] , \b_imag[0][7] , \b_imag[0][6] ,
         \b_imag[0][5] , \b_imag[0][4] , \b_imag[0][3] , \b_imag[0][2] ,
         \b_imag[0][1] , \b_imag[0][0] , num_cordic_busy, num_cordic_done,
         den_cordic_busy, den_cordic_done, fixed_div_done, fixed_div_overflow,
         N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23,
         N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37,
         N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51,
         N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65,
         N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79,
         N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93,
         N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105,
         N106, N107, N108, N109, N110, N111, N112, N113, N114, N115, N116,
         N117, N118, N119, N120, N121, N122, N123, N124, N125, N126, N127,
         N128, N129, N130, N131, N132, N133, N134, N135, N136, N137, N138,
         N139, N140, N141, N142, N143, N144, N145, N146, N147, N148, N149,
         N150, N151, N152, N153, N154, N155, N156, N157, N158, N159, N160,
         N161, N162, N163, N164, N165, N166, N167, N168, N169, N170, N171,
         N172, N173, N174, N175, N176, N177, N178, N179, N180, N181, N182,
         N183, N184, N185, N186, N187, N188, N189, N190, N191, N192, N193,
         N194, N195, N196, N197, N198, N199, N200, N201, N202, N203, N204,
         N205, N206, N207, N208, N209, N210, N211, N212, N213, N214, N215,
         N216, N217, N218, N219, N220, N221, N222, N223, N224, N225, N226,
         N227, N228, N229, N230, N231, N232, N233, N234, N235, N236, N237,
         N238, N239, N240, N241, N242, N243, N244, N245, N246, N247, N248,
         N249, N250, N251, N252, N253, N254, N255, N256, N257, N258, N259,
         N260, N261, N262, N263, N264, N265, N266, N267, N268, N269, N270,
         N271, N272, N273, N274, N275, N276, N277, N278, N279, N280, N281,
         N282, N283, N284, N285, N286, N287, N288, N289, N290, N291, N292,
         N293, N294, N295, N296, N297, N298, N299, N300, N301, N302, N303,
         N304, N305, N306, N307, N308, N309, N310, N311, N312, N313, N314,
         N315, N316, N317, N318, N319, N320, N321, N322, N323, N324, N325,
         N326, N327, N328, N329, N330, N331, N332, N333, N334, N335, N336,
         N337, N338, N339, N340, N341, N342, N343, N344, N345, N346, N347,
         N348, N349, N350, N351, N352, N353, N354, N355, N356, N357, N358,
         N359, N360, N361, N362, N363, N364, N365, N366, N367, N368, N369,
         N370, N371, N372, N373, N374, N375, N376, N377, N378, N379, N380,
         N381, N382, N383, N384, N385, N386, N387, N388, N389, N390, N391,
         N392, N393, N394, N395, N396, N397, N398, N399, N400, N401, N402,
         N403, N404, N405, N406, N407, N408, N409, N410, N411, N412, N413,
         N414, N415, N416, N417, N418, N419, N420, N421, N422, N423, N424,
         N425, N426, N427, N428, N429, N430, N431, N432, N433, N434, N435,
         N436, N437, N438, N439, N440, N441, N442, N443, N444, N445, N446,
         N447, N448, N449, N450, N451, N452, N453, N454, N455, N456, N457,
         N458, N459, N460, N461, N462, N463, N464, N465, N466, N467, N468,
         N469, N470, N471, N472, N473, N474, N475, N476, N477, N478, N479,
         N480, N481, N482, N483, N484, N485, N486, N487, N488, N489, N490,
         N491, N492, N493, N494, N495, N496, N497, N498, N499, N500, N501,
         N502, N503, N504;
  wire   [15:0] num_magnitude_out;
  wire   [15:0] num_magnitude_gain_adjusted;
  wire   [15:0] den_magnitude_out;
  wire   [15:0] den_magnitude_gain_adjusted;
  wire   [1:0] a_cordic_busy;
  wire   [1:0] a_cordic_done;
  wire   [1:0] b_cordic_busy;
  wire   [1:0] b_cordic_done;
  wire   [15:0] num_eval_real;
  wire   [15:0] num_eval_imag;
  wire   [15:0] num_phase_out;
  wire   [15:0] den_eval_real;
  wire   [15:0] den_eval_imag;
  wire   [15:0] den_phase_out;
  wire   [15:0] num_magnitude;
  wire   [15:0] den_magnitude;
  wire   [15:0] tf_quotient;
  wire   [2:0] state_r;
  wire   [11:0] freq_k_step;
  wire   [11:0] eval_cntr;
  wire   [15:0] num_phase;
  wire   [15:0] den_phase;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73, 
        SYNOPSYS_UNCONNECTED__74, SYNOPSYS_UNCONNECTED__75, 
        SYNOPSYS_UNCONNECTED__76, SYNOPSYS_UNCONNECTED__77, 
        SYNOPSYS_UNCONNECTED__78, SYNOPSYS_UNCONNECTED__79, 
        SYNOPSYS_UNCONNECTED__80, SYNOPSYS_UNCONNECTED__81, 
        SYNOPSYS_UNCONNECTED__82, SYNOPSYS_UNCONNECTED__83, 
        SYNOPSYS_UNCONNECTED__84, SYNOPSYS_UNCONNECTED__85, 
        SYNOPSYS_UNCONNECTED__86, SYNOPSYS_UNCONNECTED__87, 
        SYNOPSYS_UNCONNECTED__88, SYNOPSYS_UNCONNECTED__89, 
        SYNOPSYS_UNCONNECTED__90, SYNOPSYS_UNCONNECTED__91, 
        SYNOPSYS_UNCONNECTED__92, SYNOPSYS_UNCONNECTED__93, 
        SYNOPSYS_UNCONNECTED__94, SYNOPSYS_UNCONNECTED__95, 
        SYNOPSYS_UNCONNECTED__96, SYNOPSYS_UNCONNECTED__97, 
        SYNOPSYS_UNCONNECTED__98, SYNOPSYS_UNCONNECTED__99, 
        SYNOPSYS_UNCONNECTED__100, SYNOPSYS_UNCONNECTED__101, 
        SYNOPSYS_UNCONNECTED__102, SYNOPSYS_UNCONNECTED__103, 
        SYNOPSYS_UNCONNECTED__104, SYNOPSYS_UNCONNECTED__105, 
        SYNOPSYS_UNCONNECTED__106, SYNOPSYS_UNCONNECTED__107, 
        SYNOPSYS_UNCONNECTED__108, SYNOPSYS_UNCONNECTED__109, 
        SYNOPSYS_UNCONNECTED__110, SYNOPSYS_UNCONNECTED__111, 
        SYNOPSYS_UNCONNECTED__112, SYNOPSYS_UNCONNECTED__113, 
        SYNOPSYS_UNCONNECTED__114, SYNOPSYS_UNCONNECTED__115, 
        SYNOPSYS_UNCONNECTED__116, SYNOPSYS_UNCONNECTED__117, 
        SYNOPSYS_UNCONNECTED__118, SYNOPSYS_UNCONNECTED__119, 
        SYNOPSYS_UNCONNECTED__120, SYNOPSYS_UNCONNECTED__121, 
        SYNOPSYS_UNCONNECTED__122, SYNOPSYS_UNCONNECTED__123, 
        SYNOPSYS_UNCONNECTED__124, SYNOPSYS_UNCONNECTED__125, 
        SYNOPSYS_UNCONNECTED__126, SYNOPSYS_UNCONNECTED__127, 
        SYNOPSYS_UNCONNECTED__128, SYNOPSYS_UNCONNECTED__129, 
        SYNOPSYS_UNCONNECTED__130, SYNOPSYS_UNCONNECTED__131, 
        SYNOPSYS_UNCONNECTED__132, SYNOPSYS_UNCONNECTED__133, 
        SYNOPSYS_UNCONNECTED__134, SYNOPSYS_UNCONNECTED__135, 
        SYNOPSYS_UNCONNECTED__136, SYNOPSYS_UNCONNECTED__137, 
        SYNOPSYS_UNCONNECTED__138, SYNOPSYS_UNCONNECTED__139, 
        SYNOPSYS_UNCONNECTED__140, SYNOPSYS_UNCONNECTED__141, 
        SYNOPSYS_UNCONNECTED__142, SYNOPSYS_UNCONNECTED__143, 
        SYNOPSYS_UNCONNECTED__144, SYNOPSYS_UNCONNECTED__145, 
        SYNOPSYS_UNCONNECTED__146, SYNOPSYS_UNCONNECTED__147, 
        SYNOPSYS_UNCONNECTED__148, SYNOPSYS_UNCONNECTED__149, 
        SYNOPSYS_UNCONNECTED__150, SYNOPSYS_UNCONNECTED__151, 
        SYNOPSYS_UNCONNECTED__152, SYNOPSYS_UNCONNECTED__153, 
        SYNOPSYS_UNCONNECTED__154, SYNOPSYS_UNCONNECTED__155, 
        SYNOPSYS_UNCONNECTED__156, SYNOPSYS_UNCONNECTED__157, 
        SYNOPSYS_UNCONNECTED__158, SYNOPSYS_UNCONNECTED__159, 
        SYNOPSYS_UNCONNECTED__160, SYNOPSYS_UNCONNECTED__161, 
        SYNOPSYS_UNCONNECTED__162, SYNOPSYS_UNCONNECTED__163, 
        SYNOPSYS_UNCONNECTED__164, SYNOPSYS_UNCONNECTED__165, 
        SYNOPSYS_UNCONNECTED__166, SYNOPSYS_UNCONNECTED__167, 
        SYNOPSYS_UNCONNECTED__168, SYNOPSYS_UNCONNECTED__169, 
        SYNOPSYS_UNCONNECTED__170, SYNOPSYS_UNCONNECTED__171, 
        SYNOPSYS_UNCONNECTED__172, SYNOPSYS_UNCONNECTED__173, 
        SYNOPSYS_UNCONNECTED__174, SYNOPSYS_UNCONNECTED__175, 
        SYNOPSYS_UNCONNECTED__176, SYNOPSYS_UNCONNECTED__177, 
        SYNOPSYS_UNCONNECTED__178, SYNOPSYS_UNCONNECTED__179, 
        SYNOPSYS_UNCONNECTED__180, SYNOPSYS_UNCONNECTED__181, 
        SYNOPSYS_UNCONNECTED__182, SYNOPSYS_UNCONNECTED__183, 
        SYNOPSYS_UNCONNECTED__184, SYNOPSYS_UNCONNECTED__185, 
        SYNOPSYS_UNCONNECTED__186, SYNOPSYS_UNCONNECTED__187, 
        SYNOPSYS_UNCONNECTED__188, SYNOPSYS_UNCONNECTED__189, 
        SYNOPSYS_UNCONNECTED__190, SYNOPSYS_UNCONNECTED__191;

  cordic_polar_to_rect \genblk2[0].cordic_polar_to_rect_inst_a  ( .i_clk(clk), 
        .i_reset(reset_filt), .i_stb(run_filt_trig), .i_aux(1'b0), .i_xval({
        \a_coeffs_gain_adjusted[0][15] , \a_coeffs_gain_adjusted[0][14] , 
        \a_coeffs_gain_adjusted[0][13] , \a_coeffs_gain_adjusted[0][12] , 
        \a_coeffs_gain_adjusted[0][11] , \a_coeffs_gain_adjusted[0][10] , 
        \a_coeffs_gain_adjusted[0][9] , \a_coeffs_gain_adjusted[0][8] , 
        \a_coeffs_gain_adjusted[0][7] , \a_coeffs_gain_adjusted[0][6] , 
        \a_coeffs_gain_adjusted[0][5] , \a_coeffs_gain_adjusted[0][4] , 
        \a_coeffs_gain_adjusted[0][3] , \a_coeffs_gain_adjusted[0][2] , 
        \a_coeffs_gain_adjusted[0][1] , \a_coeffs_gain_adjusted[0][0] }), 
        .i_yval({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .i_phase({
        \complex_phases[0][15] , \complex_phases[0][14] , 
        \complex_phases[0][13] , \complex_phases[0][12] , 
        \complex_phases[0][11] , \complex_phases[0][10] , 
        \complex_phases[0][9] , \complex_phases[0][8] , \complex_phases[0][7] , 
        \complex_phases[0][6] , \complex_phases[0][5] , \complex_phases[0][4] , 
        \complex_phases[0][3] , \complex_phases[0][2] , \complex_phases[0][1] , 
        \complex_phases[0][0] }), .o_busy(a_cordic_busy[0]), .o_done(
        a_cordic_done[0]), .o_xval({\a_real[0][15] , \a_real[0][14] , 
        \a_real[0][13] , \a_real[0][12] , \a_real[0][11] , \a_real[0][10] , 
        \a_real[0][9] , \a_real[0][8] , \a_real[0][7] , \a_real[0][6] , 
        \a_real[0][5] , \a_real[0][4] , \a_real[0][3] , \a_real[0][2] , 
        \a_real[0][1] , \a_real[0][0] }), .o_yval({\a_imag[0][15] , 
        \a_imag[0][14] , \a_imag[0][13] , \a_imag[0][12] , \a_imag[0][11] , 
        \a_imag[0][10] , \a_imag[0][9] , \a_imag[0][8] , \a_imag[0][7] , 
        \a_imag[0][6] , \a_imag[0][5] , \a_imag[0][4] , \a_imag[0][3] , 
        \a_imag[0][2] , \a_imag[0][1] , \a_imag[0][0] }) );
  cordic_polar_to_rect \genblk2[0].cordic_polar_to_rect_inst_b  ( .i_clk(clk), 
        .i_reset(reset_filt), .i_stb(run_filt_trig), .i_aux(1'b0), .i_xval({
        \b_coeffs_gain_adjusted[0][15] , \b_coeffs_gain_adjusted[0][14] , 
        \b_coeffs_gain_adjusted[0][13] , \b_coeffs_gain_adjusted[0][12] , 
        \b_coeffs_gain_adjusted[0][11] , \b_coeffs_gain_adjusted[0][10] , 
        \b_coeffs_gain_adjusted[0][9] , \b_coeffs_gain_adjusted[0][8] , 
        \b_coeffs_gain_adjusted[0][7] , \b_coeffs_gain_adjusted[0][6] , 
        \b_coeffs_gain_adjusted[0][5] , \b_coeffs_gain_adjusted[0][4] , 
        \b_coeffs_gain_adjusted[0][3] , \b_coeffs_gain_adjusted[0][2] , 
        \b_coeffs_gain_adjusted[0][1] , \b_coeffs_gain_adjusted[0][0] }), 
        .i_yval({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .i_phase({
        \complex_phases[0][15] , \complex_phases[0][14] , 
        \complex_phases[0][13] , \complex_phases[0][12] , 
        \complex_phases[0][11] , \complex_phases[0][10] , 
        \complex_phases[0][9] , \complex_phases[0][8] , \complex_phases[0][7] , 
        \complex_phases[0][6] , \complex_phases[0][5] , \complex_phases[0][4] , 
        \complex_phases[0][3] , \complex_phases[0][2] , \complex_phases[0][1] , 
        \complex_phases[0][0] }), .o_busy(b_cordic_busy[0]), .o_done(
        b_cordic_done[0]), .o_xval({\b_real[0][15] , \b_real[0][14] , 
        \b_real[0][13] , \b_real[0][12] , \b_real[0][11] , \b_real[0][10] , 
        \b_real[0][9] , \b_real[0][8] , \b_real[0][7] , \b_real[0][6] , 
        \b_real[0][5] , \b_real[0][4] , \b_real[0][3] , \b_real[0][2] , 
        \b_real[0][1] , \b_real[0][0] }), .o_yval({\b_imag[0][15] , 
        \b_imag[0][14] , \b_imag[0][13] , \b_imag[0][12] , \b_imag[0][11] , 
        \b_imag[0][10] , \b_imag[0][9] , \b_imag[0][8] , \b_imag[0][7] , 
        \b_imag[0][6] , \b_imag[0][5] , \b_imag[0][4] , \b_imag[0][3] , 
        \b_imag[0][2] , \b_imag[0][1] , \b_imag[0][0] }) );
  cordic_polar_to_rect \genblk2[1].cordic_polar_to_rect_inst_a  ( .i_clk(clk), 
        .i_reset(reset_filt), .i_stb(run_filt_trig), .i_aux(1'b0), .i_xval({
        \a_coeffs_gain_adjusted[1][15] , \a_coeffs_gain_adjusted[1][14] , 
        \a_coeffs_gain_adjusted[1][13] , \a_coeffs_gain_adjusted[1][12] , 
        \a_coeffs_gain_adjusted[1][11] , \a_coeffs_gain_adjusted[1][10] , 
        \a_coeffs_gain_adjusted[1][9] , \a_coeffs_gain_adjusted[1][8] , 
        \a_coeffs_gain_adjusted[1][7] , \a_coeffs_gain_adjusted[1][6] , 
        \a_coeffs_gain_adjusted[1][5] , \a_coeffs_gain_adjusted[1][4] , 
        \a_coeffs_gain_adjusted[1][3] , \a_coeffs_gain_adjusted[1][2] , 
        \a_coeffs_gain_adjusted[1][1] , \a_coeffs_gain_adjusted[1][0] }), 
        .i_yval({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .i_phase({
        \complex_phases[1][15] , \complex_phases[1][14] , 
        \complex_phases[1][13] , \complex_phases[1][12] , 
        \complex_phases[1][11] , \complex_phases[1][10] , 
        \complex_phases[1][9] , \complex_phases[1][8] , \complex_phases[1][7] , 
        \complex_phases[1][6] , \complex_phases[1][5] , \complex_phases[1][4] , 
        \complex_phases[1][3] , \complex_phases[1][2] , \complex_phases[1][1] , 
        \complex_phases[1][0] }), .o_busy(a_cordic_busy[1]), .o_done(
        a_cordic_done[1]), .o_xval({\a_real[1][15] , \a_real[1][14] , 
        \a_real[1][13] , \a_real[1][12] , \a_real[1][11] , \a_real[1][10] , 
        \a_real[1][9] , \a_real[1][8] , \a_real[1][7] , \a_real[1][6] , 
        \a_real[1][5] , \a_real[1][4] , \a_real[1][3] , \a_real[1][2] , 
        \a_real[1][1] , \a_real[1][0] }), .o_yval({\a_imag[1][15] , 
        \a_imag[1][14] , \a_imag[1][13] , \a_imag[1][12] , \a_imag[1][11] , 
        \a_imag[1][10] , \a_imag[1][9] , \a_imag[1][8] , \a_imag[1][7] , 
        \a_imag[1][6] , \a_imag[1][5] , \a_imag[1][4] , \a_imag[1][3] , 
        \a_imag[1][2] , \a_imag[1][1] , \a_imag[1][0] }) );
  cordic_polar_to_rect \genblk2[1].cordic_polar_to_rect_inst_b  ( .i_clk(clk), 
        .i_reset(reset_filt), .i_stb(run_filt_trig), .i_aux(1'b0), .i_xval({
        \b_coeffs_gain_adjusted[1][15] , \b_coeffs_gain_adjusted[1][14] , 
        \b_coeffs_gain_adjusted[1][13] , \b_coeffs_gain_adjusted[1][12] , 
        \b_coeffs_gain_adjusted[1][11] , \b_coeffs_gain_adjusted[1][10] , 
        \b_coeffs_gain_adjusted[1][9] , \b_coeffs_gain_adjusted[1][8] , 
        \b_coeffs_gain_adjusted[1][7] , \b_coeffs_gain_adjusted[1][6] , 
        \b_coeffs_gain_adjusted[1][5] , \b_coeffs_gain_adjusted[1][4] , 
        \b_coeffs_gain_adjusted[1][3] , \b_coeffs_gain_adjusted[1][2] , 
        \b_coeffs_gain_adjusted[1][1] , \b_coeffs_gain_adjusted[1][0] }), 
        .i_yval({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .i_phase({
        \complex_phases[1][15] , \complex_phases[1][14] , 
        \complex_phases[1][13] , \complex_phases[1][12] , 
        \complex_phases[1][11] , \complex_phases[1][10] , 
        \complex_phases[1][9] , \complex_phases[1][8] , \complex_phases[1][7] , 
        \complex_phases[1][6] , \complex_phases[1][5] , \complex_phases[1][4] , 
        \complex_phases[1][3] , \complex_phases[1][2] , \complex_phases[1][1] , 
        \complex_phases[1][0] }), .o_busy(b_cordic_busy[1]), .o_done(
        b_cordic_done[1]), .o_xval({\b_real[1][15] , \b_real[1][14] , 
        \b_real[1][13] , \b_real[1][12] , \b_real[1][11] , \b_real[1][10] , 
        \b_real[1][9] , \b_real[1][8] , \b_real[1][7] , \b_real[1][6] , 
        \b_real[1][5] , \b_real[1][4] , \b_real[1][3] , \b_real[1][2] , 
        \b_real[1][1] , \b_real[1][0] }), .o_yval({\b_imag[1][15] , 
        \b_imag[1][14] , \b_imag[1][13] , \b_imag[1][12] , \b_imag[1][11] , 
        \b_imag[1][10] , \b_imag[1][9] , \b_imag[1][8] , \b_imag[1][7] , 
        \b_imag[1][6] , \b_imag[1][5] , \b_imag[1][4] , \b_imag[1][3] , 
        \b_imag[1][2] , \b_imag[1][1] , \b_imag[1][0] }) );
  cordic_rect_to_polar cordic_rect_to_polar_inst_num ( .i_clk(clk), .i_reset(
        reset_filt), .i_stb(run_filt_trig), .i_xval(num_eval_real), .i_yval(
        num_eval_imag), .i_aux(1'b0), .o_busy(num_cordic_busy), .o_done(
        num_cordic_done), .o_mag(num_magnitude_out), .o_phase(num_phase_out)
         );
  cordic_rect_to_polar cordic_rect_to_polar_inst_den ( .i_clk(clk), .i_reset(
        reset_filt), .i_stb(run_filt_trig), .i_xval(den_eval_real), .i_yval(
        den_eval_imag), .i_aux(1'b0), .o_busy(den_cordic_busy), .o_done(
        den_cordic_done), .o_mag(den_magnitude_out), .o_phase(den_phase_out)
         );
  fixed_pt_div_Q13_N16 fixed_pt_div_inst ( .i_dividend(num_magnitude), 
        .i_divisor(den_magnitude), .i_start(run_filt_trig), .i_clk(clk), 
        .o_quotient_out(tf_quotient), .o_complete(fixed_div_done), 
        .o_overflow(fixed_div_overflow) );
  GTECH_AND2 C12 ( .A(N12), .B(N13), .Z(N15) );
  GTECH_AND2 C13 ( .A(N15), .B(N14), .Z(N16) );
  GTECH_OR2 C15 ( .A(state_r[2]), .B(state_r[1]), .Z(N17) );
  GTECH_OR2 C16 ( .A(N17), .B(N14), .Z(N18) );
  GTECH_OR2 C19 ( .A(state_r[2]), .B(N13), .Z(N20) );
  GTECH_OR2 C20 ( .A(N20), .B(state_r[0]), .Z(N21) );
  GTECH_OR2 C24 ( .A(state_r[2]), .B(N13), .Z(N23) );
  GTECH_OR2 C25 ( .A(N23), .B(N14), .Z(N24) );
  GTECH_OR2 C28 ( .A(N12), .B(state_r[1]), .Z(N26) );
  GTECH_OR2 C29 ( .A(N26), .B(state_r[0]), .Z(N27) );
  GTECH_OR2 C33 ( .A(N12), .B(state_r[1]), .Z(N29) );
  GTECH_OR2 C34 ( .A(N29), .B(N14), .Z(N30) );
  EQ_UNS_OP eq_1552 ( .A(freq_k_step), .B({N143, N143, N143, N143, N143, N143, 
        N143, N143, N143, N143, N143, N143, N143, N143, N143, N143, N143, N143, 
        N143, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, 
        N132, N131}), .Z(N144) );
  GT_UNS_OP gt_1561 ( .A({freq_k_step, 1'b0}), .B({N143, N143, N143, N143, 
        N143, N143, N143, N143, N143, N143, N143, N143, N143, N143, N143, N143, 
        N143, N143, N143, N143, N142, N141, N140, N139, N138, N137, N136, N135, 
        N134, N133, N132, N131}), .Z(N198) );
  EQ_UNS_OP eq_1570 ( .A(eval_cntr), .B({N250, N250, N250, N250, N250, N250, 
        N250, N250, N250, N250, N250, N250, N250, N250, N250, N250, N250, N250, 
        N250, N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239, 
        N238, N237}), .Z(N251) );
  \**SEQGEN**  \den_phase_reg[15]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N450), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        den_phase[15]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_phase_reg[14]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N449), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        den_phase[14]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_phase_reg[13]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N448), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        den_phase[13]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_phase_reg[12]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N447), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        den_phase[12]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_phase_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N446), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        den_phase[11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_phase_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N445), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        den_phase[10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_phase_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N444), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        den_phase[9]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_phase_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N443), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        den_phase[8]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_phase_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N442), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        den_phase[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_phase_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N441), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        den_phase[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_phase_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N440), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        den_phase[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_phase_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N439), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        den_phase[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_phase_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N438), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        den_phase[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_phase_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N437), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        den_phase[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_phase_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N436), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        den_phase[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_phase_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N435), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        den_phase[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N489) );
  \**SEQGEN**  \state_r_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N485), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(state_r[2]), 
        .synch_clear(N10), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N259) );
  \**SEQGEN**  \state_r_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N484), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(state_r[1]), 
        .synch_clear(N10), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N259) );
  \**SEQGEN**  \state_r_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N483), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(state_r[0]), 
        .synch_clear(N10), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N259) );
  \**SEQGEN**  \tf_val_magnitude_reg[15]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N466), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_magnitude[15]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_magnitude_reg[14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N465), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_magnitude[14]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_magnitude_reg[13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N464), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_magnitude[13]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_magnitude_reg[12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N463), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_magnitude[12]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_magnitude_reg[11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N462), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_magnitude[11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_magnitude_reg[10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N461), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_magnitude[10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_magnitude_reg[9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N460), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_magnitude[9]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_magnitude_reg[8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N459), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_magnitude[8]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_magnitude_reg[7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N458), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_magnitude[7]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_magnitude_reg[6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N457), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_magnitude[6]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_magnitude_reg[5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N456), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_magnitude[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_magnitude_reg[4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N455), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_magnitude[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_magnitude_reg[3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N454), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_magnitude[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_magnitude_reg[2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N453), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_magnitude[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_magnitude_reg[1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N452), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_magnitude[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_magnitude_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N451), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_magnitude[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_phase_reg[15]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N482), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_phase[15]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_phase_reg[14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N481), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_phase[14]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_phase_reg[13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N480), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_phase[13]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_phase_reg[12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N479), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_phase[12]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_phase_reg[11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N478), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_phase[11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_phase_reg[10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N477), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_phase[10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_phase_reg[9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N476), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_phase[9]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_phase_reg[8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N475), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_phase[8]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_phase_reg[7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N474), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_phase[7]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_phase_reg[6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N473), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_phase[6]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_phase_reg[5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N472), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_phase[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_phase_reg[4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N471), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_phase[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_phase_reg[3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N470), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_phase[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_phase_reg[2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N469), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_phase[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_phase_reg[1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N468), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_phase[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \tf_val_phase_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N467), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_val_phase[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \phase_mem_indices_reg[1][11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N223), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\phase_mem_indices[1][11] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  \phase_mem_indices_reg[1][10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N222), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\phase_mem_indices[1][10] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  \phase_mem_indices_reg[1][9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N221), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\phase_mem_indices[1][9] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  \phase_mem_indices_reg[1][8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N220), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\phase_mem_indices[1][8] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  \phase_mem_indices_reg[1][7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N219), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\phase_mem_indices[1][7] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  \phase_mem_indices_reg[1][6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N218), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\phase_mem_indices[1][6] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  \phase_mem_indices_reg[1][5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N217), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\phase_mem_indices[1][5] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  \phase_mem_indices_reg[1][4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N216), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\phase_mem_indices[1][4] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  \phase_mem_indices_reg[1][3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N215), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\phase_mem_indices[1][3] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  \phase_mem_indices_reg[1][2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N214), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\phase_mem_indices[1][2] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  \phase_mem_indices_reg[1][1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N213), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\phase_mem_indices[1][1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  \phase_mem_indices_reg[1][0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N212), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\phase_mem_indices[1][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  \phase_mem_indices_reg[0][11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(freq_k_step[11]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\phase_mem_indices[0][11] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  \phase_mem_indices_reg[0][10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(freq_k_step[10]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\phase_mem_indices[0][10] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  \phase_mem_indices_reg[0][9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(freq_k_step[9]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\phase_mem_indices[0][9] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  \phase_mem_indices_reg[0][8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(freq_k_step[8]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\phase_mem_indices[0][8] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  \phase_mem_indices_reg[0][7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(freq_k_step[7]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\phase_mem_indices[0][7] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  \phase_mem_indices_reg[0][6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(freq_k_step[6]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\phase_mem_indices[0][6] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  \phase_mem_indices_reg[0][5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(freq_k_step[5]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\phase_mem_indices[0][5] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  \phase_mem_indices_reg[0][4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(freq_k_step[4]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\phase_mem_indices[0][4] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  \phase_mem_indices_reg[0][3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(freq_k_step[3]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\phase_mem_indices[0][3] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  \phase_mem_indices_reg[0][2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(freq_k_step[2]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\phase_mem_indices[0][2] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  \phase_mem_indices_reg[0][1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(freq_k_step[1]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\phase_mem_indices[0][1] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  \phase_mem_indices_reg[0][0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(freq_k_step[0]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\phase_mem_indices[0][0] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N487) );
  \**SEQGEN**  reset_filt_reg ( .clear(1'b0), .preset(1'b0), .next_state(N260), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(reset_filt), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N488) );
  \**SEQGEN**  run_filt_trig_reg ( .clear(1'b0), .preset(1'b0), .next_state(
        N261), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        run_filt_trig), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N488) );
  \**SEQGEN**  tf_val_valid_reg ( .clear(1'b0), .preset(1'b0), .next_state(
        N262), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tf_val_valid), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N488) );
  \**SEQGEN**  freq_eval_done_reg ( .clear(1'b0), .preset(1'b0), .next_state(
        N263), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        freq_eval_done), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N488) );
  \**SEQGEN**  \complex_phases_reg[1][15]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N298), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[1][15] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \complex_phases_reg[1][14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N297), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[1][14] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \complex_phases_reg[1][13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N296), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[1][13] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \complex_phases_reg[1][12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N295), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[1][12] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \complex_phases_reg[1][11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N294), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[1][11] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \complex_phases_reg[1][10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N293), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[1][10] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \complex_phases_reg[1][9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N292), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[1][9] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \complex_phases_reg[1][8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N291), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[1][8] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \complex_phases_reg[1][7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N290), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[1][7] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \complex_phases_reg[1][6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N289), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[1][6] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \complex_phases_reg[1][5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N288), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[1][5] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \complex_phases_reg[1][4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N287), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[1][4] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \complex_phases_reg[1][3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N286), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[1][3] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \complex_phases_reg[1][2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N285), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[1][2] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \complex_phases_reg[1][1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N284), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[1][1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  \complex_phases_reg[1][0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N283), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[1][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  \complex_phases_reg[0][15]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N282), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[0][15] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  \complex_phases_reg[0][14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N281), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[0][14] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  \complex_phases_reg[0][13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N280), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[0][13] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  \complex_phases_reg[0][12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N279), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[0][12] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  \complex_phases_reg[0][11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N278), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[0][11] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  \complex_phases_reg[0][10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N277), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[0][10] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  \complex_phases_reg[0][9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N276), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[0][9] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  \complex_phases_reg[0][8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N275), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[0][8] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  \complex_phases_reg[0][7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N274), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[0][7] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  \complex_phases_reg[0][6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N273), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[0][6] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  \complex_phases_reg[0][5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N272), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[0][5] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  \complex_phases_reg[0][4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N271), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[0][4] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  \complex_phases_reg[0][3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N270), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[0][3] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  \complex_phases_reg[0][2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N269), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[0][2] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N491) );
  \**SEQGEN**  \complex_phases_reg[0][1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N267), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[0][1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \complex_phases_reg[0][0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N265), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\complex_phases[0][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_eval_real_reg[15]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N314), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_real[15]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_real_reg[14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N313), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_real[14]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_real_reg[13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N312), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_real[13]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_real_reg[12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N311), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_real[12]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_real_reg[11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N310), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_real[11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_real_reg[10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N309), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_real[10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_real_reg[9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N308), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_real[9]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_real_reg[8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N307), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_real[8]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_real_reg[7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N306), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_real[7]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_real_reg[6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N305), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_real[6]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_real_reg[5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N304), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_real[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_real_reg[4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N303), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_real[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_real_reg[3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N302), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_real[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_real_reg[2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N301), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_real[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_real_reg[1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N300), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_real[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_real_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N299), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_real[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_imag_reg[15]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N330), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_imag[15]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_imag_reg[14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N329), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_imag[14]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_imag_reg[13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N328), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_imag[13]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_imag_reg[12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N327), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_imag[12]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_imag_reg[11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N326), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_imag[11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_imag_reg[10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N325), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_imag[10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_imag_reg[9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N324), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_imag[9]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_imag_reg[8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N323), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_imag[8]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_imag_reg[7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N322), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_imag[7]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_imag_reg[6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N321), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_imag[6]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_imag_reg[5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N320), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_imag[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_imag_reg[4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N319), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_imag[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_imag_reg[3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N318), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_imag[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_imag_reg[2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N317), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_imag[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_imag_reg[1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N316), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_imag[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \den_eval_imag_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N315), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_eval_imag[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_real_reg[15]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N346), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_real[15]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_real_reg[14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N345), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_real[14]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_real_reg[13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N344), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_real[13]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_real_reg[12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N343), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_real[12]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_real_reg[11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N342), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_real[11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_real_reg[10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N341), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_real[10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_real_reg[9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N340), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_real[9]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_real_reg[8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N339), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_real[8]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_real_reg[7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N338), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_real[7]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_real_reg[6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N337), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_real[6]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_real_reg[5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N336), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_real[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_real_reg[4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N335), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_real[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_real_reg[3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N334), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_real[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_real_reg[2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N333), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_real[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_real_reg[1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N332), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_real[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_real_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N331), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_real[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_imag_reg[15]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N362), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_imag[15]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_imag_reg[14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N361), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_imag[14]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_imag_reg[13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N360), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_imag[13]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_imag_reg[12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N359), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_imag[12]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_imag_reg[11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N358), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_imag[11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_imag_reg[10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N357), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_imag[10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_imag_reg[9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N356), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_imag[9]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_imag_reg[8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N355), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_imag[8]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_imag_reg[7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N354), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_imag[7]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_imag_reg[6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N353), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_imag[6]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_imag_reg[5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N352), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_imag[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_imag_reg[4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N351), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_imag[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_imag_reg[3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N350), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_imag[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_imag_reg[2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N349), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_imag[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_imag_reg[1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N348), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_imag[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_eval_imag_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N347), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_eval_imag[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \freq_k_step_reg[11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N374), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(freq_k_step[11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \freq_k_step_reg[10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N373), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(freq_k_step[10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \freq_k_step_reg[9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N372), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(freq_k_step[9]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \freq_k_step_reg[8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N371), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(freq_k_step[8]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \freq_k_step_reg[7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N370), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(freq_k_step[7]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \freq_k_step_reg[6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N369), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(freq_k_step[6]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \freq_k_step_reg[5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N368), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(freq_k_step[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \freq_k_step_reg[4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N367), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(freq_k_step[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \freq_k_step_reg[3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N366), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(freq_k_step[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \freq_k_step_reg[2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N365), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(freq_k_step[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \freq_k_step_reg[1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N364), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(freq_k_step[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \freq_k_step_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N363), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(freq_k_step[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N490) );
  \**SEQGEN**  \eval_cntr_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N386), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        eval_cntr[11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \eval_cntr_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N385), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        eval_cntr[10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \eval_cntr_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N384), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        eval_cntr[9]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N489) );
  \**SEQGEN**  \eval_cntr_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N383), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        eval_cntr[8]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N490) );
  \**SEQGEN**  \eval_cntr_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N382), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        eval_cntr[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N490) );
  \**SEQGEN**  \eval_cntr_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N381), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        eval_cntr[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N490) );
  \**SEQGEN**  \eval_cntr_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N380), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        eval_cntr[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N490) );
  \**SEQGEN**  \eval_cntr_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N379), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        eval_cntr[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N490) );
  \**SEQGEN**  \eval_cntr_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N378), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        eval_cntr[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N490) );
  \**SEQGEN**  \eval_cntr_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N377), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        eval_cntr[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N490) );
  \**SEQGEN**  \eval_cntr_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N376), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        eval_cntr[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N490) );
  \**SEQGEN**  \eval_cntr_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N375), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        eval_cntr[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N490) );
  \**SEQGEN**  \num_magnitude_reg[15]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N402), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_magnitude[15]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_magnitude_reg[14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N401), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_magnitude[14]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_magnitude_reg[13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N400), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_magnitude[13]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_magnitude_reg[12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N399), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_magnitude[12]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_magnitude_reg[11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N398), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_magnitude[11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_magnitude_reg[10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N397), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_magnitude[10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_magnitude_reg[9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N396), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_magnitude[9]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_magnitude_reg[8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N395), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_magnitude[8]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_magnitude_reg[7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N394), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_magnitude[7]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_magnitude_reg[6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N393), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_magnitude[6]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_magnitude_reg[5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N392), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_magnitude[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_magnitude_reg[4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N391), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_magnitude[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_magnitude_reg[3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N390), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_magnitude[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_magnitude_reg[2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N389), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_magnitude[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_magnitude_reg[1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N388), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_magnitude[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_magnitude_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N387), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(num_magnitude[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_magnitude_reg[15]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N418), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_magnitude[15]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_magnitude_reg[14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N417), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_magnitude[14]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_magnitude_reg[13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N416), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_magnitude[13]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_magnitude_reg[12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N415), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_magnitude[12]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_magnitude_reg[11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N414), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_magnitude[11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_magnitude_reg[10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N413), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_magnitude[10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_magnitude_reg[9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N412), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_magnitude[9]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_magnitude_reg[8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N411), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_magnitude[8]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_magnitude_reg[7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N410), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_magnitude[7]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_magnitude_reg[6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N409), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_magnitude[6]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_magnitude_reg[5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N408), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_magnitude[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_magnitude_reg[4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N407), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_magnitude[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_magnitude_reg[3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N406), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_magnitude[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_magnitude_reg[2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N405), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_magnitude[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_magnitude_reg[1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N404), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_magnitude[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \den_magnitude_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N403), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(den_magnitude[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_phase_reg[15]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N434), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        num_phase[15]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_phase_reg[14]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N433), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        num_phase[14]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_phase_reg[13]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N432), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        num_phase[13]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_phase_reg[12]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N431), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        num_phase[12]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_phase_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N430), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        num_phase[11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_phase_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N429), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        num_phase[10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_phase_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N428), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        num_phase[9]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_phase_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N427), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        num_phase[8]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_phase_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N426), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        num_phase[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_phase_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N425), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        num_phase[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_phase_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N424), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        num_phase[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_phase_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N423), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        num_phase[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_phase_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N422), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        num_phase[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_phase_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N421), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        num_phase[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_phase_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N420), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        num_phase[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N489) );
  \**SEQGEN**  \num_phase_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N419), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        num_phase[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N489) );
  MULT_UNS_OP mult_1383 ( .A({\a_coeffs[1][15] , \a_coeffs[1][15] , 
        \a_coeffs[1][15] , \a_coeffs[1][15] , \a_coeffs[1][15] , 
        \a_coeffs[1][15] , \a_coeffs[1][15] , \a_coeffs[1][15] , 
        \a_coeffs[1][15] , \a_coeffs[1][15] , \a_coeffs[1][15] , 
        \a_coeffs[1][15] , \a_coeffs[1][15] , \a_coeffs[1][15] , 
        \a_coeffs[1][15] , \a_coeffs[1][15] , \a_coeffs[1][15] , 
        \a_coeffs[1][15] , \a_coeffs[1][15] , \a_coeffs[1][15] , 
        \a_coeffs[1][15] , \a_coeffs[1][15] , \a_coeffs[1][15] , 
        \a_coeffs[1][15] , \a_coeffs[1][15] , \a_coeffs[1][15] , 
        \a_coeffs[1][15] , \a_coeffs[1][15] , \a_coeffs[1][15] , 
        \a_coeffs[1][15] , \a_coeffs[1][15] , \a_coeffs[1][15] , 
        \a_coeffs[1][15] , \a_coeffs[1][14] , \a_coeffs[1][13] , 
        \a_coeffs[1][12] , \a_coeffs[1][11] , \a_coeffs[1][10] , 
        \a_coeffs[1][9] , \a_coeffs[1][8] , \a_coeffs[1][7] , \a_coeffs[1][6] , 
        \a_coeffs[1][5] , \a_coeffs[1][4] , \a_coeffs[1][3] , \a_coeffs[1][2] , 
        \a_coeffs[1][1] , \a_coeffs[1][0] }), .B({1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 
        1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b1, 1'b1, 1'b0}), .Z({\a_coeffs_gain_adjusted[0][15] , 
        \a_coeffs_gain_adjusted[0][14] , \a_coeffs_gain_adjusted[0][13] , 
        \a_coeffs_gain_adjusted[0][12] , \a_coeffs_gain_adjusted[0][11] , 
        \a_coeffs_gain_adjusted[0][10] , \a_coeffs_gain_adjusted[0][9] , 
        \a_coeffs_gain_adjusted[0][8] , \a_coeffs_gain_adjusted[0][7] , 
        \a_coeffs_gain_adjusted[0][6] , \a_coeffs_gain_adjusted[0][5] , 
        \a_coeffs_gain_adjusted[0][4] , \a_coeffs_gain_adjusted[0][3] , 
        \a_coeffs_gain_adjusted[0][2] , \a_coeffs_gain_adjusted[0][1] , 
        \a_coeffs_gain_adjusted[0][0] , SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31}) );
  MULT_UNS_OP mult_1385 ( .A({\b_coeffs[1][15] , \b_coeffs[1][15] , 
        \b_coeffs[1][15] , \b_coeffs[1][15] , \b_coeffs[1][15] , 
        \b_coeffs[1][15] , \b_coeffs[1][15] , \b_coeffs[1][15] , 
        \b_coeffs[1][15] , \b_coeffs[1][15] , \b_coeffs[1][15] , 
        \b_coeffs[1][15] , \b_coeffs[1][15] , \b_coeffs[1][15] , 
        \b_coeffs[1][15] , \b_coeffs[1][15] , \b_coeffs[1][15] , 
        \b_coeffs[1][15] , \b_coeffs[1][15] , \b_coeffs[1][15] , 
        \b_coeffs[1][15] , \b_coeffs[1][15] , \b_coeffs[1][15] , 
        \b_coeffs[1][15] , \b_coeffs[1][15] , \b_coeffs[1][15] , 
        \b_coeffs[1][15] , \b_coeffs[1][15] , \b_coeffs[1][15] , 
        \b_coeffs[1][15] , \b_coeffs[1][15] , \b_coeffs[1][15] , 
        \b_coeffs[1][15] , \b_coeffs[1][14] , \b_coeffs[1][13] , 
        \b_coeffs[1][12] , \b_coeffs[1][11] , \b_coeffs[1][10] , 
        \b_coeffs[1][9] , \b_coeffs[1][8] , \b_coeffs[1][7] , \b_coeffs[1][6] , 
        \b_coeffs[1][5] , \b_coeffs[1][4] , \b_coeffs[1][3] , \b_coeffs[1][2] , 
        \b_coeffs[1][1] , \b_coeffs[1][0] }), .B({1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 
        1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b1, 1'b1, 1'b0}), .Z({\b_coeffs_gain_adjusted[0][15] , 
        \b_coeffs_gain_adjusted[0][14] , \b_coeffs_gain_adjusted[0][13] , 
        \b_coeffs_gain_adjusted[0][12] , \b_coeffs_gain_adjusted[0][11] , 
        \b_coeffs_gain_adjusted[0][10] , \b_coeffs_gain_adjusted[0][9] , 
        \b_coeffs_gain_adjusted[0][8] , \b_coeffs_gain_adjusted[0][7] , 
        \b_coeffs_gain_adjusted[0][6] , \b_coeffs_gain_adjusted[0][5] , 
        \b_coeffs_gain_adjusted[0][4] , \b_coeffs_gain_adjusted[0][3] , 
        \b_coeffs_gain_adjusted[0][2] , \b_coeffs_gain_adjusted[0][1] , 
        \b_coeffs_gain_adjusted[0][0] , SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, SYNOPSYS_UNCONNECTED__48, 
        SYNOPSYS_UNCONNECTED__49, SYNOPSYS_UNCONNECTED__50, 
        SYNOPSYS_UNCONNECTED__51, SYNOPSYS_UNCONNECTED__52, 
        SYNOPSYS_UNCONNECTED__53, SYNOPSYS_UNCONNECTED__54, 
        SYNOPSYS_UNCONNECTED__55, SYNOPSYS_UNCONNECTED__56, 
        SYNOPSYS_UNCONNECTED__57, SYNOPSYS_UNCONNECTED__58, 
        SYNOPSYS_UNCONNECTED__59, SYNOPSYS_UNCONNECTED__60, 
        SYNOPSYS_UNCONNECTED__61, SYNOPSYS_UNCONNECTED__62, 
        SYNOPSYS_UNCONNECTED__63}) );
  MULT_UNS_OP mult_1383_G2 ( .A({\a_coeffs[2][15] , \a_coeffs[2][15] , 
        \a_coeffs[2][15] , \a_coeffs[2][15] , \a_coeffs[2][15] , 
        \a_coeffs[2][15] , \a_coeffs[2][15] , \a_coeffs[2][15] , 
        \a_coeffs[2][15] , \a_coeffs[2][15] , \a_coeffs[2][15] , 
        \a_coeffs[2][15] , \a_coeffs[2][15] , \a_coeffs[2][15] , 
        \a_coeffs[2][15] , \a_coeffs[2][15] , \a_coeffs[2][15] , 
        \a_coeffs[2][15] , \a_coeffs[2][15] , \a_coeffs[2][15] , 
        \a_coeffs[2][15] , \a_coeffs[2][15] , \a_coeffs[2][15] , 
        \a_coeffs[2][15] , \a_coeffs[2][15] , \a_coeffs[2][15] , 
        \a_coeffs[2][15] , \a_coeffs[2][15] , \a_coeffs[2][15] , 
        \a_coeffs[2][15] , \a_coeffs[2][15] , \a_coeffs[2][15] , 
        \a_coeffs[2][15] , \a_coeffs[2][14] , \a_coeffs[2][13] , 
        \a_coeffs[2][12] , \a_coeffs[2][11] , \a_coeffs[2][10] , 
        \a_coeffs[2][9] , \a_coeffs[2][8] , \a_coeffs[2][7] , \a_coeffs[2][6] , 
        \a_coeffs[2][5] , \a_coeffs[2][4] , \a_coeffs[2][3] , \a_coeffs[2][2] , 
        \a_coeffs[2][1] , \a_coeffs[2][0] }), .B({1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 
        1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b1, 1'b1, 1'b0}), .Z({\a_coeffs_gain_adjusted[1][15] , 
        \a_coeffs_gain_adjusted[1][14] , \a_coeffs_gain_adjusted[1][13] , 
        \a_coeffs_gain_adjusted[1][12] , \a_coeffs_gain_adjusted[1][11] , 
        \a_coeffs_gain_adjusted[1][10] , \a_coeffs_gain_adjusted[1][9] , 
        \a_coeffs_gain_adjusted[1][8] , \a_coeffs_gain_adjusted[1][7] , 
        \a_coeffs_gain_adjusted[1][6] , \a_coeffs_gain_adjusted[1][5] , 
        \a_coeffs_gain_adjusted[1][4] , \a_coeffs_gain_adjusted[1][3] , 
        \a_coeffs_gain_adjusted[1][2] , \a_coeffs_gain_adjusted[1][1] , 
        \a_coeffs_gain_adjusted[1][0] , SYNOPSYS_UNCONNECTED__64, 
        SYNOPSYS_UNCONNECTED__65, SYNOPSYS_UNCONNECTED__66, 
        SYNOPSYS_UNCONNECTED__67, SYNOPSYS_UNCONNECTED__68, 
        SYNOPSYS_UNCONNECTED__69, SYNOPSYS_UNCONNECTED__70, 
        SYNOPSYS_UNCONNECTED__71, SYNOPSYS_UNCONNECTED__72, 
        SYNOPSYS_UNCONNECTED__73, SYNOPSYS_UNCONNECTED__74, 
        SYNOPSYS_UNCONNECTED__75, SYNOPSYS_UNCONNECTED__76, 
        SYNOPSYS_UNCONNECTED__77, SYNOPSYS_UNCONNECTED__78, 
        SYNOPSYS_UNCONNECTED__79, SYNOPSYS_UNCONNECTED__80, 
        SYNOPSYS_UNCONNECTED__81, SYNOPSYS_UNCONNECTED__82, 
        SYNOPSYS_UNCONNECTED__83, SYNOPSYS_UNCONNECTED__84, 
        SYNOPSYS_UNCONNECTED__85, SYNOPSYS_UNCONNECTED__86, 
        SYNOPSYS_UNCONNECTED__87, SYNOPSYS_UNCONNECTED__88, 
        SYNOPSYS_UNCONNECTED__89, SYNOPSYS_UNCONNECTED__90, 
        SYNOPSYS_UNCONNECTED__91, SYNOPSYS_UNCONNECTED__92, 
        SYNOPSYS_UNCONNECTED__93, SYNOPSYS_UNCONNECTED__94, 
        SYNOPSYS_UNCONNECTED__95}) );
  MULT_UNS_OP mult_1385_G2 ( .A({\b_coeffs[2][15] , \b_coeffs[2][15] , 
        \b_coeffs[2][15] , \b_coeffs[2][15] , \b_coeffs[2][15] , 
        \b_coeffs[2][15] , \b_coeffs[2][15] , \b_coeffs[2][15] , 
        \b_coeffs[2][15] , \b_coeffs[2][15] , \b_coeffs[2][15] , 
        \b_coeffs[2][15] , \b_coeffs[2][15] , \b_coeffs[2][15] , 
        \b_coeffs[2][15] , \b_coeffs[2][15] , \b_coeffs[2][15] , 
        \b_coeffs[2][15] , \b_coeffs[2][15] , \b_coeffs[2][15] , 
        \b_coeffs[2][15] , \b_coeffs[2][15] , \b_coeffs[2][15] , 
        \b_coeffs[2][15] , \b_coeffs[2][15] , \b_coeffs[2][15] , 
        \b_coeffs[2][15] , \b_coeffs[2][15] , \b_coeffs[2][15] , 
        \b_coeffs[2][15] , \b_coeffs[2][15] , \b_coeffs[2][15] , 
        \b_coeffs[2][15] , \b_coeffs[2][14] , \b_coeffs[2][13] , 
        \b_coeffs[2][12] , \b_coeffs[2][11] , \b_coeffs[2][10] , 
        \b_coeffs[2][9] , \b_coeffs[2][8] , \b_coeffs[2][7] , \b_coeffs[2][6] , 
        \b_coeffs[2][5] , \b_coeffs[2][4] , \b_coeffs[2][3] , \b_coeffs[2][2] , 
        \b_coeffs[2][1] , \b_coeffs[2][0] }), .B({1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 
        1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b1, 1'b1, 1'b0}), .Z({\b_coeffs_gain_adjusted[1][15] , 
        \b_coeffs_gain_adjusted[1][14] , \b_coeffs_gain_adjusted[1][13] , 
        \b_coeffs_gain_adjusted[1][12] , \b_coeffs_gain_adjusted[1][11] , 
        \b_coeffs_gain_adjusted[1][10] , \b_coeffs_gain_adjusted[1][9] , 
        \b_coeffs_gain_adjusted[1][8] , \b_coeffs_gain_adjusted[1][7] , 
        \b_coeffs_gain_adjusted[1][6] , \b_coeffs_gain_adjusted[1][5] , 
        \b_coeffs_gain_adjusted[1][4] , \b_coeffs_gain_adjusted[1][3] , 
        \b_coeffs_gain_adjusted[1][2] , \b_coeffs_gain_adjusted[1][1] , 
        \b_coeffs_gain_adjusted[1][0] , SYNOPSYS_UNCONNECTED__96, 
        SYNOPSYS_UNCONNECTED__97, SYNOPSYS_UNCONNECTED__98, 
        SYNOPSYS_UNCONNECTED__99, SYNOPSYS_UNCONNECTED__100, 
        SYNOPSYS_UNCONNECTED__101, SYNOPSYS_UNCONNECTED__102, 
        SYNOPSYS_UNCONNECTED__103, SYNOPSYS_UNCONNECTED__104, 
        SYNOPSYS_UNCONNECTED__105, SYNOPSYS_UNCONNECTED__106, 
        SYNOPSYS_UNCONNECTED__107, SYNOPSYS_UNCONNECTED__108, 
        SYNOPSYS_UNCONNECTED__109, SYNOPSYS_UNCONNECTED__110, 
        SYNOPSYS_UNCONNECTED__111, SYNOPSYS_UNCONNECTED__112, 
        SYNOPSYS_UNCONNECTED__113, SYNOPSYS_UNCONNECTED__114, 
        SYNOPSYS_UNCONNECTED__115, SYNOPSYS_UNCONNECTED__116, 
        SYNOPSYS_UNCONNECTED__117, SYNOPSYS_UNCONNECTED__118, 
        SYNOPSYS_UNCONNECTED__119, SYNOPSYS_UNCONNECTED__120, 
        SYNOPSYS_UNCONNECTED__121, SYNOPSYS_UNCONNECTED__122, 
        SYNOPSYS_UNCONNECTED__123, SYNOPSYS_UNCONNECTED__124, 
        SYNOPSYS_UNCONNECTED__125, SYNOPSYS_UNCONNECTED__126, 
        SYNOPSYS_UNCONNECTED__127}) );
  MULT_UNS_OP mult_1394 ( .A(num_magnitude_out), .B({1'b1, 1'b0, 1'b0, 1'b1, 
        1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 
        1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 
        1'b1, 1'b1, 1'b1, 1'b0}), .Z({num_magnitude_gain_adjusted, 
        SYNOPSYS_UNCONNECTED__128, SYNOPSYS_UNCONNECTED__129, 
        SYNOPSYS_UNCONNECTED__130, SYNOPSYS_UNCONNECTED__131, 
        SYNOPSYS_UNCONNECTED__132, SYNOPSYS_UNCONNECTED__133, 
        SYNOPSYS_UNCONNECTED__134, SYNOPSYS_UNCONNECTED__135, 
        SYNOPSYS_UNCONNECTED__136, SYNOPSYS_UNCONNECTED__137, 
        SYNOPSYS_UNCONNECTED__138, SYNOPSYS_UNCONNECTED__139, 
        SYNOPSYS_UNCONNECTED__140, SYNOPSYS_UNCONNECTED__141, 
        SYNOPSYS_UNCONNECTED__142, SYNOPSYS_UNCONNECTED__143, 
        SYNOPSYS_UNCONNECTED__144, SYNOPSYS_UNCONNECTED__145, 
        SYNOPSYS_UNCONNECTED__146, SYNOPSYS_UNCONNECTED__147, 
        SYNOPSYS_UNCONNECTED__148, SYNOPSYS_UNCONNECTED__149, 
        SYNOPSYS_UNCONNECTED__150, SYNOPSYS_UNCONNECTED__151, 
        SYNOPSYS_UNCONNECTED__152, SYNOPSYS_UNCONNECTED__153, 
        SYNOPSYS_UNCONNECTED__154, SYNOPSYS_UNCONNECTED__155, 
        SYNOPSYS_UNCONNECTED__156, SYNOPSYS_UNCONNECTED__157, 
        SYNOPSYS_UNCONNECTED__158, SYNOPSYS_UNCONNECTED__159}) );
  MULT_UNS_OP mult_1396 ( .A(den_magnitude_out), .B({1'b1, 1'b0, 1'b0, 1'b1, 
        1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 
        1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 
        1'b1, 1'b1, 1'b1, 1'b0}), .Z({den_magnitude_gain_adjusted, 
        SYNOPSYS_UNCONNECTED__160, SYNOPSYS_UNCONNECTED__161, 
        SYNOPSYS_UNCONNECTED__162, SYNOPSYS_UNCONNECTED__163, 
        SYNOPSYS_UNCONNECTED__164, SYNOPSYS_UNCONNECTED__165, 
        SYNOPSYS_UNCONNECTED__166, SYNOPSYS_UNCONNECTED__167, 
        SYNOPSYS_UNCONNECTED__168, SYNOPSYS_UNCONNECTED__169, 
        SYNOPSYS_UNCONNECTED__170, SYNOPSYS_UNCONNECTED__171, 
        SYNOPSYS_UNCONNECTED__172, SYNOPSYS_UNCONNECTED__173, 
        SYNOPSYS_UNCONNECTED__174, SYNOPSYS_UNCONNECTED__175, 
        SYNOPSYS_UNCONNECTED__176, SYNOPSYS_UNCONNECTED__177, 
        SYNOPSYS_UNCONNECTED__178, SYNOPSYS_UNCONNECTED__179, 
        SYNOPSYS_UNCONNECTED__180, SYNOPSYS_UNCONNECTED__181, 
        SYNOPSYS_UNCONNECTED__182, SYNOPSYS_UNCONNECTED__183, 
        SYNOPSYS_UNCONNECTED__184, SYNOPSYS_UNCONNECTED__185, 
        SYNOPSYS_UNCONNECTED__186, SYNOPSYS_UNCONNECTED__187, 
        SYNOPSYS_UNCONNECTED__188, SYNOPSYS_UNCONNECTED__189, 
        SYNOPSYS_UNCONNECTED__190, SYNOPSYS_UNCONNECTED__191}) );
  ADD_TC_OP add_1548 ( .A({\a_coeffs[0][15] , \a_coeffs[0][14] , 
        \a_coeffs[0][13] , \a_coeffs[0][12] , \a_coeffs[0][11] , 
        \a_coeffs[0][10] , \a_coeffs[0][9] , \a_coeffs[0][8] , 
        \a_coeffs[0][7] , \a_coeffs[0][6] , \a_coeffs[0][5] , \a_coeffs[0][4] , 
        \a_coeffs[0][3] , \a_coeffs[0][2] , \a_coeffs[0][1] , \a_coeffs[0][0] }), .B({\a_real[0][15] , \a_real[0][14] , \a_real[0][13] , \a_real[0][12] , 
        \a_real[0][11] , \a_real[0][10] , \a_real[0][9] , \a_real[0][8] , 
        \a_real[0][7] , \a_real[0][6] , \a_real[0][5] , \a_real[0][4] , 
        \a_real[0][3] , \a_real[0][2] , \a_real[0][1] , \a_real[0][0] }), .Z({
        N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, 
        N36, N35}) );
  ADD_TC_OP add_1549 ( .A({\a_imag[0][15] , \a_imag[0][14] , \a_imag[0][13] , 
        \a_imag[0][12] , \a_imag[0][11] , \a_imag[0][10] , \a_imag[0][9] , 
        \a_imag[0][8] , \a_imag[0][7] , \a_imag[0][6] , \a_imag[0][5] , 
        \a_imag[0][4] , \a_imag[0][3] , \a_imag[0][2] , \a_imag[0][1] , 
        \a_imag[0][0] }), .B({\a_imag[1][15] , \a_imag[1][14] , 
        \a_imag[1][13] , \a_imag[1][12] , \a_imag[1][11] , \a_imag[1][10] , 
        \a_imag[1][9] , \a_imag[1][8] , \a_imag[1][7] , \a_imag[1][6] , 
        \a_imag[1][5] , \a_imag[1][4] , \a_imag[1][3] , \a_imag[1][2] , 
        \a_imag[1][1] , \a_imag[1][0] }), .Z({N82, N81, N80, N79, N78, N77, 
        N76, N75, N74, N73, N72, N71, N70, N69, N68, N67}) );
  ADD_TC_OP add_1550 ( .A({\b_coeffs[0][15] , \b_coeffs[0][14] , 
        \b_coeffs[0][13] , \b_coeffs[0][12] , \b_coeffs[0][11] , 
        \b_coeffs[0][10] , \b_coeffs[0][9] , \b_coeffs[0][8] , 
        \b_coeffs[0][7] , \b_coeffs[0][6] , \b_coeffs[0][5] , \b_coeffs[0][4] , 
        \b_coeffs[0][3] , \b_coeffs[0][2] , \b_coeffs[0][1] , \b_coeffs[0][0] }), .B({\b_real[0][15] , \b_real[0][14] , \b_real[0][13] , \b_real[0][12] , 
        \b_real[0][11] , \b_real[0][10] , \b_real[0][9] , \b_real[0][8] , 
        \b_real[0][7] , \b_real[0][6] , \b_real[0][5] , \b_real[0][4] , 
        \b_real[0][3] , \b_real[0][2] , \b_real[0][1] , \b_real[0][0] }), .Z({
        N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, 
        N84, N83}) );
  ADD_TC_OP add_1551 ( .A({\b_imag[0][15] , \b_imag[0][14] , \b_imag[0][13] , 
        \b_imag[0][12] , \b_imag[0][11] , \b_imag[0][10] , \b_imag[0][9] , 
        \b_imag[0][8] , \b_imag[0][7] , \b_imag[0][6] , \b_imag[0][5] , 
        \b_imag[0][4] , \b_imag[0][3] , \b_imag[0][2] , \b_imag[0][1] , 
        \b_imag[0][0] }), .B({\b_imag[1][15] , \b_imag[1][14] , 
        \b_imag[1][13] , \b_imag[1][12] , \b_imag[1][11] , \b_imag[1][10] , 
        \b_imag[1][9] , \b_imag[1][8] , \b_imag[1][7] , \b_imag[1][6] , 
        \b_imag[1][5] , \b_imag[1][4] , \b_imag[1][3] , \b_imag[1][2] , 
        \b_imag[1][1] , \b_imag[1][0] }), .Z({N130, N129, N128, N127, N126, 
        N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115}) );
  SUB_UNS_OP sub_1552 ( .A(config_nfft), .B(1'b1), .Z({N143, N142, N141, N140, 
        N139, N138, N137, N136, N135, N134, N133, N132, N131}) );
  SUB_UNS_OP sub_1559 ( .A(num_phase), .B(den_phase), .Z({N197, N196, N195, 
        N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, 
        N182}) );
  ADD_UNS_OP add_1570 ( .A(config_nfft), .B({1'b1, 1'b0, 1'b0}), .Z({N236, 
        N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, N225, N224}) );
  ADD_UNS_OP add_1553 ( .A(eval_cntr), .B(1'b1), .Z({N181, N180, N179, N178, 
        N177, N176, N175, N174, N173, N172, N171, N170}) );
  ADD_TC_OP add_1548_2 ( .A({N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, 
        N40, N39, N38, N37, N36, N35}), .B({\a_real[1][15] , \a_real[1][14] , 
        \a_real[1][13] , \a_real[1][12] , \a_real[1][11] , \a_real[1][10] , 
        \a_real[1][9] , \a_real[1][8] , \a_real[1][7] , \a_real[1][6] , 
        \a_real[1][5] , \a_real[1][4] , \a_real[1][3] , \a_real[1][2] , 
        \a_real[1][1] , \a_real[1][0] }), .Z({N66, N65, N64, N63, N62, N61, 
        N60, N59, N58, N57, N56, N55, N54, N53, N52, N51}) );
  ADD_TC_OP add_1550_2 ( .A({N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, 
        N88, N87, N86, N85, N84, N83}), .B({\b_real[1][15] , \b_real[1][14] , 
        \b_real[1][13] , \b_real[1][12] , \b_real[1][11] , \b_real[1][10] , 
        \b_real[1][9] , \b_real[1][8] , \b_real[1][7] , \b_real[1][6] , 
        \b_real[1][5] , \b_real[1][4] , \b_real[1][3] , \b_real[1][2] , 
        \b_real[1][1] , \b_real[1][0] }), .Z({N114, N113, N112, N111, N110, 
        N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99}) );
  SUB_UNS_OP sub_1570 ( .A({N236, N235, N234, N233, N232, N231, N230, N229, 
        N228, N227, N226, N225, N224}), .B(1'b1), .Z({N250, N249, N248, N247, 
        N246, N245, N244, N243, N242, N241, N240, N239, N238, N237}) );
  SUB_UNS_OP sub_1561_2 ( .A({freq_k_step[10:0], 1'b0}), .B(config_nfft), .Z({
        N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200}) );
  ADD_UNS_OP add_1552 ( .A(freq_k_step), .B(1'b1), .Z({N157, N156, N155, N154, 
        N153, N152, N151, N150, N149, N148, N147, N146}) );
  SELECT_OP C1098 ( .DATA1(freq_k_step), .DATA2({N157, N156, N155, N154, N153, 
        N152, N151, N150, N149, N148, N147, N146}), .CONTROL1(N0), .CONTROL2(
        N145), .Z({N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, 
        N159, N158}) );
  GTECH_BUF B_0 ( .A(N144), .Z(N0) );
  SELECT_OP C1099 ( .DATA1({N211, N210, N209, N208, N207, N206, N205, N204, 
        N203, N202, N201, N200}), .DATA2({freq_k_step[10:0], 1'b0}), 
        .CONTROL1(N1), .CONTROL2(N199), .Z({N223, N222, N221, N220, N219, N218, 
        N217, N216, N215, N214, N213, N212}) );
  GTECH_BUF B_1 ( .A(N198), .Z(N1) );
  GTECH_NOT I_0 ( .A(N251), .Z(N252) );
  SELECT_OP C1101 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b1), 
        .DATA5(1'b1), .DATA6(1'b1), .DATA7(1'b0), .CONTROL1(N2), .CONTROL2(N3), 
        .CONTROL3(N4), .CONTROL4(N5), .CONTROL5(N6), .CONTROL6(N7), .CONTROL7(
        N258), .Z(N259) );
  GTECH_BUF B_2 ( .A(N16), .Z(N2) );
  GTECH_BUF B_3 ( .A(N19), .Z(N3) );
  GTECH_BUF B_4 ( .A(N22), .Z(N4) );
  GTECH_BUF B_5 ( .A(N25), .Z(N5) );
  GTECH_BUF B_6 ( .A(N28), .Z(N6) );
  GTECH_BUF B_7 ( .A(N31), .Z(N7) );
  SELECT_OP C1102 ( .DATA1(1'b1), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b1), 
        .DATA5(1'b1), .DATA6(1'b1), .CONTROL1(N2), .CONTROL2(N3), .CONTROL3(N4), .CONTROL4(N5), .CONTROL5(N6), .CONTROL6(N7), .Z(N260) );
  SELECT_OP C1103 ( .DATA1(1'b0), .DATA2(1'b1), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .CONTROL1(N2), .CONTROL2(N3), .CONTROL3(N4), .CONTROL4(N5), .CONTROL5(N6), .CONTROL6(N7), .Z(N261) );
  SELECT_OP C1104 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(N34), 
        .DATA5(1'b1), .DATA6(1'b0), .CONTROL1(N2), .CONTROL2(N3), .CONTROL3(N4), .CONTROL4(N5), .CONTROL5(N6), .CONTROL6(N7), .Z(N262) );
  SELECT_OP C1105 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b1), .DATA6(1'b0), .CONTROL1(N2), .CONTROL2(N3), .CONTROL3(N4), .CONTROL4(N5), .CONTROL5(N6), .CONTROL6(N7), .Z(N263) );
  SELECT_OP C1106 ( .DATA1({1'b1, 1'b1, 1'b1}), .DATA2({1'b0, 1'b0, 1'b0}), 
        .DATA3({1'b0, 1'b0, 1'b0}), .DATA4({1'b1, 1'b1, 1'b1}), .DATA5({1'b0, 
        1'b0, 1'b0}), .DATA6({1'b0, 1'b0, 1'b0}), .DATA7({1'b0, 1'b0, 1'b0}), 
        .CONTROL1(N2), .CONTROL2(N3), .CONTROL3(N4), .CONTROL4(N5), .CONTROL5(
        N6), .CONTROL6(N7), .CONTROL7(N258), .Z({N268, N266, N264}) );
  SELECT_OP C1107 ( .DATA1({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .DATA2({\phase_mem_data[1][15] , \phase_mem_data[1][14] , 
        \phase_mem_data[1][13] , \phase_mem_data[1][12] , 
        \phase_mem_data[1][11] , \phase_mem_data[1][10] , 
        \phase_mem_data[1][9] , \phase_mem_data[1][8] , \phase_mem_data[1][7] , 
        \phase_mem_data[1][6] , \phase_mem_data[1][5] , \phase_mem_data[1][4] , 
        \phase_mem_data[1][3] , \phase_mem_data[1][2] , \phase_mem_data[1][1] , 
        \phase_mem_data[1][0] , \phase_mem_data[0][15] , 
        \phase_mem_data[0][14] , \phase_mem_data[0][13] , 
        \phase_mem_data[0][12] , \phase_mem_data[0][11] , 
        \phase_mem_data[0][10] , \phase_mem_data[0][9] , 
        \phase_mem_data[0][8] , \phase_mem_data[0][7] , \phase_mem_data[0][6] , 
        \phase_mem_data[0][5] , \phase_mem_data[0][4] , \phase_mem_data[0][3] , 
        \phase_mem_data[0][2] , \phase_mem_data[0][1] , \phase_mem_data[0][0] }), .CONTROL1(N2), .CONTROL2(N5), .Z({N298, N297, N296, N295, N294, N293, N292, 
        N291, N290, N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, 
        N279, N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N267, 
        N265}) );
  SELECT_OP C1108 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({N66, N65, 
        N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51}), 
        .CONTROL1(N2), .CONTROL2(N5), .Z({N314, N313, N312, N311, N310, N309, 
        N308, N307, N306, N305, N304, N303, N302, N301, N300, N299}) );
  SELECT_OP C1109 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({N82, N81, 
        N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67}), 
        .CONTROL1(N2), .CONTROL2(N5), .Z({N330, N329, N328, N327, N326, N325, 
        N324, N323, N322, N321, N320, N319, N318, N317, N316, N315}) );
  SELECT_OP C1110 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({N114, N113, 
        N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, 
        N100, N99}), .CONTROL1(N2), .CONTROL2(N5), .Z({N346, N345, N344, N343, 
        N342, N341, N340, N339, N338, N337, N336, N335, N334, N333, N332, N331}) );
  SELECT_OP C1111 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({N130, N129, 
        N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, 
        N116, N115}), .CONTROL1(N2), .CONTROL2(N5), .Z({N362, N361, N360, N359, 
        N358, N357, N356, N355, N354, N353, N352, N351, N350, N349, N348, N347}) );
  SELECT_OP C1112 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({N169, N168, N167, N166, N165, N164, 
        N163, N162, N161, N160, N159, N158}), .CONTROL1(N2), .CONTROL2(N5), 
        .Z({N374, N373, N372, N371, N370, N369, N368, N367, N366, N365, N364, 
        N363}) );
  SELECT_OP C1113 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({N181, N180, N179, N178, N177, N176, 
        N175, N174, N173, N172, N171, N170}), .CONTROL1(N2), .CONTROL2(N5), 
        .Z({N386, N385, N384, N383, N382, N381, N380, N379, N378, N377, N376, 
        N375}) );
  SELECT_OP C1114 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2(
        num_magnitude_gain_adjusted), .CONTROL1(N2), .CONTROL2(N5), .Z({N402, 
        N401, N400, N399, N398, N397, N396, N395, N394, N393, N392, N391, N390, 
        N389, N388, N387}) );
  SELECT_OP C1115 ( .DATA1({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .DATA2(
        den_magnitude_gain_adjusted), .CONTROL1(N2), .CONTROL2(N5), .Z({N418, 
        N417, N416, N415, N414, N413, N412, N411, N410, N409, N408, N407, N406, 
        N405, N404, N403}) );
  SELECT_OP C1116 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2(num_phase_out), .CONTROL1(N2), .CONTROL2(N5), .Z({N434, N433, N432, N431, N430, N429, N428, 
        N427, N426, N425, N424, N423, N422, N421, N420, N419}) );
  SELECT_OP C1117 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2(den_phase_out), .CONTROL1(N2), .CONTROL2(N5), .Z({N450, N449, N448, N447, N446, N445, N444, 
        N443, N442, N441, N440, N439, N438, N437, N436, N435}) );
  SELECT_OP C1118 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2(tf_quotient), 
        .CONTROL1(N2), .CONTROL2(N5), .Z({N466, N465, N464, N463, N462, N461, 
        N460, N459, N458, N457, N456, N455, N454, N453, N452, N451}) );
  SELECT_OP C1119 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({N197, N196, 
        N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, 
        N183, N182}), .CONTROL1(N2), .CONTROL2(N5), .Z({N482, N481, N480, N479, 
        N478, N477, N476, N475, N474, N473, N472, N471, N470, N469, N468, N467}) );
  SELECT_OP C1120 ( .DATA1({1'b0, 1'b0, eval_iir_freq_resp}), .DATA2({1'b0, 
        1'b1, 1'b0}), .DATA3({1'b0, 1'b1, N32}), .DATA4({N251, 1'b0, N252}), 
        .DATA5({1'b1, 1'b0, 1'b1}), .DATA6({1'b0, 1'b0, 1'b0}), .CONTROL1(N2), 
        .CONTROL2(N3), .CONTROL3(N4), .CONTROL4(N5), .CONTROL5(N6), .CONTROL6(
        N7), .Z({N485, N484, N483}) );
  SELECT_OP C1121 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b1), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .CONTROL1(N2), .CONTROL2(N3), 
        .CONTROL3(N4), .CONTROL4(N5), .CONTROL5(N6), .CONTROL6(N7), .CONTROL7(
        N258), .Z(N486) );
  SELECT_OP C1122 ( .DATA1(1'b0), .DATA2(N486), .CONTROL1(N8), .CONTROL2(N9), 
        .Z(N487) );
  GTECH_BUF B_8 ( .A(N10), .Z(N8) );
  GTECH_BUF B_9 ( .A(rst_n), .Z(N9) );
  SELECT_OP C1123 ( .DATA1(1'b0), .DATA2(N259), .CONTROL1(N8), .CONTROL2(N9), 
        .Z(N488) );
  SELECT_OP C1124 ( .DATA1({1'b0, 1'b0, 1'b0}), .DATA2({N268, N266, N264}), 
        .CONTROL1(N8), .CONTROL2(N9), .Z({N491, N490, N489}) );
  GTECH_NOT I_1 ( .A(rst_n), .Z(N10) );
  GTECH_BUF B_10 ( .A(rst_n), .Z(N11) );
  GTECH_NOT I_2 ( .A(state_r[2]), .Z(N12) );
  GTECH_NOT I_3 ( .A(state_r[1]), .Z(N13) );
  GTECH_NOT I_4 ( .A(state_r[0]), .Z(N14) );
  GTECH_NOT I_5 ( .A(N18), .Z(N19) );
  GTECH_NOT I_6 ( .A(N21), .Z(N22) );
  GTECH_NOT I_7 ( .A(N24), .Z(N25) );
  GTECH_NOT I_8 ( .A(N27), .Z(N28) );
  GTECH_NOT I_9 ( .A(N30), .Z(N31) );
  GTECH_AND2 C1153 ( .A(N496), .B(fixed_div_done), .Z(N32) );
  GTECH_AND2 C1154 ( .A(N495), .B(den_cordic_done), .Z(N496) );
  GTECH_AND2 C1155 ( .A(N494), .B(num_cordic_done), .Z(N495) );
  GTECH_AND2 C1156 ( .A(N492), .B(N493), .Z(N494) );
  GTECH_AND2 C1157 ( .A(a_cordic_done[1]), .B(a_cordic_done[0]), .Z(N492) );
  GTECH_AND2 C1158 ( .A(b_cordic_done[1]), .B(b_cordic_done[0]), .Z(N493) );
  GTECH_AND2 C1160 ( .A(N11), .B(N25), .Z(N33) );
  GTECH_OR2 C1161 ( .A(N504), .B(eval_cntr[2]), .Z(N34) );
  GTECH_OR2 C1162 ( .A(N503), .B(eval_cntr[3]), .Z(N504) );
  GTECH_OR2 C1163 ( .A(N502), .B(eval_cntr[4]), .Z(N503) );
  GTECH_OR2 C1164 ( .A(N501), .B(eval_cntr[5]), .Z(N502) );
  GTECH_OR2 C1165 ( .A(N500), .B(eval_cntr[6]), .Z(N501) );
  GTECH_OR2 C1166 ( .A(N499), .B(eval_cntr[7]), .Z(N500) );
  GTECH_OR2 C1167 ( .A(N498), .B(eval_cntr[8]), .Z(N499) );
  GTECH_OR2 C1168 ( .A(N497), .B(eval_cntr[9]), .Z(N498) );
  GTECH_OR2 C1169 ( .A(eval_cntr[11]), .B(eval_cntr[10]), .Z(N497) );
  GTECH_NOT I_10 ( .A(N144), .Z(N145) );
  GTECH_AND2 C1172 ( .A(N33), .B(N145) );
  GTECH_NOT I_11 ( .A(N198), .Z(N199) );
  GTECH_AND2 C1175 ( .A(N33), .B(N198) );
  GTECH_OR2 C1177 ( .A(N19), .B(N16), .Z(N253) );
  GTECH_OR2 C1178 ( .A(N22), .B(N253), .Z(N254) );
  GTECH_OR2 C1179 ( .A(N25), .B(N254), .Z(N255) );
  GTECH_OR2 C1180 ( .A(N28), .B(N255), .Z(N256) );
  GTECH_OR2 C1181 ( .A(N31), .B(N256), .Z(N257) );
  GTECH_NOT I_12 ( .A(N257), .Z(N258) );
endmodule


module ram_sync_1rw1r_DATA_WIDTH16_ADDR_WIDTH12_DEPTH2048 ( clk, wen, rwen, 
        rwadr, wdata, ren, radr, rwdata, rdata );
  input [11:0] rwadr;
  input [15:0] wdata;
  input [11:0] radr;
  output [15:0] rwdata;
  output [15:0] rdata;
  input clk, wen, rwen, ren;
  wire   N0, N1, N2, N3, \genblk1.radr_r_0 , \genblk1.rwadr_r_0 , _0_net_,
         _1_net_, \_2_net_[1] , \_2_net_[0] , _4_net_, _5_net_, _6_net_,
         \_7_net_[1] , \_7_net_[0] , _9_net_, _10_net_, _11_net_,
         \_12_net_[1] , \_12_net_[0] , _14_net_, _15_net_, _16_net_,
         \_17_net_[1] , \_17_net_[0] , _19_net_, N4, N5, N6, N7, N8, N9, N10,
         N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24,
         N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38,
         N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52,
         N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66,
         N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80,
         N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94,
         N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105, N106,
         N107, N108, N109, N110, N111, N112, N113, N114, N115, N116, N117,
         N118, N119, N120, N121, N122, N123, N124, N125, N126, N127, N128,
         N129, N130, N131, N132, N133, N134, N135, N136, N137, N138, N139,
         N140, N141, N142, N143, N144, N145, N146, N147, N148, N149, N150,
         N151, N152, N153, N154, N155, N156, N157, N158, N159, N160, N161,
         N162, N163, N164, N165, N166, N167;
  wire   [11:10] \genblk1.radr_r ;
  wire   [11:10] \genblk1.rwadr_r ;
  wire   [31:0] \genblk1.genblk1.rwdata_w_0 ;
  wire   [31:0] \genblk1.genblk1.rdata_w_0 ;
  wire   [31:0] \genblk1.genblk1.rwdata_w_1 ;
  wire   [31:0] \genblk1.genblk1.rdata_w_1 ;
  wire   [31:0] \genblk1.genblk1.rwdata_w_2 ;
  wire   [31:0] \genblk1.genblk1.rdata_w_2 ;
  wire   [31:0] \genblk1.genblk1.rwdata_w_3 ;
  wire   [31:0] \genblk1.genblk1.rdata_w_3 ;

  \**SEQGEN**  \genblk1.radr_r_reg[11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(radr[11]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\genblk1.radr_r [11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \genblk1.radr_r_reg[10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(radr[10]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\genblk1.radr_r [10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \genblk1.radr_r_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(radr[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\genblk1.radr_r_0 ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \genblk1.rwadr_r_reg[11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(rwadr[11]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\genblk1.rwadr_r [11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \genblk1.rwadr_r_reg[10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(rwadr[10]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\genblk1.rwadr_r [10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \genblk1.rwadr_r_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(rwadr[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\genblk1.rwadr_r_0 ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  sky130_sram_2kbyte_1rw1r_32x512_8 \genblk1.genblk1.sram_2kb_inst_0  ( .din0(
        {wdata, wdata}), .dout0(\genblk1.genblk1.rwdata_w_0 ), .addr0(
        rwadr[9:1]), .wmask0({rwadr[0], rwadr[0], \_2_net_[1] , \_2_net_[0] }), 
        .dout1(\genblk1.genblk1.rdata_w_0 ), .addr1(radr[9:1]), .csb0(_0_net_), 
        .web0(_1_net_), .clk0(clk), .csb1(_4_net_), .clk1(clk) );
  sky130_sram_2kbyte_1rw1r_32x512_8 \genblk1.genblk1.sram_2kb_inst_1  ( .din0(
        {wdata, wdata}), .dout0(\genblk1.genblk1.rwdata_w_1 ), .addr0(
        rwadr[9:1]), .wmask0({rwadr[0], rwadr[0], \_7_net_[1] , \_7_net_[0] }), 
        .dout1(\genblk1.genblk1.rdata_w_1 ), .addr1(radr[9:1]), .csb0(_5_net_), 
        .web0(_6_net_), .clk0(clk), .csb1(_9_net_), .clk1(clk) );
  sky130_sram_2kbyte_1rw1r_32x512_8 \genblk1.genblk1.sram_2kb_inst_2  ( .din0(
        {wdata, wdata}), .dout0(\genblk1.genblk1.rwdata_w_2 ), .addr0(
        rwadr[9:1]), .wmask0({rwadr[0], rwadr[0], \_12_net_[1] , \_12_net_[0] }), .dout1(\genblk1.genblk1.rdata_w_2 ), .addr1(radr[9:1]), .csb0(_10_net_), 
        .web0(_11_net_), .clk0(clk), .csb1(_14_net_), .clk1(clk) );
  sky130_sram_2kbyte_1rw1r_32x512_8 \genblk1.genblk1.sram_2kb_inst_3  ( .din0(
        {wdata, wdata}), .dout0(\genblk1.genblk1.rwdata_w_3 ), .addr0(
        rwadr[9:1]), .wmask0({rwadr[0], rwadr[0], \_17_net_[1] , \_17_net_[0] }), .dout1(\genblk1.genblk1.rdata_w_3 ), .addr1(radr[9:1]), .csb0(_15_net_), 
        .web0(_16_net_), .clk0(clk), .csb1(_19_net_), .clk1(clk) );
  GTECH_NOT I_0 ( .A(\genblk1.rwadr_r [10]), .Z(N122) );
  GTECH_OR2 C232 ( .A(N122), .B(\genblk1.rwadr_r [11]), .Z(N123) );
  GTECH_NOT I_1 ( .A(N123), .Z(N124) );
  GTECH_NOT I_2 ( .A(\genblk1.radr_r [10]), .Z(N125) );
  GTECH_OR2 C235 ( .A(N125), .B(\genblk1.radr_r [11]), .Z(N126) );
  GTECH_NOT I_3 ( .A(N126), .Z(N127) );
  GTECH_NOT I_4 ( .A(\genblk1.rwadr_r [11]), .Z(N128) );
  GTECH_OR2 C238 ( .A(\genblk1.rwadr_r [10]), .B(N128), .Z(N129) );
  GTECH_NOT I_5 ( .A(N129), .Z(N130) );
  GTECH_AND2 C240 ( .A(\genblk1.rwadr_r [10]), .B(\genblk1.rwadr_r [11]), .Z(
        N131) );
  GTECH_NOT I_6 ( .A(\genblk1.radr_r [11]), .Z(N132) );
  GTECH_OR2 C242 ( .A(\genblk1.radr_r [10]), .B(N132), .Z(N133) );
  GTECH_NOT I_7 ( .A(N133), .Z(N134) );
  GTECH_AND2 C244 ( .A(\genblk1.radr_r [10]), .B(\genblk1.radr_r [11]), .Z(
        N135) );
  SELECT_OP C245 ( .DATA1(\genblk1.genblk1.rdata_w_3 [31:16]), .DATA2(
        \genblk1.genblk1.rdata_w_3 [15:0]), .CONTROL1(N0), .CONTROL2(N8), .Z({
        N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, 
        N10, N9}) );
  GTECH_BUF B_0 ( .A(\genblk1.radr_r_0 ), .Z(N0) );
  SELECT_OP C246 ( .DATA1(\genblk1.genblk1.rdata_w_2 [31:16]), .DATA2(
        \genblk1.genblk1.rdata_w_2 [15:0]), .CONTROL1(N0), .CONTROL2(N8), .Z({
        N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, 
        N26, N25}) );
  SELECT_OP C247 ( .DATA1(\genblk1.genblk1.rdata_w_1 [31:16]), .DATA2(
        \genblk1.genblk1.rdata_w_1 [15:0]), .CONTROL1(N0), .CONTROL2(N8), .Z({
        N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, 
        N42, N41}) );
  SELECT_OP C248 ( .DATA1({N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9}), .DATA2({N40, N39, N38, N37, N36, N35, 
        N34, N33, N32, N31, N30, N29, N28, N27, N26, N25}), .DATA3({N56, N55, 
        N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41}), 
        .DATA4(\genblk1.genblk1.rdata_w_0 [31:16]), .DATA5(
        \genblk1.genblk1.rdata_w_0 [15:0]), .CONTROL1(N1), .CONTROL2(N58), 
        .CONTROL3(N60), .CONTROL4(N62), .CONTROL5(N7), .Z(rdata) );
  GTECH_BUF B_1 ( .A(N135), .Z(N1) );
  SELECT_OP C249 ( .DATA1(\genblk1.genblk1.rwdata_w_3 [31:16]), .DATA2(
        \genblk1.genblk1.rwdata_w_3 [15:0]), .CONTROL1(N2), .CONTROL2(N67), 
        .Z({N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, 
        N70, N69, N68}) );
  GTECH_BUF B_2 ( .A(\genblk1.rwadr_r_0 ), .Z(N2) );
  SELECT_OP C250 ( .DATA1(\genblk1.genblk1.rwdata_w_2 [31:16]), .DATA2(
        \genblk1.genblk1.rwdata_w_2 [15:0]), .CONTROL1(N2), .CONTROL2(N67), 
        .Z({N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, 
        N86, N85, N84}) );
  SELECT_OP C251 ( .DATA1(\genblk1.genblk1.rwdata_w_1 [31:16]), .DATA2(
        \genblk1.genblk1.rwdata_w_1 [15:0]), .CONTROL1(N2), .CONTROL2(N67), 
        .Z({N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, 
        N104, N103, N102, N101, N100}) );
  SELECT_OP C252 ( .DATA1({N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, 
        N73, N72, N71, N70, N69, N68}), .DATA2({N99, N98, N97, N96, N95, N94, 
        N93, N92, N91, N90, N89, N88, N87, N86, N85, N84}), .DATA3({N115, N114, 
        N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, 
        N101, N100}), .DATA4(\genblk1.genblk1.rwdata_w_0 [31:16]), .DATA5(
        \genblk1.genblk1.rwdata_w_0 [15:0]), .CONTROL1(N3), .CONTROL2(N117), 
        .CONTROL3(N119), .CONTROL4(N121), .CONTROL5(N66), .Z(rwdata) );
  GTECH_BUF B_3 ( .A(N131), .Z(N3) );
  GTECH_NOT I_8 ( .A(N139), .Z(_4_net_) );
  GTECH_AND2 C256 ( .A(N137), .B(N138), .Z(N139) );
  GTECH_AND2 C257 ( .A(ren), .B(N136), .Z(N137) );
  GTECH_NOT I_9 ( .A(radr[11]), .Z(N136) );
  GTECH_NOT I_10 ( .A(radr[10]), .Z(N138) );
  GTECH_NOT I_11 ( .A(rwadr[0]), .Z(\_2_net_[1] ) );
  GTECH_NOT I_12 ( .A(rwadr[0]), .Z(\_2_net_[0] ) );
  GTECH_NOT I_13 ( .A(N143), .Z(_1_net_) );
  GTECH_AND2 C263 ( .A(N141), .B(N142), .Z(N143) );
  GTECH_AND2 C264 ( .A(wen), .B(N140), .Z(N141) );
  GTECH_NOT I_14 ( .A(rwadr[11]), .Z(N140) );
  GTECH_NOT I_15 ( .A(rwadr[10]), .Z(N142) );
  GTECH_NOT I_16 ( .A(N146), .Z(_0_net_) );
  GTECH_AND2 C268 ( .A(N145), .B(N142), .Z(N146) );
  GTECH_AND2 C269 ( .A(N144), .B(N140), .Z(N145) );
  GTECH_OR2 C270 ( .A(wen), .B(rwen), .Z(N144) );
  GTECH_NOT I_17 ( .A(N148), .Z(_9_net_) );
  GTECH_AND2 C274 ( .A(N147), .B(radr[10]), .Z(N148) );
  GTECH_AND2 C275 ( .A(ren), .B(N136), .Z(N147) );
  GTECH_NOT I_18 ( .A(rwadr[0]), .Z(\_7_net_[1] ) );
  GTECH_NOT I_19 ( .A(rwadr[0]), .Z(\_7_net_[0] ) );
  GTECH_NOT I_20 ( .A(N150), .Z(_6_net_) );
  GTECH_AND2 C280 ( .A(N149), .B(rwadr[10]), .Z(N150) );
  GTECH_AND2 C281 ( .A(wen), .B(N140), .Z(N149) );
  GTECH_NOT I_21 ( .A(N153), .Z(_5_net_) );
  GTECH_AND2 C284 ( .A(N152), .B(rwadr[10]), .Z(N153) );
  GTECH_AND2 C285 ( .A(N151), .B(N140), .Z(N152) );
  GTECH_OR2 C286 ( .A(wen), .B(rwen), .Z(N151) );
  GTECH_NOT I_22 ( .A(N155), .Z(_14_net_) );
  GTECH_AND2 C289 ( .A(N154), .B(N138), .Z(N155) );
  GTECH_AND2 C290 ( .A(ren), .B(radr[11]), .Z(N154) );
  GTECH_NOT I_23 ( .A(rwadr[0]), .Z(\_12_net_[1] ) );
  GTECH_NOT I_24 ( .A(rwadr[0]), .Z(\_12_net_[0] ) );
  GTECH_NOT I_25 ( .A(N157), .Z(_11_net_) );
  GTECH_AND2 C295 ( .A(N156), .B(N142), .Z(N157) );
  GTECH_AND2 C296 ( .A(wen), .B(rwadr[11]), .Z(N156) );
  GTECH_NOT I_26 ( .A(N160), .Z(_10_net_) );
  GTECH_AND2 C299 ( .A(N159), .B(N142), .Z(N160) );
  GTECH_AND2 C300 ( .A(N158), .B(rwadr[11]), .Z(N159) );
  GTECH_OR2 C301 ( .A(wen), .B(rwen), .Z(N158) );
  GTECH_NOT I_27 ( .A(N162), .Z(_19_net_) );
  GTECH_AND2 C304 ( .A(N161), .B(radr[10]), .Z(N162) );
  GTECH_AND2 C305 ( .A(ren), .B(radr[11]), .Z(N161) );
  GTECH_NOT I_28 ( .A(rwadr[0]), .Z(\_17_net_[1] ) );
  GTECH_NOT I_29 ( .A(rwadr[0]), .Z(\_17_net_[0] ) );
  GTECH_NOT I_30 ( .A(N164), .Z(_16_net_) );
  GTECH_AND2 C309 ( .A(N163), .B(rwadr[10]), .Z(N164) );
  GTECH_AND2 C310 ( .A(wen), .B(rwadr[11]), .Z(N163) );
  GTECH_NOT I_31 ( .A(N167), .Z(_15_net_) );
  GTECH_AND2 C312 ( .A(N166), .B(rwadr[10]), .Z(N167) );
  GTECH_AND2 C313 ( .A(N165), .B(rwadr[11]), .Z(N166) );
  GTECH_OR2 C314 ( .A(wen), .B(rwen), .Z(N165) );
  GTECH_OR2 C319 ( .A(N134), .B(N135), .Z(N4) );
  GTECH_OR2 C320 ( .A(N127), .B(N4), .Z(N5) );
  GTECH_OR2 C321 ( .A(\genblk1.radr_r_0 ), .B(N5), .Z(N6) );
  GTECH_NOT I_32 ( .A(N6), .Z(N7) );
  GTECH_NOT I_33 ( .A(\genblk1.radr_r_0 ), .Z(N8) );
  GTECH_NOT I_34 ( .A(N135), .Z(N57) );
  GTECH_AND2 C330 ( .A(N134), .B(N57), .Z(N58) );
  GTECH_AND2 C332 ( .A(N57), .B(N133), .Z(N59) );
  GTECH_AND2 C333 ( .A(N127), .B(N59), .Z(N60) );
  GTECH_AND2 C335 ( .A(N59), .B(N126), .Z(N61) );
  GTECH_AND2 C336 ( .A(\genblk1.radr_r_0 ), .B(N61), .Z(N62) );
  GTECH_OR2 C341 ( .A(N130), .B(N131), .Z(N63) );
  GTECH_OR2 C342 ( .A(N124), .B(N63), .Z(N64) );
  GTECH_OR2 C343 ( .A(\genblk1.rwadr_r_0 ), .B(N64), .Z(N65) );
  GTECH_NOT I_35 ( .A(N65), .Z(N66) );
  GTECH_NOT I_36 ( .A(\genblk1.rwadr_r_0 ), .Z(N67) );
  GTECH_NOT I_37 ( .A(N131), .Z(N116) );
  GTECH_AND2 C352 ( .A(N130), .B(N116), .Z(N117) );
  GTECH_AND2 C354 ( .A(N116), .B(N129), .Z(N118) );
  GTECH_AND2 C355 ( .A(N124), .B(N118), .Z(N119) );
  GTECH_AND2 C357 ( .A(N118), .B(N123), .Z(N120) );
  GTECH_AND2 C358 ( .A(\genblk1.rwadr_r_0 ), .B(N120), .Z(N121) );
endmodule


module phase_vec_sram_interface_DATA_WIDTH16_ADDR_WIDTH12_DEPTH2048 ( clk, 
        rst_n, debug, debug_read_trig, load, wdata_valid, wdata_in, ren, rwen, 
        radr, rwadr, rdata, rwdata );
  input [15:0] wdata_in;
  input [11:0] radr;
  input [11:0] rwadr;
  output [15:0] rdata;
  output [15:0] rwdata;
  input clk, rst_n, debug, debug_read_trig, load, wdata_valid, ren, rwen;
  wire   N0, N1, N2, N3, N4, N5, ren_mux, rwen_mux, N6, N7, N8, N9, N10, N11,
         N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52;
  wire   [11:0] radr_mux;
  wire   [11:0] radr_r;
  wire   [11:0] rwadr_mux;
  wire   [11:0] rwadr_r;

  \**SEQGEN**  \radr_r_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(N51), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[11]), 
        .synch_clear(N52), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(N50), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[10]), 
        .synch_clear(N52), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(N49), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[9]), 
        .synch_clear(N52), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(N48), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[8]), 
        .synch_clear(N52), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N47), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[7]), 
        .synch_clear(N52), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N46), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[6]), 
        .synch_clear(N52), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N45), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[5]), 
        .synch_clear(N52), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N44), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[4]), 
        .synch_clear(N52), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N43), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[3]), 
        .synch_clear(N52), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N42), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[2]), 
        .synch_clear(N52), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N41), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[1]), 
        .synch_clear(N52), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N40), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[0]), 
        .synch_clear(N52), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \rwadr_r_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N37), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(rwadr_r[11]), 
        .synch_clear(N8), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \rwadr_r_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N36), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(rwadr_r[10]), 
        .synch_clear(N8), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \rwadr_r_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(N35), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(rwadr_r[9]), 
        .synch_clear(N8), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \rwadr_r_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(N34), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(rwadr_r[8]), 
        .synch_clear(N8), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \rwadr_r_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N33), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(rwadr_r[7]), 
        .synch_clear(N8), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \rwadr_r_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N32), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(rwadr_r[6]), 
        .synch_clear(N8), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \rwadr_r_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N31), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(rwadr_r[5]), 
        .synch_clear(N8), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \rwadr_r_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N30), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(rwadr_r[4]), 
        .synch_clear(N8), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \rwadr_r_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N29), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(rwadr_r[3]), 
        .synch_clear(N8), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \rwadr_r_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N28), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(rwadr_r[2]), 
        .synch_clear(N8), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \rwadr_r_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N27), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(rwadr_r[1]), 
        .synch_clear(N8), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \rwadr_r_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N26), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(rwadr_r[0]), 
        .synch_clear(N8), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  ram_sync_1rw1r_DATA_WIDTH16_ADDR_WIDTH12_DEPTH2048 ram_sync_1rw1r_inst ( 
        .clk(clk), .wen(wdata_valid), .rwen(rwen_mux), .rwadr(rwadr_mux), 
        .wdata(wdata_in), .ren(ren_mux), .radr(radr_mux), .rwdata(rwdata), 
        .rdata(rdata) );
  GTECH_OR2 C219 ( .A(N8), .B(N38), .Z(N52) );
  ADD_UNS_OP add_1643 ( .A(rwadr_r), .B(1'b1), .Z({N23, N22, N21, N20, N19, 
        N18, N17, N16, N15, N14, N13, N12}) );
  ADD_UNS_OP add_1652 ( .A(radr_r), .B(1'b1), .Z({N51, N50, N49, N48, N47, N46, 
        N45, N44, N43, N42, N41, N40}) );
  SELECT_OP C232 ( .DATA1(1'b1), .DATA2(ren), .CONTROL1(N0), .CONTROL2(N1), 
        .Z(ren_mux) );
  GTECH_BUF B_0 ( .A(debug), .Z(N0) );
  GTECH_BUF B_1 ( .A(N38), .Z(N1) );
  SELECT_OP C233 ( .DATA1(1'b0), .DATA2(rwen), .CONTROL1(N0), .CONTROL2(N1), 
        .Z(rwen_mux) );
  SELECT_OP C234 ( .DATA1(radr_r), .DATA2(radr), .CONTROL1(N0), .CONTROL2(N1), 
        .Z(radr_mux) );
  SELECT_OP C235 ( .DATA1(rwadr_r), .DATA2(rwadr), .CONTROL1(N2), .CONTROL2(N3), .Z(rwadr_mux) );
  GTECH_BUF B_2 ( .A(N7), .Z(N2) );
  GTECH_BUF B_3 ( .A(N6), .Z(N3) );
  SELECT_OP C236 ( .DATA1(N24), .DATA2(1'b1), .CONTROL1(N4), .CONTROL2(N5), 
        .Z(N25) );
  GTECH_BUF B_4 ( .A(load), .Z(N4) );
  GTECH_BUF B_5 ( .A(N10), .Z(N5) );
  SELECT_OP C237 ( .DATA1({N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, 
        N13, N12}), .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .CONTROL1(N4), .CONTROL2(N5), .Z({N37, N36, 
        N35, N34, N33, N32, N31, N30, N29, N28, N27, N26}) );
  GTECH_NOT I_0 ( .A(wdata_valid), .Z(N6) );
  GTECH_BUF B_6 ( .A(wdata_valid), .Z(N7) );
  GTECH_NOT I_1 ( .A(rst_n), .Z(N8) );
  GTECH_BUF B_7 ( .A(rst_n), .Z(N9) );
  GTECH_NOT I_2 ( .A(load), .Z(N10) );
  GTECH_AND2 C252 ( .A(N9), .B(load), .Z(N11) );
  GTECH_BUF B_8 ( .A(wdata_valid), .Z(N24) );
  GTECH_AND2 C254 ( .A(N11), .B(N24) );
  GTECH_NOT I_3 ( .A(debug), .Z(N38) );
  GTECH_AND2 C257 ( .A(N9), .B(debug), .Z(N39) );
  GTECH_AND2 C259 ( .A(N39), .B(debug_read_trig) );
endmodule


module tf_coeff_sram_interface_DATA_WIDTH16_ADDR_WIDTH12_DEPTH2048 ( clk, 
        rst_n, debug, debug_read_trig, load, wdata_valid, wdata_in, ren, rwen, 
        radr, rwadr, rdata, rwdata );
  input [15:0] wdata_in;
  input [11:0] radr;
  input [11:0] rwadr;
  output [15:0] rdata;
  output [15:0] rwdata;
  input clk, rst_n, debug, debug_read_trig, load, wdata_valid, ren, rwen;
  wire   N0, N1, N2, N3, N4, N5, ren_mux, rwen_mux, N6, N7, N8, N9, N10, N11,
         N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52;
  wire   [11:0] radr_mux;
  wire   [11:0] radr_r;
  wire   [11:0] rwadr_mux;
  wire   [11:0] rwadr_r;

  \**SEQGEN**  \radr_r_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(N51), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[11]), 
        .synch_clear(N52), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(N50), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[10]), 
        .synch_clear(N52), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(N49), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[9]), 
        .synch_clear(N52), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(N48), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[8]), 
        .synch_clear(N52), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N47), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[7]), 
        .synch_clear(N52), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N46), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[6]), 
        .synch_clear(N52), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N45), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[5]), 
        .synch_clear(N52), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N44), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[4]), 
        .synch_clear(N52), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N43), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[3]), 
        .synch_clear(N52), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N42), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[2]), 
        .synch_clear(N52), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N41), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[1]), 
        .synch_clear(N52), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N40), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[0]), 
        .synch_clear(N52), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \rwadr_r_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N37), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(rwadr_r[11]), 
        .synch_clear(N8), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \rwadr_r_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N36), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(rwadr_r[10]), 
        .synch_clear(N8), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \rwadr_r_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(N35), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(rwadr_r[9]), 
        .synch_clear(N8), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \rwadr_r_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(N34), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(rwadr_r[8]), 
        .synch_clear(N8), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \rwadr_r_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N33), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(rwadr_r[7]), 
        .synch_clear(N8), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \rwadr_r_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N32), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(rwadr_r[6]), 
        .synch_clear(N8), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \rwadr_r_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N31), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(rwadr_r[5]), 
        .synch_clear(N8), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \rwadr_r_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N30), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(rwadr_r[4]), 
        .synch_clear(N8), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \rwadr_r_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N29), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(rwadr_r[3]), 
        .synch_clear(N8), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \rwadr_r_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N28), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(rwadr_r[2]), 
        .synch_clear(N8), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \rwadr_r_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N27), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(rwadr_r[1]), 
        .synch_clear(N8), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \rwadr_r_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N26), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(rwadr_r[0]), 
        .synch_clear(N8), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  ram_sync_1rw1r_DATA_WIDTH16_ADDR_WIDTH12_DEPTH2048 ram_sync_1rw1r_inst ( 
        .clk(clk), .wen(wdata_valid), .rwen(rwen_mux), .rwadr(rwadr_mux), 
        .wdata(wdata_in), .ren(ren_mux), .radr(radr_mux), .rwdata(rwdata), 
        .rdata(rdata) );
  GTECH_OR2 C219 ( .A(N8), .B(N38), .Z(N52) );
  ADD_UNS_OP add_2052 ( .A(rwadr_r), .B(1'b1), .Z({N23, N22, N21, N20, N19, 
        N18, N17, N16, N15, N14, N13, N12}) );
  ADD_UNS_OP add_2061 ( .A(radr_r), .B(1'b1), .Z({N51, N50, N49, N48, N47, N46, 
        N45, N44, N43, N42, N41, N40}) );
  SELECT_OP C232 ( .DATA1(1'b1), .DATA2(ren), .CONTROL1(N0), .CONTROL2(N1), 
        .Z(ren_mux) );
  GTECH_BUF B_0 ( .A(debug), .Z(N0) );
  GTECH_BUF B_1 ( .A(N38), .Z(N1) );
  SELECT_OP C233 ( .DATA1(1'b0), .DATA2(rwen), .CONTROL1(N0), .CONTROL2(N1), 
        .Z(rwen_mux) );
  SELECT_OP C234 ( .DATA1(radr_r), .DATA2(radr), .CONTROL1(N0), .CONTROL2(N1), 
        .Z(radr_mux) );
  SELECT_OP C235 ( .DATA1(rwadr_r), .DATA2(rwadr), .CONTROL1(N2), .CONTROL2(N3), .Z(rwadr_mux) );
  GTECH_BUF B_2 ( .A(N7), .Z(N2) );
  GTECH_BUF B_3 ( .A(N6), .Z(N3) );
  SELECT_OP C236 ( .DATA1(N24), .DATA2(1'b1), .CONTROL1(N4), .CONTROL2(N5), 
        .Z(N25) );
  GTECH_BUF B_4 ( .A(load), .Z(N4) );
  GTECH_BUF B_5 ( .A(N10), .Z(N5) );
  SELECT_OP C237 ( .DATA1({N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, 
        N13, N12}), .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .CONTROL1(N4), .CONTROL2(N5), .Z({N37, N36, 
        N35, N34, N33, N32, N31, N30, N29, N28, N27, N26}) );
  GTECH_NOT I_0 ( .A(wdata_valid), .Z(N6) );
  GTECH_BUF B_6 ( .A(wdata_valid), .Z(N7) );
  GTECH_NOT I_1 ( .A(rst_n), .Z(N8) );
  GTECH_BUF B_7 ( .A(rst_n), .Z(N9) );
  GTECH_NOT I_2 ( .A(load), .Z(N10) );
  GTECH_AND2 C252 ( .A(N9), .B(load), .Z(N11) );
  GTECH_BUF B_8 ( .A(wdata_valid), .Z(N24) );
  GTECH_AND2 C254 ( .A(N11), .B(N24) );
  GTECH_NOT I_3 ( .A(debug), .Z(N38) );
  GTECH_AND2 C257 ( .A(N9), .B(debug), .Z(N39) );
  GTECH_AND2 C259 ( .A(N39), .B(debug_read_trig) );
endmodule



    module deconv_kernel_magnitude_sram_interface_DATA_WIDTH16_ADDR_WIDTH12_DEPTH2048 ( 
        clk, rst_n, debug, debug_read_trig, wen, wdata_in, rdata );
  input [15:0] wdata_in;
  output [15:0] rdata;
  input clk, rst_n, debug, debug_read_trig, wen;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30;
  wire   [11:0] wadr_r;
  wire   [11:0] radr_r;

  \**SEQGEN**  \radr_r_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(N29), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[11]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(N28), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[10]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(N27), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[9]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(N26), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[8]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N25), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[7]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N24), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[6]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N23), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[5]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N22), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[4]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N21), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[3]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N20), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[2]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N19), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[1]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N18), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[0]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \wadr_r_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(N13), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wadr_r[11]), 
        .synch_clear(N0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \wadr_r_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(N12), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wadr_r[10]), 
        .synch_clear(N0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \wadr_r_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(N11), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wadr_r[9]), 
        .synch_clear(N0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \wadr_r_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(N10), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wadr_r[8]), 
        .synch_clear(N0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \wadr_r_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N9), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wadr_r[7]), 
        .synch_clear(N0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \wadr_r_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N8), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wadr_r[6]), 
        .synch_clear(N0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \wadr_r_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N7), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wadr_r[5]), 
        .synch_clear(N0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \wadr_r_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N6), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wadr_r[4]), 
        .synch_clear(N0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \wadr_r_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N5), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wadr_r[3]), 
        .synch_clear(N0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \wadr_r_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N4), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wadr_r[2]), 
        .synch_clear(N0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \wadr_r_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N3), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wadr_r[1]), 
        .synch_clear(N0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \wadr_r_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N2), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wadr_r[0]), 
        .synch_clear(N0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  ram_sync_1rw1r_DATA_WIDTH16_ADDR_WIDTH12_DEPTH2048 ram_sync_1rw1r_inst ( 
        .clk(clk), .wen(wen), .rwen(1'b0), .rwadr(wadr_r), .wdata(wdata_in), 
        .ren(debug), .radr(radr_r), .rdata(rdata) );
  GTECH_OR2 C144 ( .A(N0), .B(N15), .Z(N30) );
  ADD_UNS_OP add_1049 ( .A(wadr_r), .B(1'b1), .Z({N13, N12, N11, N10, N9, N8, 
        N7, N6, N5, N4, N3, N2}) );
  ADD_UNS_OP add_1054 ( .A(radr_r), .B(1'b1), .Z({N29, N28, N27, N26, N25, N24, 
        N23, N22, N21, N20, N19, N18}) );
  GTECH_NOT I_0 ( .A(rst_n), .Z(N0) );
  GTECH_BUF B_0 ( .A(rst_n), .Z(N1) );
  GTECH_BUF B_1 ( .A(wen), .Z(N14) );
  GTECH_AND2 C163 ( .A(N1), .B(N14) );
  GTECH_NOT I_1 ( .A(debug), .Z(N15) );
  GTECH_BUF B_2 ( .A(debug), .Z(N16) );
  GTECH_AND2 C166 ( .A(N1), .B(N16), .Z(N17) );
  GTECH_AND2 C168 ( .A(N17), .B(debug_read_trig) );
endmodule



    module deconv_kernel_phase_sram_interface_DATA_WIDTH16_ADDR_WIDTH12_DEPTH2048 ( 
        clk, rst_n, debug, debug_read_trig, wen, wdata_in, rdata );
  input [15:0] wdata_in;
  output [15:0] rdata;
  input clk, rst_n, debug, debug_read_trig, wen;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30;
  wire   [11:0] wadr_r;
  wire   [11:0] radr_r;

  \**SEQGEN**  \radr_r_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(N29), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[11]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(N28), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[10]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(N27), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[9]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(N26), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[8]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N25), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[7]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N24), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[6]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N23), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[5]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N22), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[4]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N21), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[3]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N20), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[2]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N19), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[1]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \radr_r_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N18), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(radr_r[0]), 
        .synch_clear(N30), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(debug_read_trig) );
  \**SEQGEN**  \wadr_r_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(N13), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wadr_r[11]), 
        .synch_clear(N0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \wadr_r_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(N12), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wadr_r[10]), 
        .synch_clear(N0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \wadr_r_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(N11), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wadr_r[9]), 
        .synch_clear(N0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \wadr_r_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(N10), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wadr_r[8]), 
        .synch_clear(N0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \wadr_r_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N9), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wadr_r[7]), 
        .synch_clear(N0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \wadr_r_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N8), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wadr_r[6]), 
        .synch_clear(N0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \wadr_r_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N7), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wadr_r[5]), 
        .synch_clear(N0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \wadr_r_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N6), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wadr_r[4]), 
        .synch_clear(N0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \wadr_r_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N5), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wadr_r[3]), 
        .synch_clear(N0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \wadr_r_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N4), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wadr_r[2]), 
        .synch_clear(N0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \wadr_r_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N3), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wadr_r[1]), 
        .synch_clear(N0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \wadr_r_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N2), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(wadr_r[0]), 
        .synch_clear(N0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  ram_sync_1rw1r_DATA_WIDTH16_ADDR_WIDTH12_DEPTH2048 ram_sync_1rw1r_inst ( 
        .clk(clk), .wen(wen), .rwen(1'b0), .rwadr(wadr_r), .wdata(wdata_in), 
        .ren(debug), .radr(radr_r), .rdata(rdata) );
  GTECH_OR2 C144 ( .A(N0), .B(N15), .Z(N30) );
  ADD_UNS_OP add_1112 ( .A(wadr_r), .B(1'b1), .Z({N13, N12, N11, N10, N9, N8, 
        N7, N6, N5, N4, N3, N2}) );
  ADD_UNS_OP add_1117 ( .A(radr_r), .B(1'b1), .Z({N29, N28, N27, N26, N25, N24, 
        N23, N22, N21, N20, N19, N18}) );
  GTECH_NOT I_0 ( .A(rst_n), .Z(N0) );
  GTECH_BUF B_0 ( .A(rst_n), .Z(N1) );
  GTECH_BUF B_1 ( .A(wen), .Z(N14) );
  GTECH_AND2 C163 ( .A(N1), .B(N14) );
  GTECH_NOT I_1 ( .A(debug), .Z(N15) );
  GTECH_BUF B_2 ( .A(debug), .Z(N16) );
  GTECH_AND2 C166 ( .A(N1), .B(N16), .Z(N17) );
  GTECH_AND2 C168 ( .A(N17), .B(debug_read_trig) );
endmodule


module deconv_kernel_estimator_top_level ( clk, rst_n, load_en, debug_en, 
        serial_in, sram_select, frequency_adc_done, amplitude_adc_done, 
        sig_frequency, sig_amplitude, adc_bypass_en, serial_out, 
        serial_out_valid, freq_eval_done );
  input [1:0] sram_select;
  input [7:0] sig_frequency;
  input [7:0] sig_amplitude;
  input clk, rst_n, load_en, debug_en, serial_in, frequency_adc_done,
         amplitude_adc_done, adc_bypass_en;
  output serial_out, serial_out_valid, freq_eval_done;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, eval_deconv_kernel, N17, N18, N19, N20, \phase_mem_data[1][15] ,
         \phase_mem_data[1][14] , \phase_mem_data[1][13] ,
         \phase_mem_data[1][12] , \phase_mem_data[1][11] ,
         \phase_mem_data[1][10] , \phase_mem_data[1][9] ,
         \phase_mem_data[1][8] , \phase_mem_data[1][7] ,
         \phase_mem_data[1][6] , \phase_mem_data[1][5] ,
         \phase_mem_data[1][4] , \phase_mem_data[1][3] ,
         \phase_mem_data[1][2] , \phase_mem_data[1][1] ,
         \phase_mem_data[1][0] , \phase_mem_data[0][15] ,
         \phase_mem_data[0][14] , \phase_mem_data[0][13] ,
         \phase_mem_data[0][12] , \phase_mem_data[0][11] ,
         \phase_mem_data[0][10] , \phase_mem_data[0][9] ,
         \phase_mem_data[0][8] , \phase_mem_data[0][7] ,
         \phase_mem_data[0][6] , \phase_mem_data[0][5] ,
         \phase_mem_data[0][4] , \phase_mem_data[0][3] ,
         \phase_mem_data[0][2] , \phase_mem_data[0][1] ,
         \phase_mem_data[0][0] , N21, N22, N23, N24, N25, N26, N27, N28, N29,
         wdata_valid, N30, nfft_cntr_en, nfft_cntr_en_d1, N31, N32, N33, N34,
         N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48,
         N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61,
         debug_en_d1, debug_en_d2, serializer_rdy, \a_coeffs[2][15] ,
         \a_coeffs[2][14] , \a_coeffs[2][13] , \a_coeffs[2][12] ,
         \a_coeffs[2][11] , \a_coeffs[2][10] , \a_coeffs[2][9] ,
         \a_coeffs[2][8] , \a_coeffs[2][7] , \a_coeffs[2][6] ,
         \a_coeffs[2][5] , \a_coeffs[2][4] , \a_coeffs[2][3] ,
         \a_coeffs[2][2] , \a_coeffs[2][1] , \a_coeffs[2][0] ,
         \a_coeffs[1][15] , \a_coeffs[1][14] , \a_coeffs[1][13] ,
         \a_coeffs[1][12] , \a_coeffs[1][11] , \a_coeffs[1][10] ,
         \a_coeffs[1][9] , \a_coeffs[1][8] , \a_coeffs[1][7] ,
         \a_coeffs[1][6] , \a_coeffs[1][5] , \a_coeffs[1][4] ,
         \a_coeffs[1][3] , \a_coeffs[1][2] , \a_coeffs[1][1] ,
         \a_coeffs[1][0] , \a_coeffs[0][15] , \a_coeffs[0][14] ,
         \a_coeffs[0][13] , \a_coeffs[0][12] , \a_coeffs[0][11] ,
         \a_coeffs[0][10] , \a_coeffs[0][9] , \a_coeffs[0][8] ,
         \a_coeffs[0][7] , \a_coeffs[0][6] , \a_coeffs[0][5] ,
         \a_coeffs[0][4] , \a_coeffs[0][3] , \a_coeffs[0][2] ,
         \a_coeffs[0][1] , \a_coeffs[0][0] , \b_coeffs[2][15] ,
         \b_coeffs[2][14] , \b_coeffs[2][13] , \b_coeffs[2][12] ,
         \b_coeffs[2][11] , \b_coeffs[2][10] , \b_coeffs[2][9] ,
         \b_coeffs[2][8] , \b_coeffs[2][7] , \b_coeffs[2][6] ,
         \b_coeffs[2][5] , \b_coeffs[2][4] , \b_coeffs[2][3] ,
         \b_coeffs[2][2] , \b_coeffs[2][1] , \b_coeffs[2][0] ,
         \b_coeffs[1][15] , \b_coeffs[1][14] , \b_coeffs[1][13] ,
         \b_coeffs[1][12] , \b_coeffs[1][11] , \b_coeffs[1][10] ,
         \b_coeffs[1][9] , \b_coeffs[1][8] , \b_coeffs[1][7] ,
         \b_coeffs[1][6] , \b_coeffs[1][5] , \b_coeffs[1][4] ,
         \b_coeffs[1][3] , \b_coeffs[1][2] , \b_coeffs[1][1] ,
         \b_coeffs[1][0] , \b_coeffs[0][15] , \b_coeffs[0][14] ,
         \b_coeffs[0][13] , \b_coeffs[0][12] , \b_coeffs[0][11] ,
         \b_coeffs[0][10] , \b_coeffs[0][9] , \b_coeffs[0][8] ,
         \b_coeffs[0][7] , \b_coeffs[0][6] , \b_coeffs[0][5] ,
         \b_coeffs[0][4] , \b_coeffs[0][3] , \b_coeffs[0][2] ,
         \b_coeffs[0][1] , \b_coeffs[0][0] , eval_iir_freq_resp,
         \phase_mem_indices[1][11] , \phase_mem_indices[1][10] ,
         \phase_mem_indices[1][9] , \phase_mem_indices[1][8] ,
         \phase_mem_indices[1][7] , \phase_mem_indices[1][6] ,
         \phase_mem_indices[1][5] , \phase_mem_indices[1][4] ,
         \phase_mem_indices[1][3] , \phase_mem_indices[1][2] ,
         \phase_mem_indices[1][1] , \phase_mem_indices[1][0] ,
         \phase_mem_indices[0][11] , \phase_mem_indices[0][10] ,
         \phase_mem_indices[0][9] , \phase_mem_indices[0][8] ,
         \phase_mem_indices[0][7] , \phase_mem_indices[0][6] ,
         \phase_mem_indices[0][5] , \phase_mem_indices[0][4] ,
         \phase_mem_indices[0][3] , \phase_mem_indices[0][2] ,
         \phase_mem_indices[0][1] , \phase_mem_indices[0][0] , tf_val_valid,
         _0_net_, _1_net_, _2_net_, phase_vec_ren, phase_vec_rwen, _3_net_,
         _4_net_, _5_net_, tf_coeff_ren, tf_coeff_rwen, _6_net_, _7_net_, N62,
         N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76,
         N77, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90,
         N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N133, N134, N135, N136,
         N137, N138, N139, N140, N141;
  wire   [15:0] rdata_mux;
  wire   [15:0] tf_coeff_rdata;
  wire   [15:0] kernel_magnitude_rdata;
  wire   [15:0] kernel_phase_rdata;
  wire   [11:0] nfft_cntr;
  wire   [11:0] config_nfft;
  wire   [9:0] coeff_table_base_addr_bypass;
  wire   [15:0] parallel_in;
  wire   [9:0] coeff_table_base_addr;
  wire   [15:0] tf_val_magnitude;
  wire   [15:0] tf_val_phase;
  wire   [11:0] tf_coeff_radr;
  wire   [15:0] tf_coeff_rwdata;
  wire   [2:0] state_r;

  \**SEQGEN**  \config_nfft_reg[11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N55), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        config_nfft[11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \config_nfft_reg[10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N54), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        config_nfft[10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \config_nfft_reg[9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N53), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        config_nfft[9]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \config_nfft_reg[8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N52), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        config_nfft[8]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \config_nfft_reg[7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N51), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        config_nfft[7]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \config_nfft_reg[6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N50), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        config_nfft[6]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \config_nfft_reg[5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N49), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        config_nfft[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \config_nfft_reg[4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N48), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        config_nfft[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \config_nfft_reg[3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N47), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        config_nfft[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \config_nfft_reg[2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N46), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        config_nfft[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \config_nfft_reg[1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N45), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        config_nfft[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \config_nfft_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N44), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        config_nfft[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  nfft_cntr_en_reg ( .clear(1'b0), .preset(1'b0), .next_state(N30), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(nfft_cntr_en), 
        .synch_clear(N27), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  nfft_cntr_en_d1_reg ( .clear(1'b0), .preset(1'b0), .next_state(
        nfft_cntr_en), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        nfft_cntr_en_d1), .synch_clear(N27), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \nfft_cntr_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N42), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        nfft_cntr[11]), .synch_clear(N27), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(nfft_cntr_en) );
  \**SEQGEN**  \nfft_cntr_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N41), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        nfft_cntr[10]), .synch_clear(N27), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(nfft_cntr_en) );
  \**SEQGEN**  \nfft_cntr_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N40), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(nfft_cntr[9]), .synch_clear(N27), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        nfft_cntr_en) );
  \**SEQGEN**  \nfft_cntr_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N39), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(nfft_cntr[8]), .synch_clear(N27), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        nfft_cntr_en) );
  \**SEQGEN**  \nfft_cntr_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N38), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(nfft_cntr[7]), .synch_clear(N27), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        nfft_cntr_en) );
  \**SEQGEN**  \nfft_cntr_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N37), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(nfft_cntr[6]), .synch_clear(N27), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        nfft_cntr_en) );
  \**SEQGEN**  \nfft_cntr_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N36), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(nfft_cntr[5]), .synch_clear(N27), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        nfft_cntr_en) );
  \**SEQGEN**  \nfft_cntr_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N35), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(nfft_cntr[4]), .synch_clear(N27), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        nfft_cntr_en) );
  \**SEQGEN**  \nfft_cntr_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N34), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(nfft_cntr[3]), .synch_clear(N27), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        nfft_cntr_en) );
  \**SEQGEN**  \nfft_cntr_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N33), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(nfft_cntr[2]), .synch_clear(N27), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        nfft_cntr_en) );
  \**SEQGEN**  \nfft_cntr_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N32), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(nfft_cntr[1]), .synch_clear(N27), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        nfft_cntr_en) );
  \**SEQGEN**  \nfft_cntr_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N31), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(nfft_cntr[0]), .synch_clear(N27), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        nfft_cntr_en) );
  \**SEQGEN**  \coeff_table_base_addr_bypass_reg[9]  ( .clear(1'b0), .preset(
        1'b0), .next_state(parallel_in[9]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(coeff_table_base_addr_bypass[9]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N60) );
  \**SEQGEN**  \coeff_table_base_addr_bypass_reg[8]  ( .clear(1'b0), .preset(
        1'b0), .next_state(parallel_in[8]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(coeff_table_base_addr_bypass[8]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N60) );
  \**SEQGEN**  \coeff_table_base_addr_bypass_reg[7]  ( .clear(1'b0), .preset(
        1'b0), .next_state(parallel_in[7]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(coeff_table_base_addr_bypass[7]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N60) );
  \**SEQGEN**  \coeff_table_base_addr_bypass_reg[6]  ( .clear(1'b0), .preset(
        1'b0), .next_state(parallel_in[6]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(coeff_table_base_addr_bypass[6]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N60) );
  \**SEQGEN**  \coeff_table_base_addr_bypass_reg[5]  ( .clear(1'b0), .preset(
        1'b0), .next_state(parallel_in[5]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(coeff_table_base_addr_bypass[5]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N60) );
  \**SEQGEN**  \coeff_table_base_addr_bypass_reg[4]  ( .clear(1'b0), .preset(
        1'b0), .next_state(parallel_in[4]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(coeff_table_base_addr_bypass[4]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N60) );
  \**SEQGEN**  \coeff_table_base_addr_bypass_reg[3]  ( .clear(1'b0), .preset(
        1'b0), .next_state(parallel_in[3]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(coeff_table_base_addr_bypass[3]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N60) );
  \**SEQGEN**  \coeff_table_base_addr_bypass_reg[2]  ( .clear(1'b0), .preset(
        1'b0), .next_state(parallel_in[2]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(coeff_table_base_addr_bypass[2]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N60) );
  \**SEQGEN**  \coeff_table_base_addr_bypass_reg[1]  ( .clear(1'b0), .preset(
        1'b0), .next_state(parallel_in[1]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(coeff_table_base_addr_bypass[1]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N60) );
  \**SEQGEN**  \coeff_table_base_addr_bypass_reg[0]  ( .clear(1'b0), .preset(
        1'b0), .next_state(parallel_in[0]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(coeff_table_base_addr_bypass[0]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N60) );
  deserializer_FETCH_WIDTH16 deserializer_inst ( .clk(clk), .rst_n(rst_n), 
        .serial_data(serial_in), .en(load_en), .parallel_data(parallel_in), 
        .out_valid(wdata_valid) );
  \**SEQGEN**  debug_en_d1_reg ( .clear(1'b0), .preset(1'b0), .next_state(
        debug_en), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        debug_en_d1), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  debug_en_d2_reg ( .clear(1'b0), .preset(1'b0), .next_state(
        debug_en_d1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        debug_en_d2), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  serializer_FETCH_WIDTH16 serializer_inst ( .clk(clk), .rst_n(rst_n), .en(
        debug_en_d2), .parallel_data(rdata_mux), .sender_deq(serializer_rdy), 
        .serial_data(serial_out), .out_valid(serial_out_valid) );
  iir_notch_filter_CONFIG_SIZE12_CORDIC_XY_BITS16_CORDIC_PHASE_BITS16_ADC_BITS8_FIXED_Q13_FILTER_ORDER2_LATENCY4 iir_notch_filter_inst ( 
        .clk(clk), .rst_n(rst_n), .config_nfft(config_nfft), .a_coeffs({
        \a_coeffs[2][15] , \a_coeffs[2][14] , \a_coeffs[2][13] , 
        \a_coeffs[2][12] , \a_coeffs[2][11] , \a_coeffs[2][10] , 
        \a_coeffs[2][9] , \a_coeffs[2][8] , \a_coeffs[2][7] , \a_coeffs[2][6] , 
        \a_coeffs[2][5] , \a_coeffs[2][4] , \a_coeffs[2][3] , \a_coeffs[2][2] , 
        \a_coeffs[2][1] , \a_coeffs[2][0] , \a_coeffs[1][15] , 
        \a_coeffs[1][14] , \a_coeffs[1][13] , \a_coeffs[1][12] , 
        \a_coeffs[1][11] , \a_coeffs[1][10] , \a_coeffs[1][9] , 
        \a_coeffs[1][8] , \a_coeffs[1][7] , \a_coeffs[1][6] , \a_coeffs[1][5] , 
        \a_coeffs[1][4] , \a_coeffs[1][3] , \a_coeffs[1][2] , \a_coeffs[1][1] , 
        \a_coeffs[1][0] , \a_coeffs[0][15] , \a_coeffs[0][14] , 
        \a_coeffs[0][13] , \a_coeffs[0][12] , \a_coeffs[0][11] , 
        \a_coeffs[0][10] , \a_coeffs[0][9] , \a_coeffs[0][8] , 
        \a_coeffs[0][7] , \a_coeffs[0][6] , \a_coeffs[0][5] , \a_coeffs[0][4] , 
        \a_coeffs[0][3] , \a_coeffs[0][2] , \a_coeffs[0][1] , \a_coeffs[0][0] }), .b_coeffs({\b_coeffs[2][15] , \b_coeffs[2][14] , \b_coeffs[2][13] , 
        \b_coeffs[2][12] , \b_coeffs[2][11] , \b_coeffs[2][10] , 
        \b_coeffs[2][9] , \b_coeffs[2][8] , \b_coeffs[2][7] , \b_coeffs[2][6] , 
        \b_coeffs[2][5] , \b_coeffs[2][4] , \b_coeffs[2][3] , \b_coeffs[2][2] , 
        \b_coeffs[2][1] , \b_coeffs[2][0] , \b_coeffs[1][15] , 
        \b_coeffs[1][14] , \b_coeffs[1][13] , \b_coeffs[1][12] , 
        \b_coeffs[1][11] , \b_coeffs[1][10] , \b_coeffs[1][9] , 
        \b_coeffs[1][8] , \b_coeffs[1][7] , \b_coeffs[1][6] , \b_coeffs[1][5] , 
        \b_coeffs[1][4] , \b_coeffs[1][3] , \b_coeffs[1][2] , \b_coeffs[1][1] , 
        \b_coeffs[1][0] , \b_coeffs[0][15] , \b_coeffs[0][14] , 
        \b_coeffs[0][13] , \b_coeffs[0][12] , \b_coeffs[0][11] , 
        \b_coeffs[0][10] , \b_coeffs[0][9] , \b_coeffs[0][8] , 
        \b_coeffs[0][7] , \b_coeffs[0][6] , \b_coeffs[0][5] , \b_coeffs[0][4] , 
        \b_coeffs[0][3] , \b_coeffs[0][2] , \b_coeffs[0][1] , \b_coeffs[0][0] }), .eval_iir_freq_resp(eval_iir_freq_resp), .phase_mem_data({
        \phase_mem_data[1][15] , \phase_mem_data[1][14] , 
        \phase_mem_data[1][13] , \phase_mem_data[1][12] , 
        \phase_mem_data[1][11] , \phase_mem_data[1][10] , 
        \phase_mem_data[1][9] , \phase_mem_data[1][8] , \phase_mem_data[1][7] , 
        \phase_mem_data[1][6] , \phase_mem_data[1][5] , \phase_mem_data[1][4] , 
        \phase_mem_data[1][3] , \phase_mem_data[1][2] , \phase_mem_data[1][1] , 
        \phase_mem_data[1][0] , \phase_mem_data[0][15] , 
        \phase_mem_data[0][14] , \phase_mem_data[0][13] , 
        \phase_mem_data[0][12] , \phase_mem_data[0][11] , 
        \phase_mem_data[0][10] , \phase_mem_data[0][9] , 
        \phase_mem_data[0][8] , \phase_mem_data[0][7] , \phase_mem_data[0][6] , 
        \phase_mem_data[0][5] , \phase_mem_data[0][4] , \phase_mem_data[0][3] , 
        \phase_mem_data[0][2] , \phase_mem_data[0][1] , \phase_mem_data[0][0] }), .phase_mem_indices({\phase_mem_indices[1][11] , \phase_mem_indices[1][10] , 
        \phase_mem_indices[1][9] , \phase_mem_indices[1][8] , 
        \phase_mem_indices[1][7] , \phase_mem_indices[1][6] , 
        \phase_mem_indices[1][5] , \phase_mem_indices[1][4] , 
        \phase_mem_indices[1][3] , \phase_mem_indices[1][2] , 
        \phase_mem_indices[1][1] , \phase_mem_indices[1][0] , 
        \phase_mem_indices[0][11] , \phase_mem_indices[0][10] , 
        \phase_mem_indices[0][9] , \phase_mem_indices[0][8] , 
        \phase_mem_indices[0][7] , \phase_mem_indices[0][6] , 
        \phase_mem_indices[0][5] , \phase_mem_indices[0][4] , 
        \phase_mem_indices[0][3] , \phase_mem_indices[0][2] , 
        \phase_mem_indices[0][1] , \phase_mem_indices[0][0] }), 
        .tf_val_magnitude(tf_val_magnitude), .tf_val_phase(tf_val_phase), 
        .tf_val_valid(tf_val_valid), .freq_eval_done(freq_eval_done) );
  phase_vec_sram_interface_DATA_WIDTH16_ADDR_WIDTH12_DEPTH2048 phase_vec_sram_interface_inst ( 
        .clk(clk), .rst_n(rst_n), .debug(_0_net_), .debug_read_trig(
        serializer_rdy), .load(_1_net_), .wdata_valid(_2_net_), .wdata_in(
        parallel_in), .ren(phase_vec_ren), .rwen(phase_vec_rwen), .radr({
        \phase_mem_indices[1][11] , \phase_mem_indices[1][10] , 
        \phase_mem_indices[1][9] , \phase_mem_indices[1][8] , 
        \phase_mem_indices[1][7] , \phase_mem_indices[1][6] , 
        \phase_mem_indices[1][5] , \phase_mem_indices[1][4] , 
        \phase_mem_indices[1][3] , \phase_mem_indices[1][2] , 
        \phase_mem_indices[1][1] , \phase_mem_indices[1][0] }), .rwadr({
        \phase_mem_indices[0][11] , \phase_mem_indices[0][10] , 
        \phase_mem_indices[0][9] , \phase_mem_indices[0][8] , 
        \phase_mem_indices[0][7] , \phase_mem_indices[0][6] , 
        \phase_mem_indices[0][5] , \phase_mem_indices[0][4] , 
        \phase_mem_indices[0][3] , \phase_mem_indices[0][2] , 
        \phase_mem_indices[0][1] , \phase_mem_indices[0][0] }), .rdata({
        \phase_mem_data[1][15] , \phase_mem_data[1][14] , 
        \phase_mem_data[1][13] , \phase_mem_data[1][12] , 
        \phase_mem_data[1][11] , \phase_mem_data[1][10] , 
        \phase_mem_data[1][9] , \phase_mem_data[1][8] , \phase_mem_data[1][7] , 
        \phase_mem_data[1][6] , \phase_mem_data[1][5] , \phase_mem_data[1][4] , 
        \phase_mem_data[1][3] , \phase_mem_data[1][2] , \phase_mem_data[1][1] , 
        \phase_mem_data[1][0] }), .rwdata({\phase_mem_data[0][15] , 
        \phase_mem_data[0][14] , \phase_mem_data[0][13] , 
        \phase_mem_data[0][12] , \phase_mem_data[0][11] , 
        \phase_mem_data[0][10] , \phase_mem_data[0][9] , 
        \phase_mem_data[0][8] , \phase_mem_data[0][7] , \phase_mem_data[0][6] , 
        \phase_mem_data[0][5] , \phase_mem_data[0][4] , \phase_mem_data[0][3] , 
        \phase_mem_data[0][2] , \phase_mem_data[0][1] , \phase_mem_data[0][0] }) );
  tf_coeff_sram_interface_DATA_WIDTH16_ADDR_WIDTH12_DEPTH2048 tf_coeff_sram_interface_inst ( 
        .clk(clk), .rst_n(rst_n), .debug(_3_net_), .debug_read_trig(
        serializer_rdy), .load(_4_net_), .wdata_valid(_5_net_), .wdata_in(
        parallel_in), .ren(tf_coeff_ren), .rwen(tf_coeff_rwen), .radr(
        tf_coeff_radr), .rwadr({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .rdata(tf_coeff_rdata), .rwdata(
        tf_coeff_rwdata) );
  deconv_kernel_magnitude_sram_interface_DATA_WIDTH16_ADDR_WIDTH12_DEPTH2048 deconv_kernel_magnitude_sram_interface_inst ( 
        .clk(clk), .rst_n(rst_n), .debug(_6_net_), .debug_read_trig(
        serializer_rdy), .wen(tf_val_valid), .wdata_in(tf_val_magnitude), 
        .rdata(kernel_magnitude_rdata) );
  deconv_kernel_phase_sram_interface_DATA_WIDTH16_ADDR_WIDTH12_DEPTH2048 deconv_kernel_phase_sram_interface_inst ( 
        .clk(clk), .rst_n(rst_n), .debug(_7_net_), .debug_read_trig(
        serializer_rdy), .wen(tf_val_valid), .wdata_in(tf_val_phase), .rdata(
        kernel_phase_rdata) );
  GTECH_AND2 C242 ( .A(N63), .B(N64), .Z(N66) );
  GTECH_AND2 C243 ( .A(N66), .B(N65), .Z(N67) );
  GTECH_OR2 C245 ( .A(state_r[2]), .B(state_r[1]), .Z(N68) );
  GTECH_OR2 C246 ( .A(N68), .B(N65), .Z(N69) );
  GTECH_OR2 C249 ( .A(state_r[2]), .B(N64), .Z(N71) );
  GTECH_OR2 C250 ( .A(N71), .B(state_r[0]), .Z(N72) );
  GTECH_OR2 C254 ( .A(state_r[2]), .B(N64), .Z(N74) );
  GTECH_OR2 C255 ( .A(N74), .B(N65), .Z(N75) );
  GTECH_OR2 C258 ( .A(N63), .B(state_r[1]), .Z(N77) );
  GTECH_OR2 C259 ( .A(N77), .B(state_r[0]), .Z(N78) );
  GTECH_OR2 C263 ( .A(N63), .B(state_r[1]), .Z(N80) );
  GTECH_OR2 C264 ( .A(N80), .B(N65), .Z(N81) );
  GTECH_OR2 C268 ( .A(N63), .B(N64), .Z(N83) );
  GTECH_OR2 C269 ( .A(N83), .B(state_r[0]), .Z(N84) );
  GTECH_AND2 C271 ( .A(state_r[2]), .B(state_r[1]), .Z(N86) );
  GTECH_AND2 C272 ( .A(N86), .B(state_r[0]), .Z(N87) );
  \**SEQGEN**  tf_coeff_rwen_reg ( .clear(1'b0), .preset(1'b0), .next_state(
        N16), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tf_coeff_rwen), .synch_clear(rst_n), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b0) );
  \**SEQGEN**  \state_r_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N113), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(state_r[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \state_r_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N112), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(state_r[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \state_r_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N111), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(state_r[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \tf_coeff_radr_reg[11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N103), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_coeff_radr[11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N114) );
  \**SEQGEN**  \tf_coeff_radr_reg[10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N102), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_coeff_radr[10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N114) );
  \**SEQGEN**  \tf_coeff_radr_reg[9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N101), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_coeff_radr[9]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N114) );
  \**SEQGEN**  \tf_coeff_radr_reg[8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N100), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(tf_coeff_radr[8]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N114) );
  \**SEQGEN**  \tf_coeff_radr_reg[7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N99), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tf_coeff_radr[7]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N114) );
  \**SEQGEN**  \tf_coeff_radr_reg[6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N98), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tf_coeff_radr[6]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N114) );
  \**SEQGEN**  \tf_coeff_radr_reg[5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N97), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tf_coeff_radr[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N114) );
  \**SEQGEN**  \tf_coeff_radr_reg[4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N96), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tf_coeff_radr[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N114) );
  \**SEQGEN**  \tf_coeff_radr_reg[3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N95), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tf_coeff_radr[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N114) );
  \**SEQGEN**  \tf_coeff_radr_reg[2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N94), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tf_coeff_radr[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N114) );
  \**SEQGEN**  \tf_coeff_radr_reg[1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N93), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tf_coeff_radr[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N114) );
  \**SEQGEN**  \tf_coeff_radr_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N92), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tf_coeff_radr[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N114) );
  \**SEQGEN**  \a_coeffs_reg[2][15]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[15]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[2][15] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N117) );
  \**SEQGEN**  \a_coeffs_reg[2][14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[14]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[2][14] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N117) );
  \**SEQGEN**  \a_coeffs_reg[2][13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[13]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[2][13] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N117) );
  \**SEQGEN**  \a_coeffs_reg[2][12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[12]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[2][12] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N117) );
  \**SEQGEN**  \a_coeffs_reg[2][11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[11]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[2][11] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N117) );
  \**SEQGEN**  \a_coeffs_reg[2][10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[10]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[2][10] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N117) );
  \**SEQGEN**  \a_coeffs_reg[2][9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[9]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[2][9] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N117) );
  \**SEQGEN**  \a_coeffs_reg[2][8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[8]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[2][8] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N117) );
  \**SEQGEN**  \a_coeffs_reg[2][7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[7]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[2][7] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N117) );
  \**SEQGEN**  \a_coeffs_reg[2][6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[6]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[2][6] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N117) );
  \**SEQGEN**  \a_coeffs_reg[2][5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[5]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[2][5] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N117) );
  \**SEQGEN**  \a_coeffs_reg[2][4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[4]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[2][4] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N117) );
  \**SEQGEN**  \a_coeffs_reg[2][3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[3]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[2][3] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N117) );
  \**SEQGEN**  \a_coeffs_reg[2][2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[2]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[2][2] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N117) );
  \**SEQGEN**  \a_coeffs_reg[2][1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[1]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[2][1] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N117) );
  \**SEQGEN**  \a_coeffs_reg[2][0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[0]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[2][0] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N117) );
  \**SEQGEN**  \a_coeffs_reg[1][15]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[15]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[1][15] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \a_coeffs_reg[1][14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[14]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[1][14] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \a_coeffs_reg[1][13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[13]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[1][13] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \a_coeffs_reg[1][12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[12]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[1][12] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \a_coeffs_reg[1][11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[11]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[1][11] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \a_coeffs_reg[1][10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[10]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[1][10] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \a_coeffs_reg[1][9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[9]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[1][9] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \a_coeffs_reg[1][8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[8]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[1][8] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \a_coeffs_reg[1][7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[7]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[1][7] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \a_coeffs_reg[1][6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[6]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[1][6] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \a_coeffs_reg[1][5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[5]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[1][5] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \a_coeffs_reg[1][4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[4]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[1][4] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \a_coeffs_reg[1][3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[3]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[1][3] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \a_coeffs_reg[1][2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[2]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[1][2] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \a_coeffs_reg[1][1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[1]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[1][1] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \a_coeffs_reg[1][0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[0]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[1][0] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \a_coeffs_reg[0][15]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[15]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[0][15] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N115) );
  \**SEQGEN**  \a_coeffs_reg[0][14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[14]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[0][14] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N115) );
  \**SEQGEN**  \a_coeffs_reg[0][13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[13]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[0][13] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N115) );
  \**SEQGEN**  \a_coeffs_reg[0][12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[12]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[0][12] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N115) );
  \**SEQGEN**  \a_coeffs_reg[0][11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[11]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[0][11] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N115) );
  \**SEQGEN**  \a_coeffs_reg[0][10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[10]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[0][10] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N115) );
  \**SEQGEN**  \a_coeffs_reg[0][9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[9]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[0][9] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N115) );
  \**SEQGEN**  \a_coeffs_reg[0][8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[8]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[0][8] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N115) );
  \**SEQGEN**  \a_coeffs_reg[0][7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[7]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[0][7] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N115) );
  \**SEQGEN**  \a_coeffs_reg[0][6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[6]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[0][6] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N115) );
  \**SEQGEN**  \a_coeffs_reg[0][5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[5]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[0][5] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N115) );
  \**SEQGEN**  \a_coeffs_reg[0][4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[4]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[0][4] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N115) );
  \**SEQGEN**  \a_coeffs_reg[0][3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[3]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[0][3] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N115) );
  \**SEQGEN**  \a_coeffs_reg[0][2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[2]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[0][2] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N115) );
  \**SEQGEN**  \a_coeffs_reg[0][1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[1]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[0][1] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N115) );
  \**SEQGEN**  \a_coeffs_reg[0][0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[0]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\a_coeffs[0][0] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N115) );
  \**SEQGEN**  \b_coeffs_reg[2][15]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[15]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[2][15] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[2][14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[14]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[2][14] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[2][13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[13]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[2][13] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[2][12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[12]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[2][12] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[2][11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[11]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[2][11] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[2][10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[10]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[2][10] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[2][9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[9]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[2][9] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[2][8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[8]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[2][8] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[2][7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[7]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[2][7] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[2][6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[6]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[2][6] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[2][5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[5]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[2][5] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[2][4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[4]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[2][4] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[2][3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[3]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[2][3] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[2][2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[2]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[2][2] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[2][1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[1]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[2][1] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[2][0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[0]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[2][0] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[1][15]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[15]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[1][15] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \b_coeffs_reg[1][14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[14]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[1][14] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \b_coeffs_reg[1][13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[13]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[1][13] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \b_coeffs_reg[1][12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[12]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[1][12] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \b_coeffs_reg[1][11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[11]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[1][11] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \b_coeffs_reg[1][10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[10]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[1][10] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \b_coeffs_reg[1][9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[9]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[1][9] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \b_coeffs_reg[1][8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[8]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[1][8] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \b_coeffs_reg[1][7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[7]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[1][7] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \b_coeffs_reg[1][6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[6]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[1][6] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \b_coeffs_reg[1][5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[5]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[1][5] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \b_coeffs_reg[1][4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[4]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[1][4] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \b_coeffs_reg[1][3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[3]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[1][3] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \b_coeffs_reg[1][2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[2]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[1][2] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \b_coeffs_reg[1][1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[1]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[1][1] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \b_coeffs_reg[1][0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[0]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[1][0] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N116) );
  \**SEQGEN**  \b_coeffs_reg[0][15]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[15]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[0][15] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[0][14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[14]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[0][14] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[0][13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[13]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[0][13] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[0][12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[12]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[0][12] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[0][11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[11]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[0][11] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[0][10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[10]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[0][10] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[0][9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[9]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[0][9] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[0][8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[8]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[0][8] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[0][7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[7]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[0][7] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[0][6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[6]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[0][6] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[0][5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[5]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[0][5] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[0][4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[4]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[0][4] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[0][3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[3]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[0][3] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[0][2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[2]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[0][2] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[0][1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[1]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[0][1] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  \b_coeffs_reg[0][0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(tf_coeff_rdata[0]), .clocked_on(clk), .data_in(1'b0), 
        .enable(1'b0), .Q(\b_coeffs[0][0] ), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N118) );
  \**SEQGEN**  eval_iir_freq_resp_reg ( .clear(1'b0), .preset(1'b0), 
        .next_state(N89), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        eval_iir_freq_resp), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N114) );
  \**SEQGEN**  phase_vec_ren_reg ( .clear(1'b0), .preset(1'b0), .next_state(
        N90), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        phase_vec_ren), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N114) );
  \**SEQGEN**  phase_vec_rwen_reg ( .clear(1'b0), .preset(1'b0), .next_state(
        N90), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        phase_vec_rwen), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N114) );
  \**SEQGEN**  tf_coeff_ren_reg ( .clear(1'b0), .preset(1'b0), .next_state(N91), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(tf_coeff_ren), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N114) );
  GTECH_NOT I_0 ( .A(sram_select[0]), .Z(N120) );
  GTECH_OR2 C748 ( .A(N120), .B(sram_select[1]), .Z(N121) );
  GTECH_NOT I_1 ( .A(N121), .Z(N122) );
  GTECH_NOT I_2 ( .A(sram_select[1]), .Z(N123) );
  GTECH_OR2 C751 ( .A(sram_select[0]), .B(N123), .Z(N124) );
  GTECH_NOT I_3 ( .A(N124), .Z(N125) );
  GTECH_AND2 C753 ( .A(sram_select[0]), .B(sram_select[1]), .Z(N126) );
  GTECH_OR2 C754 ( .A(sram_select[0]), .B(sram_select[1]), .Z(N127) );
  GTECH_NOT I_4 ( .A(N127), .Z(N128) );
  GTECH_OR2 C757 ( .A(sram_select[0]), .B(N123), .Z(N129) );
  GTECH_NOT I_5 ( .A(N129), .Z(N130) );
  GTECH_OR2 C760 ( .A(N120), .B(sram_select[1]), .Z(N131) );
  GTECH_NOT I_6 ( .A(N131), .Z(N132) );
  ADD_UNS_OP add_770 ( .A(nfft_cntr), .B(1'b1), .Z({N42, N41, N40, N39, N38, 
        N37, N36, N35, N34, N33, N32, N31}) );
  ADD_UNS_OP add_773 ( .A(nfft_cntr), .B(1'b1), .Z({N55, N54, N53, N52, N51, 
        N50, N49, N48, N47, N46, N45, N44}) );
  SELECT_OP C766 ( .DATA1({sig_amplitude, sig_frequency}), .DATA2({
        \phase_mem_data[1][15] , \phase_mem_data[1][14] , 
        \phase_mem_data[1][13] , \phase_mem_data[1][12] , 
        \phase_mem_data[1][11] , \phase_mem_data[1][10] , 
        \phase_mem_data[1][9] , \phase_mem_data[1][8] , \phase_mem_data[1][7] , 
        \phase_mem_data[1][6] , \phase_mem_data[1][5] , \phase_mem_data[1][4] , 
        \phase_mem_data[1][3] , \phase_mem_data[1][2] , \phase_mem_data[1][1] , 
        \phase_mem_data[1][0] }), .DATA3(tf_coeff_rdata), .DATA4(
        kernel_magnitude_rdata), .DATA5(kernel_phase_rdata), .CONTROL1(N0), 
        .CONTROL2(N22), .CONTROL3(N24), .CONTROL4(N26), .CONTROL5(N20), .Z(
        rdata_mux) );
  GTECH_BUF B_0 ( .A(adc_bypass_en), .Z(N0) );
  SELECT_OP C767 ( .DATA1(N43), .DATA2(1'b0), .CONTROL1(N1), .CONTROL2(N2), 
        .Z(N56) );
  GTECH_BUF B_1 ( .A(N28), .Z(N1) );
  GTECH_BUF B_2 ( .A(N27), .Z(N2) );
  SELECT_OP C768 ( .DATA1(N59), .DATA2(1'b0), .CONTROL1(N3), .CONTROL2(N4), 
        .Z(N60) );
  GTECH_BUF B_3 ( .A(N58), .Z(N3) );
  GTECH_BUF B_4 ( .A(N57), .Z(N4) );
  SELECT_OP C769 ( .DATA1(coeff_table_base_addr_bypass), .DATA2({
        sig_amplitude[7:5], sig_frequency[7:1]}), .CONTROL1(N0), .CONTROL2(N5), 
        .Z(coeff_table_base_addr) );
  GTECH_BUF B_5 ( .A(N61), .Z(N5) );
  SELECT_OP C770 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .DATA8(N88), .CONTROL1(N6), 
        .CONTROL2(N7), .CONTROL3(N8), .CONTROL4(N9), .CONTROL5(N10), 
        .CONTROL6(N11), .CONTROL7(N12), .CONTROL8(N13), .Z(N89) );
  GTECH_BUF B_6 ( .A(N67), .Z(N6) );
  GTECH_BUF B_7 ( .A(N70), .Z(N7) );
  GTECH_BUF B_8 ( .A(N73), .Z(N8) );
  GTECH_BUF B_9 ( .A(N76), .Z(N9) );
  GTECH_BUF B_10 ( .A(N79), .Z(N10) );
  GTECH_BUF B_11 ( .A(N82), .Z(N11) );
  GTECH_BUF B_12 ( .A(N85), .Z(N12) );
  GTECH_BUF B_13 ( .A(N87), .Z(N13) );
  SELECT_OP C771 ( .DATA1(1'b0), .DATA2(1'b1), .CONTROL1(N119), .CONTROL2(N13), 
        .Z(N90) );
  SELECT_OP C772 ( .DATA1(1'b0), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b1), 
        .DATA5(1'b1), .DATA6(1'b1), .DATA7(1'b1), .DATA8(1'b0), .CONTROL1(N6), 
        .CONTROL2(N7), .CONTROL3(N8), .CONTROL4(N9), .CONTROL5(N10), 
        .CONTROL6(N11), .CONTROL7(N12), .CONTROL8(N13), .Z(N91) );
  SELECT_OP C773 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({coeff_table_base_addr, 1'b0, 1'b0}), 
        .DATA3({coeff_table_base_addr, 1'b0, 1'b1}), .DATA4({
        coeff_table_base_addr, 1'b1, 1'b0}), .DATA5({coeff_table_base_addr, 
        1'b1, 1'b1}), .DATA6({coeff_table_base_addr, 1'b1, 1'b1}), .DATA7({
        coeff_table_base_addr, 1'b1, 1'b1}), .DATA8({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CONTROL1(N6), 
        .CONTROL2(N7), .CONTROL3(N8), .CONTROL4(N9), .CONTROL5(N10), 
        .CONTROL6(N11), .CONTROL7(N12), .CONTROL8(N13), .Z({N103, N102, N101, 
        N100, N99, N98, N97, N96, N95, N94, N93, N92}) );
  SELECT_OP C774 ( .DATA1({1'b0, 1'b0, eval_deconv_kernel}), .DATA2({1'b0, 
        1'b1, 1'b0}), .DATA3({1'b0, 1'b1, 1'b1}), .DATA4({1'b1, 1'b0, 1'b0}), 
        .DATA5({1'b1, 1'b0, 1'b1}), .DATA6({1'b1, 1'b1, 1'b0}), .DATA7({1'b1, 
        1'b1, 1'b1}), .DATA8({N88, N88, N88}), .CONTROL1(N6), .CONTROL2(N7), 
        .CONTROL3(N8), .CONTROL4(N9), .CONTROL5(N10), .CONTROL6(N11), 
        .CONTROL7(N12), .CONTROL8(N13), .Z({N106, N105, N104}) );
  SELECT_OP C775 ( .DATA1({1'b0, 1'b0, 1'b0}), .DATA2({1'b0, 1'b0, 1'b0}), 
        .DATA3({1'b0, 1'b0, 1'b0}), .DATA4({1'b0, 1'b0, 1'b1}), .DATA5({1'b0, 
        1'b1, 1'b0}), .DATA6({1'b1, 1'b0, 1'b0}), .DATA7({1'b0, 1'b0, 1'b0}), 
        .DATA8({1'b0, 1'b0, 1'b0}), .CONTROL1(N6), .CONTROL2(N7), .CONTROL3(N8), .CONTROL4(N9), .CONTROL5(N10), .CONTROL6(N11), .CONTROL7(N12), .CONTROL8(N13), .Z({N109, N108, N107}) );
  SELECT_OP C776 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b1), .DATA8(1'b0), .CONTROL1(N6), 
        .CONTROL2(N7), .CONTROL3(N8), .CONTROL4(N9), .CONTROL5(N10), 
        .CONTROL6(N11), .CONTROL7(N12), .CONTROL8(N13), .Z(N110) );
  SELECT_OP C777 ( .DATA1({1'b0, 1'b0, 1'b0}), .DATA2({N106, N105, N104}), 
        .CONTROL1(N14), .CONTROL2(N15), .Z({N113, N112, N111}) );
  GTECH_BUF B_14 ( .A(N62), .Z(N14) );
  GTECH_BUF B_15 ( .A(N114), .Z(N15) );
  SELECT_OP C778 ( .DATA1({1'b0, 1'b0, 1'b0}), .DATA2({N109, N108, N107}), 
        .CONTROL1(N14), .CONTROL2(N15), .Z({N117, N116, N115}) );
  SELECT_OP C779 ( .DATA1(1'b0), .DATA2(N110), .CONTROL1(N14), .CONTROL2(N15), 
        .Z(N118) );  assign N16 = 1'b0;

  GTECH_AND2 C783 ( .A(frequency_adc_done), .B(amplitude_adc_done), .Z(
        eval_deconv_kernel) );
  GTECH_OR2 C787 ( .A(N128), .B(adc_bypass_en), .Z(N17) );
  GTECH_OR2 C788 ( .A(N132), .B(N17), .Z(N18) );
  GTECH_OR2 C789 ( .A(N130), .B(N18), .Z(N19) );
  GTECH_NOT I_7 ( .A(N19), .Z(N20) );
  GTECH_NOT I_8 ( .A(adc_bypass_en), .Z(N21) );
  GTECH_AND2 C792 ( .A(N128), .B(N21), .Z(N22) );
  GTECH_AND2 C794 ( .A(N21), .B(N127), .Z(N23) );
  GTECH_AND2 C795 ( .A(N132), .B(N23), .Z(N24) );
  GTECH_AND2 C797 ( .A(N23), .B(N131), .Z(N25) );
  GTECH_AND2 C798 ( .A(N130), .B(N25), .Z(N26) );
  GTECH_NOT I_9 ( .A(rst_n), .Z(N27) );
  GTECH_BUF B_16 ( .A(rst_n), .Z(N28) );
  GTECH_BUF B_17 ( .A(N28), .Z(N29) );
  GTECH_AND2 C803 ( .A(N133), .B(wdata_valid), .Z(N30) );
  GTECH_AND2 C804 ( .A(load_en), .B(N128), .Z(N133) );
  GTECH_AND2 C806 ( .A(N29), .B(nfft_cntr_en) );
  GTECH_XOR2 C807 ( .A(nfft_cntr_en), .B(nfft_cntr_en_d1), .Z(N43) );
  GTECH_AND2 C809 ( .A(N29), .B(N43) );
  GTECH_NOT I_10 ( .A(rst_n), .Z(N57) );
  GTECH_BUF B_18 ( .A(rst_n), .Z(N58) );
  GTECH_AND2 C813 ( .A(adc_bypass_en), .B(wdata_valid), .Z(N59) );
  GTECH_NOT I_11 ( .A(adc_bypass_en), .Z(N61) );
  GTECH_AND2 C818 ( .A(N134), .B(N61), .Z(_2_net_) );
  GTECH_AND2 C819 ( .A(wdata_valid), .B(N128), .Z(N134) );
  GTECH_AND2 C821 ( .A(N135), .B(N61), .Z(_1_net_) );
  GTECH_AND2 C822 ( .A(load_en), .B(N128), .Z(N135) );
  GTECH_AND2 C824 ( .A(N136), .B(N61), .Z(_0_net_) );
  GTECH_AND2 C825 ( .A(debug_en), .B(N128), .Z(N136) );
  GTECH_AND2 C827 ( .A(N137), .B(N61), .Z(_5_net_) );
  GTECH_AND2 C828 ( .A(wdata_valid), .B(N122), .Z(N137) );
  GTECH_AND2 C830 ( .A(N138), .B(N61), .Z(_4_net_) );
  GTECH_AND2 C831 ( .A(load_en), .B(N122), .Z(N138) );
  GTECH_AND2 C833 ( .A(N139), .B(N61), .Z(_3_net_) );
  GTECH_AND2 C834 ( .A(debug_en), .B(N122), .Z(N139) );
  GTECH_AND2 C836 ( .A(N140), .B(N61), .Z(_6_net_) );
  GTECH_AND2 C837 ( .A(debug_en), .B(N125), .Z(N140) );
  GTECH_AND2 C839 ( .A(N141), .B(N61), .Z(_7_net_) );
  GTECH_AND2 C840 ( .A(debug_en), .B(N126), .Z(N141) );
  GTECH_NOT I_12 ( .A(rst_n), .Z(N62) );
  GTECH_BUF B_19 ( .A(rst_n), .Z(N114) );
  GTECH_NOT I_13 ( .A(state_r[2]), .Z(N63) );
  GTECH_NOT I_14 ( .A(state_r[1]), .Z(N64) );
  GTECH_NOT I_15 ( .A(state_r[0]), .Z(N65) );
  GTECH_NOT I_16 ( .A(N69), .Z(N70) );
  GTECH_NOT I_17 ( .A(N72), .Z(N73) );
  GTECH_NOT I_18 ( .A(N75), .Z(N76) );
  GTECH_NOT I_19 ( .A(N78), .Z(N79) );
  GTECH_NOT I_20 ( .A(N81), .Z(N82) );
  GTECH_NOT I_21 ( .A(N84), .Z(N85) );
  GTECH_NOT I_22 ( .A(freq_eval_done), .Z(N88) );
  GTECH_NOT I_23 ( .A(N87), .Z(N119) );
endmodule

