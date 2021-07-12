clc;
clearvars;
close all;

% Technology data.
% fid = py.open('mosSKY130__W1.0u_n01v8_p01v8.dat', 'rb');
% kwa = pyargs('encoding', 'latin1');
% np_data = py.pickle.load(fid, kwa);
% kwa = pyargs('mdict', np_data);
% py.scipy.io.savemat('mosSKY130__W1.0u_n01v8_p01v8.mat', kwa);
% m = matfile('mosSKY130__W1.0u_n01v8_p01v8.mat', 'Writable', true);
% load 'mosSKY130__W1.0u_n01v8_p01v8.mat';
% nfet.length = nfet.length*1e-6;
% nfet.width = nfet.width*1e-6;
% pfet.length = pfet.length*1e-6;
% pfet.width = pfet.width*1e-6;
% pfet.vgs = abs(pfet.vgs);
% pfet.vds = abs(pfet.vds);
% m.nfet = nfet;
% m.pfet = pfet;

clearvars;
load 'mosSKY130__W1.0u_n01v8_p01v8.mat';

% Plot drain characteristics for different VGS at minimum L (default value)
vgs = 0:0.1:max(nfet.vgs);
id = look_up(nfet, 'id', 'vgs', vgs, 'vds', nfet.vds, 'vsb', 0);
vt = look_up(nfet, 'vt', 'vgs', vgs, 'vds', nfet.vds, 'vsb', 0);
figure;
plot(nfet.vds, id');
xlabel('V_D_S [V]');
ylabel('I_D [A]');

gm_ID_p = 10;
gm_p = 0.1e-5;
ID_p = gm_p/gm_ID_p;
Lp = 2;
JD_p = look_up(pfet, 'id_W', 'gm_id', gm_ID_p, 'L', Lp);
W_p = ID_p/JD_p;

gm_ID_n = 10;
gm_n = 0.1e-5;
ID_n = gm_n/gm_ID_n;
Ln = 1;
JD_n = look_up(nfet, 'id_W', 'gm_id', gm_ID_n, 'L', Ln);
W_n = ID_n/JD_n;
cgd_w = look_up(nfet, 'cgd_W', 'gm_id', gm_ID_n, 'L', Ln, 'vds', 0.9);
cgd = cgd_w * W_n;
cgs_w = look_up(nfet, 'cgs_W', 'gm_id', gm_ID_n, 'L', Ln, 'vds', 0.9);
cgs = cgs_w * W_n;

%%
gm_ID_n = 25;
gm_n = 0.1e-3;
ID_n = gm_n/gm_ID_n;
JD_n = look_up(nfet, 'id_W', 'gm_id', gm_ID_n, 'L', 4);
W_n = ID_n/JD_n;
gm_ID_p = 15;
gm_p = 0.1e-3;
ID_p = gm_p/gm_ID_p;
JD_p = look_up(pfet, 'id_W', 'gm_id', gm_ID_p, 'L', 4);
W_p = ID_p/JD_p;

% % Specs
% kB = 1.38e-23; T = 300;
% ed = 0.1e-2;
% ts = 5.5e-9;
% tau = ts/log(1/ed);
% wu = 1/tau; fu = wu/2/pi
% Noise = 100e-6;
% G = 2; FO = 1;
% L0 = 20;
% 
% % Design choices
% alpha = 0.84;
% CR = 0.33;
% beta = 1/(1+G)/(1+CR)
% gm_gds = look_up(nch,'GM_GDS', 'GM_ID', 10, 'L', nch.L);
% L = interp1(gm_gds, nch.L, L0/beta)
% 
% % Compute CLtot (and all other capacitances) based on noise
% CLtot = alpha/beta * kB*T/Noise^2
% CFtot = CLtot / (FO*G + 1-beta)
% CS = G*CFtot
% CL = FO*CS
% Cgs = CR*(CS+CFtot)
% 
% % Compute gm and device size
% gm = CLtot*wu/beta
% gm_ID = look_up(nch,'GM_ID', 'GM_CGS', gm/Cgs, 'L', L)
% ID = gm/gm_ID
% JD = look_up(nch,'ID_W', 'GM_ID', gm_ID, 'L', L);
% W = ID/JD
% 
% % Calculate CF (for netlist entry) and estimate self loading
% CGD_W = look_up(nch, 'CGD_W', 'GM_ID', gm_ID, 'L', L, 'VDS', 0.6);
% Cgd = CGD_W*W
% CF = CFtot - Cgd
% CDD_W = look_up(nch, 'CDD_W', 'GM_ID', gm_ID, 'L', L, 'VDS', 0.6);
% Cdb = CDD_W*W - Cgd
% wu_actual = beta*gm/(CLtot+Cdb);
% ts_actual = 1/wu_actual*log(1/ed)
% 
% 
% % HSpice plots
% % h = loadsig('igs_cap2.tr0');
% % t = evalsig(h,'TIME'); t0 = 1e-9;
% % vo_raw = evalsig(h,'v_vo');
% % vo = vo_raw - vo_raw(1);
% % plot(t-t0, vo); xlim([-1 19]*1e-9)
% % xlabel('Time (s)'); ylabel('v_o_u_t (V)'); grid;
% % text(1.5e-8, 17e-3, sprintf('%d', vo(end)))
% % 
% % dyn_err = abs((vo - vo(end))/vo(end)); ed = 0.1e-2;
% % idx = find(dyn_err<=ed, 1, 'first');
% % ts = interp1(dyn_err(idx-3:idx+3), t(idx-3:idx+3), ed, 'pchip');
% % semilogy(t-t0, dyn_err, ts-t0, ed, 'o'); xlim([-1 10]*1e-9); ylim([1e-5 10]);
% % xlabel('Time (s)'); ylabel('Dynamic error'); grid;
% % text(6e-9, ed, sprintf('%d', ts-t0))
% % 
% % m = loadsig('igs_cap2.ac0');
% % f     = evalsig(m, 'HERTZ');
% % no    = evalsig(m, 'outnoise');
% % ni    = evalsig(m, 'innoise');
% % integ = cumtrapz(f, no);
% % integ_sqrt = sqrt(integ);
% % integ_final = integ_sqrt(end)
% % semilogx(f, integ_sqrt)


