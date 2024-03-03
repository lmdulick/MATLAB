function [name, ufid, ...
    transform_A1, transform_A2, transform_A3, ...
    transform_B1, transform_B2, transform_B3, ...
    C1, C2, C3, transform_C1, transform_C2, transform_C3, ...
    example_neither, transform_neither] = Exercise2(A1, A2, A3, B1, B2, B3)
    % --- Name & UFID --- %
    name = "Lauren Dulick";
    ufid = 51794124;

    % --- Part A (see transformation.m) [10 Points] --- %

    % --- Part B [10 Points] --- %
    transform_A1 = transformation(A1);
    transform_A2 = transformation(A2);
    transform_A3 = transformation(A3);

    transform_B1 = transformation(B1);
    transform_B2 = transformation(B2);
    transform_B3 = transformation(B3);

    C1 = randi([-7,7],3,3);
    C2 = randi([-7,7],3,3);
    C3 = randi([-7,7],3,3);

    transform_C1 = transformation(C1);
    transform_C2 = transformation(C2);
    transform_C3 = transformation(C3);

    % --- Part C [10 Points] --- %

    % (1) When m < n, a transformation T(x) = Ax is never one-to-one. The number
    % of pivot positions is dependent upon the number of rows when the
    % number of rows is greater than the number of columns. One-to-one
    % correspondence requires an equal number of columns and pivot positions. 
    % This is impossible when the number of rows is consistently less 
    % than the number of columns.

    % (2) When m > n, a transformation T(x) = Ax is never onto. When the
    % number of columns is greater than the number of rows, the number of
    % pivot positions is restricted by the number of columns. Onto
    % coorespondence requires an equal number of rows and pivot positions,
    % but this is impossible when the number of columns is consistently
    % less than the number of rows. These extra rows in the matrix will
    % never have a pivot position due to an insufficient number of columns
    % to span those rows.

    % (3) When m = n, a transformation T(x) = Ax is neither one-to-one nor
    % onto. When rank(A) is less than m, A is not onto. When rank(A) is less 
    % than n or a nontrivial solution exists because the columns of A are 
    % linearly dependent, A is not one-to-one.

    example_neither = [2 4 6; 7 14 21; 5 10 15];
    transform_neither = transformation(example_neither);

    % (4) When m = n, a transformation T(x) = Ax cannot be onto but not
    % one-to-one because onto signifies that the number of rows equals the
    % number of pivot positions. In this case, because the number of rows
    % also equals the number of columns and there's a pivot position in
    % every row, it's impossible that there's not a pivot position in every
    % column as well. 
    % When m = n, a transformation T(x) = Ax cannot be one-to-one but not
    % onto because one-to-one signifies that the number of columns equals
    % the number of pivot positions. In this case, because the number of
    % columns also equals the number of rows and there's a pivot position
    % in every column, it's impossible that there's not a pivot position in
    % every row as well.
    
end

