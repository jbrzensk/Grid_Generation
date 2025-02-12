function [Xint, Yint] = transfiniteInterpolate( X, Y )
    %% Transfinite Interpolation
    % Returns interpolated grid points for the domain defined by the
    % coordinates in (X,Y). Only the edge points of the X,Y matrices are 
    % used.
    %
    % BY: Jared Brzenski
    %
    % This code is mostly due to the code written by Johnny Corbino for the 
    % MOLE library ( https://github.com/csrc-sdsu/mole ). Go Johnny!!
    % 
    
    [n, m] = size(X);
    
    assert(isequal(size(Y), [n, m]), 'X and Y must be the same size!');
    
    Xint = X;
    Yint = Y;
    
    IMAX = n;
    JMAX = m;
    
    % Interpolationing
    for j=2:JMAX-1
        for i=2:IMAX-1

        % Weight Coefficients
        alpha = i / IMAX;
        beta  = j / JMAX;
        alpha_c = 1 - alpha;
        beta_c  = 1 - beta;

        Xint(i, j) = alpha * X(IMAX, j) + alpha_c * X(1, j) ...
                   + beta  * X(i, JMAX) + beta_c  * X(i, 1) ...
                   - alpha * beta  * X(IMAX, JMAX) ...
                   - alpha * beta_c * X(IMAX, 1) ...
                   - alpha_c * beta  * X(1, JMAX) ...
                   - alpha_c * beta_c * X(1, 1);

        Yint(i, j) = alpha * Y(IMAX, j) + alpha_c * Y(1, j) ...
                   + beta  * Y(i, JMAX) + beta_c  * Y(i, 1) ...
                   - alpha * beta  * Y(IMAX, JMAX) ...
                   - alpha * beta_c * Y(IMAX, 1) ...
                   - alpha_c * beta  * Y(1, JMAX) ...
                   - alpha_c * beta_c * Y(1, 1);
        end
    end
end
