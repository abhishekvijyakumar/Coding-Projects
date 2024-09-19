% Using while loop to find largest value 

clc
clear all
e = exp(1.2);

omega_values = [35, 40, 45]; % Define the values of ω
for omega = omega_values
    t = 0; 
    largest_t = 0; %value inits

    while (exp(1.2) * cos(omega * t) < 10) && (t^3 < 10)
        largest_t = t; 
        t = t + 0.01; 
    end

    fprintf('For ω = %d, the largest t val is approx. %.2f\n', omega, largest_t);
end
