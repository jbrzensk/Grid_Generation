function [ X, Y ] = topRadius( X, Y, radius )
%% generates an arc on the top on a domain for x,y, change 
% BY: Jared Brzenski
[n, m] = size(X);

theta = linspace(0,2*pi, m);  % Theta grid (0 to 2π)

% Define spatial grid
xpt_new = radius .* sin(theta);
ypt_new = radius .* cos(theta);

X(end,:) = xpt_new;
Y(end,:) = ypt_new;

end