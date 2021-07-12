clc; clear; close all;

% For less computation, and smaller filter coefficient precision, divide
% the number of FFT points by 17. Equivalently, then, we must also divide
% the sampling rate by 17, yielding 13421/17 = 789.
periodicity = 0.019;
chirps_per_frame = 255;
num_fft_pts = 5 * chirps_per_frame;     % Equal to window size.
% num_fft_pts = 75; %num_fft_pts / 17;
% notch_fs = 1 / (periodicity / chirps_per_frame);    % 13421 ~ 13420.
notch_fs = 789;
notch_q = 1;
dfn = notch_fs / num_fft_pts;
fn_range = -(notch_fs/2):dfn:((notch_fs/2)-dfn);
freq = 50;
w0 = freq / (notch_fs/2);
notch_bw0 = w0 / notch_q;
[notch_b0, notch_a0] = iirnotch(w0, notch_bw0);
% [notch_b1, notch_a1] = iirnotch(2*fvib_detected/(notch_fs/2), notch_bw1);
% [notch_b2, notch_a2] = iirnotch(3*fvib_detected/(notch_fs/2), notch_bw1);
% notch_b = conv(conv(notch_b0, notch_b1), notch_b2);
% notch_a = conv(conv(notch_a0, notch_a1), notch_a2);
[notch_filter_H, notch_filter_w] = freqz(notch_b0, notch_a0, num_fft_pts, 'whole', notch_fs);
notch_filter_w = [-fliplr(notch_filter_w(2:(end+1)/2)') notch_filter_w(1:(end+1)/2)'];
notch_filter_H = fftshift(notch_filter_H);

figure(1);
plot(notch_filter_w, mag2db(abs(notch_filter_H)));
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('dB');
title('Notch Filter Spectrum');
% fvtool(notch_b0, notch_a0);

% fs = 10000;
% times = 0:(1/fs):(1+(1/fs));
% pts = sin(2*pi*50*times);
% figure(2);
% subplot(211);
% plot(times, pts);
% 
% fft_pts = floor(length(pts)/10);
% df = fs / fft_pts;
% f_range = -(fs/2):df:((fs/2)-df);
% spectrum = mag2db(abs(fftshift(fft(pts, fft_pts)))/fft_pts);
% subplot(212);
% plot(f_range, spectrum);

a = notch_a0;
b = notch_b0;

%% DFT/Polynomial Evaluation Frequency Response.

N = num_fft_pts; % number of points at which to evaluate the transfer function
w = linspace(0, 2*pi*(1-(1/N)), N);
num = 0;
for j=1:length(b)
  num = num + (b(j) * exp(-1i*(j-1)*w));
end
den = 0;
for j=1:length(a)
  den = den + (a(j) * exp(-1i*(j-1)*w));
end
polyval_H = num ./ den;

built_in_polyval_H = polyval(fliplr(b), exp(-1i*w)) ./ polyval(fliplr(a), exp(-1i*w));

bits = 16;
frac_bits = 13;
num_real = real(num);
num_real_fixed = split(hex(fi(num_real, 1, bits, frac_bits)));
num_imag = imag(num);
num_imag_fixed = split(hex(fi(num_imag, 1, bits, frac_bits)));
den_real = real(den);
den_real_fixed = split(hex(fi(den_real, 1, bits, frac_bits)));
den_imag = imag(den);
den_imag_fixed = split(hex(fi(den_imag, 1, bits, frac_bits)));

figure(3);
subplot(311);
plot(w/(2*pi)*notch_fs, mag2db(abs(ifftshift(notch_filter_H))));
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('dB');
title('Freqz-Computed Notch Filter Spectrum');

subplot(312);
plot(w/(2*pi)*notch_fs, mag2db(abs(polyval_H)));
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('dB');
title('Polyval-Computed Notch Filter Spectrum');

dft_H = fft(b, N) ./ fft(a, N);
subplot(313);
plot(w/(2*pi)*notch_fs, mag2db(abs(dft_H)));
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('dB');
title('DFT-Computed Notch Filter Spectrum');

gold_spectrum_magnitude = abs(polyval_H);
gold_spectrum_phase_normalized = wrapTo2Pi(angle(polyval_H)) / (2*pi);

magnitude_bits = bits;
magnitude_frac_bits = frac_bits;
magnitude_signed = 1;
gold_spectrum_magnitude_fixed_pt = fi(gold_spectrum_magnitude, ...
    magnitude_signed, magnitude_bits, magnitude_frac_bits);

phase_bits = 16;
phase_frac_bits = 16;
phase_signed = 0;
gold_spectrum_phase_fixed_pt = fi(gold_spectrum_phase_normalized, ...
    phase_signed, phase_bits, phase_frac_bits);

write_freq_vec = true;
if write_freq_vec
    neg_w = 2*pi - w;
    w_fixed = fi(w/(2*pi), 0, phase_bits, phase_frac_bits);
    neg_w_fixed = fi(neg_w/(2*pi), 0, phase_bits, phase_frac_bits);
    h = fopen('freq_vec_data.txt', 'w');
    for k = 1:length(w)
        fprintf(h, '%s\n', hex(neg_w_fixed(k)));
    end
    fclose(h);
end

write_gold_data = false;
if write_gold_data
    h = fopen('gold_magnitude_data.txt', 'w');
    for k = 1:length(gold_spectrum_magnitude_fixed_pt)
        fprintf(h, '%s\n', hex(gold_spectrum_magnitude_fixed_pt(k)));
    end
    fclose(h);

    h = fopen('gold_phase_data.txt', 'w');
    for k = 1:length(gold_spectrum_phase_fixed_pt)
        fprintf(h, '%s\n', hex(gold_spectrum_phase_fixed_pt(k)));
    end
    fclose(h);
end

q_fixed = quantizer('fixed', 'ceil', 'saturate', [magnitude_bits magnitude_frac_bits]);
q_fixed_ph = quantizer('fixed', 'ceil', 'saturate', [phase_bits phase_frac_bits]);

h = fopen('num_real_data.txt');
num_real_sim = textscan(h, '%s');
fclose(h);
num_real_sim = num_real_sim{1};
num_real_sim_numeric = zeros(size(num_real_sim));
num_real_fixed_numeric = zeros(size(num_real_fixed));
for i=1:length(num_real_fixed)
    num_real_fixed_numeric(i) = hex2num(q_fixed, num_real_fixed{i});
    num_real_sim_numeric(i) = hex2num(q_fixed, num_real_sim{i});
end

h = fopen('num_imag_data.txt');
num_imag_sim = textscan(h, '%s');
fclose(h);
num_imag_sim = num_imag_sim{1};
num_imag_sim_numeric = zeros(size(num_imag_sim));
num_imag_fixed_numeric = zeros(size(num_imag_fixed));
for i=1:length(num_imag_fixed)
    num_imag_fixed_numeric(i) = hex2num(q_fixed, num_imag_fixed{i});
    num_imag_sim_numeric(i) = hex2num(q_fixed, num_imag_sim{i});
end

h = fopen('den_real_data.txt');
den_real_sim = textscan(h, '%s');
fclose(h);
den_real_sim = den_real_sim{1};
den_real_sim_numeric = zeros(size(den_real_sim));
den_real_fixed_numeric = zeros(size(den_real_fixed));
for i=1:length(den_real_fixed)
    den_real_fixed_numeric(i) = hex2num(q_fixed, den_real_fixed{i});
    den_real_sim_numeric(i) = hex2num(q_fixed, den_real_sim{i});
end

h = fopen('den_imag_data.txt');
den_imag_sim = textscan(h, '%s');
fclose(h);
den_imag_sim = den_imag_sim{1};
den_imag_sim_numeric = zeros(size(den_imag_sim));
den_imag_fixed_numeric = zeros(size(den_imag_fixed));
for i=1:length(den_imag_fixed)
    den_imag_fixed_numeric(i) = hex2num(q_fixed, den_imag_fixed{i});
    den_imag_sim_numeric(i) = hex2num(q_fixed, den_imag_sim{i});
end

h = fopen('num_magnitude_data.txt');
num_magnitude_sim = textscan(h, '%s');
fclose(h);
num_magnitude_sim = num_magnitude_sim{1};
num_magnitude_sim_numeric = zeros(size(num_magnitude_sim));
num_magnitude_fixed_numeric = abs(num_real_fixed_numeric + 1i*num_imag_fixed_numeric);
for i=1:length(num_magnitude_sim)
    num_magnitude_sim_numeric(i) = hex2num(q_fixed, num_magnitude_sim{i});
end

h = fopen('num_phase_data.txt');
num_phase_sim = textscan(h, '%s');
fclose(h);
num_phase_sim = num_phase_sim{1};
num_phase_sim_numeric = zeros(size(num_phase_sim));
num_phase_fixed_numeric = (1/(2*pi))*angle(num_real_fixed_numeric + 1i*num_imag_fixed_numeric);
for i=1:length(num_phase_sim)
    num_phase_sim_numeric(i) = hex2num(q_fixed_ph, num_phase_sim{i});
end

h = fopen('den_magnitude_data.txt');
den_magnitude_sim = textscan(h, '%s');
fclose(h);
den_magnitude_sim = den_magnitude_sim{1};
den_magnitude_sim_numeric = zeros(size(den_magnitude_sim));
den_magnitude_fixed_numeric = abs(den_real_fixed_numeric + 1i*den_imag_fixed_numeric);
for i=1:length(den_magnitude_sim)
    den_magnitude_sim_numeric(i) = hex2num(q_fixed, den_magnitude_sim{i});
end

h = fopen('den_phase_data.txt');
den_phase_sim = textscan(h, '%s');
fclose(h);
den_phase_sim = den_phase_sim{1};
den_phase_sim_numeric = zeros(size(den_phase_sim));
den_phase_fixed_numeric = (1/(2*pi))*angle(den_real_fixed_numeric + 1i*den_imag_fixed_numeric);
for i=1:length(den_phase_sim)
    den_phase_sim_numeric(i) = hex2num(q_fixed_ph, den_phase_sim{i});
end

h = fopen('spectrum_magnitude_data.txt');
sim_magnitude_spectrum = textscan(h, '%s');
fclose(h);
sim_magnitude_spectrum = sim_magnitude_spectrum{1};
sim_magnitude_spectrum_numeric = zeros(size(sim_magnitude_spectrum));
gold_magnitude_spectrum_numeric = num_magnitude_fixed_numeric ./ den_magnitude_fixed_numeric;
for i=1:length(sim_magnitude_spectrum)
    sim_magnitude_spectrum_numeric(i) = hex2num(q_fixed, sim_magnitude_spectrum{i});
end

h = fopen('spectrum_phase_data.txt');
sim_phase_spectrum = textscan(h, '%s');
fclose(h);
sim_phase_spectrum = sim_phase_spectrum{1};
sim_phase_spectrum_numeric = zeros(size(sim_phase_spectrum));
gold_phase_spectrum_numeric = num_phase_fixed_numeric - den_phase_fixed_numeric;
for i=1:length(sim_phase_spectrum)
    sim_phase_spectrum_numeric(i) = hex2num(q_fixed_ph, sim_phase_spectrum{i});
end

h = fopen('spectrum_magnitude_data_top_level.txt');
sim_magnitude_spectrum_top_level = textscan(h, '%s');
fclose(h);
sim_magnitude_spectrum_top_level = sim_magnitude_spectrum_top_level{1};
sim_magnitude_spectrum_numeric_top_level = zeros(size(sim_magnitude_spectrum_top_level));
for i=1:length(sim_magnitude_spectrum_top_level)
    sim_magnitude_spectrum_numeric_top_level(i) = hex2num(q_fixed, sim_magnitude_spectrum_top_level{i});
end

h = fopen('spectrum_phase_data_top_level.txt');
sim_phase_spectrum_top_level = textscan(h, '%s');
fclose(h);
sim_phase_spectrum_top_level = sim_phase_spectrum_top_level{1};
sim_phase_spectrum_numeric_top_level = zeros(size(sim_phase_spectrum_top_level));
for i=1:length(sim_phase_spectrum_top_level)
    sim_phase_spectrum_numeric_top_level(i) = hex2num(q_fixed_ph, sim_phase_spectrum_top_level{i});
end

figure(4);
subplot(421);
plot(w/(2*pi)*notch_fs, num_real_fixed_numeric);
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('Real');
title('Gold Numerator Real Spectrum');
subplot(422);
plot(w/(2*pi)*notch_fs, num_real_sim_numeric);
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('Real');
title('Simulated Numerator Real Spectrum');
subplot(423);
plot(w/(2*pi)*notch_fs, num_imag_fixed_numeric);
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('Imaginary');
title('Gold Numerator Imaginary Spectrum');
subplot(424);
plot(w/(2*pi)*notch_fs, num_imag_sim_numeric);
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('Imaginary');
title('Simulated Numerator Imaginary Spectrum');
subplot(425);
plot(w/(2*pi)*notch_fs, den_real_fixed_numeric);
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('Real');
title('Gold Denominator Real Spectrum');
subplot(426);
plot(w/(2*pi)*notch_fs, den_real_sim_numeric);
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('Real');
title('Simulated Denominator Real Spectrum');
subplot(427);
plot(w/(2*pi)*notch_fs, den_imag_fixed_numeric);
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('Imaginary');
title('Gold Denominator Imaginary Spectrum');
subplot(428);
plot(w/(2*pi)*notch_fs, den_imag_sim_numeric);
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('Imaginary');
title('Simulated Denominator Imaginary Spectrum');

figure(5);
subplot(421);
plot(w/(2*pi)*notch_fs, num_magnitude_fixed_numeric);
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Gold Numerator Magnitude Spectrum');
subplot(422);
plot(w/(2*pi)*notch_fs, num_magnitude_sim_numeric);
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Simulated Numerator Magnitude Spectrum');
subplot(423);
plot(w/(2*pi)*notch_fs, num_phase_fixed_numeric);
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('Phase');
title('Gold Numerator Phase Spectrum');
subplot(424);
plot(w/(2*pi)*notch_fs, num_phase_sim_numeric);
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('Phase');
title('Simulated Numerator Phase Spectrum');
subplot(425);
plot(w/(2*pi)*notch_fs, den_magnitude_fixed_numeric);
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Gold Denominator Magnitude Spectrum');
subplot(426);
plot(w/(2*pi)*notch_fs, den_magnitude_sim_numeric);
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Simulated Denominator Magnitude Spectrum');
subplot(427);
plot(w/(2*pi)*notch_fs, den_phase_fixed_numeric);
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('Phase');
title('Gold Denominator Phase Spectrum');
subplot(428);
plot(w/(2*pi)*notch_fs, den_phase_sim_numeric);
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('Phase');
title('Simulated Denominator Phase Spectrum');

figure(6);
subplot(221);
plot(w/(2*pi)*notch_fs, gold_magnitude_spectrum_numeric);
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Gold Magnitude Spectrum');
subplot(222);
plot(w/(2*pi)*notch_fs, sim_magnitude_spectrum_numeric);
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Simulated Magnitude Spectrum');
subplot(223);
plot(w/(2*pi)*notch_fs, gold_phase_spectrum_numeric);
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('Phase');
title('Gold Phase Spectrum');
subplot(224);
plot(w/(2*pi)*notch_fs, sim_phase_spectrum_numeric);
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('Phase');
title('Simulated Phase Spectrum');

figure(7);
subplot(221);
plot(w/(2*pi)*notch_fs, gold_magnitude_spectrum_numeric);
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Gold Magnitude Spectrum');
subplot(222);
plot(w/(2*pi)*notch_fs, sim_magnitude_spectrum_numeric_top_level);
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Simulated Magnitude Spectrum (Top-Level)');
subplot(223);
plot(w/(2*pi)*notch_fs, gold_phase_spectrum_numeric);
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('Phase');
title('Gold Phase Spectrum');
subplot(224);
plot(w/(2*pi)*notch_fs, sim_phase_spectrum_numeric_top_level);
% xlim([fn_range(1) fn_range(end)]);
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('Phase');
title('Simulated Phase Spectrum (Top-Level)');


%% Coefficient Exploration.

periodicity = 0.019;
chirps_per_frame = 255;
num_fft_pts = 5 * chirps_per_frame;     % Equal to window size.
% num_fft_pts = 75; %num_fft_pts / 17;
% notch_fs = 1 / (periodicity / chirps_per_frame);    % 13421 ~ 13420.
notch_fs = 789;
notch_q = 1;
dfn = notch_fs / num_fft_pts;
fn_range = -(notch_fs/2):dfn:((notch_fs/2)-dfn);
freq = 0.5:0.5:64;
w0 = freq / (notch_fs/2);
notch_bw0 = w0 / notch_q;
a_coeffs = zeros(length(freq), 3);
b_coeffs = zeros(length(freq), 3);
for i=1:length(freq)
    [b_coeffs(i, :), a_coeffs(i, :)] = iirnotch(w0(i), notch_bw0(i));
    % [notch_b1, notch_a1] = iirnotch(2*fvib_detected/(notch_fs/2), notch_bw1);
    % [notch_b2, notch_a2] = iirnotch(3*fvib_detected/(notch_fs/2), notch_bw1);
    % notch_b = conv(conv(notch_b0, notch_b1), notch_b2);
    % notch_a = conv(conv(notch_a0, notch_a1), notch_a2);
end

figure(7);
subplot(321);
plot(freq, a_coeffs(:, 1));
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('a_0 Coefficient');
title('a_0 Coefficient');
subplot(322);
plot(freq, b_coeffs(:, 1));
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('b_0 Coefficient');
title('b_0 Coefficient');
subplot(323);
plot(freq, a_coeffs(:, 2));
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('a_1 Coefficient');
title('a_1 Coefficient');
subplot(324);
plot(freq, b_coeffs(:, 2));
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('b_1 Coefficient');
title('b_1 Coefficient');
subplot(325);
plot(freq, a_coeffs(:, 3));
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('a_2 Coefficient');
title('a_2 Coefficient');
subplot(326);
plot(freq, b_coeffs(:, 3));
% xlim([-100 100]);
xlabel('Frequency (Hz)');
ylabel('b_2 Coefficient');
title('b_2 Coefficient');

mem_entries = 4096;
coeff_a0 = a_coeffs(:, 1);
coeff_a1_b1 = a_coeffs(:, 2);
coeff_a2 = a_coeffs(:, 3);
coeff_b0_b2 = b_coeffs(:, 1);

coeff_a0_fixed = fi(coeff_a0, 1, bits, frac_bits);
coeff_a1_b1_fixed = fi(coeff_a1_b1, 1, bits, frac_bits);
coeff_a2_fixed = fi(coeff_a2, 1, bits, frac_bits);
coeff_b0_b2_fixed = fi(coeff_b0_b2, 1, bits, frac_bits);

h = fopen('tf_coeff_data.txt', 'w');
for i=1:(mem_entries / (4 * length(freq)))
    for k = 1:length(freq)
        fprintf(h, '%s\n', hex(coeff_a0_fixed(k)));
        fprintf(h, '%s\n', hex(coeff_a1_b1_fixed(k)));
        fprintf(h, '%s\n', hex(coeff_a2_fixed(k)));
        fprintf(h, '%s\n', hex(coeff_b0_b2_fixed(k)));
    end
end
fclose(h);
    
