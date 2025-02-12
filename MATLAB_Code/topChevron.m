function [ X, Y ] = topChevron( X, Y)
%% Generates a valley on the bottom of a domain
% BY: Jared Brzenski

xpt = X(end,:);

ynew = abs(xpt - 0.5) + 0.5;
% 
Y(end,:) = ynew;

end
