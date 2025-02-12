function [ X, Y ] = bottomValley( X, Y)
%% Generates a valley on the bottom of a domain
% BY: Jared Brzenski

xpt = X(1,:);

amp = 0.5;  % Change this for more/less feature
ynew = ( amp .* cos(2*pi .* xpt) ) - amp;

Y(1,:) = ynew;

end
