% Given values
R = 10e3;  % 10 kOhm
C = 133e-9;  % 133 nF
m_values = [0.8, 0.9];

% Frequency range
frequencies = linspace(0, 200, 1000);
omega_values = 2 * pi * frequencies;

% Plot magnitude and phase response for each m
for i = 1:length(m_values)
    m = m_values(i);
    
    % Transfer function H(ω)
    H = ((1 + m) * ((2j * omega_values * R * C).^2 + 1)) ./ ...
        ((2j * omega_values * R * C).^2 + 4 * (1 - m) * 1j * omega_values * R * C + 1);

    % Magnitude response plot
    figure;
    subplot(2, 1, 1);
    plot(frequencies, abs(H));
    title(['Magnitude Response for m = ' num2str(m)]);
    xlabel('Frequency (Hz)');
    ylabel('|H(ω)|');
    grid on;

    % Phase response plot
    subplot(2, 1, 2);
    plot(frequencies, angle(H) * 180 / pi);  % Convert phase to degrees
    title(['Phase Response for m = ' num2str(m)]);
    xlabel('Frequency (Hz)');
    ylabel('Phase (degrees)');
    grid on;

    % Adjust plot layout
    sgtitle(['Twin-T Notch Filter Response for m = ' num2str(m)]);
end
