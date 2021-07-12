clc; clear; close all;
rawfilename_n = 'char_nmos.raw';
rawfilename_p = 'char_pmos.raw';
hn = load_ngspice(rawfilename_n);
hp = load_ngspice(rawfilename_p);
W = 1;
vdd = 1.8;

% NMOS Characterization

n_gm = hn.m_xm2_msky130_fd_pr__nfet_01v8_gm;
n_id = hn.i_m_xm2_msky130_fd_pr__nfet_01v8_id;
n_vt = hn.v_m_xm2_msky130_fd_pr__nfet_01v8_vth;
n_cgg = hn.m_xm2_msky130_fd_pr__nfet_01v8_cgg;
nlvt_gm = hn.m_xm3_msky130_fd_pr__nfet_01v8_lvt_gm;
nlvt_id = hn.i_m_xm3_msky130_fd_pr__nfet_01v8_lvt_id;
nlvt_vt = hn.v_m_xm3_msky130_fd_pr__nfet_01v8_lvt_vth;
nlvt_cgg = hn.m_xm3_msky130_fd_pr__nfet_01v8_lvt_cgg;
nnvt_gm = hn.m_xm6_msky130_fd_pr__nfet_03v3_nvt_gm;
nnvt_id = hn.i_m_xm6_msky130_fd_pr__nfet_03v3_nvt_id;
nnvt_vt = hn.v_m_xm6_msky130_fd_pr__nfet_03v3_nvt_vth;
nnvt_cgg = hn.m_xm6_msky130_fd_pr__nfet_03v3_nvt_cgg;
v_gsn = hn.v_vgsn;
v_ov_n = v_gsn - n_vt;
v_ov_nlvt = v_gsn - nlvt_vt;
v_ov_nnvt = v_gsn - nnvt_vt;
gmn_id_n = n_gm ./ n_id;
gmn_id_nlvt = nlvt_gm ./ nlvt_id;
gmn_id_nnvt = nnvt_gm ./ nnvt_id;
fT_n = n_gm ./ n_cgg;
fT_nlvt = nlvt_gm ./ nlvt_cgg;
fT_nnvt = nnvt_gm ./ nnvt_cgg;

figure(1);
subplot(321);
plot(v_ov_n, gmn_id_n, v_ov_nlvt, gmn_id_nlvt, v_ov_nnvt, gmn_id_nnvt, ...
    'linewidth', 1);
title('NMOS $g_m/I_D$ vs. $V_{OV}$', 'Interpreter', 'latex')
xlabel('$V_{OV}$ [V]', 'Interpreter', 'latex');
ylabel('$g_m/I_D$ [S/A]', 'Interpreter', 'latex');
xlim([min(v_ov_n) max(v_ov_n)]);
legend({'nfet\_01v8', 'nfet\_01v8\_lvt', 'nfet\_03v3\_nvt'}, 'Interpreter', 'latex');
grid;

subplot(322);
plot(v_ov_n, (n_gm / W), v_ov_nlvt, (nlvt_gm / W), v_ov_nnvt, ...
    (nnvt_gm / W), 'linewidth', 1);
title('NMOS $g_m/W$ vs. $V_{OV}$', 'Interpreter', 'latex')
xlabel('$V_{OV}$ [V]', 'Interpreter', 'latex');
ylabel('$g_m/W$ [S$/\mu$m]', 'Interpreter', 'latex');
xlim([min(v_ov_n) max(v_ov_n)]);
legend({'nfet\_01v8', 'nfet\_01v8\_lvt', 'nfet\_03v3\_nvt'}, 'Interpreter', 'latex');
grid;

subplot(323);
plot(gmn_id_n, gmn_id_n.*fT_n, gmn_id_nlvt, gmn_id_nlvt.*fT_nlvt, ...
    gmn_id_nnvt, gmn_id_nnvt.*fT_nnvt, 'linewidth', 1);
title('NMOS $g_m/I_D*f_T$ vs. $g_m/I_D$', 'Interpreter', 'latex')
xlabel('$g_m/I_D$ [S/A]', 'Interpreter', 'latex');
ylabel('$g_m/I_D\cdot f_T$ [S$\cdot$GHz/A]', 'Interpreter', 'latex');
xlim([min(gmn_id_n) max(gmn_id_n)]);
legend({'nfet\_01v8', 'nfet\_01v8\_lvt', 'nfet\_03v3\_nvt'}, 'Interpreter', 'latex');
grid;

