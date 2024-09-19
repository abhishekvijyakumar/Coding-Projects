clc
clear all
close all

% Given values
a = 0.0175;
b = 31.841;

numerator = [b];
denominator = [1,a];

sys = tf(numerator,denominator);

bode(sys)
%xlabel('Frequency (Hz)');
%ylabel('Magnitude');
title('Frequency Response');
grid on;
