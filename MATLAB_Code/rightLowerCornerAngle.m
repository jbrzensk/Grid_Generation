function [ X, Y ] = rightLowerCornerAngle( X, Y, radius)
%% Bends left hand side at an angle
% BY: Jared Brzenski
[n,m] = size(X);

theta = linspace(0, -pi/2, m);

% Define spatial grid
xpt_new = radius .* cos(theta);
ypt_new = radius .* sin(theta);

X(:,end) = fliplr(xpt_new);
Y(:,end) = fliplr(ypt_new);

end
