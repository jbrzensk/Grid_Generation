function [ X, Y ] = rightUpperCornerAngle( X, Y, radius)
%% Bends left hand side at an angle
% BY: Jared Brzenski
[n,m] = size(X);

theta = linspace(pi/2, 0, m);

% Define spatial grid
xpt_new = radius .* cos(theta);
ypt_new = radius .* sin(theta);

X(end,:) = xpt_new;
Y(end,:) = ypt_new;

end
