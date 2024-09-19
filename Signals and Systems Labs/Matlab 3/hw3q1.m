% Define the symbolic variables and constants
syms t L R C i(t)
L_val = 0.5;  % H
R_val = 2;    % Ω
C_val = 1;    % F

% Define the differential equation
eqn = L * diff(i, t, t) + R * diff(i, t) + 1/C * i == dirac(t);

% Solve the differential equation
impulse_response = dsolve(eqn, i(0) == 0, diff(i, 0) == 0);

% Define a time range for plotting
t_range = -10:0.1:30;

% Evaluate the impulse response for the given time range
h = subs(impulse_response, t, t_range);

% Plot the impulse response
plot(t_range, h);
title('Impulse Response of RLC Circuit');
xlabel('Time (t)');
ylabel('h(t)');
grid on;
