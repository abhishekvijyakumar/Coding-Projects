clear all;
close all;

X0=[0;-1]; 
[tsol, solX]=ode45(@f1m2,[-5 15],X0);

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