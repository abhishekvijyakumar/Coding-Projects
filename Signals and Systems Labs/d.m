clc
clear all
close all

gravity = 9.81
a = 0.0175

figure
y = linspace(0.05, 0.15, 30);
q = sqrt(2 * a^2 * gravity * y);

% Plot 'q' against 'y'
plot(y, q);
title('Plot of q vs. y');
xlabel('y');
ylabel('q');
grid on;

