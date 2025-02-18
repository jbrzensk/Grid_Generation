function [ X, Y ] = rhs( X, Y)
%% Mkaes LHS same as RHS
% BY: Jared Brzenski

% Bulge in
xpt = X(:,end);
ypt = Y(:,end);

X(:,1) = xpt;
Y(:,1) = ypt;

end
