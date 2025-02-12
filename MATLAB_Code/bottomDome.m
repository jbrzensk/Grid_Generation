function [ X, Y ] = bottomDome( X, Y )
%% generates a dome on the bottom on a domain for x,y in (0,1)
% BY: Jared Brzenski

xpt = X(1,:);

amp = -0.2;  % Change this for more/less feature
ynew = amp .* cos(2*pi .* xpt)  - amp;

Y(1,:) = ynew;

end