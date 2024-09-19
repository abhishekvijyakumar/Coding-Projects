clc
close all
clear all

% input time domain
t = -0.1:0.001:0.1;

% input the graphs
w_t = sin(400*pi*t);
h_t = 400 * exp(-200*t) .* cos(400*pi*t) .* (t >= 0);
x_t = (cos(100*pi*t) + sin(400*pi*t) - cos(800*pi*t)) .* (t >= 0);
y_t = conv(x_t, h_t, 'same');

% x(t)
figure;
plot(t, x_t, 'r', 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title('Input Signal x(t)');
grid on;

% y(t)
figure;
plot(t, y_t, 'b', 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title('Filter Output y(t)');
grid on;

% w(t)
figure;
plot(t, w_t, 'g', 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title('Original Signal w(t)');
grid on;
