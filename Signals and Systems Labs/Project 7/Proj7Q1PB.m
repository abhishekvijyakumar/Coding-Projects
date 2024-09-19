set(0, 'DefaultAxesFontSize', 12);  % Set the font size of the plot window

% Assuming "ecg" is the ECG signal and "t" is the corresponding time vector
Fs = 1 / (t(2) - t(1));

% Define twin-T notch filter parameters
R = 10e3;   % 10 kOhm
C = 133e-9;  % 133 nF
m = 0.9;

% Twin-T notch filter transfer function
T = length(ecg) * (t(2) - t(1));
w0 = 2 * pi / T;
frequencies = linspace(-Fs/2, Fs/2, length(ecg));
omega_values = 2 * pi * frequencies;

H = ((1 + m) * ((2j * omega_values * R * C).^2 + 1)) ./ ...
    ((2j * omega_values * R * C).^2 + 4 * (1 - m) * 1j * omega_values * R * C + 1);

% Apply twin-T notch filter to the ECG signal in the frequency domain
X = fft(ecg);
Z = X .* H;

% Convert back to the time domain
z = ifft(Z);

% Plotting
figure;

% Original signal x(t)
subplot(4, 1, 1);
plot(t, ecg);
title('Original Signal x(t)');
xlabel('Time (s)');
ylabel('Amplitude');

% Fourier transform X(f)
subplot(4, 1, 2);
plot(frequencies, fftshift(abs(X)));
title('Fourier Transform X(f)');
xlabel('Frequency (Hz)');
ylabel('|X(f)|');
xlim([-250, 250]);

% Transfer function Z(f)
subplot(4, 1, 3);
plot(frequencies, fftshift(abs(H)));
title('Transfer Function Z(f)');
xlabel('Frequency (Hz)');
ylabel('|Z(f)|');
xlim([-250, 250]);

% Output signal z(t)
subplot(4, 1, 4);
plot(t, real(z));
title('Output Signal z(t)');
xlabel('Time (s)');
ylabel('Amplitude');

% Adjust plot layout
sgtitle('ECG Signal and Twin-T Notch Filter Responses');
