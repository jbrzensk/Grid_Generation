function [] = plotResultGrids( X, Y, Xint, Yint )
%% Plot the initial grid outline and the interpolated grid
% BY: Jared Brzenski
tiledlayout(1,2)

nexttile
%% Initial Grid outline
plotEdges(X,Y);
axis tight;
pbaspect([ 1 1 1]);
% Give a little space around graph, looks better
buffer = 0.2;
current_x_limits = xlim(gca);
xlim([ current_x_limits(1)-buffer current_x_limits(2) + buffer ]);
current_y_limits = ylim(gca);
ylim([ current_y_limits(1)-buffer current_y_limits(2)+buffer]);

nexttile
%% Interpolated Grids
[n m] = size(Xint);
mesh(Xint, Yint, zeros(n, m), 'Marker', '.', 'MarkerFaceColor', 'r', 'MarkerSize', 10, 'EdgeColor', 'b')
title(['Physical grid. m = ' num2str(m) ', n = ' num2str(n)])
set(gcf, 'color', 'w')
axis tight
xlim([ current_x_limits(1)-buffer current_x_limits(2) + buffer ]);
ylim([ current_y_limits(1)-buffer current_y_limits(2)+buffer]);

view([0 90])

pbaspect([ 1 1 1]);
end
