clear all;
close all;

X0=[0;-1]; %init condition 
[tsol, solX]=ode45(@f1,[-5 15],X0); %function, time span, init condition 

% for x(t) vs t

figure(1)
plot(tsol, solX(:,1)), hold on;
ylabel('x position');
xlabel('time')

% for x'(t) vs t
figure(2)
plot(tsol, solX(:,2)), hold on;
ylabel('v velocity');
xlabel('time')