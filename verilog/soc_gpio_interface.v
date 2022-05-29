/* Zynq SoC EMIO GPIO Interface. */

module soc_gpio_interface (
    /* Zynq SoC EMIO interface signals. */
    input [13:0] gpio_emio_out,
    output [13:0] gpio_emio_in,

    /* Chip digital evaluation module interface signals. */
    input chip_eval_done,
    input chip_adc_serial_data,
    input chip_mag_serial_data,
    input chip_phase_serial_data,
    input chip_phase_sram_serial_data,
    input chip_tf_coeff_sram_serial_data,
    input chip_adc_serial_data_valid,
    input chip_mag_serial_data_valid,
    input chip_phase_serial_data_valid,
    input chip_phase_sram_serial_data_valid,
    input chip_tf_coeff_sram_serial_data_valid,
    output sys_rst_n,
    output kernel_start,
    output bypass_adc_eval
);

    assign gpio_emio_in[0] = chip_eval_done;
    assign gpio_emio_in[1] = chip_adc_serial_data;
    assign gpio_emio_in[2] = chip_mag_serial_data;
    assign gpio_emio_in[3] = chip_phase_serial_data;
    assign gpio_emio_in[4] = chip_phase_sram_serial_data;
    assign gpio_emio_in[5] = chip_tf_coeff_sram_serial_data;
    assign gpio_emio_in[6] = chip_adc_serial_data_valid;
    assign gpio_emio_in[7] = chip_mag_serial_data_valid;
    assign gpio_emio_in[8] = chip_phase_serial_data_valid;
    assign gpio_emio_in[9] = chip_phase_sram_serial_data_valid;
    assign gpio_emio_in[10] = chip_tf_coeff_sram_serial_data_valid;
    assign gpio_emio_in[13:11] = gpio_emio_out[13:11];

    assign sys_rst_n = gpio_emio_out[11];
    assign kernel_start = gpio_emio_out[12];
    assign bypass_adc_eval = gpio_emio_out[13];

endmodule