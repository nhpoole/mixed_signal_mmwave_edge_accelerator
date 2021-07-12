/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in topographical mode
// Version   : L-2016.03-SP5-5
// Date      : Sat Jul 10 21:01:35 2021
/////////////////////////////////////////////////////////////



    module deconv_kernel_estimator_top_level_deconv_kernel_estimator_top_level_DW01_inc_J4_0_0 ( 
        A, SUM );
  input [11:0] A;
  output [11:0] SUM;
  wire   n39, n40, n41, n42, n43, n44, n45, n46, n47, n48;

  sky130_fd_sc_hd__inv_1 U15 ( .A(A[0]), .Y(SUM[0]) );
  sky130_fd_sc_hd__xor2_1 U16 ( .A(n39), .B(A[11]), .X(SUM[11]) );
  sky130_fd_sc_hd__ha_1 U17 ( .A(A[1]), .B(A[0]), .COUT(n40), .SUM(SUM[1]) );
  sky130_fd_sc_hd__ha_1 U18 ( .A(A[2]), .B(n40), .COUT(n41), .SUM(SUM[2]) );
  sky130_fd_sc_hd__ha_1 U19 ( .A(A[3]), .B(n41), .COUT(n42), .SUM(SUM[3]) );
  sky130_fd_sc_hd__ha_1 U20 ( .A(A[4]), .B(n42), .COUT(n43), .SUM(SUM[4]) );
  sky130_fd_sc_hd__ha_1 U21 ( .A(A[5]), .B(n43), .COUT(n44), .SUM(SUM[5]) );
  sky130_fd_sc_hd__ha_1 U22 ( .A(A[6]), .B(n44), .COUT(n45), .SUM(SUM[6]) );
  sky130_fd_sc_hd__ha_1 U23 ( .A(A[7]), .B(n45), .COUT(n46), .SUM(SUM[7]) );
  sky130_fd_sc_hd__ha_1 U24 ( .A(A[8]), .B(n46), .COUT(n47), .SUM(SUM[8]) );
  sky130_fd_sc_hd__ha_1 U25 ( .A(A[9]), .B(n47), .COUT(n48), .SUM(SUM[9]) );
  sky130_fd_sc_hd__ha_1 U26 ( .A(A[10]), .B(n48), .COUT(n39), .SUM(SUM[10]) );
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
  wire   wdata_valid, N30, nfft_cntr_en, nfft_cntr_en_d1, N31, N32, N33, N34,
         N35, N36, N37, N38, N39, N40, N41, N42, N56, N60, debug_en_d1,
         debug_en_d2, serializer_rdy, eval_iir_freq_resp, tf_val_valid,
         n_0_net_, n_1_net_, n_2_net_, phase_vec_rwen, n_3_net_, n_4_net_,
         n_5_net_, tf_coeff_ren, n_6_net_, n_7_net_, N89, N90, N91, N92, N93,
         N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N111, N112,
         N113, N115, N116, N117, N118, net17846, net17850, net17853, net17858,
         net17863, net17868, net17873, net17878, net17883, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n1010, n1020, n104, n105,
         n106, n107, n108, n109, n110, n1110, n1120, n1130, n1150, n1160,
         n1170, n1180, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n164, n166, n167, n168, n169, n171, n172, n173, n174,
         n175, n176, n178, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16;
  wire   [15:0] rdata_mux;
  wire   [31:0] phase_mem_data;
  wire   [15:0] tf_coeff_rdata;
  wire   [15:0] kernel_magnitude_rdata;
  wire   [15:0] kernel_phase_rdata;
  wire   [11:0] nfft_cntr;
  wire   [11:0] config_nfft;
  wire   [9:0] coeff_table_base_addr_bypass;
  wire   [15:0] parallel_in;
  wire   [31:0] a_coeffs;
  wire   [31:0] b_coeffs;
  wire   [23:0] phase_mem_indices;
  wire   [15:0] tf_val_magnitude;
  wire   [15:0] tf_val_phase;
  wire   [11:0] tf_coeff_radr;
  wire   [2:0] state_r;

  deconv_kernel_estimator_top_level_deserializer_FETCH_WIDTH16_0 deserializer_inst ( 
        .clk(clk), .rst_n(n184), .serial_data(serial_in), .en(load_en), 
        .parallel_data(parallel_in), .out_valid(wdata_valid) );
  deconv_kernel_estimator_top_level_serializer_FETCH_WIDTH16_0 serializer_inst ( 
        .clk(clk), .rst_n(n183), .en(debug_en_d2), .parallel_data(rdata_mux), 
        .sender_deq(serializer_rdy), .serial_data(serial_out), .out_valid(
        serial_out_valid) );
  deconv_kernel_estimator_top_level_iir_notch_filter_CONFIG_SIZE12_CORDIC_XY_BITS16_CORDIC_PHASE_BITS16_ADC_BITS8_FIXED_Q13_FILTER_ORDER2_LATENCY4_0 iir_notch_filter_inst ( 
        .clk(clk), .rst_n(n183), .config_nfft(config_nfft), .a_coeffs({
        a_coeffs[31:16], b_coeffs[31:16], a_coeffs[15:0]}), .b_coeffs({
        b_coeffs[15:0], b_coeffs}), .eval_iir_freq_resp(eval_iir_freq_resp), 
        .phase_mem_data(phase_mem_data), .phase_mem_indices(phase_mem_indices), 
        .tf_val_magnitude(tf_val_magnitude), .tf_val_phase(tf_val_phase), 
        .tf_val_valid(tf_val_valid), .freq_eval_done(freq_eval_done) );
  deconv_kernel_estimator_top_level_phase_vec_sram_interface_DATA_WIDTH16_ADDR_WIDTH12_DEPTH2048_0 phase_vec_sram_interface_inst ( 
        .clk(clk), .rst_n(n180), .debug(n_0_net_), .debug_read_trig(
        serializer_rdy), .load(n_1_net_), .wdata_valid(n_2_net_), .wdata_in(
        parallel_in), .ren(phase_vec_rwen), .rwen(phase_vec_rwen), .radr(
        phase_mem_indices[23:12]), .rwadr(phase_mem_indices[11:0]), .rdata(
        phase_mem_data[31:16]), .rwdata(phase_mem_data[15:0]) );
  deconv_kernel_estimator_top_level_tf_coeff_sram_interface_DATA_WIDTH16_ADDR_WIDTH12_DEPTH2048_0 tf_coeff_sram_interface_inst ( 
        .clk(clk), .rst_n(n184), .debug(n_3_net_), .debug_read_trig(
        serializer_rdy), .load(n_4_net_), .wdata_valid(n_5_net_), .wdata_in(
        parallel_in), .ren(tf_coeff_ren), .rwen(1'b0), .radr(tf_coeff_radr), 
        .rwadr({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .rdata(tf_coeff_rdata), .rwdata({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16}) );
  deconv_kernel_estimator_top_level_deconv_kernel_magnitude_sram_interface_DATA_WIDTH16_ADDR_WIDTH12_DEPTH2048_0 deconv_kernel_magnitude_sram_interface_inst ( 
        .clk(clk), .rst_n(n183), .debug(n_6_net_), .debug_read_trig(
        serializer_rdy), .wen(tf_val_valid), .wdata_in({n188, n189, n190, n191, 
        n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, 
        tf_val_magnitude[0]}), .rdata(kernel_magnitude_rdata) );
  deconv_kernel_estimator_top_level_deconv_kernel_phase_sram_interface_DATA_WIDTH16_ADDR_WIDTH12_DEPTH2048_0 deconv_kernel_phase_sram_interface_inst ( 
        .clk(clk), .rst_n(n180), .debug(n_7_net_), .debug_read_trig(
        serializer_rdy), .wen(tf_val_valid), .wdata_in({n210, n209, 
        tf_val_phase[13], n208, n207, tf_val_phase[10], n206, 
        tf_val_phase[8:5], n205, tf_val_phase[3:2], n204, n203}), .rdata(
        kernel_phase_rdata) );
  deconv_kernel_estimator_top_level_SNPS_CLOCK_GATE_HIGH_deconv_kernel_estimator_top_level_0 clk_gate_config_nfft_reg ( 
        .CLK(clk), .EN(N56), .ENCLK(net17846), .TE(1'b0) );
  deconv_kernel_estimator_top_level_SNPS_CLOCK_GATE_HIGH_deconv_kernel_estimator_top_level_7 clk_gate_nfft_cntr_reg ( 
        .CLK(clk), .EN(net17850), .ENCLK(net17853), .TE(1'b0) );
  deconv_kernel_estimator_top_level_SNPS_CLOCK_GATE_HIGH_deconv_kernel_estimator_top_level_6 clk_gate_coeff_table_base_addr_bypass_reg ( 
        .CLK(clk), .EN(N60), .ENCLK(net17858), .TE(1'b0) );
  deconv_kernel_estimator_top_level_SNPS_CLOCK_GATE_HIGH_deconv_kernel_estimator_top_level_5 clk_gate_tf_coeff_radr_reg ( 
        .CLK(clk), .EN(n181), .ENCLK(net17863), .TE(1'b0) );
  deconv_kernel_estimator_top_level_SNPS_CLOCK_GATE_HIGH_deconv_kernel_estimator_top_level_4 clk_gate_a_coeffs_reg_2_ ( 
        .CLK(clk), .EN(N117), .ENCLK(net17868), .TE(1'b0) );
  deconv_kernel_estimator_top_level_SNPS_CLOCK_GATE_HIGH_deconv_kernel_estimator_top_level_3 clk_gate_a_coeffs_reg_1_ ( 
        .CLK(clk), .EN(N116), .ENCLK(net17873), .TE(1'b0) );
  deconv_kernel_estimator_top_level_SNPS_CLOCK_GATE_HIGH_deconv_kernel_estimator_top_level_2 clk_gate_a_coeffs_reg_0_ ( 
        .CLK(clk), .EN(N115), .ENCLK(net17878), .TE(1'b0) );
  deconv_kernel_estimator_top_level_SNPS_CLOCK_GATE_HIGH_deconv_kernel_estimator_top_level_1 clk_gate_b_coeffs_reg_2_ ( 
        .CLK(clk), .EN(N118), .ENCLK(net17883), .TE(1'b0) );
  deconv_kernel_estimator_top_level_deconv_kernel_estimator_top_level_DW01_inc_J4_0_0 add_x_3 ( 
        .A(nfft_cntr), .SUM({N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, 
        N32, N31}) );
  sky130_fd_sc_hd__dfxtp_1 nfft_cntr_en_reg ( .D(n14), .CLK(clk), .Q(
        nfft_cntr_en) );
  sky130_fd_sc_hd__dfxtp_1 nfft_cntr_en_d1_reg ( .D(n13), .CLK(clk), .Q(
        nfft_cntr_en_d1) );
  sky130_fd_sc_hd__dfxtp_1 config_nfft_reg_11_ ( .D(N42), .CLK(net17846), .Q(
        config_nfft[11]) );
  sky130_fd_sc_hd__dfxtp_1 config_nfft_reg_10_ ( .D(N41), .CLK(net17846), .Q(
        config_nfft[10]) );
  sky130_fd_sc_hd__dfxtp_1 config_nfft_reg_9_ ( .D(N40), .CLK(net17846), .Q(
        config_nfft[9]) );
  sky130_fd_sc_hd__dfxtp_1 config_nfft_reg_8_ ( .D(N39), .CLK(net17846), .Q(
        config_nfft[8]) );
  sky130_fd_sc_hd__dfxtp_1 config_nfft_reg_7_ ( .D(N38), .CLK(net17846), .Q(
        config_nfft[7]) );
  sky130_fd_sc_hd__dfxtp_1 config_nfft_reg_6_ ( .D(N37), .CLK(net17846), .Q(
        config_nfft[6]) );
  sky130_fd_sc_hd__dfxtp_1 config_nfft_reg_5_ ( .D(N36), .CLK(net17846), .Q(
        config_nfft[5]) );
  sky130_fd_sc_hd__dfxtp_1 config_nfft_reg_4_ ( .D(N35), .CLK(net17846), .Q(
        config_nfft[4]) );
  sky130_fd_sc_hd__dfxtp_1 config_nfft_reg_3_ ( .D(N34), .CLK(net17846), .Q(
        config_nfft[3]) );
  sky130_fd_sc_hd__dfxtp_1 config_nfft_reg_2_ ( .D(N33), .CLK(net17846), .Q(
        config_nfft[2]) );
  sky130_fd_sc_hd__dfxtp_1 config_nfft_reg_1_ ( .D(N32), .CLK(net17846), .Q(
        config_nfft[1]) );
  sky130_fd_sc_hd__dfxtp_1 config_nfft_reg_0_ ( .D(N31), .CLK(net17846), .Q(
        config_nfft[0]) );
  sky130_fd_sc_hd__dfxtp_1 nfft_cntr_reg_11_ ( .D(n12), .CLK(net17853), .Q(
        nfft_cntr[11]) );
  sky130_fd_sc_hd__dfxtp_1 nfft_cntr_reg_10_ ( .D(n11), .CLK(net17853), .Q(
        nfft_cntr[10]) );
  sky130_fd_sc_hd__dfxtp_1 nfft_cntr_reg_9_ ( .D(n10), .CLK(net17853), .Q(
        nfft_cntr[9]) );
  sky130_fd_sc_hd__dfxtp_1 nfft_cntr_reg_8_ ( .D(n9), .CLK(net17853), .Q(
        nfft_cntr[8]) );
  sky130_fd_sc_hd__dfxtp_1 nfft_cntr_reg_7_ ( .D(n8), .CLK(net17853), .Q(
        nfft_cntr[7]) );
  sky130_fd_sc_hd__dfxtp_1 nfft_cntr_reg_6_ ( .D(n7), .CLK(net17853), .Q(
        nfft_cntr[6]) );
  sky130_fd_sc_hd__dfxtp_1 nfft_cntr_reg_5_ ( .D(n6), .CLK(net17853), .Q(
        nfft_cntr[5]) );
  sky130_fd_sc_hd__dfxtp_1 nfft_cntr_reg_4_ ( .D(n5), .CLK(net17853), .Q(
        nfft_cntr[4]) );
  sky130_fd_sc_hd__dfxtp_1 nfft_cntr_reg_3_ ( .D(n4), .CLK(net17853), .Q(
        nfft_cntr[3]) );
  sky130_fd_sc_hd__dfxtp_1 nfft_cntr_reg_2_ ( .D(n3), .CLK(net17853), .Q(
        nfft_cntr[2]) );
  sky130_fd_sc_hd__dfxtp_1 nfft_cntr_reg_1_ ( .D(n2), .CLK(net17853), .Q(
        nfft_cntr[1]) );
  sky130_fd_sc_hd__dfxtp_1 nfft_cntr_reg_0_ ( .D(n1), .CLK(net17853), .Q(
        nfft_cntr[0]) );
  sky130_fd_sc_hd__dfxtp_1 coeff_table_base_addr_bypass_reg_9_ ( .D(
        parallel_in[9]), .CLK(net17858), .Q(coeff_table_base_addr_bypass[9])
         );
  sky130_fd_sc_hd__dfxtp_1 coeff_table_base_addr_bypass_reg_8_ ( .D(
        parallel_in[8]), .CLK(net17858), .Q(coeff_table_base_addr_bypass[8])
         );
  sky130_fd_sc_hd__dfxtp_1 coeff_table_base_addr_bypass_reg_7_ ( .D(
        parallel_in[7]), .CLK(net17858), .Q(coeff_table_base_addr_bypass[7])
         );
  sky130_fd_sc_hd__dfxtp_1 coeff_table_base_addr_bypass_reg_6_ ( .D(
        parallel_in[6]), .CLK(net17858), .Q(coeff_table_base_addr_bypass[6])
         );
  sky130_fd_sc_hd__dfxtp_1 coeff_table_base_addr_bypass_reg_5_ ( .D(
        parallel_in[5]), .CLK(net17858), .Q(coeff_table_base_addr_bypass[5])
         );
  sky130_fd_sc_hd__dfxtp_1 coeff_table_base_addr_bypass_reg_4_ ( .D(
        parallel_in[4]), .CLK(net17858), .Q(coeff_table_base_addr_bypass[4])
         );
  sky130_fd_sc_hd__dfxtp_1 coeff_table_base_addr_bypass_reg_3_ ( .D(
        parallel_in[3]), .CLK(net17858), .Q(coeff_table_base_addr_bypass[3])
         );
  sky130_fd_sc_hd__dfxtp_1 coeff_table_base_addr_bypass_reg_2_ ( .D(
        parallel_in[2]), .CLK(net17858), .Q(coeff_table_base_addr_bypass[2])
         );
  sky130_fd_sc_hd__dfxtp_1 coeff_table_base_addr_bypass_reg_1_ ( .D(
        parallel_in[1]), .CLK(net17858), .Q(coeff_table_base_addr_bypass[1])
         );
  sky130_fd_sc_hd__dfxtp_1 coeff_table_base_addr_bypass_reg_0_ ( .D(
        parallel_in[0]), .CLK(net17858), .Q(coeff_table_base_addr_bypass[0])
         );
  sky130_fd_sc_hd__dfxtp_1 debug_en_d1_reg ( .D(debug_en), .CLK(clk), .Q(
        debug_en_d1) );
  sky130_fd_sc_hd__dfxtp_1 debug_en_d2_reg ( .D(debug_en_d1), .CLK(clk), .Q(
        debug_en_d2) );
  sky130_fd_sc_hd__dfxtp_1 tf_coeff_ren_reg ( .D(N91), .CLK(net17863), .Q(
        tf_coeff_ren) );
  sky130_fd_sc_hd__dfxtp_1 state_r_reg_2_ ( .D(N113), .CLK(clk), .Q(state_r[2]) );
  sky130_fd_sc_hd__dfxtp_1 state_r_reg_0_ ( .D(N111), .CLK(clk), .Q(state_r[0]) );
  sky130_fd_sc_hd__dfxtp_1 state_r_reg_1_ ( .D(N112), .CLK(clk), .Q(state_r[1]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_1__15_ ( .D(tf_coeff_rdata[15]), .CLK(
        net17873), .Q(b_coeffs[31]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_1__14_ ( .D(tf_coeff_rdata[14]), .CLK(
        net17873), .Q(b_coeffs[30]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_1__13_ ( .D(tf_coeff_rdata[13]), .CLK(
        net17873), .Q(b_coeffs[29]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_1__12_ ( .D(tf_coeff_rdata[12]), .CLK(
        net17873), .Q(b_coeffs[28]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_1__11_ ( .D(tf_coeff_rdata[11]), .CLK(
        net17873), .Q(b_coeffs[27]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_1__10_ ( .D(tf_coeff_rdata[10]), .CLK(
        net17873), .Q(b_coeffs[26]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_1__9_ ( .D(tf_coeff_rdata[9]), .CLK(
        net17873), .Q(b_coeffs[25]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_1__8_ ( .D(tf_coeff_rdata[8]), .CLK(
        net17873), .Q(b_coeffs[24]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_1__7_ ( .D(tf_coeff_rdata[7]), .CLK(
        net17873), .Q(b_coeffs[23]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_1__6_ ( .D(tf_coeff_rdata[6]), .CLK(
        net17873), .Q(b_coeffs[22]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_1__5_ ( .D(tf_coeff_rdata[5]), .CLK(
        net17873), .Q(b_coeffs[21]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_1__4_ ( .D(tf_coeff_rdata[4]), .CLK(
        net17873), .Q(b_coeffs[20]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_1__3_ ( .D(tf_coeff_rdata[3]), .CLK(
        net17873), .Q(b_coeffs[19]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_1__2_ ( .D(tf_coeff_rdata[2]), .CLK(
        net17873), .Q(b_coeffs[18]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_1__1_ ( .D(tf_coeff_rdata[1]), .CLK(
        net17873), .Q(b_coeffs[17]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_1__0_ ( .D(tf_coeff_rdata[0]), .CLK(
        net17873), .Q(b_coeffs[16]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_0__15_ ( .D(tf_coeff_rdata[15]), .CLK(
        net17883), .Q(b_coeffs[15]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_0__14_ ( .D(tf_coeff_rdata[14]), .CLK(
        net17883), .Q(b_coeffs[14]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_0__13_ ( .D(tf_coeff_rdata[13]), .CLK(
        net17883), .Q(b_coeffs[13]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_0__12_ ( .D(tf_coeff_rdata[12]), .CLK(
        net17883), .Q(b_coeffs[12]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_0__11_ ( .D(tf_coeff_rdata[11]), .CLK(
        net17883), .Q(b_coeffs[11]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_0__10_ ( .D(tf_coeff_rdata[10]), .CLK(
        net17883), .Q(b_coeffs[10]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_0__9_ ( .D(tf_coeff_rdata[9]), .CLK(
        net17883), .Q(b_coeffs[9]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_0__8_ ( .D(tf_coeff_rdata[8]), .CLK(
        net17883), .Q(b_coeffs[8]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_0__7_ ( .D(tf_coeff_rdata[7]), .CLK(
        net17883), .Q(b_coeffs[7]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_0__6_ ( .D(tf_coeff_rdata[6]), .CLK(
        net17883), .Q(b_coeffs[6]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_0__5_ ( .D(tf_coeff_rdata[5]), .CLK(
        net17883), .Q(b_coeffs[5]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_0__4_ ( .D(tf_coeff_rdata[4]), .CLK(
        net17883), .Q(b_coeffs[4]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_0__3_ ( .D(tf_coeff_rdata[3]), .CLK(
        net17883), .Q(b_coeffs[3]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_0__2_ ( .D(tf_coeff_rdata[2]), .CLK(
        net17883), .Q(b_coeffs[2]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_0__1_ ( .D(tf_coeff_rdata[1]), .CLK(
        net17883), .Q(b_coeffs[1]) );
  sky130_fd_sc_hd__dfxtp_1 b_coeffs_reg_0__0_ ( .D(tf_coeff_rdata[0]), .CLK(
        net17883), .Q(b_coeffs[0]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_0__15_ ( .D(tf_coeff_rdata[15]), .CLK(
        net17878), .Q(a_coeffs[15]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_0__14_ ( .D(tf_coeff_rdata[14]), .CLK(
        net17878), .Q(a_coeffs[14]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_0__13_ ( .D(tf_coeff_rdata[13]), .CLK(
        net17878), .Q(a_coeffs[13]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_0__12_ ( .D(tf_coeff_rdata[12]), .CLK(
        net17878), .Q(a_coeffs[12]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_0__11_ ( .D(tf_coeff_rdata[11]), .CLK(
        net17878), .Q(a_coeffs[11]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_0__10_ ( .D(tf_coeff_rdata[10]), .CLK(
        net17878), .Q(a_coeffs[10]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_0__9_ ( .D(tf_coeff_rdata[9]), .CLK(
        net17878), .Q(a_coeffs[9]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_0__8_ ( .D(tf_coeff_rdata[8]), .CLK(
        net17878), .Q(a_coeffs[8]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_0__7_ ( .D(tf_coeff_rdata[7]), .CLK(
        net17878), .Q(a_coeffs[7]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_0__6_ ( .D(tf_coeff_rdata[6]), .CLK(
        net17878), .Q(a_coeffs[6]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_0__5_ ( .D(tf_coeff_rdata[5]), .CLK(
        net17878), .Q(a_coeffs[5]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_0__4_ ( .D(tf_coeff_rdata[4]), .CLK(
        net17878), .Q(a_coeffs[4]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_0__3_ ( .D(tf_coeff_rdata[3]), .CLK(
        net17878), .Q(a_coeffs[3]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_0__2_ ( .D(tf_coeff_rdata[2]), .CLK(
        net17878), .Q(a_coeffs[2]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_0__1_ ( .D(tf_coeff_rdata[1]), .CLK(
        net17878), .Q(a_coeffs[1]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_0__0_ ( .D(tf_coeff_rdata[0]), .CLK(
        net17878), .Q(a_coeffs[0]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_2__15_ ( .D(tf_coeff_rdata[15]), .CLK(
        net17868), .Q(a_coeffs[31]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_2__14_ ( .D(tf_coeff_rdata[14]), .CLK(
        net17868), .Q(a_coeffs[30]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_2__13_ ( .D(tf_coeff_rdata[13]), .CLK(
        net17868), .Q(a_coeffs[29]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_2__12_ ( .D(tf_coeff_rdata[12]), .CLK(
        net17868), .Q(a_coeffs[28]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_2__11_ ( .D(tf_coeff_rdata[11]), .CLK(
        net17868), .Q(a_coeffs[27]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_2__10_ ( .D(tf_coeff_rdata[10]), .CLK(
        net17868), .Q(a_coeffs[26]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_2__9_ ( .D(tf_coeff_rdata[9]), .CLK(
        net17868), .Q(a_coeffs[25]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_2__8_ ( .D(tf_coeff_rdata[8]), .CLK(
        net17868), .Q(a_coeffs[24]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_2__7_ ( .D(tf_coeff_rdata[7]), .CLK(
        net17868), .Q(a_coeffs[23]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_2__6_ ( .D(tf_coeff_rdata[6]), .CLK(
        net17868), .Q(a_coeffs[22]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_2__5_ ( .D(tf_coeff_rdata[5]), .CLK(
        net17868), .Q(a_coeffs[21]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_2__4_ ( .D(tf_coeff_rdata[4]), .CLK(
        net17868), .Q(a_coeffs[20]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_2__3_ ( .D(tf_coeff_rdata[3]), .CLK(
        net17868), .Q(a_coeffs[19]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_2__2_ ( .D(tf_coeff_rdata[2]), .CLK(
        net17868), .Q(a_coeffs[18]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_2__1_ ( .D(tf_coeff_rdata[1]), .CLK(
        net17868), .Q(a_coeffs[17]) );
  sky130_fd_sc_hd__dfxtp_1 a_coeffs_reg_2__0_ ( .D(tf_coeff_rdata[0]), .CLK(
        net17868), .Q(a_coeffs[16]) );
  sky130_fd_sc_hd__dfxtp_1 phase_vec_rwen_reg ( .D(N90), .CLK(net17863), .Q(
        phase_vec_rwen) );
  sky130_fd_sc_hd__dfxtp_1 tf_coeff_radr_reg_11_ ( .D(N103), .CLK(net17863), 
        .Q(tf_coeff_radr[11]) );
  sky130_fd_sc_hd__dfxtp_1 tf_coeff_radr_reg_10_ ( .D(N102), .CLK(net17863), 
        .Q(tf_coeff_radr[10]) );
  sky130_fd_sc_hd__dfxtp_1 tf_coeff_radr_reg_9_ ( .D(N101), .CLK(net17863), 
        .Q(tf_coeff_radr[9]) );
  sky130_fd_sc_hd__dfxtp_1 tf_coeff_radr_reg_8_ ( .D(N100), .CLK(net17863), 
        .Q(tf_coeff_radr[8]) );
  sky130_fd_sc_hd__dfxtp_1 tf_coeff_radr_reg_7_ ( .D(N99), .CLK(net17863), .Q(
        tf_coeff_radr[7]) );
  sky130_fd_sc_hd__dfxtp_1 tf_coeff_radr_reg_6_ ( .D(N98), .CLK(net17863), .Q(
        tf_coeff_radr[6]) );
  sky130_fd_sc_hd__dfxtp_1 tf_coeff_radr_reg_5_ ( .D(N97), .CLK(net17863), .Q(
        tf_coeff_radr[5]) );
  sky130_fd_sc_hd__dfxtp_1 tf_coeff_radr_reg_4_ ( .D(N96), .CLK(net17863), .Q(
        tf_coeff_radr[4]) );
  sky130_fd_sc_hd__dfxtp_1 tf_coeff_radr_reg_3_ ( .D(N95), .CLK(net17863), .Q(
        tf_coeff_radr[3]) );
  sky130_fd_sc_hd__dfxtp_1 tf_coeff_radr_reg_2_ ( .D(N94), .CLK(net17863), .Q(
        tf_coeff_radr[2]) );
  sky130_fd_sc_hd__dfxtp_1 tf_coeff_radr_reg_1_ ( .D(N93), .CLK(net17863), .Q(
        tf_coeff_radr[1]) );
  sky130_fd_sc_hd__dfxtp_1 tf_coeff_radr_reg_0_ ( .D(N92), .CLK(net17863), .Q(
        tf_coeff_radr[0]) );
  sky130_fd_sc_hd__dfxtp_1 eval_iir_freq_resp_reg ( .D(N89), .CLK(net17863), 
        .Q(eval_iir_freq_resp) );
  sky130_fd_sc_hd__and2_1 U5 ( .A(N32), .B(rst_n), .X(n2) );
  sky130_fd_sc_hd__and2_1 U7 ( .A(N34), .B(rst_n), .X(n4) );
  sky130_fd_sc_hd__and2_1 U8 ( .A(N35), .B(rst_n), .X(n5) );
  sky130_fd_sc_hd__and2_1 U9 ( .A(N36), .B(rst_n), .X(n6) );
  sky130_fd_sc_hd__and2_1 U10 ( .A(N37), .B(n184), .X(n7) );
  sky130_fd_sc_hd__and2_1 U11 ( .A(N38), .B(n184), .X(n8) );
  sky130_fd_sc_hd__and2_1 U12 ( .A(N39), .B(n181), .X(n9) );
  sky130_fd_sc_hd__and2_1 U13 ( .A(N40), .B(n181), .X(n10) );
  sky130_fd_sc_hd__and2_1 U14 ( .A(N41), .B(n181), .X(n11) );
  sky130_fd_sc_hd__and2_1 U15 ( .A(N42), .B(n181), .X(n12) );
  sky130_fd_sc_hd__and2_1 U6 ( .A(N33), .B(rst_n), .X(n3) );
  sky130_fd_sc_hd__and2_1 U4 ( .A(N31), .B(rst_n), .X(n1) );
  sky130_fd_sc_hd__and2_1 U17 ( .A(N30), .B(n184), .X(n14) );
  sky130_fd_sc_hd__and2_1 U16 ( .A(nfft_cntr_en), .B(n181), .X(n13) );
  sky130_fd_sc_hd__inv_2 U158 ( .A(debug_en), .Y(n1020) );
  sky130_fd_sc_hd__nor2_2 U159 ( .A(n185), .B(n1020), .Y(n_0_net_) );
  sky130_fd_sc_hd__inv_2 U160 ( .A(wdata_valid), .Y(n1130) );
  sky130_fd_sc_hd__nor2_2 U161 ( .A(n185), .B(n1130), .Y(n_2_net_) );
  sky130_fd_sc_hd__nand3b_1 U163 ( .A_N(sram_select[1]), .B(sram_select[0]), 
        .C(n176), .Y(n1160) );
  sky130_fd_sc_hd__nor2_1 U164 ( .A(n1160), .B(n1020), .Y(n_3_net_) );
  sky130_fd_sc_hd__nand2_1 U165 ( .A(sram_select[1]), .B(n176), .Y(n1010) );
  sky130_fd_sc_hd__nor2b_1 U167 ( .B_N(n164), .A(n1020), .Y(n_6_net_) );
  sky130_fd_sc_hd__nand3_1 U168 ( .A(sram_select[1]), .B(sram_select[0]), .C(
        n176), .Y(n1170) );
  sky130_fd_sc_hd__nor2_1 U169 ( .A(n1170), .B(n1020), .Y(n_7_net_) );
  sky130_fd_sc_hd__nor2_1 U170 ( .A(n1160), .B(n1130), .Y(n_5_net_) );
  sky130_fd_sc_hd__inv_2 U171 ( .A(state_r[0]), .Y(n1120) );
  sky130_fd_sc_hd__nand2_1 U172 ( .A(state_r[2]), .B(n1120), .Y(n108) );
  sky130_fd_sc_hd__nand2_1 U174 ( .A(state_r[1]), .B(n1110), .Y(n109) );
  sky130_fd_sc_hd__nand2_1 U176 ( .A(state_r[0]), .B(n175), .Y(n107) );
  sky130_fd_sc_hd__nand3_1 U177 ( .A(n108), .B(n109), .C(n107), .Y(N91) );
  sky130_fd_sc_hd__nor2_1 U179 ( .A(n1160), .B(n104), .Y(n_4_net_) );
  sky130_fd_sc_hd__nor2_1 U180 ( .A(n185), .B(n104), .Y(n_1_net_) );
  sky130_fd_sc_hd__or2_0 U182 ( .A(nfft_cntr_en), .B(n182), .X(net17850) );
  sky130_fd_sc_hd__nor4_1 U184 ( .A(sram_select[1]), .B(sram_select[0]), .C(
        n1130), .D(n104), .Y(N30) );
  sky130_fd_sc_hd__nor3_1 U185 ( .A(n108), .B(n175), .C(n178), .Y(N118) );
  sky130_fd_sc_hd__nor3_1 U186 ( .A(n1120), .B(n109), .C(n178), .Y(N115) );
  sky130_fd_sc_hd__nor3_1 U187 ( .A(state_r[1]), .B(n108), .C(n178), .Y(N116)
         );
  sky130_fd_sc_hd__nand2_1 U188 ( .A(state_r[2]), .B(n175), .Y(n174) );
  sky130_fd_sc_hd__nor3_1 U189 ( .A(n1120), .B(n178), .C(n174), .Y(N117) );
  sky130_fd_sc_hd__nor2_1 U190 ( .A(freq_eval_done), .B(n1110), .Y(n110) );
  sky130_fd_sc_hd__o21ai_1 U191 ( .A1(n110), .A2(n1120), .B1(state_r[1]), .Y(
        n106) );
  sky130_fd_sc_hd__nand3_1 U192 ( .A(frequency_adc_done), .B(
        amplitude_adc_done), .C(n1120), .Y(n105) );
  sky130_fd_sc_hd__a31oi_1 U193 ( .A1(n108), .A2(n106), .A3(n105), .B1(n178), 
        .Y(N111) );
  sky130_fd_sc_hd__a21oi_1 U194 ( .A1(n107), .A2(n106), .B1(n178), .Y(N112) );
  sky130_fd_sc_hd__o211ai_1 U195 ( .A1(n1120), .A2(n109), .B1(n108), .C1(n174), 
        .Y(N93) );
  sky130_fd_sc_hd__o21a_1 U196 ( .A1(n110), .A2(N93), .B1(rst_n), .X(N113) );
  sky130_fd_sc_hd__nor3_1 U197 ( .A(n1120), .B(n1110), .C(n175), .Y(N90) );
  sky130_fd_sc_hd__nor2b_1 U198 ( .B_N(N90), .A(freq_eval_done), .Y(N89) );
  sky130_fd_sc_hd__nor3_1 U199 ( .A(n176), .B(n182), .C(n1130), .Y(N60) );
  sky130_fd_sc_hd__o21ai_1 U200 ( .A1(nfft_cntr_en), .A2(nfft_cntr_en_d1), 
        .B1(n181), .Y(n1150) );
  sky130_fd_sc_hd__a21oi_1 U201 ( .A1(nfft_cntr_en), .A2(nfft_cntr_en_d1), 
        .B1(n1150), .Y(N56) );
  sky130_fd_sc_hd__nand2_1 U202 ( .A(phase_mem_data[16]), .B(n166), .Y(n120)
         );
  sky130_fd_sc_hd__a22oi_1 U204 ( .A1(adc_bypass_en), .A2(sig_frequency[0]), 
        .B1(n187), .B2(tf_coeff_rdata[0]), .Y(n119) );
  sky130_fd_sc_hd__a22oi_1 U206 ( .A1(n186), .A2(kernel_phase_rdata[0]), .B1(
        n164), .B2(kernel_magnitude_rdata[0]), .Y(n1180) );
  sky130_fd_sc_hd__nand3_1 U207 ( .A(n120), .B(n119), .C(n1180), .Y(
        rdata_mux[0]) );
  sky130_fd_sc_hd__a22oi_1 U208 ( .A1(adc_bypass_en), .A2(sig_frequency[1]), 
        .B1(n187), .B2(tf_coeff_rdata[1]), .Y(n123) );
  sky130_fd_sc_hd__a22oi_1 U209 ( .A1(n186), .A2(kernel_phase_rdata[1]), .B1(
        n164), .B2(kernel_magnitude_rdata[1]), .Y(n122) );
  sky130_fd_sc_hd__nand2_1 U210 ( .A(n166), .B(phase_mem_data[17]), .Y(n121)
         );
  sky130_fd_sc_hd__nand3_1 U211 ( .A(n123), .B(n122), .C(n121), .Y(
        rdata_mux[1]) );
  sky130_fd_sc_hd__a22oi_1 U212 ( .A1(adc_bypass_en), .A2(sig_frequency[2]), 
        .B1(n187), .B2(tf_coeff_rdata[2]), .Y(n126) );
  sky130_fd_sc_hd__a22oi_1 U213 ( .A1(n186), .A2(kernel_phase_rdata[2]), .B1(
        n164), .B2(kernel_magnitude_rdata[2]), .Y(n125) );
  sky130_fd_sc_hd__nand2_1 U214 ( .A(n166), .B(phase_mem_data[18]), .Y(n124)
         );
  sky130_fd_sc_hd__nand3_1 U215 ( .A(n126), .B(n125), .C(n124), .Y(
        rdata_mux[2]) );
  sky130_fd_sc_hd__a22oi_1 U216 ( .A1(adc_bypass_en), .A2(sig_frequency[3]), 
        .B1(n187), .B2(tf_coeff_rdata[3]), .Y(n129) );
  sky130_fd_sc_hd__a22oi_1 U217 ( .A1(n186), .A2(kernel_phase_rdata[3]), .B1(
        n164), .B2(kernel_magnitude_rdata[3]), .Y(n128) );
  sky130_fd_sc_hd__nand2_1 U218 ( .A(n166), .B(phase_mem_data[19]), .Y(n127)
         );
  sky130_fd_sc_hd__nand3_1 U219 ( .A(n129), .B(n128), .C(n127), .Y(
        rdata_mux[3]) );
  sky130_fd_sc_hd__a22oi_1 U220 ( .A1(adc_bypass_en), .A2(sig_frequency[4]), 
        .B1(n187), .B2(tf_coeff_rdata[4]), .Y(n132) );
  sky130_fd_sc_hd__a22oi_1 U221 ( .A1(n186), .A2(kernel_phase_rdata[4]), .B1(
        n164), .B2(kernel_magnitude_rdata[4]), .Y(n131) );
  sky130_fd_sc_hd__nand2_1 U222 ( .A(n166), .B(phase_mem_data[20]), .Y(n130)
         );
  sky130_fd_sc_hd__nand3_1 U223 ( .A(n132), .B(n131), .C(n130), .Y(
        rdata_mux[4]) );
  sky130_fd_sc_hd__a22oi_1 U224 ( .A1(adc_bypass_en), .A2(sig_frequency[5]), 
        .B1(n187), .B2(tf_coeff_rdata[5]), .Y(n135) );
  sky130_fd_sc_hd__a22oi_1 U225 ( .A1(n186), .A2(kernel_phase_rdata[5]), .B1(
        n164), .B2(kernel_magnitude_rdata[5]), .Y(n134) );
  sky130_fd_sc_hd__nand2_1 U226 ( .A(n166), .B(phase_mem_data[21]), .Y(n133)
         );
  sky130_fd_sc_hd__nand3_1 U227 ( .A(n135), .B(n134), .C(n133), .Y(
        rdata_mux[5]) );
  sky130_fd_sc_hd__a22oi_1 U228 ( .A1(adc_bypass_en), .A2(sig_frequency[6]), 
        .B1(n187), .B2(tf_coeff_rdata[6]), .Y(n138) );
  sky130_fd_sc_hd__a22oi_1 U229 ( .A1(n186), .A2(kernel_phase_rdata[6]), .B1(
        n164), .B2(kernel_magnitude_rdata[6]), .Y(n137) );
  sky130_fd_sc_hd__nand2_1 U230 ( .A(n166), .B(phase_mem_data[22]), .Y(n136)
         );
  sky130_fd_sc_hd__nand3_1 U231 ( .A(n138), .B(n137), .C(n136), .Y(
        rdata_mux[6]) );
  sky130_fd_sc_hd__a22oi_1 U232 ( .A1(adc_bypass_en), .A2(sig_frequency[7]), 
        .B1(n187), .B2(tf_coeff_rdata[7]), .Y(n141) );
  sky130_fd_sc_hd__a22oi_1 U233 ( .A1(n186), .A2(kernel_phase_rdata[7]), .B1(
        n164), .B2(kernel_magnitude_rdata[7]), .Y(n140) );
  sky130_fd_sc_hd__nand2_1 U234 ( .A(n166), .B(phase_mem_data[23]), .Y(n139)
         );
  sky130_fd_sc_hd__nand3_1 U235 ( .A(n141), .B(n140), .C(n139), .Y(
        rdata_mux[7]) );
  sky130_fd_sc_hd__a22oi_1 U236 ( .A1(adc_bypass_en), .A2(sig_amplitude[0]), 
        .B1(n187), .B2(tf_coeff_rdata[8]), .Y(n144) );
  sky130_fd_sc_hd__a22oi_1 U237 ( .A1(n186), .A2(kernel_phase_rdata[8]), .B1(
        n164), .B2(kernel_magnitude_rdata[8]), .Y(n143) );
  sky130_fd_sc_hd__nand2_1 U238 ( .A(n166), .B(phase_mem_data[24]), .Y(n142)
         );
  sky130_fd_sc_hd__nand3_1 U239 ( .A(n144), .B(n143), .C(n142), .Y(
        rdata_mux[8]) );
  sky130_fd_sc_hd__a22oi_1 U240 ( .A1(adc_bypass_en), .A2(sig_amplitude[1]), 
        .B1(n187), .B2(tf_coeff_rdata[9]), .Y(n147) );
  sky130_fd_sc_hd__a22oi_1 U241 ( .A1(n186), .A2(kernel_phase_rdata[9]), .B1(
        n164), .B2(kernel_magnitude_rdata[9]), .Y(n146) );
  sky130_fd_sc_hd__nand2_1 U242 ( .A(n166), .B(phase_mem_data[25]), .Y(n145)
         );
  sky130_fd_sc_hd__nand3_1 U243 ( .A(n147), .B(n146), .C(n145), .Y(
        rdata_mux[9]) );
  sky130_fd_sc_hd__a22oi_1 U244 ( .A1(adc_bypass_en), .A2(sig_amplitude[2]), 
        .B1(n187), .B2(tf_coeff_rdata[10]), .Y(n150) );
  sky130_fd_sc_hd__a22oi_1 U245 ( .A1(n186), .A2(kernel_phase_rdata[10]), .B1(
        n164), .B2(kernel_magnitude_rdata[10]), .Y(n149) );
  sky130_fd_sc_hd__nand2_1 U246 ( .A(n166), .B(phase_mem_data[26]), .Y(n148)
         );
  sky130_fd_sc_hd__nand3_1 U247 ( .A(n150), .B(n149), .C(n148), .Y(
        rdata_mux[10]) );
  sky130_fd_sc_hd__a22oi_1 U248 ( .A1(adc_bypass_en), .A2(sig_amplitude[3]), 
        .B1(n187), .B2(tf_coeff_rdata[11]), .Y(n153) );
  sky130_fd_sc_hd__a22oi_1 U249 ( .A1(n186), .A2(kernel_phase_rdata[11]), .B1(
        n164), .B2(kernel_magnitude_rdata[11]), .Y(n152) );
  sky130_fd_sc_hd__nand2_1 U250 ( .A(n166), .B(phase_mem_data[27]), .Y(n151)
         );
  sky130_fd_sc_hd__nand3_1 U251 ( .A(n153), .B(n152), .C(n151), .Y(
        rdata_mux[11]) );
  sky130_fd_sc_hd__a22oi_1 U252 ( .A1(adc_bypass_en), .A2(sig_amplitude[4]), 
        .B1(n187), .B2(tf_coeff_rdata[12]), .Y(n156) );
  sky130_fd_sc_hd__a22oi_1 U253 ( .A1(n186), .A2(kernel_phase_rdata[12]), .B1(
        n164), .B2(kernel_magnitude_rdata[12]), .Y(n155) );
  sky130_fd_sc_hd__nand2_1 U254 ( .A(n166), .B(phase_mem_data[28]), .Y(n154)
         );
  sky130_fd_sc_hd__nand3_1 U255 ( .A(n156), .B(n155), .C(n154), .Y(
        rdata_mux[12]) );
  sky130_fd_sc_hd__a22oi_1 U256 ( .A1(adc_bypass_en), .A2(sig_amplitude[5]), 
        .B1(n187), .B2(tf_coeff_rdata[13]), .Y(n159) );
  sky130_fd_sc_hd__a22oi_1 U257 ( .A1(n186), .A2(kernel_phase_rdata[13]), .B1(
        n164), .B2(kernel_magnitude_rdata[13]), .Y(n158) );
  sky130_fd_sc_hd__nand2_1 U258 ( .A(n166), .B(phase_mem_data[29]), .Y(n157)
         );
  sky130_fd_sc_hd__nand3_1 U259 ( .A(n159), .B(n158), .C(n157), .Y(
        rdata_mux[13]) );
  sky130_fd_sc_hd__a22oi_1 U260 ( .A1(adc_bypass_en), .A2(sig_amplitude[6]), 
        .B1(n187), .B2(tf_coeff_rdata[14]), .Y(n162) );
  sky130_fd_sc_hd__a22oi_1 U261 ( .A1(n186), .A2(kernel_phase_rdata[14]), .B1(
        n164), .B2(kernel_magnitude_rdata[14]), .Y(n161) );
  sky130_fd_sc_hd__nand2_1 U262 ( .A(n166), .B(phase_mem_data[30]), .Y(n160)
         );
  sky130_fd_sc_hd__nand3_1 U263 ( .A(n162), .B(n161), .C(n160), .Y(
        rdata_mux[14]) );
  sky130_fd_sc_hd__a22oi_1 U264 ( .A1(adc_bypass_en), .A2(sig_amplitude[7]), 
        .B1(n187), .B2(tf_coeff_rdata[15]), .Y(n169) );
  sky130_fd_sc_hd__a22oi_1 U265 ( .A1(n186), .A2(kernel_phase_rdata[15]), .B1(
        n164), .B2(kernel_magnitude_rdata[15]), .Y(n168) );
  sky130_fd_sc_hd__nand2_1 U266 ( .A(n166), .B(phase_mem_data[31]), .Y(n167)
         );
  sky130_fd_sc_hd__nand3_1 U267 ( .A(n169), .B(n168), .C(n167), .Y(
        rdata_mux[15]) );
  sky130_fd_sc_hd__nor2_1 U269 ( .A(adc_bypass_en), .B(n171), .Y(n173) );
  sky130_fd_sc_hd__nor2_1 U270 ( .A(n171), .B(n176), .Y(n172) );
  sky130_fd_sc_hd__a22o_1 U271 ( .A1(sig_amplitude[7]), .A2(n173), .B1(n172), 
        .B2(coeff_table_base_addr_bypass[9]), .X(N103) );
  sky130_fd_sc_hd__a22o_1 U272 ( .A1(sig_amplitude[6]), .A2(n173), .B1(n172), 
        .B2(coeff_table_base_addr_bypass[8]), .X(N102) );
  sky130_fd_sc_hd__a22o_1 U273 ( .A1(sig_amplitude[5]), .A2(n173), .B1(n172), 
        .B2(coeff_table_base_addr_bypass[7]), .X(N101) );
  sky130_fd_sc_hd__a22o_1 U274 ( .A1(sig_frequency[7]), .A2(n173), .B1(n172), 
        .B2(coeff_table_base_addr_bypass[6]), .X(N100) );
  sky130_fd_sc_hd__a22o_1 U275 ( .A1(sig_frequency[6]), .A2(n173), .B1(n172), 
        .B2(coeff_table_base_addr_bypass[5]), .X(N99) );
  sky130_fd_sc_hd__a22o_1 U276 ( .A1(sig_frequency[5]), .A2(n173), .B1(n172), 
        .B2(coeff_table_base_addr_bypass[4]), .X(N98) );
  sky130_fd_sc_hd__a22o_1 U277 ( .A1(sig_frequency[4]), .A2(n173), .B1(n172), 
        .B2(coeff_table_base_addr_bypass[3]), .X(N97) );
  sky130_fd_sc_hd__a22o_1 U278 ( .A1(sig_frequency[3]), .A2(n173), .B1(n172), 
        .B2(coeff_table_base_addr_bypass[2]), .X(N96) );
  sky130_fd_sc_hd__a22o_1 U279 ( .A1(sig_frequency[2]), .A2(n173), .B1(n172), 
        .B2(coeff_table_base_addr_bypass[1]), .X(N95) );
  sky130_fd_sc_hd__a22o_1 U280 ( .A1(sig_frequency[1]), .A2(n173), .B1(n172), 
        .B2(coeff_table_base_addr_bypass[0]), .X(N94) );
  sky130_fd_sc_hd__o21ai_1 U281 ( .A1(state_r[0]), .A2(n175), .B1(n174), .Y(
        N92) );
  sky130_fd_sc_hd__nor2_1 U166 ( .A(sram_select[0]), .B(n1010), .Y(n164) );
  sky130_fd_sc_hd__nor3_2 U156 ( .A(adc_bypass_en), .B(sram_select[1]), .C(
        sram_select[0]), .Y(n166) );
  sky130_fd_sc_hd__inv_1 U157 ( .A(adc_bypass_en), .Y(n176) );
  sky130_fd_sc_hd__clkbuf_1 U282 ( .A(rst_n), .X(n181) );
  sky130_fd_sc_hd__inv_1 U286 ( .A(n166), .Y(n185) );
  sky130_fd_sc_hd__inv_2 U287 ( .A(n1170), .Y(n186) );
  sky130_fd_sc_hd__inv_2 U288 ( .A(n1160), .Y(n187) );
  sky130_fd_sc_hd__clkbuf_1 U289 ( .A(tf_val_magnitude[15]), .X(n188) );
  sky130_fd_sc_hd__clkbuf_1 U290 ( .A(tf_val_magnitude[14]), .X(n189) );
  sky130_fd_sc_hd__clkbuf_1 U291 ( .A(tf_val_magnitude[13]), .X(n190) );
  sky130_fd_sc_hd__clkbuf_1 U292 ( .A(tf_val_magnitude[12]), .X(n191) );
  sky130_fd_sc_hd__clkbuf_1 U293 ( .A(tf_val_magnitude[11]), .X(n192) );
  sky130_fd_sc_hd__clkbuf_1 U294 ( .A(tf_val_magnitude[10]), .X(n193) );
  sky130_fd_sc_hd__clkbuf_1 U295 ( .A(tf_val_magnitude[9]), .X(n194) );
  sky130_fd_sc_hd__clkbuf_1 U296 ( .A(tf_val_magnitude[8]), .X(n195) );
  sky130_fd_sc_hd__clkbuf_1 U297 ( .A(tf_val_magnitude[7]), .X(n196) );
  sky130_fd_sc_hd__clkbuf_1 U298 ( .A(tf_val_magnitude[6]), .X(n197) );
  sky130_fd_sc_hd__clkbuf_1 U299 ( .A(tf_val_magnitude[5]), .X(n198) );
  sky130_fd_sc_hd__clkbuf_1 U300 ( .A(tf_val_magnitude[4]), .X(n199) );
  sky130_fd_sc_hd__clkbuf_1 U301 ( .A(tf_val_magnitude[3]), .X(n200) );
  sky130_fd_sc_hd__clkbuf_1 U302 ( .A(tf_val_magnitude[2]), .X(n201) );
  sky130_fd_sc_hd__clkbuf_1 U303 ( .A(tf_val_magnitude[1]), .X(n202) );
  sky130_fd_sc_hd__clkbuf_1 U304 ( .A(tf_val_phase[0]), .X(n203) );
  sky130_fd_sc_hd__clkbuf_1 U305 ( .A(tf_val_phase[1]), .X(n204) );
  sky130_fd_sc_hd__clkbuf_1 U306 ( .A(tf_val_phase[4]), .X(n205) );
  sky130_fd_sc_hd__clkbuf_1 U307 ( .A(tf_val_phase[9]), .X(n206) );
  sky130_fd_sc_hd__clkbuf_1 U308 ( .A(tf_val_phase[11]), .X(n207) );
  sky130_fd_sc_hd__clkbuf_1 U309 ( .A(tf_val_phase[12]), .X(n208) );
  sky130_fd_sc_hd__clkbuf_1 U310 ( .A(tf_val_phase[14]), .X(n209) );
  sky130_fd_sc_hd__clkbuf_1 U311 ( .A(tf_val_phase[15]), .X(n210) );
  sky130_fd_sc_hd__clkinv_1 U283 ( .A(n181), .Y(n182) );
  sky130_fd_sc_hd__clkinv_1 U181 ( .A(rst_n), .Y(n178) );
  sky130_fd_sc_hd__clkbuf_1 U205 ( .A(rst_n), .X(n180) );
  sky130_fd_sc_hd__clkbuf_1 U284 ( .A(rst_n), .X(n183) );
  sky130_fd_sc_hd__clkinv_1 U268 ( .A(N91), .Y(n171) );
  sky130_fd_sc_hd__clkinv_1 U178 ( .A(load_en), .Y(n104) );
  sky130_fd_sc_hd__clkbuf_1 U285 ( .A(rst_n), .X(n184) );
  sky130_fd_sc_hd__clkinv_1 U175 ( .A(state_r[1]), .Y(n175) );
  sky130_fd_sc_hd__clkinv_1 U173 ( .A(state_r[2]), .Y(n1110) );
endmodule

