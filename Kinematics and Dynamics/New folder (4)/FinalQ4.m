clear all;
close all;

% Parameters
bicycle_length = 1;  % Length of the bicycle
vB = 0.5;    
xB = 0;          % Initial x-coordinate of point B
yB = 0;          % Initial y-coordinate of point B
theta = 45*pi/180;  % Initial heading angle (converted to radians)
phi = 35*pi/180;    
t = 0:0.1:10;  % Time interval

xB_values = zeros(size(t));
yB_values = zeros(size(t));
xA_values = zeros(size(t));
yA_values = zeros(size(t));

% Compute the motion of points B and A
for i = 1:length(t)
    xB = xB + vB*cos(theta)*0.1;
    yB = yB + vB*sin(theta)*0.1;
    
    xA = xB - bicycle_length*cos(theta + phi);
    yA = yB - bicycle_length*sin(theta + phi);
    
    xB_values(i) = xB;
    yB_values(i) = yB;
    xA_values(i) = xA;
    yA_values(i) = yA;
    
    theta = theta + vB*tan(phi)/bicycle_length*0.1;
end

% Plot 
figure;
plot(xB_values, yB_values, 'b', 'LineWidth', 2);
hold on;
plot(xA_values, yA_values, 'r', 'LineWidth', 2);
xlabel('x');
ylabel('y');
title('Motion of Points B and A');
legend('Point B', 'Point A');
axis equal;

% Compute and display the final heading of the bicycle
final_heading = theta*180/pi;
disp(['Final heading of the bicycle: ', num2str(final_heading), ' degrees']);
