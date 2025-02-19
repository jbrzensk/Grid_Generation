%% Donut grid generation
% BY: Jared Brzenski
%
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

%% Setup a generic grid, from (0,0) -> (1,1)
% BUT!!! Want inner radius to be above 0,0, so, set Y starting
% point not 0, but length of inner radius
[ X, Y ] = meshgrid( linspace(0,1,numx), linspace(inner_r,1,numy) ); 

% Zero out the middle
X(2:end-1, 2:end-1) = 0;
Y(2:end-1, 2:end-1) = 0;

%% Left hand side
% Upper left corner, arc
[X,Y] = leftUpperCornerAngle(X,Y,outer_r);

%% Right Hand Side
% Set equal to left hand side
[X,Y] = rightLowerCornerAngle(X,Y,outer_r);

%% Bottom Side
[X,Y] = leftLowerCornerAngle(X,Y,outer_r);

%% Top Side
[X,Y] = rightUpperCornerAngle(X,Y,outer_r);

%% Do Transfinite Interpolation on the grid, just for fun
[Xint, Yint] = transfiniteInterpolate(X,Y);

%% Plot results
plotResultGrids(X,Y,Xint,Yint);
