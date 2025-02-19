function [ X, Y ] = leftLowerCornerAngle( X, Y, radius)
%% Bends bottom hand side at an angle
% BY: Jared Brzenski
[n,m] = size(X);

theta = linspace(-pi/2, -pi, m);

% Define spatial grid
xpt_new = radius .* cos(theta);
ypt_new = radius .* sin(theta);

X(1,:) = fliplr(xpt_new);
Y(1,:) = fliplr(ypt_new);
end
