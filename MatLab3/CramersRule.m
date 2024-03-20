function [x, name, ufid]  = CramersRule(A, b)
    % Purpose: Solve the system Ax=b for all square matrices using Cramer's Rule.
    % Input Argument [A]: inputted matrix A
    % Input Argument [b]: inputted vector b
    % Output Argument [x]: a solution to Ax=b or NaN if m != n

    % --- Name & UFID --- %
    name = "Lauren Dulick";
    ufid = 12345678;

    [m, n] = size(A); % # of rows and columns of A, respectively

    % Use CramersRule3x3.m as a guide to write this new function.
    % Hint: Use a for-loop.

    % check for and return NaN if m != n (i.e. A is non-square) or the
    % magnitude of |det A| <= 10^(-8)
    if m ~= n || abs(det(A)) <= 10^(-8) 
        x = NaN;
    % when A is invertible, use a for loop to calculate each x(i), i = 1:n
    else
        x = zeros(1, n);
        for i = 1:n
            B = A;
            B(:, i) = b;
            x(i) = det(B) / det(A);
        end
        x = x';
    end
    
end
