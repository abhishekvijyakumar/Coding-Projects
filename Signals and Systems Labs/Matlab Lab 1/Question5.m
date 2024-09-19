clc
clear all

% defining vars as given in notes
t = 0:.1:10; 
s1 = sin(2*pi*.2*t); 
s2 = sin(2*pi*.425*t);
s3 = s1 + s2; 

% plot s1, s2, and s3 
plot(t, s1, 'r', 'LineWidth', 2); 
hold on; 
plot(t, s2, 'g', 'LineWidth', 2);
plot(t, s3, 'b', 'LineWidth', 2); %
xlabel('Time (seconds)'); % 
ylabel('Amplitude'); % 
title('Graph of s1, s2, and s3'); 
legend('s1', 's2', 's3'); 