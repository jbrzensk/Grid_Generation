function [ X, Y ] = leftCornerAngle( X, Y, radius)
%% Bends left hand side at an angle
% BY: Jared Brzenski
[n,m] = size(X);

theta = linspace(pi/2, pi, n);

% Define spatial grid
xpt_new = radius .* sin(theta);
ypt_new = radius .* cos(theta);

X(:,1) = xpt_new;
Y(:,1) = ypt_new;
end
