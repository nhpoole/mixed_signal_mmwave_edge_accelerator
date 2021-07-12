%% Differential OTA/Op-Amp Analysis.

% Load data.
clc; clear; close all;

rawfilename_op = 'diff_fold_casc_ota_op.raw';
rawfilename_ac = 'diff_fold_casc_ota_lvs_ac.raw';
% rawfilename_ac = 'gm_c_stage_ac.raw';
rawfilename_tran = 'diff_ota_tb_tran.raw';
% hop = load_ngspice(rawfilename_op);
% hac = load_ngspice(rawfilename_ac);

vdd = 1.8;
vincm_min = 0.6;
vincm_max = 1.5;
vincm_step = 0.1;

ac_sweep = true;
if ac_sweep
    phase_margins = zeros(1, length(vincm_min:vincm_step:vincm_max));
    bandwidths = zeros(1, length(vincm_min:vincm_step:vincm_max));
    gains = zeros(1, length(vincm_min:vincm_step:vincm_max));
    for i=1:length(vincm_min:vincm_step:vincm_max)
        vincm = vincm_min + vincm_step*(i-1);
%         hac = load_ngspice('diff_fold_casc_ota_final_ac_' + string(vincm) + '.raw');
        hac = load_ngspice('gm_c_stage_lvs_ac_' + string(vincm) + '.raw');
        vo_ac = hac.v_vop - hac.v_vom;
        f = hac.frequency;
        ac_mag = mag2db(abs(vo_ac));
        ac_phase = (unwrap(angle(vo_ac)) - ...
            unwrap(angle(hac.v_vip - hac.v_vim))) * (180/pi);
        [~, idx] = min(abs(ac_mag-(ac_mag(1)-3)));
        bandwidths(i) = f(idx);
        [~, phase_margins(i), ~, ~] = margin(abs(vo_ac), ac_phase, f);
        gains(i) = ac_mag(1);

        figure(1);
        subplot(211);
        semilogx(f, ac_phase, 'linewidth', 0.75);
        title('\textbf{AC Response Phase}', 'Interpreter', 'latex');
        xlabel('\textbf{Frequency (Hz)}', 'Interpreter', 'latex');
        ylabel('\textbf{Degrees}', 'Interpreter', 'latex');
        xlim([min(f) max(f)]);
        % ylim([0 40]);
        grid;
        set(gca, 'FontName', 'Times New Roman');
        hold on;

        subplot(212);
        semilogx(f, ac_mag, 'linewidth', 0.75);
        title('\textbf{AC Response Magnitude}', 'Interpreter', 'latex');
        xlabel('\textbf{Frequency (Hz)}', 'Interpreter', 'latex');
        ylabel('\textbf{dB}', 'Interpreter', 'latex');
        xlim([min(f) max(f)]);
        % ylim([0 40]);
        grid;
        set(gca, 'FontName', 'Times New Roman');
        hold on;
    end
    subplot(211);
%     legend({'$V_{in,cm} = 0.6 V$', '$V_{in,cm} = 0.7 V$', ...
%         '$V_{in,cm} = 0.8 V$', '$V_{in,cm} = 0.9 V$', '$V_{in,cm} = 1.0 V$', ...
%         '$V_{in,cm} = 1.1 V$', '$V_{in,cm} = 1.2 V$', '$V_{in,cm} = 1.3 V$', ...
%         '$V_{in,cm} = 1.4 V$', '$V_{in,cm} = 1.5 V$', '$V_{in,cm} = 1.6 V$'}, ...
%         'Location', 'northeastoutside', 'Interpreter', 'latex');
    legend({'$V_{in,cm} = 0.6 V$', ...
        '$V_{in,cm} = 0.7 V$', '$V_{in,cm} = 0.8 V$', '$V_{in,cm} = 0.9 V$', ...
        '$V_{in,cm} = 1.0 V$', '$V_{in,cm} = 1.1 V$', '$V_{in,cm} = 1.2 V$', ...
        '$V_{in,cm} = 1.3 V$', '$V_{in,cm} = 1.4 V$', '$V_{in,cm} = 1.5 V$'}, ...
        'Location', 'northeastoutside', 'Interpreter', 'latex');
    subplot(212);
%     legend({'$V_{in,cm} = 0.6 V$', '$V_{in,cm} = 0.7 V$', ...
%         '$V_{in,cm} = 0.8 V$', '$V_{in,cm} = 0.9 V$', '$V_{in,cm} = 1.0 V$', ...
%         '$V_{in,cm} = 1.1 V$', '$V_{in,cm} = 1.2 V$', '$V_{in,cm} = 1.3 V$', ...
%         '$V_{in,cm} = 1.4 V$', '$V_{in,cm} = 1.5 V$', '$V_{in,cm} = 1.6 V$'}, ...
%         'Location', 'northeastoutside', 'Interpreter', 'latex');
    legend({'$V_{in,cm} = 0.6 V$', ...
        '$V_{in,cm} = 0.7 V$', '$V_{in,cm} = 0.8 V$', '$V_{in,cm} = 0.9 V$', ...
        '$V_{in,cm} = 1.0 V$', '$V_{in,cm} = 1.1 V$', '$V_{in,cm} = 1.2 V$', ...
        '$V_{in,cm} = 1.3 V$', '$V_{in,cm} = 1.4 V$', '$V_{in,cm} = 1.5 V$'}, ...
        'Location', 'northeastoutside', 'Interpreter', 'latex');
    hold off;
    
    figure(5);
    subplot(311);
    plot(vincm_min:vincm_step:vincm_max, phase_margins, 'linewidth', 0.75);
    title('\textbf{Unity Gain Feedback Phase Margin}', 'Interpreter', 'latex');
    xlabel('\textbf{Input Common Mode (V)}', 'Interpreter', 'latex');
    ylabel('\textbf{Degrees}', 'Interpreter', 'latex');
    xlim([vincm_min-0.1 vincm_max+0.1]);
    ylim([66 74]);
    grid;
    set(gca, 'FontName', 'Times New Roman');
    
    subplot(312);
    semilogy(vincm_min:vincm_step:vincm_max, bandwidths, 'linewidth', 0.75);
    title('\textbf{3-dB Bandwidth}', 'Interpreter', 'latex');
    xlabel('\textbf{Input Common Mode (V)}', 'Interpreter', 'latex');
    ylabel('\textbf{Hz}', 'Interpreter', 'latex');
    xlim([vincm_min-0.1 vincm_max+0.1]);
    ylim([1e0 1e8]);
    grid;
    set(gca, 'FontName', 'Times New Roman');

    subplot(313);
    plot(vincm_min:vincm_step:vincm_max, gains, 'linewidth', 0.75);
    title('\textbf{Open-Loop Gain}', 'Interpreter', 'latex');
    xlabel('\textbf{Input Common Mode (V)}', 'Interpreter', 'latex');
    ylabel('\textbf{dB}', 'Interpreter', 'latex');
    xlim([vincm_min-0.1 vincm_max+0.1]);
    ylim([32 40]);
    grid;
    set(gca, 'FontName', 'Times New Roman');
else
    hac = load_ngspice(rawfilename_ac);
    vo_ac = hac.v_vop - hac.v_vom;
    f = hac.frequency;
    ac_mag = mag2db(abs(vo_ac));
    ac_phase = (unwrap(angle(vo_ac)) - ...
        unwrap(angle(hac.v_vip - hac.v_vim))) * (180/pi);
    [~, idx] = min(abs(ac_mag-(ac_mag(1)-3)));
    bandwidth = f(idx);
    [~, phase_margin, ~, ~] = margin(abs(vo_ac), ac_phase, f);

    figure(1);
    subplot(211);
    semilogx(f, ac_phase, 'linewidth', 0.75);
    title('\textbf{AC Response Phase}', 'Interpreter', 'latex');
    xlabel('\textbf{Frequency (Hz)}', 'Interpreter', 'latex');
    ylabel('\textbf{Degrees}', 'Interpreter', 'latex');
    xlim([min(f) max(f)]);
    % ylim([0 40]);
    grid;
    set(gca, 'FontName', 'Times New Roman');
    hold on;

    subplot(212);
    semilogx(f, ac_mag, 'linewidth', 0.75);
    title('\textbf{AC Response Magnitude}', 'Interpreter', 'latex');
    xlabel('\textbf{Frequency (Hz)}', 'Interpreter', 'latex');
    ylabel('\textbf{dB}', 'Interpreter', 'latex');
    xlim([min(f) max(f)]);
    % ylim([0 40]);
    grid;
    set(gca, 'FontName', 'Times New Roman');
end

temp_sweep = false;
if temp_sweep
    phase_margins = zeros(1, length(-40:10:120));
    bandwidths = zeros(1, length(-40:10:120));
    gains = zeros(1, length(-40:10:120));
    for i=1:length(-40:10:120)
        temp = -40 + (i-1)*10;
%         hac = load_ngspice('gm_c_stage_ac_temp_' + string(temp) + '.raw');
        hac = load_ngspice('diff_fold_casc_ota_temp_' + string(temp) + '.raw');
        vo_ac = hac.v_vop - hac.v_vom;
        f = hac.frequency;
        ac_mag = mag2db(abs(vo_ac));
        ac_phase = (unwrap(angle(vo_ac)) - ...
            unwrap(angle(hac.v_vip - hac.v_vim))) * (180/pi);
        [~, idx] = min(abs(ac_mag-(ac_mag(1)-3)));
        bandwidths(i) = f(idx);
        [~, phase_margins(i), ~, ~] = margin(abs(vo_ac), ac_phase, f);
        gains(i) = ac_mag(1);
    end
    
    figure(5);
    subplot(311);
    plot(-40:10:120, phase_margins, 'linewidth', 0.75);
    title('\textbf{Unity Gain Feedback Phase Margin}', 'Interpreter', 'latex');
    xlabel('\textbf{Temperature (C)}', 'Interpreter', 'latex');
    ylabel('\textbf{Degrees}', 'Interpreter', 'latex');
    xlim([-40 125]);
    ylim([72 78]);
    grid;
    set(gca, 'FontName', 'Times New Roman');
    
    subplot(312);
    semilogy(-40:10:120, bandwidths, 'linewidth', 0.75);
    title('\textbf{3-dB Bandwidth}', 'Interpreter', 'latex');
    xlabel('\textbf{Temperature (C)}', 'Interpreter', 'latex');
    ylabel('\textbf{Hz}', 'Interpreter', 'latex');
    xlim([-40 125]);
    ylim([1e0 1e5]);
    grid;
    set(gca, 'FontName', 'Times New Roman');

    subplot(313);
    plot(-40:10:120, gains, 'linewidth', 0.75);
    title('\textbf{Open-Loop Gain}', 'Interpreter', 'latex');
    xlabel('\textbf{Temperature (C)}', 'Interpreter', 'latex');
    ylabel('\textbf{dB}', 'Interpreter', 'latex');
    xlim([-40 125]);
    ylim([55 65]);
    grid;
    set(gca, 'FontName', 'Times New Roman');
end

vdd_sweep = false;
if vdd_sweep
    phase_margins = zeros(1, length(1.62:0.04:1.98));
    bandwidths = zeros(1, length(1.62:0.04:1.98));
    gains = zeros(1, length(1.62:0.04:1.98));
    for i=1:length(1.62:0.04:1.98)
        vdd = 1.62 + (i-1)*0.04;
