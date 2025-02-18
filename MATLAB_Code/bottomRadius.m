function [ X, Y ] = bottomRadius( X, Y, radius )
%% generates a radius on the bottom on a domain for x,y in (0,1)
% BY: Jared Brzenski
[n, m] = size(X);

theta = linspace(0, (2*pi), m);  % Theta grid (0 to 2π)

% Define spatial grid
xpt_new = radius .* sin(theta);
ypt_new = radius .* cos(theta);

X(1,:) = xpt_new;
Y(1,:) = ypt_new;

end