% use for loop to find values of x(t) for t using f. 

clc
clear all

t = 0:0.1:0.4; % 0.0, 0.1, 0.2, 0.3, 0.4
f = 10:5:20; 1% 10, 15, 20
x = [];  

for i = 1:length(t)
    t_temp = t(i);
    for j = 1:length(f)
        f_temp = f(j);
        x(i, j) = 3 * cos((2 * pi * f_temp * t_temp) + 0.1);  % Store the result in the matrix using double indexing
    end
end

disp(x);  % Display the results



    