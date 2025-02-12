function [ X, Y ] = rightBulgeOut( X, Y)
%% Produces bulge out right side of domain
% BY: Jared Brzenski

xpt = X(:,end);
ypt = Y(:,end);

% Dome 
% ( assumes xpt goes from 0->1 )
amp = 0.2;
xnew = amp .* cos(2*pi .* ypt) - amp;
xnew = xpt - xnew;

X(:,end) = xnew;

end
