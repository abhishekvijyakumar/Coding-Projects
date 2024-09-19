clear all;
close all;

X0=[-40;-36]; 
[tsol, solX]=ode45(@f1m1,[-10 10],X0); 

figure(1)
plot(tsol, solX(:,1)), hold on;
title("Position vs Time");
ylabel('x position');
xlabel('time')


figure(2)
plot(tsol, solX(:,2)), hold on;
title("Velocity vs Time"); 
ylabel('v velocity');
xlabel('time')