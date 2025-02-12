%% Grid generation
% BY: Jared Brzenski
%
% This code generates a grid with boundaries mimicking those in the book
% "Fundamentals of Grid Generation", by Knupp and Steinberg. There are many
% grids presented in the book, which show the difficulties with generating
% a smooth mesh.
%
% This code implements different boundaries along the edge of a unit length
% domain. Combinations of these boundaries will mimic the grids from the
% book. After a grid has been generated, a simple transifinite
% interpolation is attempted, and the resulting grid is displayed. This
% could be considered code to solve Excercise 1.5.3.
%
% Comment out the code for the desired boundary, in the four sections below
% labeled "Left Hand Side", "Right Hand Side", "Bottom", and "Top". Some of
% the individual functions called have a "strength", which can be edited 
% if you want to make larger or smaller distrubances. They are currently
% set such that any combination results in a manifold domain.
%
% To generate some of the grids from the appendix of "Fudamentals of Grid
% Generation":
% 
% C.5 - Swan Grid:
%                 uncomment "rightSwan" and "topSwan"
%
% C.6 - Chevron Grid:
%                 uncomment "topChevron" and "bottomChevron"
%
% C.8 - Dome Grid:
%                 uncomment "topDome"
%
% C.9 - Valley Grid:
%                 uncomment "topValley"
%
%
%% Grid Outlines
% Limits of domain, domain extends from (0,0) to (xlimit, ylimit)
% The domain (0,0) -> (1,1) is used for the initial grid generation, 
% the resultant grid can be scaled afterwords to the desired dimensions

% Number of grid points in X and Y
numx = 21;
numy = 21;

%% Setup a generic grid, from (0,0) -> (1,1)
[ X, Y ] = meshgrid( linspace(0,1,numx), linspace(0,1,numy) ); 

% Zero out the middle
X(2:end-1, 2:end-1) = 0;
Y(2:end-1, 2:end-1) = 0;

%% Left hand side
% No change

%% Right Hand Side
%[X,Y] = rightBulgeIn(X,Y);
%[X,Y] = rightBulgeOut(X,Y);
%[X,Y] = rightSwan(X,Y);

%% Bottom Side
%[X,Y] = bottomDome(X,Y);
%[X,Y] = bottomValley(X,Y);
%[X,Y] = bottomChevron(X,Y);

%% Top Side
%[X,Y] = topDome(X,Y);
%[X,Y] = topValley(X,Y);
%[X,Y] = topChevron(X,Y);
%[X,Y] = topSwan(X,Y);

%% Do Transfinite Interpolation on the grid, just for fun
[Xint, Yint] = transfiniteInterpolate(X,Y);

%% Plot results
plotResultGrids(X,Y,Xint,Yint);
