function [ X, Y ] = rightSwan( X, Y)
%% Produces Swan on right side of domain
% BY: Jared Brzenski

ypt = Y(:,end);
    
% Dome 
xnew = 1 + (2.*ypt) - (2.*(ypt.^2));

X(:,end) = xnew;

end