%         hac = load_ngspice('gm_c_stage_ac_vdd_' + string(vdd) + '.raw');
        hac = load_ngspice('diff_fold_casc_ota_vdd_' + string(vdd) + '.raw');
        vo_ac = hac.v_vop - hac.v_vom;
        f = hac.frequency;
        ac_mag = mag2db(abs(vo_ac));
        ac_phase = (unwrap(angle(vo_ac)) - ...
            unwrap(angle(hac.v_vip - hac.v_vim))) * (180/pi);
        [~, idx] = min(abs(ac_mag-(ac_mag(1)-3)));
        bandwidths(i) = f(idx);
        [~, phase_margins(i), ~, ~] = margin(abs(vo_ac), ac_phase, f);
        gains(i) = ac_mag(1);
    end

    figure(5);
    subplot(311);
    plot(1.62:0.04:1.98, phase_margins, 'linewidth', 0.75);
    title('\textbf{Unity Gain Feedback Phase Margin}', 'Interpreter', 'latex');
    xlabel('\textbf{$V_{DD}$ (V)}', 'Interpreter', 'latex');
    ylabel('\textbf{Degrees}', 'Interpreter', 'latex');
    xlim([1.6 2.0]);
    ylim([72 80]);
    grid;
    set(gca, 'FontName', 'Times New Roman');
    
    subplot(312);
    semilogy(1.62:0.04:1.98, bandwidths, 'linewidth', 0.75);
    title('\textbf{3-dB Bandwidth}', 'Interpreter', 'latex');
    xlabel('\textbf{$V_{DD}$ (V)}', 'Interpreter', 'latex');
    ylabel('\textbf{Hz}', 'Interpreter', 'latex');
    xlim([1.6 2.0]);
    ylim([1e0 1e5]);
    grid;
    set(gca, 'FontName', 'Times New Roman');

    subplot(313);
    plot(1.62:0.04:1.98, gains, 'linewidth', 0.75);
    title('\textbf{Open-Loop Gain}', 'Interpreter', 'latex');
    xlabel('\textbf{$V_{DD}$ (V)}', 'Interpreter', 'latex');
    ylabel('\textbf{dB}', 'Interpreter', 'latex');
    xlim([1.6 2.0]);
    ylim([0 65]);
    grid;
    set(gca, 'FontName', 'Times New Roman');
end

noise = false;
if noise
%     hnoise1 = load_ngspice('gm_c_stage_noise1.raw');
    hnoise1 = load_ngspice('diff_fold_casc_ota_noise1.raw');
    f = hnoise1.frequency;
    onoise_spectrum = hnoise1.v_onoise_spectrum;
    inoise_spectrum = hnoise1.v_inoise_spectrum;

    figure(2);
    subplot(211);
    semilogx(f, onoise_spectrum, 'linewidth', 0.75);
    title('\textbf{Output Noise Spectral Density}', 'Interpreter', 'latex');
    xlabel('\textbf{Frequency (Hz)}', 'Interpreter', 'latex');
    ylabel('\textbf{Noise Spectral Density ($V/\sqrt{Hz}$)}', 'Interpreter', 'latex');
    xlim([min(f) max(f)]);
    grid on;
    set(gca, 'FontName', 'Times New Roman');
    hold on;

    subplot(212);
    semilogx(f, inoise_spectrum, 'linewidth', 0.75);
    title('\textbf{Input-Referred Noise Spectral Density}', 'Interpreter', 'latex');
    xlabel('\textbf{Frequency (Hz)}', 'Interpreter', 'latex');
    ylabel('\textbf{Noise Spectral Density ($V/\sqrt{Hz}$)}', 'Interpreter', 'latex');
    xlim([min(f) max(f)]);
    grid on;
    set(gca, 'FontName', 'Times New Roman');
    hold on;
    
    integ_out = cumtrapz(f, onoise_spectrum.^2);
    integ_sqrt_out = sqrt(integ_out);
    integ_final_out = integ_sqrt_out(end);
    
    integ_in = cumtrapz(f, inoise_spectrum.^2);
    integ_sqrt_in = sqrt(integ_in);
    integ_final_in = integ_sqrt_in(end);

%     hnoise2 = load_ngspice('gm_c_stage_noise2.raw');
    hnoise2 = load_ngspice('diff_fold_casc_ota_noise2.raw');
    onoise_total = hnoise2.v_onoise_total;
    inoise_total = hnoise2.v_inoise_total;
end

tran_analysis = false;
if tran_analysis
    htran = load_ngspice(rawfilename_tran);
    times = htran.time * 1e6;
    vin_tran = htran.v_vip - htran.v_vim;
    vout_tran = htran.v_vop - htran.v_vom;

    figure(3);
    subplot(211);
    plot(times, vin_tran, 'linewidth', 0.75);
    title('\textbf{Differential $V_{in}$ Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time ($\mu$s)}', 'Interpreter', 'latex');
    % ylabel('\textbf{Differential $V_{in}$ (V)}', 'Interpreter', 'latex');
    ylabel('\textbf{$V_{out}$ (V)}', 'Interpreter', 'latex');
    xlim([min(times) max(times)]);
    ylim([-0.5e-2 1.5e-2]);
    grid;
    set(gca, 'FontName', 'Times New Roman');

    subplot(212);
    plot(times, vout_tran, 'linewidth', 0.75);
    title('\textbf{Differential $V_{out}$ Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time ($\mu$s)}', 'Interpreter', 'latex');
    ylabel('\textbf{Differential $V_{out}$ (V)}', 'Interpreter', 'latex');
    xlim([min(times) max(times)]);
    ylim([-0.5e-2 1.5e-2]);
    grid;
    set(gca, 'FontName', 'Times New Roman');
end


%% Single-Ended OTA/Op-Amp Analysis.

% Load data.
clc; clear; close all;

rawfilename_ac = 'se_fold_casc_wide_swing_ota_lvs_ac.raw';
rawfilename_tran = 'se_ota_tb_tran.raw';
htran = load_ngspice(rawfilename_tran);
vdd = 1.8;
vincm_min = 0.4;
vincm_max = 1.4;
vincm_step = 0.1;

ac_sweep = true;
if ac_sweep
    phase_margins = zeros(1, length(vincm_min:vincm_step:vincm_max));
    bandwidths = zeros(1, length(vincm_min:vincm_step:vincm_max));
    gains = zeros(1, length(vincm_min:vincm_step:vincm_max));
    for i=1:length(vincm_min:vincm_step:vincm_max)
        vincm = vincm_min + vincm_step*(i-1);
        hac = load_ngspice('se_fold_casc_wide_swing_ota_lvs_ac_' + string(vincm) + '.raw');
        vo_ac = hac.v_vo;
        f = hac.frequency;
        ac_mag = mag2db(abs(vo_ac));
        ac_phase = (unwrap(angle(vo_ac)) - ...
            unwrap(angle(hac.v_vip - hac.v_vim))) * (180/pi);
        [~, idx] = min(abs(ac_mag-(ac_mag(1)-3)));
        bandwidths(i) = f(idx);
        [~, phase_margins(i), ~, ~] = margin(abs(vo_ac), ac_phase, f);
        gains(i) = ac_mag(1);

        figure(1);
        subplot(211);
        semilogx(f, ac_phase, 'linewidth', 0.75);
        title('\textbf{AC Response Phase}', 'Interpreter', 'latex');
        xlabel('\textbf{Frequency (Hz)}', 'Interpreter', 'latex');
        ylabel('\textbf{Degrees}', 'Interpreter', 'latex');
        xlim([min(f) max(f)]);
        ylim([-400 0]);
        grid;
        set(gca, 'FontName', 'Times New Roman');
        hold on;

        subplot(212);
        semilogx(f, ac_mag, 'linewidth', 0.75);
        title('\textbf{AC Response Magnitude}', 'Interpreter', 'latex');
        xlabel('\textbf{Frequency (Hz)}', 'Interpreter', 'latex');
        ylabel('\textbf{dB}', 'Interpreter', 'latex');
        xlim([min(f) max(f)]);
        % ylim([0 40]);
        grid;
        set(gca, 'FontName', 'Times New Roman');
        hold on;
    end
    subplot(211);
    legend({'$V_{in,cm} = 0.4 V$', '$V_{in,cm} = 0.5 V$', '$V_{in,cm} = 0.6 V$', '$V_{in,cm} = 0.7 V$', ...
        '$V_{in,cm} = 0.8 V$', '$V_{in,cm} = 0.9 V$', '$V_{in,cm} = 1.0 V$', '$V_{in,cm} = 1.1 V$', ...
        '$V_{in,cm} = 1.2 V$', '$V_{in,cm} = 1.3 V$', '$V_{in,cm} = 1.4 V$'}, 'Location', 'northeastoutside', ...
        'Interpreter', 'latex');
    subplot(212);
    legend({'$V_{in,cm} = 0.4 V$', '$V_{in,cm} = 0.5 V$', '$V_{in,cm} = 0.6 V$', '$V_{in,cm} = 0.7 V$', ...
        '$V_{in,cm} = 0.8 V$', '$V_{in,cm} = 0.9 V$', '$V_{in,cm} = 1.0 V$', '$V_{in,cm} = 1.1 V$', ...
        '$V_{in,cm} = 1.2 V$', '$V_{in,cm} = 1.3 V$', '$V_{in,cm} = 1.4 V$'}, 'Location', 'northeastoutside', ...
        'Interpreter', 'latex');
    hold off;
    
    figure(5);
    subplot(311);
    plot(0.7:vincm_step:vincm_max, phase_margins(4:end), 'linewidth', 0.75);
    title('\textbf{Unity Gain Feedback Phase Margin}', 'Interpreter', 'latex');
    xlabel('\textbf{Input Common Mode (V)}', 'Interpreter', 'latex');
    ylabel('\textbf{Degrees}', 'Interpreter', 'latex');
    xlim([0.6 vincm_max+0.1]);
    ylim([15 80]);
    grid;
    set(gca, 'FontName', 'Times New Roman');
    
    subplot(312);
    semilogy(0.7:vincm_step:vincm_max, bandwidths(4:end), 'linewidth', 0.75);
    title('\textbf{3-dB Bandwidth}', 'Interpreter', 'latex');
    xlabel('\textbf{Input Common Mode (V)}', 'Interpreter', 'latex');
    ylabel('\textbf{Hz}', 'Interpreter', 'latex');
    xlim([0.6 vincm_max+0.1]);
    ylim([1e0 1e4]);
    grid;
    set(gca, 'FontName', 'Times New Roman');

    subplot(313);
    plot(0.7:vincm_step:vincm_max, gains(4:end), 'linewidth', 0.75);
    title('\textbf{Open-Loop Gain}', 'Interpreter', 'latex');
    xlabel('\textbf{Input Common Mode (V)}', 'Interpreter', 'latex');
    ylabel('\textbf{dB}', 'Interpreter', 'latex');
    xlim([0.6 vincm_max+0.1]);
    ylim([30 90]);
    grid;
    set(gca, 'FontName', 'Times New Roman');
