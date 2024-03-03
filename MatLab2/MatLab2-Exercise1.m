function [name, ufid, ...
    A1, A2, A3, dep_A1, dep_A2, dep_A3, ...
    B1, B2, B3, dep_B1, dep_B2, dep_B3, ...
    example_B, dep_B, example_C, dep_C] = Exercise1()
    % --- Name & UFID --- %
    name = "Lauren Dulick";
    ufid = 12345678;

    % --- Part A [10 Points] --- %
    % (1) m < n
    % create three 3x6 random matrices A1, A2, and A3 so that each entry is
    % a random integer between -7 and 7
    A1 = randi([-7,7],3,6);
    A2 = randi([-7,7],3,6);
    A3 = randi([-7,7],3,6);

    % always LINEARLY DEPENDENT
    dep_A1 = dependence(A1);
    dep_A2 = dependence(A2);
    dep_A3 = dependence(A3);

    % (2) m > n
    % create three 6x3 random matrices B1, B2, and B3 so that each entry is
    % a random integer between -7 and 7
    B1 = randi([-7,7],6,3);
    B2 = randi([-7,7],6,3);
    B3 = randi([-7,7],6,3);

    % LINEARLY INDEPENDENT
    dep_B1 = dependence(B1);
    dep_B2 = dependence(B2);
    dep_B3 = dependence(B3);

    % --- Part B [10 Points] --- %
    % (OBSERVE & EXPLAIN)
    % Observe the result from A(1).  For most cases, the columns of A are 
    % linearly dependent.  Are the columns of any 3 x 6 matrix always 
    % linearly dependent?  If yes, provide a reason using the concepts in 
    % Linear Algebra.  If not, provide a non-trivial example.

    
    % The results from A(1) show each 3x6 matrix is linearly dependent.
    % Therefore, yes, the columns of any 3x6 matrix are always linearly 
    % dependent. Matrices always exhibit linear dependence when there are
    % more vectors than entries in each vector or the number of columns is 
    % greater than the number of rows. Thus, linear dependence is 
    % guaranteed because 6 columns > 3 rows.

    example_B = NaN;
    dep_B = NaN;

    % --- Part C [10 Points] --- %
    % (OBSERVE & EXPLAIN)
    % Observe the result from A(2).  For most cases, the columns of B are 
    % linearly independent.  Are the columns of any 6 x 3 matrix always 
    % linearly independent?   If yes, provide a reason using the concepts 
    % in Linear Algebra.  If not, provide a non-trivial example.

    % The results from A(2) show that each 6x3 matrix is linearly
    % independent. But, the columns of every 6x3 matrix are not always
    % going to be linearly independent. To qualify as linearly independent,
    % the matrix must have more columns than rows but cannot have a zero 
    % vector in it, which not all 6x3 matrices don't have. Below is an 
    % example of a 6x3 matrix that is linearly dependent:
    
    example_C = [1 2 3; 2 4 6; 3 6 9; 4 5 6; 5 7 9; 6 8 10];
    dep_C = dependence(example_C);
end
