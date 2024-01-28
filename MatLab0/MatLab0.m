function [name, ufid, u, v, w, x, A, A_11, A_23, A2, A3, B, B2, B3, ...
          b, aug, rref_Ab1, rref_Ab2, pivcols, compare] = Exercise()
    % --- Name & UFID --- %
    name = "Lauren Dulick";
    ufid = 12345678;

    % --- Extra Credit [5 Points] --- %
    % * Vectors *
    u = [1 3 5 7]; % row vector
    v = [1; 3; 5; 7]; % column vector
    w = 1:7; % row vector w/ numbers 1-7 inclusive
    x = 1:2:7; % every other number from 1-7
    
    % * Matrices *
    % Enter entries manually
    A = [1 2 3; 4 5 6]; 
    A_11 = A(1,1); % returns the element in row 1 column 1 (index 1) of A
    A_23 = A(2,3); % returns the element in row 2 column 3 of A
    A2 = A(2,:); % everything in the second row in A
    A3 = A(:,3); % everything in the third column in A
    
    % Randomly generated matrices
    B = randi([-10,10],6,4); % random integer matrix between -10 thru 10 inclusive with 6 rows and 4 columns
    B2 = B(2:5, 2:4); % matrix of rows 2 thru 5 and columns 2 thru 4 of B
    B3 = B([2 5], 2:4); % matrix of rows 2 and 5 and columns 2 thru 4 of B
    
    % * Solving Systems *
    % Solve Ax=b using RREF
    b = [1; 2];
    aug = [A b]; % augmented matrix A and b [A|b]
    rref_Ab1 = rref([A b]); % reduced row echelon form of [A|b]
    [rref_Ab2, pivcols] = rref([A b]); % returns indices of pivot columns in increasing order in [A|b]
    
    % Solve Ax=b by comparing the ranks
    compare = rank_comp(A, aug); % compares the ranks of A and [A|b] using rank_comp.m
end
