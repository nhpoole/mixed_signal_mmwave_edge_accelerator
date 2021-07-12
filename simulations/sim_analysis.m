addpath('/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/simulations');
clc; clear; close all;
rawfilename = 'char_mos.raw';
h = load_ngspice(rawfilename);

n_gm = h.m_xm2_msky130_fd_pr__nfet_01v8_gm;
i_d = h.i_m_xm2_msky130_fd_pr__nfet_01v8_id;
n_vt = h.v_m_xm2_msky130_fd_pr__nfet_01v8_vt;
v_gs = h.v_vgsn;
v_ov = v_gs - n_vt;
W = 1;

figure(1);
plot(v_ov, (n_gm ./ i_d), 'linewidth', 2);
set(gca, 'FontSize', 14);
set(gca, 'xtick', [-0.3:0.1:1.4]);
title('$g_m/I_D$ vs. $V_{OV}$', 'Interpreter', 'latex')
xlabel('$V_{OV}$ [V]', 'Interpreter', 'latex');
ylabel('$g_m/I_D$ [S/A]', 'Interpreter', 'latex');
xlim([v_gs(1)-n_vt(1) v_gs(end)-n_vt(end)]);
grid;

figure(2);
plot(v_ov, (n_gm / W), 'linewidth', 2);
set(gca, 'FontSize', 14);
set(gca, 'xtick', [-0.3:0.1:1.4]);
title('$g_m/W$ vs. $V_{OV}$', 'Interpreter', 'latex')
xlabel('$V_{OV}$ [V]', 'Interpreter', 'latex');
ylabel('$g_m/W$ [S/$\mu$ m]', 'Interpreter', 'latex');
xlim([v_gs(1)-n_vt(1) v_gs(end)-n_vt(end)]);
grid;

