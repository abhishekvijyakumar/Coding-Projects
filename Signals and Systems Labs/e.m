clc
clear all
close all

gravity = 9.81;
a = 0.0175;
y = linspace(0.05, 0.15, 30);
q = sqrt(2 * a^2 * gravity * y);

A = zeros(30);
B = zeros(30);

for x = 1:30
    A(x) = -0.5 * 0.0001227 * (0.0063 * (q(x)^2) + 0.0001227 * y(x))^(-0.5);
    B(x) = x - 0.0063 * q(x) * (0.0063 * (q(x)^2) + 0.0001227 * y(x))^(-0.5);
end

for i = 1:30   
    numerator = [B(i)];
    denominator = [1 + A(i)];

    % Create a frequency vector with 3 decades
    omega = logspace(-1, 2, 1000);

    func = tf(numerator, denominator);
    bode(func, omega), grid
    hold on;
end

% Set the x-axis limits to 3 decades
xlim([0.1, 1000]);
