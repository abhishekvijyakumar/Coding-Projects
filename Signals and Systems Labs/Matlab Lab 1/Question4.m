clc
clear all

t = linspace(0, 1, 15); % create a vector of 15 equally spaced values between 0 and 1
x = 4*cos(2*pi*t + 0.2) + 3*sin(pi*pi*t); % create the vector x

max_x = max(x);
min_x = min(x);
avg_x = mean(x);
idx = find(abs(x) > 4);

disp(idx)