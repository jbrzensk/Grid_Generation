function [] = plotEdges( X, Y)
%% Plots the four edges of doamin described by (X_i, Y_i)
%
% BY: Jared Brzenski
%
LHSx = X(:,1);
LHSy = Y(:,1);

RHSx = X(:,end);
RHSy = Y(:,end);

THSx = X(end,:);
THSy = Y(end,:);

BHSx = X(1,:);
BHSy = Y(1,:);

%% Plot
plot(LHSx, LHSy, '+r');
hold on;
plot(RHSx, RHSy, '.g');
plot(THSx, THSy, '--b');
plot(BHSx, BHSy, '*m');

xmax = max(X(:));
ymax = max(Y(:));

%axis equal;

legend('Left   (first col)', ...
       'Right  (last col )', ...
       'Top    (last row )',...
       'Bottom (first row)', 'Location','northoutside')