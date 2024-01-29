function [name, ufid, ...
          A, b, c, D, x1, x2, x3, aug, ...
          x4, x5, x6, x7, x8, ...
          F1, F2, E, m, n, E1, E2] = Exercise1()
    % --- Name & UFID --- %
    name = "Lauren Dulick";
    ufid = 12345678;

    % --- Part A [10 Points] --- %
    A = [1 2 3; -4 -5 -6; 7 8 9];
    b = [1; 2; 3];
    c = [-1, 1, -1];
    D = [0 1 2 3 4; 1 2 3 4 0; 2 3 4 0 1];
    x1 = A(2,:); % returns the 2nd row in matrix A
    x2 = D(:,4); % returns the 4th column in matrix D
    x3 = [A b]; % returns the augmented matrix [A|b]
    aug = [A;c]; % returns a 4x3 matrix of matrix A with the addition of c as row 4 (c = last row)

    % --- Part B [10 Points] --- %
    x4 = eye(8); % returns an 8x8 matrix with pivot value = 1 in every column
    x5 = zeros(6,3); % retuns a 6x3 matrix of 0's
    x6 = zeros(5); % returns a 5x5 matrix of 0's
    x7 = ones(3,5); % returns a 3x5 matrix of 1's
    x8 = diag(c); % returns a 3x3 matrix with pivot values from c diagonally in every column

    % --- Part C [10 Points] --- %
    F1 = randi([-7,7],3,7); % returns a 3x7 matrix with random numbers ranging from -7 to 7

    F2 = F1;  % Copy array
    F2(:, [3 6]) = F1(:, [6 3]);  % returns matrix F1 with columns 3 and 6 switched

    E = [A F2]; % returns the augmented matrix [A|F2]
    
    [m, n] = size(E); % returns the size of E with m = number of rows and n = number of columns
    
    E1 = E(:, [3 7]); % returns a 3x2 matrix with matrix E's 3rd and 7th columns
    E2 = E(:, 3:7); % returns a 3x5 matrix of matrix E's 3rd through 7th columns
end
