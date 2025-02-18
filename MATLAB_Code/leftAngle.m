function [ X, Y ] = leftAngle( X, Y, inner_r, angle_offset)
%% Bends left hand side at an angle
% BY: Jared Brzenski
[n,m] = size(X);

theta = -angle_offset;
radius = linspace(inner_r,1,n);

% Define spatial grid
xpt_new = radius .* sin(theta);
ypt_new = radius .* cos(theta);

X(:,1) = xpt_new;
Y(:,1) = ypt_new;
end