else
    hac = load_ngspice(rawfilename_ac);
    vo_ac = hac.v_vo;
    f = hac.frequency;
    ac_mag = mag2db(abs(vo_ac));
    ac_phase = (unwrap(angle(vo_ac)) - ...
        unwrap(angle(hac.v_vip - hac.v_vim))) * (180/pi);
    [~, idx] = min(abs(ac_mag-(ac_mag(1)-3)));
    bandwidth = f(idx);
    [~, phase_margin, ~, ~] = margin(abs(vo_ac), ac_phase, f);

    figure(1);
    subplot(211);
    semilogx(f, ac_phase, 'linewidth', 0.75);
    title('\textbf{AC Response Phase}', 'Interpreter', 'latex');
    xlabel('\textbf{Frequency (Hz)}', 'Interpreter', 'latex');
    ylabel('\textbf{Degrees}', 'Interpreter', 'latex');
    xlim([min(f) max(f)]);
    % ylim([0 40]);
    grid;
    set(gca, 'FontName', 'Times New Roman');
    hold on;

    subplot(212);
    semilogx(f, ac_mag, 'linewidth', 0.75);
    title('\textbf{AC Response Magnitude}', 'Interpreter', 'latex');
    xlabel('\textbf{Frequency (Hz)}', 'Interpreter', 'latex');
    ylabel('\textbf{dB}', 'Interpreter', 'latex');
    xlim([min(f) max(f)]);
    % ylim([0 40]);
    grid;
    set(gca, 'FontName', 'Times New Roman');
end

temp_sweep = false;
if temp_sweep
    phase_margins = zeros(1, length(-40:10:120));
    bandwidths = zeros(1, length(-40:10:120));
    gains = zeros(1, length(-40:10:120));
    for i=1:length(-40:10:120)
        temp = -40 + (i-1)*10;
        hac = load_ngspice('se_fold_casc_wide_swing_opamp_temp_' + string(temp) + '.raw');
        vo_ac = hac.v_vo;
        f = hac.frequency;
        ac_mag = mag2db(abs(vo_ac));
        ac_phase = (unwrap(angle(vo_ac)) - ...
            unwrap(angle(hac.v_vip - hac.v_vim))) * (180/pi);
        [~, idx] = min(abs(ac_mag-(ac_mag(1)-3)));
        bandwidths(i) = f(idx);
        [~, phase_margins(i), ~, ~] = margin(abs(vo_ac), ac_phase, f);
        gains(i) = ac_mag(1);
    end
    
    figure(5);
    subplot(311);
    plot(-40:10:120, phase_margins, 'linewidth', 0.75);
    title('\textbf{Unity Gain Feedback Phase Margin}', 'Interpreter', 'latex');
    xlabel('\textbf{Temperature (C)}', 'Interpreter', 'latex');
    ylabel('\textbf{Degrees}', 'Interpreter', 'latex');
    xlim([-40 125]);
    ylim([50 90]);
    grid;
    set(gca, 'FontName', 'Times New Roman');
    
    subplot(312);
    semilogy(-40:10:120, bandwidths, 'linewidth', 0.75);
    title('\textbf{3-dB Bandwidth}', 'Interpreter', 'latex');
    xlabel('\textbf{Temperature (C)}', 'Interpreter', 'latex');
    ylabel('\textbf{Hz}', 'Interpreter', 'latex');
    xlim([-40 125]);
    ylim([1e0 1e5]);
    grid;
    set(gca, 'FontName', 'Times New Roman');

    subplot(313);
    plot(-40:10:120, gains, 'linewidth', 0.75);
    title('\textbf{Open-Loop Gain}', 'Interpreter', 'latex');
    xlabel('\textbf{Temperature (C)}', 'Interpreter', 'latex');
    ylabel('\textbf{dB}', 'Interpreter', 'latex');
    xlim([-40 125]);
    ylim([30 65]);
    grid;
    set(gca, 'FontName', 'Times New Roman');
end

vdd_sweep = false;
if vdd_sweep
    phase_margins = zeros(1, length(1.62:0.04:1.98));
    bandwidths = zeros(1, length(1.62:0.04:1.98));
    gains = zeros(1, length(1.62:0.04:1.98));
    for i=1:length(1.62:0.04:1.98)
        vdd = 1.62 + (i-1)*0.04;
        hac = load_ngspice('se_fold_casc_wide_swing_opamp_vdd_' + string(vdd) + '.raw');
        vo_ac = hac.v_vo;
        f = hac.frequency;
        ac_mag = mag2db(abs(vo_ac));
        ac_phase = (unwrap(angle(vo_ac)) - ...
            unwrap(angle(hac.v_vip - hac.v_vim))) * (180/pi);
        [~, idx] = min(abs(ac_mag-(ac_mag(1)-3)));
        bandwidths(i) = f(idx);
        [~, phase_margins(i), ~, ~] = margin(abs(vo_ac), ac_phase, f);
        gains(i) = ac_mag(1);
    end

    figure(5);
    subplot(311);
    plot(1.62:0.04:1.98, phase_margins, 'linewidth', 0.75);
    title('\textbf{Unity Gain Feedback Phase Margin}', 'Interpreter', 'latex');
    xlabel('\textbf{$V_{DD}$ (V)}', 'Interpreter', 'latex');
    ylabel('\textbf{Degrees}', 'Interpreter', 'latex');
    xlim([1.6 2.0]);
    ylim([50 70]);
    grid;
    set(gca, 'FontName', 'Times New Roman');
    
    subplot(312);
    semilogy(1.62:0.04:1.98, bandwidths, 'linewidth', 0.75);
    title('\textbf{3-dB Bandwidth}', 'Interpreter', 'latex');
    xlabel('\textbf{$V_{DD}$ (V)}', 'Interpreter', 'latex');
    ylabel('\textbf{Hz}', 'Interpreter', 'latex');
    xlim([1.6 2.0]);
    ylim([1e0 1e4]);
    grid;
    set(gca, 'FontName', 'Times New Roman');

    subplot(313);
    plot(1.62:0.04:1.98, gains, 'linewidth', 0.75);
    title('\textbf{Open-Loop Gain}', 'Interpreter', 'latex');
    xlabel('\textbf{$V_{DD}$ (V)}', 'Interpreter', 'latex');
    ylabel('\textbf{dB}', 'Interpreter', 'latex');
    xlim([1.6 2.0]);
    ylim([55 65]);
    grid;
    set(gca, 'FontName', 'Times New Roman');
end

noise = false;
if noise
    hnoise1 = load_ngspice('se_fold_casc_wide_swing_opamp_noise1.raw');
    f = hnoise1.frequency;
    onoise_spectrum = hnoise1.v_onoise_spectrum;
    inoise_spectrum = hnoise1.v_inoise_spectrum;

    figure(2);
    subplot(211);
    semilogx(f, onoise_spectrum, 'linewidth', 0.75);
    title('\textbf{Output Noise Spectral Density}', 'Interpreter', 'latex');
    xlabel('\textbf{Frequency (Hz)}', 'Interpreter', 'latex');
    ylabel('\textbf{Noise Spectral Density ($V/\sqrt{Hz}$)}', 'Interpreter', 'latex');
    xlim([min(f) max(f)]);
    grid on;
    set(gca, 'FontName', 'Times New Roman');
    hold on;

    subplot(212);
    semilogx(f, inoise_spectrum, 'linewidth', 0.75);
    title('\textbf{Input-Referred Noise Spectral Density}', 'Interpreter', 'latex');
    xlabel('\textbf{Frequency (Hz)}', 'Interpreter', 'latex');
    ylabel('\textbf{Noise Spectral Density ($V/\sqrt{Hz}$)}', 'Interpreter', 'latex');
    xlim([min(f) max(f)]);
    grid on;
    set(gca, 'FontName', 'Times New Roman');
    hold on;
    
    integ_out = cumtrapz(f, onoise_spectrum.^2);
    integ_sqrt_out = sqrt(integ_out);
    integ_final_out = integ_sqrt_out(end);
    
    integ_in = cumtrapz(f, inoise_spectrum.^2);
    integ_sqrt_in = sqrt(integ_in);
    integ_final_in = integ_sqrt_in(end);

    hnoise2 = load_ngspice('se_fold_casc_wide_swing_opamp_noise2.raw');
    onoise_total = hnoise2.v_onoise_total;
    inoise_total = hnoise2.v_inoise_total;
end

