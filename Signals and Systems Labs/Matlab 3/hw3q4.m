clc
close all
clear all

syms y(t)
M = 100;  
k = 1;    
b = 20;
r = 1;

dydt = diff(y, t); 
initial_cond = [y(0) == 0, dydt(0) == 0];
equation = M * diff(y, t, 2) + b * dydt + k * y == r;

h1 = dsolve(equation, initial_cond);
t1 = linspace(-10, 300, 1000);
h1 = double(subs(h1, t, t1));

b = 0.2;
r = 1;
dydt = diff(y, t);
initial_cond = [y(0) == 0, dydt(0) == 0];
equation = M * diff(y, t, 2) + b * dydt + k * y == r;

h2 = dsolve(equation, initial_cond);
t2 = linspace(-10, 300, 1000);
h2 = double(subs(h2, t, t2));

plot(t1, h1)
hold on
plot(t2, h2)
hold off

xlabel('Time(s)')
ylabel('Impulse Response')
title('Impulse Response of Spring-Damper System')
grid on