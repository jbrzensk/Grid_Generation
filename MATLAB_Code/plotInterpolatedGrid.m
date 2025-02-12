function [] = plotInterpolatedGrid(X, Y)
%% Plots the final grid
    [n m] = size(X);
    mesh(X, Y, zeros(n, m), 'Marker', '.', 'MarkerFaceColor', 'r', 'MarkerSize', 10, 'EdgeColor', 'b')
    title(['Physical grid. m = ' num2str(m) ', n = ' num2str(n)])
    %set(gcf, 'color', 'w')
    %axis equal
    %axis off
    view([0 90])
end
