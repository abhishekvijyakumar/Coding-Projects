% Given parameters
message = [6 0 4 -6 2];
fc = 100e3;  % 100 kHz carrier
fs = 10 * fc; % Sampling frequency (10 times higher than the highest frequency)
dT = 1 / fs;
fm = fc / 10; % Message frequency (1/10 of the carrier frequency)

t = 0:dT:length(message) / fm - dT; % Time vector (s)

%% Modulating message with carrier
xc = cos(2 * pi * fc * t); % Carrier signal
xm = kron(message, ones(1, length(t) / length(message))); % Message signal
s = xm .* xc; % Modulated signal

% Frequency domain
S = fftshift(fft(s, length(s)) * dT);
W = linspace(-pi, pi, length(S)); % Digital angular frequency
w = W / dT; % Angular frequency (rad)
f = w / (2 * pi); % Frequency (Hz)

%% DSB-SC Modulation Plots
figure;

% Time domain signal transmitted s(t)
subplot(4, 1, 1);
plot(t, s);
title('Transmitted Signal s(t)');
xlabel('Time (s)');
ylabel('Amplitude');

% Frequency domain magnitude of the transmitted signal |S(f)|
subplot(4, 1, 2);
plot(f, abs(S));
title('Frequency Domain Magnitude |S(f)|');
xlabel('Frequency (Hz)');
ylabel('|S(f)|');

%% Demodulation
% Local oscillator signal
lo_t = cos(2 * pi * fc * t + pi/3);
v = s .* lo_t; % Demodulated signal

% Frequency domain
V = fftshift(fft(v, length(v)) * dT);

% Low-pass filter transfer function
H_f = 2 * (abs(f) < 500e3);

% Apply low-pass filter in the frequency domain
V_o_f = V .* H_f;

% Inverse Fourier transform to obtain time-domain signal
vo_t = ifft(ifftshift(V_o_f)) / dT;

% Frequency domain spectrum |Vo(f)|
figure;
subplot(2, 1, 1);
plot(f, abs(V_o_f));
title('Frequency Domain Spectrum |Vo(f)|');
xlabel('Frequency (Hz)');
ylabel('|Vo(f)|');

% Time domain demodulated and low-pass filtered output signal vo(t)
subplot(2, 1, 2);
plot(t, vo_t);
title('Demodulated and Low-pass Filtered Output vo(t)');
xlabel('Time (s)');
ylabel('Amplitude');

% Adjust plot layout
sgtitle('DSB-SC Modulation and Demodulation');

% Display the plots
