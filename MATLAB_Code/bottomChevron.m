function [ X, Y ] = bottomChevron( X, Y)
%% Generates a valley on the bottom of a domain
% BY: Jared Brzenski

xpt = X(1,:);

slope = 1; % change this for more/less feature

ynew = slope * (abs(xpt - 0.5) - 0.5);

Y(1,:) = ynew;

end