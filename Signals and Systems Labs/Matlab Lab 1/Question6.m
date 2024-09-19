clc;
clear all;

syms z

x = -2*pi:0.01:2*pi;
y = mySinc(x);
y1 = sinc(z); 

% Plot the results
plot(x, y)
hold on
fplot(y1, [-2*pi, 2*pi]) % Plot both
legend('Own','Inbuilt')

function y = mySinc(x)
    % Custom Sinc function
    for i = 1:length(x)
        if x(i) == 0
            y(i) = 1;
        else
            y(i) = sin(x(i)) / x(i);
        end
    end
end
