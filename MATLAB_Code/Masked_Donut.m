%% Masked Donut grid generation
% BY: Jared Brzenski
%
% A donut shape using a mask of ones and zeros to remove the middle, and
% alternate method to 
%% Grid Outlines
% Limits of domain, domain extends from (0,0) to (xlimit, ylimit)
% The domain (0,0) -> (1,1) is used for the initial grid generation, 
% the resultant grid can be scaled afterwords to the desired dimensions
close all;
clear all;
clc

% Number of grid points in X and Y
numx = 20;
numy = 20;

% Inner and outer radius of the donut
inner_r = 0.15;
outer_r = 1.0;

mask_radius=inner_r;
%% Setup a generic grid, from (0,0) -> (1,1)
theta = linspace(0, 2*pi, numx);
rgrid = linspace(0, outer_r, numy);

[R, Theta] = meshgrid(rgrid,theta);

X = R .* cos(Theta);
Y = R .* sin(Theta);

%% Setup inner mask
% This could be inverted, and used as a multiplier:
% mask*u*du/dt; would return 0 if masked, u*du/dt otherwise
mask = (X.^2 + Y.^2) <= mask_radius^2;

% If you want to check the compatibility of the grid, uncomment the
% following two lines. Add the path to your
% mole library here, and check the signs of the 'J' returned. They should a
% all be positive or negative. If there are different signs, then the grid
% is malformed.
%
% addpath('/home/jbrzensk/github/mole/src/matlab');
% [J, Xe, Xn, Ye, Yn] = jacobian2D(2, X, Y);

%% Plot Cylindrical Mesh 
figure;
hold on;
plot(X, Y, 'k');  
plot(X', Y', 'k');
axis equal;
grid on;
xlabel('X-axis');
ylabel('Y-axis');
% Plot masked and non-masked values
scatter(X(~mask), Y(~mask), 20, 'b', 'filled'); % not masked (
scatter(X(mask), Y(mask), 20, 'r', 'filled');
title('Masked Donut');
hold off;

