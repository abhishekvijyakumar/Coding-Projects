% Adding even numbers from x to new vector y

clc
clear all
x = [1:1:100];
y = [];

for i =  1:100
    n = mod(x(i),2);
    if n == 0
        y(end + 1) = x(i);
    end
end

disp(y)