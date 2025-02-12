function [ X, Y ] = topDome( X, Y )
%% generates a dome on the top on a domain for x,y in (0,1)
% BY: Jared Brzenski
%
xpt = X(end,:);

% Dome 
% ( assumes xpt goes from 0->1 )
amp = -0.5;  % Change this for more/less feature
ynew = amp .* cos(2*pi .* xpt) + (1-amp);

Y(end,:) = ynew;

end