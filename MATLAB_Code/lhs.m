function [ X, Y ] = lhs( X, Y)
%% Produces output same as LHS of domain X,Y
% BY: Jared Brzenski

xpt = X(:,1);
ypt = Y(:,1);

X(:,end) = xpt;
Y(:,end) = ypt;
end
