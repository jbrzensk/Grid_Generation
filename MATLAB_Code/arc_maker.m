clc; clear; close all;

% Define center and radius
center_x = 0; 
center_y = 0;
radius = 5;

% Define angle ranges for each arc
theta_top = linspace(pi/2, 0, 50);      % Top arc
theta_right = linspace(0, -pi/2, 50);   % Right arc
theta_bottom = linspace(-pi/2, -pi, 50); % Bottom arc
theta_left = linspace(-pi, -3*pi/2, 50); % Left arc

% Compute x and y coordinates for each arc
x_top = center_x + radius * cos(theta_top);
y_top = center_y + radius * sin(theta_top);

x_right = center_x + radius * cos(theta_right);
y_right = center_y + radius * sin(theta_right);

x_bottom = center_x + radius * cos(theta_bottom);
y_bottom = center_y + radius * sin(theta_bottom);

x_left = center_x + radius * cos(theta_left);
y_left = center_y + radius * sin(theta_left);

% Plot the arcs
figure;
hold on;
plot(x_top, y_top, 'r', 'LineWidth', 2);      % Top arc
plot(x_right, y_right, 'g', 'LineWidth', 2);  % Right arc
plot(x_bottom, y_bottom, 'b', 'LineWidth', 2); % Bottom arc
plot(x_left, y_left, 'k', 'LineWidth', 2);    % Left arc
hold off;

% Format plot
axis equal;
grid on;
xlabel('X-axis');
ylabel('Y-axis');
title('Four Arcs around a Matrix');
legend('Top Arc', 'Right Arc', 'Bottom Arc', 'Left Arc');