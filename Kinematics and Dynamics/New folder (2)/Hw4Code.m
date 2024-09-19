% ECE 10 - Fundamentals of Robot Kinematics and Dynamics
% Prof. Dejan Milutinovic
% Abhishek Vijayakumar
% Hw4 plots

clear all
close all

%setting variables and initial conditions
global v
global u
v=0.1;
D=0.07;
t = [-5:0.01:5];
x=[-2.5:0.01:2.5];
dt=0.03;

%y=(x/10).*((x/10)-2).*(x/10+2)*2
y=(x.^3)-4*x; %equation
figure(1)
plot(x,y),hold on
axis equal
th0=atan((3*(x(1))^2-4));
x0=[x(1);y(1);th0];
options=odeset('RelTol',1e-7);
[tsol xsol]=ode45(@odeHw4,[0:0.03:240],x0,options);
usol = xsol(:,3);

VL = (2*v - usol * D ) /2
VR = (2*v + usol * D ) /2

figure(1)
title('Trajectory'),hold on
plot(xsol(:,1),xsol(:,2),'r-')
xlabel('x');ylabel('y');
figure(2)
title('Heading angle vs. time'),hold on
plot(tsol,xsol(:,3));
xlabel('Time');ylabel('\theta');
figure(3)
title('Heading rate vs. time'),hold on
omega=diff(xsol(:,3))/dt;
plot(tsol(1:end-1),diff(xsol(:,3))/dt);
figure(4)
title('Velocity vs. time'),hold on
plot(tsol(1:end-1),ones(1,length(diff(xsol(:,3))))*v);

%hold on
%legend('Velocity');
plot(tsol,VL);
plot(tsol,VR);

legend('Velocity' , 'VL (average L)', 'VL (average R)');


