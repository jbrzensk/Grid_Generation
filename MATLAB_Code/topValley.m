function [ X, Y ] = topValley( X, Y)
%% Generates a valley on the top of a domain
% BY: Jared Brzenski

xpt = X(end,:);

% Valley
% ( assumes xpt goes from 0->1 )
amp = 0.2; % Change this for more/less feature
ynew = ( amp .* cos(2*pi .* xpt) ) + (1 - amp);

Y(end,:) = ynew;

end