tran_analysis = false;
if tran_analysis
    tran_interval = 5e-6;
    tran_start = 0;
    times = htran.time;
    vin = htran.v_vin;
    vo = htran.v_vo;
    vincm = 1.2;
    offset = vin(1) - vo(1);

    figure(3);
    subplot(211);
    plot(times, vin-vincm, 'linewidth', 0.75);
    title('\textbf{$V_{in}$ Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
    ylabel('\textbf{$V_{in}$ (V)}', 'Interpreter', 'latex');
    xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
    ylim([-5e-3 15e-3]);
    grid;

    subplot(212);
    plot(times, vo-vincm+offset, 'linewidth', 0.75);
    title('\textbf{$V_{o}$ Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
    ylabel('\textbf{$V_{o}$ (V)}', 'Interpreter', 'latex');
    xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
    ylim([-5e-3 15e-3]);
    grid;
end


%% Comparator Analysis.

% Load data.
clc; clear; close all;
rawfilename_ac = 'comparator_lvs_ac.raw';
rawfilename_dc = 'comparator_lvs_dc.raw';
rawfilename_tran = 'comparator_lvs_tran.raw';
vdd = 1.8;

ac_analysis = false;
if ac_analysis
    hac = load_ngspice(rawfilename_ac);
    vo_ac = hac.v_vo;
    f = hac.frequency;
    ac_mag = mag2db(abs(vo_ac));
    ac_phase = (unwrap(angle(vo_ac)) - ...
        unwrap(angle(hac.v_vip - hac.v_vim))) * (180/pi);
    [~, idx] = min(abs(ac_mag-(ac_mag(1)-3)));
    pole1 = f(idx);
    [~, phase_margin, ~, ~] = margin(abs(vo_ac), ac_phase, f);

    figure(1);
    subplot(211);
    semilogx(f, ac_phase, 'linewidth', 0.75);
    title('\textbf{AC Response Phase}', 'Interpreter', 'latex');
    xlabel('\textbf{Frequency (Hz)}', 'Interpreter', 'latex');
    ylabel('\textbf{Degrees}', 'Interpreter', 'latex');
    xlim([min(f) max(f)]);
    % ylim([0 40]);
    grid;
    set(gca, 'FontName', 'Times New Roman');
    subplot(212);
    semilogx(f, ac_mag, 'linewidth', 0.75);
    title('\textbf{AC Response Magnitude}', 'Interpreter', 'latex');
    xlabel('\textbf{Frequency (Hz)}', 'Interpreter', 'latex');
    ylabel('\textbf{dB}', 'Interpreter', 'latex');
    xlim([min(f) max(f)]);
    ylim([0 110]);
    grid;
    set(gca, 'FontName', 'Times New Roman');
end

dc_analysis = false;
if dc_analysis
    vincm = 0.9;
    hdc = load_ngspice(rawfilename_dc);
    vin_dc = hdc.v_vip - vincm;
    vout_dc = hdc.v_vo;
    
    figure(2);
    plot(vin_dc*1e6, vout_dc, 'linewidth', 0.75);
    title('\textbf{DC Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Differential $V_{in}$ ($\mu$V)}', 'Interpreter', 'latex');
    ylabel('\textbf{$V_{out}$ (V)}', 'Interpreter', 'latex');
    xlim([min(vin_dc)*1e6 max(vin_dc)*1e6]);
    % ylim([0 40]);
    grid;
    set(gca, 'FontName', 'Times New Roman');
end

tran_analysis = true;
if tran_analysis
    htran = load_ngspice(rawfilename_tran);
    times = htran.time * 1e9;
    vin_tran = htran.v_vip - htran.v_vim;
    vout_tran = htran.v_vo;
    
    figure(3);
    subplot(211);
    plot(times, vin_tran, 'linewidth', 0.75);
    title('\textbf{Differential $V_{in}$ Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time (ns)}', 'Interpreter', 'latex');
    ylabel('\textbf{Differential $V_{in}$ (V)}', 'Interpreter', 'latex');
    xlim([min(times)+40 max(times)]);
    ylim([-1.5e-2 1.5e-2]);
    grid;
    set(gca, 'FontName', 'Times New Roman');

    subplot(212);
    plot(times, vout_tran, 'linewidth', 0.75);
    title('\textbf{$V_{out}$ Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time (ns)}', 'Interpreter', 'latex');
    ylabel('\textbf{$V_{out}$ (V)}', 'Interpreter', 'latex');
    xlim([min(times)+40 max(times)]);
    ylim([-0.1 vdd+0.1]);
    grid;
    set(gca, 'FontName', 'Times New Roman');

    figure(4);
    subplot(311);
    plot(times, htran.v_vip, 'linewidth', 0.75);
    title('\textbf{Differential $V_{in,p}$ Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time (ns)}', 'Interpreter', 'latex');
    ylabel('\textbf{Differential $V_{in,p}$ (V)}', 'Interpreter', 'latex');
    xlim([min(times)+40 max(times)]);
%     ylim([-1.5e-2 1.5e-2]);
    grid;
    set(gca, 'FontName', 'Times New Roman');

    subplot(312);
    plot(times, htran.v_vim, 'linewidth', 0.75);
    title('\textbf{Differential $V_{in,m}$ Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time (ns)}', 'Interpreter', 'latex');
    ylabel('\textbf{Differential $V_{in,m}$ (V)}', 'Interpreter', 'latex');
    xlim([min(times)+40 max(times)]);
%     ylim([-1.5e-2 1.5e-2]);
    grid;
    set(gca, 'FontName', 'Times New Roman');

    subplot(313);
    plot(times, vout_tran, 'linewidth', 0.75);
    title('\textbf{$V_{out}$ Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time (ns)}', 'Interpreter', 'latex');
    ylabel('\textbf{$V_{out}$ (V)}', 'Interpreter', 'latex');
    xlim([min(times)+40 max(times)]);
    ylim([-0.1 vdd+0.1]);
    grid;
    set(gca, 'FontName', 'Times New Roman');
end


%% Latched Comparator Analysis.

% Load data.
clc; clear; close all;
rawfilename_ac = 'latched_comparator_folded_lvs_ac.raw';
rawfilename_dc = 'latched_comparator_folded_lvs_dc.raw';
rawfilename_tran = 'latched_comparator_folded_lvs_tran.raw';
% hac = load_ngspice(rawfilename_ac);
% hdc = load_ngspice(rawfilename_dc);
htran = load_ngspice(rawfilename_tran);
vdd = 1.8;

% vo_ac = hac.v_vop;
% f = hac.frequency;
% ac_mag = mag2db(abs(vo_ac));
% ac_phase = (unwrap(angle(vo_ac)) - ...
%     unwrap(angle(hac.v_vip - hac.v_vim))) * (180/pi);
% [~, idx] = min(abs(ac_mag-(ac_mag(1)-3)));
% pole1 = f(idx);
% [~, phase_margin, ~, ~] = margin(abs(vo_ac), ac_phase, f);
% 
% vin_dc = hdc.v_vip - hdc.v_vim;
% vout_dc = hdc.v_vcompp_buf;

times = htran.time * 1e9;
vin_tran = htran.v_vip - htran.v_vim;
vcompp_tran = htran.v_x1_vcompp;
vcompm_tran = htran.v_x1_vcompm;
vcompp_buf_tran = htran.v_x1_vcompp_buf;
vcompm_buf_tran = htran.v_x1_vcompm_buf;
vlatchp_tran = htran.v_x1_vlatchp;
vlatchm_tran = htran.v_x1_vlatchm;
vop_tran = htran.v_vop;
vom_tran = htran.v_vom;
vclk = htran.v_clk;

% figure(1);
% subplot(211);
% semilogx(f, ac_phase, 'linewidth', 0.75);
% title('\textbf{AC Response Phase}', 'Interpreter', 'latex');
% xlabel('\textbf{Frequency (Hz)}', 'Interpreter', 'latex');
% ylabel('\textbf{Degrees}', 'Interpreter', 'latex');
% xlim([min(f) max(f)]);
% % ylim([0 40]);
% grid;
% set(gca, 'FontName', 'Times New Roman');
% subplot(212);
% semilogx(f, ac_mag, 'linewidth', 0.75);
% title('\textbf{AC Response Magnitude}', 'Interpreter', 'latex');
% xlabel('\textbf{Frequency (Hz)}', 'Interpreter', 'latex');
% ylabel('\textbf{dB}', 'Interpreter', 'latex');
% xlim([min(f) max(f)]);
% ylim([0 110]);
% grid;
% set(gca, 'FontName', 'Times New Roman');
% 
% figure(2);
% plot(vin_dc*1e3, vout_dc, 'linewidth', 0.75);
% title('\textbf{DC Response}', 'Interpreter', 'latex');
% xlabel('\textbf{Differential $V_{in}$ (mV)}', 'Interpreter', 'latex');
% ylabel('\textbf{$V_{out}$ (V)}', 'Interpreter', 'latex');
% xlim([min(vin_dc)*1e3 max(vin_dc)*1e3]);
% % ylim([0 40]);
% grid;
% set(gca, 'FontName', 'Times New Roman');

figure(3);
subplot(10,1,1);
plot(times, vin_tran, 'linewidth', 0.75);
title('\textbf{Differential $V_{in}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (ns)}', 'Interpreter', 'latex');
ylabel('\textbf{Differential $V_{in}$ (V)}', 'Interpreter', 'latex');
xlim([min(times) max(times)]);
ylim([-3*max(vin_tran) 3*max(vin_tran)]);
grid;
set(gca, 'FontName', 'Times New Roman');

subplot(10,1,2);
plot(times, vclk, 'linewidth', 0.75);
title('\textbf{$V_{clk}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (ns)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{clk}$ (V)}', 'Interpreter', 'latex');
xlim([min(times) max(times)]);
ylim([-0.3 vdd+0.3]);
grid;
set(gca, 'FontName', 'Times New Roman');

subplot(10,1,3);
plot(times, vcompp_tran, 'linewidth', 0.75);
title('\textbf{$V_{comp,p}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (ns)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{comp,p}$ (V)}', 'Interpreter', 'latex');
xlim([min(times) max(times)]);
ylim([-0.6 vdd+0.6]);
grid;
set(gca, 'FontName', 'Times New Roman');

subplot(10,1,4);
plot(times, vcompm_tran, 'linewidth', 0.75);
title('\textbf{$V_{comp,m}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (ns)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{comp,m}$ (V)}', 'Interpreter', 'latex');
xlim([min(times) max(times)]);
ylim([-0.6 vdd+0.6]);
grid;
set(gca, 'FontName', 'Times New Roman');

subplot(10,1,5);
plot(times, vlatchp_tran, 'linewidth', 0.75);
title('\textbf{$V_{latch,p}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (ns)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{latch,p}$ (V)}', 'Interpreter', 'latex');
xlim([min(times) max(times)]);
ylim([-0.6 vdd+0.6]);
grid;
set(gca, 'FontName', 'Times New Roman');

subplot(10,1,6);
plot(times, vlatchm_tran, 'linewidth', 0.75);
title('\textbf{$V_{latch,m}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (ns)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{latch,m}$ (V)}', 'Interpreter', 'latex');
xlim([min(times) max(times)]);
ylim([-0.6 vdd+0.6]);
grid;
set(gca, 'FontName', 'Times New Roman');

subplot(10,1,7);
plot(times, vcompp_buf_tran, 'linewidth', 0.75);
title('\textbf{$V_{comp,buf,p}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (ns)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{comp,buf,p}$ (V)}', 'Interpreter', 'latex');
xlim([min(times) max(times)]);
ylim([-0.3 vdd+0.3]);
grid;
set(gca, 'FontName', 'Times New Roman');

subplot(10,1,8);
plot(times, vcompm_buf_tran, 'linewidth', 0.75);
title('\textbf{$V_{comp,buf,m}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (ns)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{comp,buf,m}$ (V)}', 'Interpreter', 'latex');
xlim([min(times) max(times)]);
ylim([-0.3 vdd+0.3]);
grid;
set(gca, 'FontName', 'Times New Roman');

subplot(10,1,9);
plot(times, vop_tran, 'linewidth', 0.75);
title('\textbf{$V_{out,p}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (ns)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{out,p}$ (V)}', 'Interpreter', 'latex');
xlim([min(times) max(times)]);
ylim([-0.3 vdd+0.3]);
grid;
set(gca, 'FontName', 'Times New Roman');

subplot(10,1,10);
plot(times, vom_tran, 'linewidth', 0.75);
title('\textbf{$V_{out,m}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (ns)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{out,m}$ (V)}', 'Interpreter', 'latex');
xlim([min(times) max(times)]);
ylim([-0.3 vdd+0.3]);
grid;
set(gca, 'FontName', 'Times New Roman');

current_debug = false;
if current_debug
    figure(4);
    subplot(10,1,1);
    plot(times, vin_tran, 'linewidth', 0.75);
    title('\textbf{Differential $V_{in}$ Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time (ns)}', 'Interpreter', 'latex');
    ylabel('\textbf{Differential $V_{in}$ (V)}', 'Interpreter', 'latex');
    xlim([min(times) max(times)]);
    ylim([-3*max(vin_tran) 3*max(vin_tran)]);
    grid;
    set(gca, 'FontName', 'Times New Roman');

    subplot(10,1,2);
    plot(times, vclk, 'linewidth', 0.75);
    title('\textbf{$V_{clk}$ Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time (ns)}', 'Interpreter', 'latex');
    ylabel('\textbf{$V_{clk}$ (V)}', 'Interpreter', 'latex');
    xlim([min(times) max(times)]);
    ylim([-0.3 vdd+0.3]);
    grid;
    set(gca, 'FontName', 'Times New Roman');

    subplot(10,1,3);
    plot(times, htran.i_m_x1_xm16_msky130_fd_pr__pfet_01v8_id, 'linewidth', 0.75);
    title('\textbf{M16 Current Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time (ns)}', 'Interpreter', 'latex');
    ylabel('\textbf{$I_{M16}$ (A)}', 'Interpreter', 'latex');
    xlim([min(times) max(times)]);
    % ylim([-0.3 vdd+0.3]);
    grid;
    set(gca, 'FontName', 'Times New Roman');

    subplot(10,1,4);
    plot(times, htran.i_m_x1_xm1_msky130_fd_pr__pfet_01v8_lvt_id, 'linewidth', 0.75);
    title('\textbf{M1 Current Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time (ns)}', 'Interpreter', 'latex');
    ylabel('\textbf{$I_{M1}$ (A)}', 'Interpreter', 'latex');
    xlim([min(times) max(times)]);
    % ylim([-0.3 vdd+0.3]);
    grid;
    set(gca, 'FontName', 'Times New Roman');

    subplot(10,1,5);
    plot(times, htran.i_m_x1_xm2_msky130_fd_pr__pfet_01v8_lvt_id, 'linewidth', 0.75);
    title('\textbf{M2 Current Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time (ns)}', 'Interpreter', 'latex');
    ylabel('\textbf{$I_{M2}$ (A)}', 'Interpreter', 'latex');
    xlim([min(times) max(times)]);
    % ylim([-0.3 vdd+0.3]);
    grid;
    set(gca, 'FontName', 'Times New Roman');

    subplot(10,1,6);
    plot(times, htran.i_m_x1_xm14_msky130_fd_pr__nfet_01v8_id, 'linewidth', 0.75);
    title('\textbf{M14 Current Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time (ns)}', 'Interpreter', 'latex');
    ylabel('\textbf{$I_{M14}$ (A)}', 'Interpreter', 'latex');
    xlim([min(times) max(times)]);
    % ylim([-0.3 vdd+0.3]);
    grid;
    set(gca, 'FontName', 'Times New Roman');

    subplot(10,1,7);
    plot(times, htran.i_m_x1_xm12_msky130_fd_pr__nfet_01v8_id, 'linewidth', 0.75);
    title('\textbf{M12 Current Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time (ns)}', 'Interpreter', 'latex');
    ylabel('\textbf{$I_{M12}$ (A)}', 'Interpreter', 'latex');
    xlim([min(times) max(times)]);
    % ylim([-0.3 vdd+0.3]);
    grid;
    set(gca, 'FontName', 'Times New Roman');

    subplot(10,1,8);
    plot(times, htran.i_m_x1_xm17_msky130_fd_pr__nfet_01v8_id, 'linewidth', 0.75);
    title('\textbf{M17 Current Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time (ns)}', 'Interpreter', 'latex');
    ylabel('\textbf{$I_{M17}$ (A)}', 'Interpreter', 'latex');
    xlim([min(times) max(times)]);
    % ylim([-0.3 vdd+0.3]);
    grid;
    set(gca, 'FontName', 'Times New Roman');

    subplot(10,1,9);
    plot(times, htran.i_m_x1_xm28_msky130_fd_pr__nfet_01v8_id, 'linewidth', 0.75);
    title('\textbf{M28 Current Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time (ns)}', 'Interpreter', 'latex');
    ylabel('\textbf{$I_{M28}$ (A)}', 'Interpreter', 'latex');
    xlim([min(times) max(times)]);
    % ylim([-0.3 vdd+0.3]);
    grid;
    set(gca, 'FontName', 'Times New Roman');

    subplot(10,1,10);
    plot(times, htran.i_m_x1_xm32_msky130_fd_pr__pfet_01v8_lvt_id, 'linewidth', 0.75);
    title('\textbf{M32 Current Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time (ns)}', 'Interpreter', 'latex');
    ylabel('\textbf{$I_{M32}$ (A)}', 'Interpreter', 'latex');
    xlim([min(times) max(times)]);
    % ylim([-0.3 vdd+0.3]);
    grid;
    set(gca, 'FontName', 'Times New Roman');
end


%% Ring Oscillator Analysis.
clc; clear; close all;

vdd = 1.8;
tran_sweep = true;
if tran_sweep
    vctrl_l = 0.6;
    vctrl_h = 1.15;
    vctrl_step = 0.05;
    num_sweeps = int16((vctrl_h - vctrl_l) / vctrl_step) + 1;
    time_step = 10e-9;
    freqs = zeros(num_sweeps, 1);
    periods = zeros(num_sweeps, 1);
    freqs_out = zeros(num_sweeps, 1);
    periods_out = zeros(num_sweeps, 1);
    tran_interval = 1e-3;
    tran_start = 0e-3;
    freq_div = false;

    for i=1:num_sweeps
        vctrl = vctrl_l + vctrl_step*double(i-1);
        if freq_div
            htran = load_ngspice('cs_ring_osc_div_tran_' + string(vctrl) + '.raw');
        else
            htran = load_ngspice('cs_ring_osc_pex_tran_' + string(vctrl) + '.raw');
        end

        times = htran.time;
%         vin = htran.v_vin;
%         vin_buf = htran.v_vin_buf;
        vin = htran.v_vosc;
        vin_buf = htran.v_voscbuf;
        
        figure(1);
%         subplot(double(num_sweeps), 1, double(i));
        subplot(911);
        plot(times, vin, 'linewidth', 0.75);
        title_text = ['\textbf{$V_{in}$ Transient Response, $V_{ctrl}=', ...
            num2str(vctrl), '$}'];
        title(title_text, 'Interpreter', 'latex');
        xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
        ylabel('\textbf{$V_{in}$ (V)}', 'Interpreter', 'latex');
%         xlim([min(times) max(times)]);
        xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
        ylim([-0.3 vdd+0.3]);
        grid;
        
%         figure(2);
%         subplot(double(num_sweeps), 1, double(i));
        subplot(912);
        plot(times, vin_buf, 'linewidth', 0.75);
        title_text = ['\textbf{$V_{inbuf}$ Transient Response, $V_{ctrl}=', ...
            num2str(vctrl), '$}'];
        title(title_text, 'Interpreter', 'latex');
        xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
        ylabel('\textbf{$V_{inbuf}$ (V)}', 'Interpreter', 'latex');
%         xlim([min(times) max(times)]);
        xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
        ylim([-0.3 vdd+0.3]);
        grid;

        if freq_div
    %         figure(3);
    %         subplot(double(num_sweeps), 1, double(i));
            subplot(913);
            plot(times, htran.v_vdff1, 'linewidth', 0.75);
            title_text = ['\textbf{$V_{dff1}$ Transient Response, $V_{ctrl}=', ...
                num2str(vctrl), '$}'];
            title(title_text, 'Interpreter', 'latex');
            xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
            ylabel('\textbf{$V_{dff1}$ (V)}', 'Interpreter', 'latex');
    %         xlim([min(times) max(times)]);
            xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
            ylim([-0.3 vdd+0.3]);
            grid;

    %         figure(4);
    %         subplot(double(num_sweeps), 1, double(i));
            subplot(914);
            plot(times, htran.v_vdff2, 'linewidth', 0.75);
            title_text = ['\textbf{$V_{dff2}$ Transient Response, $V_{ctrl}=', ...
                num2str(vctrl), '$}'];
            title(title_text, 'Interpreter', 'latex');
            xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
            ylabel('\textbf{$V_{dff2}$ (V)}', 'Interpreter', 'latex');
    %         xlim([min(times) max(times)]);
            xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
            ylim([-0.3 vdd+0.3]);
            grid;

    %         figure(5);
    %         subplot(double(num_sweeps), 1, double(i));
            subplot(915);
            plot(times, htran.v_vdff3, 'linewidth', 0.75);
            title_text = ['\textbf{$V_{dff3}$ Transient Response, $V_{ctrl}=', ...
                num2str(vctrl), '$}'];
            title(title_text, 'Interpreter', 'latex');
            xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
            ylabel('\textbf{$V_{dff3}$ (V)}', 'Interpreter', 'latex');
    %         xlim([min(times) max(times)]);
            xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
            ylim([-0.3 vdd+0.3]);
            grid;

    %         figure(6);
    %         subplot(double(num_sweeps), 1, double(i));
            subplot(916);
            plot(times, htran.v_vdff4, 'linewidth', 0.75);
            title_text = ['\textbf{$V_{dff4}$ Transient Response, $V_{ctrl}=', ...
                num2str(vctrl), '$}'];
            title(title_text, 'Interpreter', 'latex');
            xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
            ylabel('\textbf{$V_{dff4}$ (V)}', 'Interpreter', 'latex');
    %         xlim([min(times) max(times)]);
            xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
            ylim([-0.3 vdd+0.3]);
            grid;

            subplot(917);
            plot(times, htran.v_vdff5, 'linewidth', 0.75);
            title_text = ['\textbf{$V_{dff5}$ Transient Response, $V_{ctrl}=', ...
                num2str(vctrl), '$}'];
            title(title_text, 'Interpreter', 'latex');
            xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
            ylabel('\textbf{$V_{dff5}$ (V)}', 'Interpreter', 'latex');
    %         xlim([min(times) max(times)]);
            xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
            ylim([-0.3 vdd+0.3]);
            grid;

            subplot(918);
            plot(times, htran.v_vdff6, 'linewidth', 0.75);
            title_text = ['\textbf{$V_{dff6}$ Transient Response, $V_{ctrl}=', ...
                num2str(vctrl), '$}'];
            title(title_text, 'Interpreter', 'latex');
            xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
            ylabel('\textbf{$V_{dff6}$ (V)}', 'Interpreter', 'latex');
    %         xlim([min(times) max(times)]);
            xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
            ylim([-0.3 vdd+0.3]);
            grid;

            subplot(919);
            plot(times, htran.v_vdff7, 'linewidth', 0.75);
            title_text = ['\textbf{$V_{dff7}$ Transient Response, $V_{ctrl}=', ...
                num2str(vctrl), '$}'];
            title(title_text, 'Interpreter', 'latex');
            xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
            ylabel('\textbf{$V_{dff7}$ (V)}', 'Interpreter', 'latex');
    %         xlim([min(times) max(times)]);
            xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
            ylim([-0.3 vdd+0.3]);
            grid;

            debug = true;
            if debug
                figure(4);
                subplot(811);
                plot(times, htran.v_vdff2, 'linewidth', 0.75);
                title_text = ['\textbf{$V_{dff2}$ Transient Response, $V_{ctrl}=', ...
                    num2str(vctrl), '$}'];
                title(title_text, 'Interpreter', 'latex');
                xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
                ylabel('\textbf{$V_{dff2}$ (V)}', 'Interpreter', 'latex');
        %         xlim([min(times) max(times)]);
                xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
                ylim([-0.3 vdd+0.3]);
                grid;

                subplot(812);
                plot(times, htran.v_vdff3, 'linewidth', 0.75);
                title_text = ['\textbf{$V_{dff3}$ Transient Response, $V_{ctrl}=', ...
                    num2str(vctrl), '$}'];
                title(title_text, 'Interpreter', 'latex');
                xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
                ylabel('\textbf{$V_{dff3}$ (V)}', 'Interpreter', 'latex');
        %         xlim([min(times) max(times)]);
                xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
                ylim([-0.3 vdd+0.3]);
                grid;

                subplot(813);
                plot(times, htran.v_x9_q1, 'linewidth', 0.75);
                title_text = ['\textbf{$V_{x9.q1}$ Transient Response, $V_{ctrl}=', ...
                    num2str(vctrl), '$}'];
                title(title_text, 'Interpreter', 'latex');
                xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
                ylabel('\textbf{$V_{x9.q1}$ (V)}', 'Interpreter', 'latex');
        %         xlim([min(times) max(times)]);
                xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
                ylim([-0.3 vdd+0.3]);
                grid;

                subplot(814);
                plot(times, htran.v_x9_qb1, 'linewidth', 0.75);
                title_text = ['\textbf{$V_{x9.qb1}$ Transient Response, $V_{ctrl}=', ...
                    num2str(vctrl), '$}'];
                title(title_text, 'Interpreter', 'latex');
                xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
                ylabel('\textbf{$V_{x9.qb1}$ (V)}', 'Interpreter', 'latex');
        %         xlim([min(times) max(times)]);
                xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
                ylim([-0.3 vdd+0.3]);
                grid;

                subplot(815);
                plot(times, htran.v_x9_qint1, 'linewidth', 0.75);
                title_text = ['\textbf{$V_{x9.qint1}$ Transient Response, $V_{ctrl}=', ...
                    num2str(vctrl), '$}'];
                title(title_text, 'Interpreter', 'latex');
                xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
                ylabel('\textbf{$V_{x9.qint1}$ (V)}', 'Interpreter', 'latex');
        %         xlim([min(times) max(times)]);
                xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
                ylim([-0.3 vdd+0.3]);
                grid;

                subplot(816);
                plot(times, htran.v_x9_qbint1, 'linewidth', 0.75);
                title_text = ['\textbf{$V_{x9.qbint1}$ Transient Response, $V_{ctrl}=', ...
                    num2str(vctrl), '$}'];
                title(title_text, 'Interpreter', 'latex');
                xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
                ylabel('\textbf{$V_{x9.qbint1}$ (V)}', 'Interpreter', 'latex');
        %         xlim([min(times) max(times)]);
                xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
                ylim([-0.3 vdd+0.3]);
                grid;

                subplot(817);
                plot(times, htran.v_x9_qint2, 'linewidth', 0.75);
                title_text = ['\textbf{$V_{x9.qint2}$ Transient Response, $V_{ctrl}=', ...
                    num2str(vctrl), '$}'];
                title(title_text, 'Interpreter', 'latex');
                xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
                ylabel('\textbf{$V_{x9.qint2}$ (V)}', 'Interpreter', 'latex');
        %         xlim([min(times) max(times)]);
                xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
                ylim([-0.3 vdd+0.3]);
                grid;

                subplot(818);
                plot(times, htran.v_x9_qbint2, 'linewidth', 0.75);
                title_text = ['\textbf{$V_{x9.qbint2}$ Transient Response, $V_{ctrl}=', ...
                    num2str(vctrl), '$}'];
                title(title_text, 'Interpreter', 'latex');
                xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
                ylabel('\textbf{$V_{x9.qbint2}$ (V)}', 'Interpreter', 'latex');
        %         xlim([min(times) max(times)]);
                xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
                ylim([-0.3 vdd+0.3]);
                grid;
            end
        end
        
        levels = vin > vdd/2;
        transitions = diff(levels);
        rising_edge_indices = find(transitions == 1);
        periods(i) = (times(rising_edge_indices(end)) - ...
            times(rising_edge_indices(2))) / (length(rising_edge_indices) - 2);
        freqs(i) = 1 / periods(i);
        
%         levels_out = vout > vdd/2;
%         transitions_out = diff(levels_out);
%         rising_edge_indices_out = find(transitions_out == 1);
%         periods_out(i) = (times(rising_edge_indices_out(end)) - ...
%             times(rising_edge_indices_out(2))) / (length(rising_edge_indices_out) - 2);
%         freqs_out(i) = 1 / periods_out(i);
    end
    
    figure(7);
    plot(vctrl_l:vctrl_step:vctrl_h, freqs, 'linewidth', 0.75);
    title('\textbf{Input Frequency vs. $V_{ctrl}$}', 'Interpreter', 'latex');
    xlabel('\textbf{$V_{ctrl}$}', 'Interpreter', 'latex');
    ylabel('\textbf{Frequency}', 'Interpreter', 'latex');
    xlim([0.6 1.2]);
    grid;
    
    lin_ctrl_vals = 0.7:0.05:1.1;
    lin_val_idxl = find(abs((vctrl_l:vctrl_step:vctrl_h) - lin_ctrl_vals(1)) < 1e-4);
    lin_val_idxh = find(abs((vctrl_l:vctrl_step:vctrl_h) - lin_ctrl_vals(end)) < 1e-4);
    p = polyfit(lin_ctrl_vals, freqs(lin_val_idxl:lin_val_idxh), 1);
    yfit = polyval(p, lin_ctrl_vals);
    yresid = freqs(lin_val_idxl:lin_val_idxh)' - yfit;
    SSresid = sum(yresid.^2);
    SStotal = (length(freqs(lin_val_idxl:lin_val_idxh))-1) * ...
        var(freqs(lin_val_idxl:lin_val_idxh));
    rsq = 1 - SSresid/SStotal;
    rsq_adj = 1 - SSresid/SStotal * ...
        (length(freqs(lin_val_idxl:lin_val_idxh))-1)/...
        (length(freqs(lin_val_idxl:lin_val_idxh))-length(p));    

else
    % Load data.
    rawfilename_tran = 'cs_ring_osc_pex_tran.raw';
    htran = load_ngspice(rawfilename_tran);

    times = htran.time;
    tmax = 1e-3;
    vin_tran = htran.v_vosc;
    vin_buf = htran.v_voscbuf;

    figure(1);
    subplot(211);
    plot(times, vin_tran, 'linewidth', 0.75);
    title('\textbf{$V_{in}$ Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
    ylabel('\textbf{$V_{in}$ (V)}', 'Interpreter', 'latex');
    xlim([min(times) tmax]);
    ylim([-0.3 vdd+0.3]);
    grid;

    subplot(212);
    plot(times, vin_buf, 'linewidth', 0.75);
    title('\textbf{$V_{in,buf}$ Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
    ylabel('\textbf{$V_{in,buf}$ (V)}', 'Interpreter', 'latex');
    xlim([min(times) tmax]);
    ylim([-0.3 vdd+0.3]);
    grid;
    
    debug = false;
    if debug
        figure(2);
        subplot(411);
        plot(times, htran.i_m_x7_xm1_msky130_fd_pr__pfet_01v8_hvt_id, 'linewidth', 0.75);
        title('\textbf{$I_{x7,PMOS}$ Transient Response}', 'Interpreter', 'latex');
        xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
        ylabel('\textbf{$I_{x7,PMOS}$ (A)}', 'Interpreter', 'latex');
        xlim([min(times) tmax]);
    %     ylim([-0.3 vdd+0.3]);
        grid;

        subplot(412);
        plot(times, htran.i_m_x7_xm7_msky130_fd_pr__nfet_01v8_id, 'linewidth', 0.75);
        title('\textbf{$I_{x7,NMOS}$ Transient Response}', 'Interpreter', 'latex');
        xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
        ylabel('\textbf{$I_{x7,NMOS}$ (A)}', 'Interpreter', 'latex');
        xlim([min(times) tmax]);
    %     ylim([-0.3 vdd+0.3]);
        grid;

        subplot(413);
        plot(times, htran.i_m_xm2_msky130_fd_pr__pfet_01v8_hvt_id, 'linewidth', 0.75);
        title('\textbf{$I_{bias,PMOS}$ Transient Response}', 'Interpreter', 'latex');
        xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
        ylabel('\textbf{$I_{bias,PMOS}$ (A)}', 'Interpreter', 'latex');
        xlim([min(times) tmax]);
    %     ylim([-0.3 vdd+0.3]);
        grid;

        subplot(414);
        plot(times, htran.i_m_xm1_msky130_fd_pr__nfet_01v8_id, 'linewidth', 0.75);
        title('\textbf{$I_{bias,NMOS}$ Transient Response}', 'Interpreter', 'latex');
        xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
        ylabel('\textbf{$I_{bias,NMOS}$ (A)}', 'Interpreter', 'latex');
        xlim([min(times) tmax]);
    %     ylim([-0.3 vdd+0.3]);
        grid;
    end

    levels = vin_buf > vdd/2;
    transitions = diff(levels);
    rising_edge_indices = find(transitions == 1);
    period_estimate = (times(rising_edge_indices(end)) - ...
        times(rising_edge_indices(2))) / (length(rising_edge_indices) - 2);
    freq_estimate = 1 / period_estimate;
end


%% Frequency Divider Analysis.

clc; clear; close all;
htran = load_ngspice('freq_div_lvs_tran.raw');
times = htran.time;
vdd = 1.8;
tran_interval = 1e-3;
tran_start = 0e-3;

figure(1);
subplot(911);
plot(times, htran.v_vin, 'linewidth', 0.75);
title('\textbf{$V_{in}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{in}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;

subplot(912);
plot(times, htran.v_x1_vdff1, 'linewidth', 0.75);
title('\textbf{$V_{dff1}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{dff1}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;

subplot(913);
plot(times, htran.v_x1_vdff2, 'linewidth', 0.75);
title('\textbf{$V_{dff3}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{dff2}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;

subplot(914);
plot(times, htran.v_x1_vdff3, 'linewidth', 0.75);
title('\textbf{$V_{dff3}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{dff3}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;

subplot(915);
plot(times, htran.v_x1_vdff4, 'linewidth', 0.75);
title('\textbf{$V_{dff4}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{dff4}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;

subplot(916);
plot(times, htran.v_x1_vdff5, 'linewidth', 0.75);
title('\textbf{$V_{dff5}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{dff5}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;

subplot(917);
plot(times, htran.v_x1_vdff6, 'linewidth', 0.75);
title('\textbf{$V_{dff6}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{dff6}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;

subplot(918);
plot(times, htran.v_x1_vdff7, 'linewidth', 0.75);
title('\textbf{$V_{dff7}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{dff7}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;

subplot(919);
plot(times, htran.v_vout, 'linewidth', 0.75);
title('\textbf{$V_{out}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{out}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;
                
                
%% Low-Frequency PLL Analysis.

clc; clear; close all;
% htran = load_ngspice('low_freq_pll_lvs_tran.raw');
htran = load_ngspice('low_freq_pll_final_lvs_tran.raw');
vdd = 1.8;
tran_interval = 2e0;
tran_start = 0e-3;

% vctrl = htran.v_vctrl;
times = htran.time;
% vin = htran.v_vin_buf;
vin_div = htran.v_vin_div;
vco_freqs = zeros(1, length(vin_div));
vsig = htran.v_vsig_in;
% vqa = htran.v_vqa;
% vqb = htran.v_vqb;
% vcp1 = htran.v_vcp1;
vcp = htran.v_vcp;
vqa = htran.v_x1_vqa;
vqb = htran.v_x1_vqb;
vcp1 = htran.v_x1_vcp1;

levels = vin_div > vdd/2;
transitions = diff(levels);
rising_edge_indices = find(transitions == 1);
vco_freqs(1:(rising_edge_indices(1)-1)) = ...
    1 / (times(rising_edge_indices(2)) - times(rising_edge_indices(1)));
for i=2:length(rising_edge_indices)
    vco_freqs(rising_edge_indices(i-1):(rising_edge_indices(i)-1)) = ...
        1 / (times(rising_edge_indices(i)) - times(rising_edge_indices(i-1)));
end
        
figure(1);
subplot(711);
plot(times, vsig, 'linewidth', 0.75);
title('\textbf{$V_{sig}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{sig}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;

subplot(712);
plot(times, vin_div, 'linewidth', 0.75);
title('\textbf{$V_{in,div}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{in,div}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;

subplot(713);
plot(times, vqa, 'linewidth', 0.75);
title('\textbf{$V_{QA}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{QA}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;

subplot(714);
plot(times, vqb, 'linewidth', 0.75);
title('\textbf{$V_{QB}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{QB}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;

subplot(715);
plot(times, vcp1, 'linewidth', 0.75);
title('\textbf{$V_{cp1}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{cp1}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([0.7 1.3]);
grid;

subplot(716);
plot(times, vcp, 'linewidth', 0.75);
title('\textbf{$V_{cp}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{cp}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([0.7 1.3]);
grid;

subplot(717);
plot(times, vco_freqs, 'linewidth', 0.75);
title('\textbf{VCO Frequency}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{VCO Frequency (Hz)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([45 55]);
grid;

debug = false;
if debug
    figure(2);
    subplot(511); plot(times, htran.i_r2_i); ylim([-0.01e-5 0.01e-5]);
    subplot(512); plot(times, htran.v_vcap);
    subplot(513); plot(times, vqa);
    subplot(514); plot(times, htran.i_r1_i); ylim([-0.01e-5 0.01e-5]);
    subplot(515); plot(times, htran.i_r4_i); ylim([-0.01e-9 0.01e-9]);
end


%% Capacitance Multiplier Analysis.

clc; clear;
%close all;
htran = load_ngspice('cap_mult_test_tran.raw');

vdd = 1.8;
tran_interval = 1000e-3;
tran_start = 0e-3;

times = htran.time;
vin = htran.v_vin;
vbuf = htran.v_vbuf;
vcap = htran.v_vcap;
vlpf = htran.v_vlpf;

figure(1);
subplot(411);
plot(times, vin, 'linewidth', 0.75);
title('\textbf{$V_{in}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{in}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;

subplot(412);
plot(times, vbuf, 'linewidth', 0.75);
title('\textbf{$V_{buf}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{buf}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;

subplot(413);
plot(times, vcap, 'linewidth', 0.75);
title('\textbf{$V_{cap}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{cap}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;

subplot(414);
plot(times, vlpf, 'linewidth', 0.75);
title('\textbf{$V_{lpf}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{lpf}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;

figure(2);
subplot(411);
plot(times, htran.i_r1_i, 'linewidth', 0.75);
title('\textbf{$I_{R1}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$I_{R1}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.3 vdd+0.3]);
grid;

subplot(412);
plot(times, htran.i_r2_i, 'linewidth', 0.75);
title('\textbf{$I_{R2}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$I_{R2}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.3 vdd+0.3]);
grid;

subplot(413);
plot(times, htran.i_r3_i, 'linewidth', 0.75);
title('\textbf{$I_{R3}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$I_{R3}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.3 vdd+0.3]);
grid;

subplot(414);
plot(times, htran.i_c1_i, 'linewidth', 0.75);
title('\textbf{$I_{C1}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$I_{C1}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.3 vdd+0.3]);
grid;


%% Charge Pump Analysis.

clc; clear; close all;
htran = load_ngspice('charge_pump_tran.raw');

vdd = 1.8;
tran_interval = 190e-3;
tran_start = 10e-3;

times = htran.time;
vinA = htran.v_vina;
vinB = htran.v_vinb;
vcp = htran.v_vcp;

figure(1);
subplot(311);
plot(times, vinA, 'linewidth', 0.75);
title('\textbf{$V_{in,A}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{in,A}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;

subplot(312);
plot(times, vinB, 'linewidth', 0.75);
title('\textbf{$V_{in,B}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{in,B}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;

subplot(313);
plot(times, vcp, 'linewidth', 0.75);
title('\textbf{$V_{cp}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{cp}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([0.8 1]);
grid;


%% PFD-CP-LPF Analysis.

clc; clear; close all;
htran = load_ngspice('pfd_cp_lpf_test_tran.raw');

vdd = 1.8;
tran_interval = 90e-3;
tran_start = 0e-3;

times = htran.time;
vinA = htran.v_vqa;
vinB = htran.v_vqb;
vcp = htran.v_vcp;

figure(1);
subplot(311);
plot(times, vinA, 'linewidth', 0.75);
title('\textbf{$V_{Q,A}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{Q,A}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;

subplot(312);
plot(times, vinB, 'linewidth', 0.75);
title('\textbf{$V_{Q,B}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{Q,B}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;

subplot(313);
plot(times, vcp, 'linewidth', 0.75);
title('\textbf{$V_{cp}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{cp}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([0.6 0.9]);
grid;


%% Sample-and-Hold Analysis.

clc; clear; close all;
% htran = load_ngspice('sample_and_hold_open_loop_tran.raw');
htran = load_ngspice('sample_and_hold_lvs_tran.raw');

vdd = 1.8;
tran_interval = 5e-3;
tran_start = 0e-3;

times = htran.time;
vin = htran.v_vin;
% vint = htran.v_vint;
vout = htran.v_vout;
%vout2 = htran.v_vout2;
vclk = htran.v_clk;
%vphi = htran.v_phi;
%vphib = htran.v_phib;
vhold = htran.v_vhold;

% figure(1);
% subplot(311);
% plot(times, vin, 'linewidth', 0.75);
% title('\textbf{$V_{in}$ Transient Response}', 'Interpreter', 'latex');
% xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
% ylabel('\textbf{$V_{in}$ (V)}', 'Interpreter', 'latex');
% xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([0.6 vdd-0.6]);
% grid;
% 
% subplot(312);
% plot(times, vphi, 'linewidth', 0.75);
% title('\textbf{$V_{\phi}$ Transient Response}', 'Interpreter', 'latex');
% xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
% ylabel('\textbf{$V_{\phi}$ (V)}', 'Interpreter', 'latex');
% xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.3 vdd+0.3]);
% grid;
% 
% subplot(313);
% plot(times, vout, 'linewidth', 0.75);
% title('\textbf{$V_{out}$ Transient Response}', 'Interpreter', 'latex');
% xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
% ylabel('\textbf{$V_{out}$ (V)}', 'Interpreter', 'latex');
% xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([0.6 vdd-0.6]);
% grid;

figure(2);
subplot(311);
plot(times, vin, 'linewidth', 0.75);
title('\textbf{$V_{in}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{in}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([0.6 vdd-0.6]);
grid;

subplot(312);
plot(times, vclk, 'linewidth', 0.75);
title('\textbf{$V_{clk}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{clk}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;

subplot(313);
plot(times, vout, 'linewidth', 0.75);
title('\textbf{$V_{out}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{out}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([0.6 vdd-0.6]);
grid;


%% DAC Analysis.

clc; clear; close all;
htran = load_ngspice('dac_8bit_tran.raw');

vdd = 1.8;
tran_interval = 2e-3;
tran_start = 0e-3;

times = htran.time;
vin = htran.v_vin;
vclk = htran.v_adc_clk;
vlow = htran.v_vlow;
vref = htran.v_vref;
vsample = htran.v_sample;
vadc_run = htran.v_adc_run;
vcomp_out = htran.v_comp_out;
vcomp_outm = htran.v_comp_outm;
vcompp = htran.v_x1_vcompp;
vcompm = htran.v_x1_vcompm;
vcompp_buf = htran.v_x1_vcompp_buf;
vcompm_buf = htran.v_x1_vcompm_buf;
vcom = htran.v_vcom;
vcom_buf = htran.v_vcom_buf;
q_vals = [htran.v_q7; htran.v_q6; htran.v_q5; htran.v_q4; htran.v_q3; htran.v_q2; htran.v_q1; htran.v_q0];
% r_vals = [htran.v_r7; htran.v_r6; htran.v_r5; htran.v_r4; htran.v_r3; htran.v_r2; htran.v_r1; htran.v_r0];
c_vals = [htran.v_c7m; htran.v_c6m; htran.v_c5m; htran.v_c4m; htran.v_c3m; htran.v_c2m; htran.v_c1m; htran.v_c0m];

figure(1);
subplot(711);
plot(times, vin, 'linewidth', 0.75);
title('\textbf{$V_{in}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{in}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([0.6 vdd-0.6]);
grid;

subplot(712);
plot(times, vsample, 'linewidth', 0.75);
title('\textbf{$V_{sample}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{sample}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;

subplot(713);
plot(times, vclk, 'linewidth', 0.75);
title('\textbf{$V_{clk}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{clk}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;

subplot(714);
plot(times, vcom, 'linewidth', 0.75);
title('\textbf{$V_{com}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{com}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% xlim([0.49 0.51]*1e-3);
ylim([0.25 1]);
grid;

subplot(715);
plot(times, vcom_buf, 'linewidth', 0.75);
title('\textbf{$V_{com,buf}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{com,buf}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% xlim([0.49 0.51]*1e-3);
ylim([0.25 1]);
grid;

subplot(716);
plot(times, vcomp_out, 'linewidth', 0.75);
title('\textbf{$V_{comparator}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{comparator}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% xlim([0.49 0.51]*1e-3);
ylim([-0.3 vdd+0.3]);
grid;

subplot(717);
plot(times, vcomp_outm, 'linewidth', 0.75);
title('\textbf{$V_{comparator,m}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{comparator,m}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% xlim([0.49 0.51]*1e-3);
ylim([-0.3 vdd+0.3]);
grid;

figure(2);
for i=1:size(q_vals, 1)
    subplot(size(q_vals, 1), 1, i);
    plot(times, c_vals(i, :), 'linewidth', 0.75);
    title_label = '\textbf{$q_{' + string(i) + '}$ Transient Response}';
    title(title_label, 'Interpreter', 'latex');
    xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
    y_label = '\textbf{$q_{' + string(i) + '}$ (V)}';
    ylabel(y_label, 'Interpreter', 'latex');
    xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
    ylim([-0.3 vdd+0.3]);
    grid;
end

figure(3);
subplot(611);
plot(times, vclk, 'linewidth', 0.75);
title('\textbf{$V_{clk}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{clk}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;
ax1 = gca;

subplot(612);
plot(times, vcom, 'linewidth', 0.75);
title('\textbf{$V_{com}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{com}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% xlim([0.49 0.51]*1e-3);
ylim([0.25 1.55]);
grid;
ax2 = gca;

subplot(613);
plot(times, vcompp, 'linewidth', 0.75);
title('\textbf{$V_{comp,p}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{comp,p}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;
ax3 = gca;

subplot(614);
plot(times, vcompm, 'linewidth', 0.75);
title('\textbf{$V_{comp,m}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{comp,m}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;
ax4 = gca;

subplot(615);
plot(times, vcompp_buf, 'linewidth', 0.75);
title('\textbf{$V_{comp,p,buf}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{comp,p,buf}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;
ax5 = gca;

subplot(616);
plot(times, vcompm_buf, 'linewidth', 0.75);
title('\textbf{$V_{comp,m,buf}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{comp,m,buf}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;
ax6 = gca;
linkaxes([ax1 ax2 ax3 ax4 ax5 ax6], 'x');


%% Peak Detector Analysis.

clc; clear; close all;
htran = load_ngspice('peak_detector_lvs_tran.raw');

vdd = 1.8;
tran_interval = 500e-3;
tran_start = 0e-3;

times = htran.time;
vin = htran.v_vin;
vpeakh = htran.v_vpeakh;
vpeak_out = htran.v_vpeak_out;
vrst = htran.v_rst;

figure(1);
subplot(411);
plot(times, vin, 'linewidth', 0.75);
title('\textbf{$V_{in}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{in}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([0.6 vdd-0.6]);
grid;

subplot(412);
plot(times, vpeakh, 'linewidth', 0.75);
title('\textbf{$V_{peak,h}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{peak,h}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([0.8 vdd-0.6]);
grid;

subplot(413);
plot(times, vpeak_out, 'linewidth', 0.75);
title('\textbf{$V_{peak,out}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{peak,out}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([0.8 vdd-0.6]);
grid;

subplot(414);
plot(times, vrst, 'linewidth', 0.75);
title('\textbf{$V_{rst}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{rst}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;


%% Active Low-Pass Filter Analysis.

clc; clear; close all;
vdd = 1.8;

tran_analysis = false;
if tran_analysis
    htran = load_ngspice('active_lowpass_filter_tran.raw');
    tran_interval = 2e-9;
    tran_start = 0;
    times = htran.time;
    vstimp = htran.v_vstimp;
    vstimm = htran.v_vstimm;
    vfiltp = htran.v_vfiltp;
    vfiltm = htran.v_vfiltm;

    figure(1);
    subplot(211);
    plot(times, vstimp-vstimm, 'linewidth', 0.75);
    title('\textbf{Differential $V_{stim}$ Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
    ylabel('\textbf{Differential $V_{stim}$ (V)}', 'Interpreter', 'latex');
    xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
    % ylim([-0.3 vdd+0.3]);
    grid;

    subplot(212);
    plot(times, vfiltp-vfiltm, 'linewidth', 0.75);
    title('\textbf{Differential $V_{filt}$ Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
    ylabel('\textbf{Differential $V_{filt}$ (V)}', 'Interpreter', 'latex');
    xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
    % ylim([-0.3 vdd+0.3]);
    grid;

    figure(2);
    subplot(411);
    plot(times, vstimp, 'linewidth', 0.75);
    title('\textbf{$V_{stim,p}$ Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
    ylabel('\textbf{$V_{stim,p}$ (V)}', 'Interpreter', 'latex');
    xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
    % ylim([-0.3 vdd+0.3]);
    grid;

    subplot(412);
    plot(times, vstimm, 'linewidth', 0.75);
    title('\textbf{$V_{stim,m}$ Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
    ylabel('\textbf{$V_{stim,m}$ (V)}', 'Interpreter', 'latex');
    xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
    % ylim([-0.3 vdd+0.3]);
    grid;

    subplot(413);
    plot(times, vfiltp, 'linewidth', 0.75);
    title('\textbf{$V_{filt,p}$ Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
    ylabel('\textbf{$V_{filt,p}$ (V)}', 'Interpreter', 'latex');
    xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
    % ylim([-0.3 vdd+0.3]);
    grid;

    subplot(414);
    plot(times, vfiltm, 'linewidth', 0.75);
    title('\textbf{$V_{filt,m}$ Transient Response}', 'Interpreter', 'latex');
    xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
    ylabel('\textbf{$V_{filt,m}$ (V)}', 'Interpreter', 'latex');
    xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
    % ylim([-0.3 vdd+0.3]);
    grid;
end

ac_analysis = false;
if ac_analysis
    hac = load_ngspice('active_lowpass_filter_ac.raw');
    vstimp_ac = hac.v_vstimp;
    vstimm_ac = hac.v_vstimm;
    vfiltp_ac = hac.v_vfiltp;
    vfiltm_ac = hac.v_vfiltm;
    f = hac.frequency;

    figure(3);
    subplot(211);
    semilogx(f, (180/pi)*unwrap(angle(vfiltp_ac-vfiltm_ac)), 'linewidth', 0.75);
    title('\textbf{$V_{filt}$ AC Response Phase}', 'Interpreter', 'latex');
    xlabel('\textbf{Frequency (Hz)}', 'Interpreter', 'latex');
    ylabel('\textbf{Phase (degrees)}', 'Interpreter', 'latex');
    xlim([min(f) 1e6]);
    % ylim([-0.3 vdd+0.3]);
    grid;

    subplot(212);
    semilogx(f, mag2db(abs(vfiltp_ac-vfiltm_ac)), 'linewidth', 0.75);
    title('\textbf{$V_{filt}$ AC Response Magnitude}', 'Interpreter', 'latex');
    xlabel('\textbf{Frequency (Hz)}', 'Interpreter', 'latex');
    ylabel('\textbf{dB}', 'Interpreter', 'latex');
    xlim([min(f) 1e6]);
    ylim([-150 10]);
    grid;
end

ac_analysis_lvs = true;
if ac_analysis_lvs
    hac = load_ngspice('biquad_gm_c_filter_lvs_ac.raw');
    vip_ac = hac.v_vip;
    vim_ac = hac.v_vim;
    vfiltp_ac = hac.v_vfiltp;
    vfiltm_ac = hac.v_vfiltm;
    f = hac.frequency;

    figure(3);
    subplot(211);
    semilogx(f, (180/pi)*unwrap(angle(vfiltp_ac-vfiltm_ac)), 'linewidth', 0.75);
    title('\textbf{$V_{filt}$ AC Response Phase}', 'Interpreter', 'latex');
    xlabel('\textbf{Frequency (Hz)}', 'Interpreter', 'latex');
    ylabel('\textbf{Phase (degrees)}', 'Interpreter', 'latex');
    xlim([min(f) 1e6]);
    % ylim([-0.3 vdd+0.3]);
    grid;

    subplot(212);
    semilogx(f, mag2db(abs(vfiltp_ac-vfiltm_ac)), 'linewidth', 0.75);
    title('\textbf{$V_{filt}$ AC Response Magnitude}', 'Interpreter', 'latex');
    xlabel('\textbf{Frequency (Hz)}', 'Interpreter', 'latex');
    ylabel('\textbf{dB}', 'Interpreter', 'latex');
    xlim([min(f) 1e6]);
    ylim([-150 10]);
    grid;
end


%% Input Amplifier Analysis.

clc; clear; close all;
htran = load_ngspice('input_amplifier_tran.raw');
vdd = 1.8;

tran_interval = 200e-3;
tran_start = 0e-3;
times = htran.time;
vin = htran.v_vin;
vhpf = htran.v_vhpf;
votap = htran.v_votap;
votam = htran.v_votam;
vip = htran.v_vip;
vim = htran.v_vim;
vop = htran.v_vop;
vom = htran.v_vom;

figure(1);
subplot(811);
plot(times, vin, 'linewidth', 0.75);
title('\textbf{$V_{in}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{in}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.3 vdd+0.3]);
grid;

subplot(812);
plot(times, vhpf, 'linewidth', 0.75);
title('\textbf{$V_{hpf}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{hpf}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.3 vdd+0.3]);
grid;

subplot(813);
plot(times, vip, 'linewidth', 0.75);
title('\textbf{$V_{ip}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{ip}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.6 0.6]);
grid;

subplot(814);
plot(times, vim, 'linewidth', 0.75);
title('\textbf{$V_{im}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{im}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.6 0.6]);
grid;

subplot(815);
plot(times, vip-vim, 'linewidth', 0.75);
title('\textbf{Differential $V_{i}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{Differential $V_{i}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.6 0.6]);
grid;

subplot(816);
plot(times, vop, 'linewidth', 0.75);
title('\textbf{$V_{op}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{op}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.3 vdd+0.3]);
grid;

subplot(817);
plot(times, vom, 'linewidth', 0.75);
title('\textbf{$V_{om}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{om}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.3 vdd+0.3]);
grid;

subplot(818);
plot(times, vop-vom, 'linewidth', 0.75);
title('\textbf{Differential $V_{o}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{Differential $V_{o}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.6 0.6]);
grid;

figure(4);
subplot(411);
plot(times, vin, 'linewidth', 0.75);
title('\textbf{$V_{in}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{in}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.3 vdd+0.3]);
grid;

subplot(412);
plot(times, vhpf, 'linewidth', 0.75);
title('\textbf{$V_{hpf}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{hpf}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.3 vdd+0.3]);
grid;

subplot(413);
plot(times, vip-vim, 'linewidth', 0.75);
title('\textbf{Differential $V_{i}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{Differential $V_{i}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.6 0.6]);
grid;

subplot(414);
plot(times, vop-vom, 'linewidth', 0.75);
title('\textbf{Differential $V_{o}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{Differential $V_{o}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.6 0.6]);
grid;


%% Top-Level Amplitude Processing Analysis.

clc; clear; close all;
htran = load_ngspice('amplitude_processing_top_level_lvs_tran.raw');
vdd = 1.8;

tran_interval = 500e-3;
tran_start = 0;
times = htran.time;
vin = htran.v_vin;
vhpf = htran.v_vhpf;
vip = htran.v_vip;
vim = htran.v_vim;
vop = htran.v_vop;
vom = htran.v_vom;
vfiltp = htran.v_vfiltp;
vfiltm = htran.v_vfiltm;
vpeak_in = htran.v_vpeak_in;
vpeak_out = htran.v_vpeak_out;
vsh_out = htran.v_vsh_out;
vrst = htran.v_rst;
vclk = htran.v_clk;

figure(1);
subplot(911);
plot(times, vin, 'linewidth', 0.75);
title('\textbf{$V_{in}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{in}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.3 vdd+0.3]);
grid;

subplot(912);
plot(times, vhpf, 'linewidth', 0.75);
title('\textbf{$V_{hpf}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{hpf}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.3 vdd+0.3]);
grid;

subplot(913);
plot(times, vop-vom, 'linewidth', 0.75);
title('\textbf{Differential $V_{o}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{o}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.6 0.6]);
grid;

subplot(914);
plot(times, vfiltp-vfiltm, 'linewidth', 0.75);
title('\textbf{Differential $V_{filt}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{filt}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.3 vdd+0.3]);
grid;

subplot(915);
plot(times, vpeak_in, 'linewidth', 0.75);
title('\textbf{$V_{peak,in}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{peak,in}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.3 vdd+0.3]);
grid;

subplot(916);
plot(times, vrst, 'linewidth', 0.75);
title('\textbf{$V_{rst}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{rst}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;

subplot(917);
plot(times, vpeak_out, 'linewidth', 0.75);
title('\textbf{$V_{peak,out}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{peak,out}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([0.8 vdd-0.6]);
grid;

subplot(918);
plot(times, vclk, 'linewidth', 0.75);
title('\textbf{$V_{clk}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{clk}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([-0.3 vdd+0.3]);
grid;

subplot(919);
plot(times, vsh_out, 'linewidth', 0.75);
title('\textbf{$V_{sh,out}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{sh,out}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
ylim([0.3 vdd+0.3]);
grid;

figure(2);
subplot(511);
plot(times, vin, 'linewidth', 0.75);
title('\textbf{$V_{in}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{in}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.3 vdd+0.3]);
grid;

subplot(512);
plot(times, vop, 'linewidth', 0.75);
title('\textbf{$V_{op}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{op}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.6 0.6]);
grid;

subplot(513);
plot(times, vom, 'linewidth', 0.75);
title('\textbf{$V_{om}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{om}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.6 0.6]);
grid;

subplot(514);
plot(times, vfiltp, 'linewidth', 0.75);
title('\textbf{$V_{filt,p}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{filt,p}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.6 0.6]);
grid;

subplot(515);
plot(times, vfiltm, 'linewidth', 0.75);
title('\textbf{$V_{filt,m}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{filt,m}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.6 0.6]);
grid;


%% Differential-to-Single-Ended Converter Analysis.

clc; clear; close all;
htran = load_ngspice('diff_to_se_converter_lvs_tran.raw');
vdd = 1.8;

tran_interval = 100e-3;
tran_start = 0;
times = htran.time;
vdiffp = htran.v_vdiffp;
vdiffm = htran.v_vdiffm;
vse = htran.v_vse;

figure(1);
subplot(311);
plot(times, vdiffp, 'linewidth', 0.75);
title('\textbf{$V_{diff,p}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{diff,p}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.3 vdd+0.3]);
grid;

subplot(312);
plot(times, vdiffm, 'linewidth', 0.75);
title('\textbf{$V_{diff,m}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{diff,m}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.6 0.6]);
grid;

subplot(313);
plot(times, vse, 'linewidth', 0.75);
title('\textbf{$V_{se}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{se}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.3 vdd+0.3]);
grid;


%% Pulse Generator Analysis.

clc; clear; close all;
htran = load_ngspice('pulse_generator_lvs_tran.raw');
vdd = 1.8;

tran_interval = 10e-6;
tran_start = 0;
times = htran.time;
vtrigb = htran.v_trigb;
vclk = htran.v_clk;
vpulse = htran.v_pulse;

figure(1);
subplot(311);
plot(times, vtrigb, 'linewidth', 0.75);
title('\textbf{$V_{trigb}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{trigb}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.3 vdd+0.3]);
grid;

subplot(312);
plot(times, vclk, 'linewidth', 0.75);
title('\textbf{$V_{clk}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{clk}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.6 0.6]);
grid;

subplot(313);
plot(times, vpulse, 'linewidth', 0.75);
title('\textbf{$V_{pulse}$ Transient Response}', 'Interpreter', 'latex');
xlabel('\textbf{Time (s)}', 'Interpreter', 'latex');
ylabel('\textbf{$V_{pulse}$ (V)}', 'Interpreter', 'latex');
xlim([min(times)+tran_start min(times)+tran_interval+tran_start]);
% ylim([-0.3 vdd+0.3]);
grid;

