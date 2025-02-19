function [ X, Y ] = leftUpperCornerAngle( X, Y, radius)
%% Bends left hand side at an angle
% BY: Jared Brzenski
[n,m] = size(X);

theta = linspace(-pi,-3*pi/2, n);

% Define spatial grid
xpt_new = radius .* cos(theta);
ypt_new = radius .* sin(theta);

X(:,1) = xpt_new;
Y(:,1) = ypt_new;
end
