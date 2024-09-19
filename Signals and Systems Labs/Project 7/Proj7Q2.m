% Calculate the energy of the time domain signals x(t) and z(t)
energy_x = trapz(t, abs(ecg).^2);
energy_z = trapz(t, abs(z).^2);

% Calculate the energy in the frequency domain using Parseval's theorem
energy_frequency_x = trapz(frequencies, abs(fft(ecg)).^2) / Fs;
energy_frequency_z = trapz(frequencies, abs(Z).^2) / Fs;

% Plot Energy vs Frequency
figure;

% Energy spectrum of x(t)
subplot(2, 1, 1);
plot(frequencies, abs(fft(ecg)).^2 / Fs);
title('Energy Spectrum of x(t)');
xlabel('Frequency (Hz)');
ylabel('Energy(X)');
xlim([-250, 250]);

% Energy spectrum of z(t)
subplot(2, 1, 2);
plot(frequencies, abs(Z).^2 / Fs);
title('Energy Spectrum of z(t)');
xlabel('Frequency (Hz)');
ylabel('Energy(Z)');
xlim([-250, 250]);

% Adjust plot layout
sgtitle('Energy Spectrum of Signals');

% Display the plot