% PMOS Characterization

p_gm = hp.m_xm1_msky130_fd_pr__pfet_01v8_gm;
p_id = abs(hp.i_m_xm1_msky130_fd_pr__pfet_01v8_id);
p_vt = hp.v_m_xm1_msky130_fd_pr__pfet_01v8_vth;
p_cgg = hp.m_xm1_msky130_fd_pr__pfet_01v8_cgg;
plvt_gm = hp.m_xm4_msky130_fd_pr__pfet_01v8_lvt_gm;
plvt_id = abs(hp.i_m_xm4_msky130_fd_pr__pfet_01v8_lvt_id);
plvt_vt = hp.v_m_xm4_msky130_fd_pr__pfet_01v8_lvt_vth;
plvt_cgg = hp.m_xm4_msky130_fd_pr__pfet_01v8_lvt_cgg;
phvt_gm = hp.m_xm5_msky130_fd_pr__pfet_01v8_hvt_gm;
phvt_id = abs(hp.i_m_xm5_msky130_fd_pr__pfet_01v8_hvt_id);
phvt_vt = hp.v_m_xm5_msky130_fd_pr__pfet_01v8_hvt_vth;
phvt_cgg = hp.m_xm5_msky130_fd_pr__pfet_01v8_hvt_cgg;
v_gp = hp.v_vgp;
v_ov_p = vdd - v_gp - abs(p_vt);
v_ov_plvt = vdd - v_gp - abs(plvt_vt);
v_ov_phvt = vdd - v_gp - abs(phvt_vt);
gmp_id_p = p_gm ./ p_id;
gmp_id_plvt = plvt_gm ./ plvt_id;
gmp_id_phvt = phvt_gm ./ phvt_id;
fT_p = p_gm ./ p_cgg;
fT_plvt = plvt_gm ./ plvt_cgg;
fT_phvt = phvt_gm ./ phvt_cgg;

subplot(324);
plot(v_ov_p, gmp_id_p, v_ov_plvt, gmp_id_plvt, v_ov_phvt, gmp_id_phvt, ...
    'linewidth', 1);
title('PMOS $g_m/I_D$ vs. $V_{OV}$', 'Interpreter', 'latex')
xlabel('$V_{OV}$ [V]', 'Interpreter', 'latex');
ylabel('$g_m/I_D$ [S/A]', 'Interpreter', 'latex');
xlim([min(v_ov_p) max(v_ov_p)]);
legend({'pfet\_01v8', 'pfet\_01v8\_lvt', 'pfet\_01v8\_hvt'}, 'Interpreter', 'latex');
grid;

subplot(325);
plot(v_ov_p, (p_gm / W), v_ov_plvt, (plvt_gm / W), v_ov_phvt, ...
    (phvt_gm / W), 'linewidth', 1);
title('PMOS $g_m/W$ vs. $V_{OV}$', 'Interpreter', 'latex')
xlabel('$V_{OV}$ [V]', 'Interpreter', 'latex');
ylabel('$g_m/W$ [S$/\mu$m]', 'Interpreter', 'latex');
xlim([min(v_ov_p) max(v_ov_p)]);
legend({'pfet\_01v8', 'pfet\_01v8\_lvt', 'pfet\_01v8\_hvt'}, 'Interpreter', 'latex');
grid;

subplot(326);
plot(gmp_id_p, gmp_id_p.*fT_p, gmp_id_plvt, gmp_id_plvt.*fT_plvt, ...
    gmp_id_phvt, gmp_id_phvt.*fT_phvt, 'linewidth', 1);
title('PMOS $g_m/I_D*f_T$ vs. $g_m/I_D$', 'Interpreter', 'latex')
xlabel('$g_m/I_D$ [S/A]', 'Interpreter', 'latex');
ylabel('$g_m/I_D\cdot f_T$ [S$\cdot$GHz/A]', 'Interpreter', 'latex');
xlim([min(gmp_id_p) max(gmp_id_p)]);
legend({'pfet\_01v8', 'pfet\_01v8\_lvt', 'pfet\_01v8\_hvt'}, 'Interpreter', 'latex');
grid;

