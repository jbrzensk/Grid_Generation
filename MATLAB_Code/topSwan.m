function [ X, Y ] = topSwan( X, Y)
%% Produces Swan on top of domain
% BY: Jared Brzenski

xpt = X(end,:);

ynew = 1 - (3.*xpt) + (3.*(xpt.^2));
% 
Y(end,:) = ynew;

end
