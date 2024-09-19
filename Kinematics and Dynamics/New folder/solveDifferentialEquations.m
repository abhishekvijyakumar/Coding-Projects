function solveDifferentialEquations()
    % Set the parameters
    v = 1;
    u = 0.1;

    % Set the initial conditions
    x0 = -5;
    y0 = 5;
    theta0 = 0;
    yC0 = [x0; y0; theta0];

    % Solve the system of differential equations
    [t, y] = ode45(@differentialEquations, [0 10], yC0);

    % Compute the distance r(t) and the angle phi(t)
    r = sqrt(y(:, 1).^2 + y(:, 2).^2);
    phi = -y(:, 3) + atan2(-y(:, 2), -y(:, 1));

    % Plot the results
    figure;
    subplot(2, 1, 1);
    plot(t, r);
    xlabel('t');
    ylabel('r(t)');
    title('Distance r(t)');

    subplot(2, 1, 2);
    plot(t, phi);
    xlabel('t');
    ylabel('phi(t)');
    title('Angle phi(t)');
end

function dydt = differentialEquations(t, yC)
    % Unpack the state variables
    xC = yC(1);
    yC = yC(2);
    theta = yC(3);

    % Compute the derivatives
    dxdt = v * cos(theta);
    dydt = v * sin(theta);
    dthetadt = (v/u) * sin(theta);

    % Pack the derivatives into a column vector
    dydt = [dxdt; dydt; dthetadt];
end
