% Constants
wheel_radius = 9; % inches
angular_speed = 390 / wheel_radius; % radians per second

% Point positions
theta = linspace(0, 2*pi, 16); % angles for each point
x = wheel_radius * cos(theta); % x-coordinates
y = wheel_radius * sin(theta); % y-coordinates
    
% Compute velocities
velocity = angular_speed * [-y; x]; % velocity vectors

% Display the results
disp('Point Velocities:');
disp(velocity);