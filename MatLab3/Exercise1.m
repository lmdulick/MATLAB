function [name, ufid, ...
    A, rref_A, det_A, det_AT, ...
    A1, b1, sol_1_partic, sol_1_matlab, sol_1_cramer, ...
    A2, b2, sol_2_partic, sol_2_matlab, sol_2_cramer, ...
    A3, b3, sol_3_partic, sol_3_matlab, sol_3_cramer] = Exercise1()
    % --- Name & UFID --- %
    name = "Lauren Dulick";
    ufid = 12345678;

    % --- Part A [10 Points] --- %
    % (i) Some MATLAB implementation details...

    % vvvvv COMMENT OUT BEFORE SUBMITTING vvvvv %
    %n = randi([2500, 5000]);
    %A = randi([-7,7], n, n);
    %b = randi([-7,7], n, n);

    %tic
    %    A\b;
    %toc;

    %tic
    %    inv(A) * b;
    %toc;
    % ^^^^^ COMMENT OUT BEFORE SUBMITTING ^^^^^ %

    % (COMPARE BOTH & NOTE WHICH ONE IS FASTER & FIND OUT WHAT A\b ACTUALLY DOES)
        % A\b is faster than inv(A)*b.
        % inv(A)*b returns the inverse of A multiplied to b
        % When A is invertible, it's more accurate and faster to use A\b because,
        % in contrast to inv(A)*b, A\b is more direct by dividing A by b.
        % This returns the solution to the equation Ax = b, which is
        % computed by Gaussian elimination.

    % (ii) Some more practical things...
    A = [1 2 3; -4 -5 -6; 7 8 9];
    rref_A = rref(A);

    % (CONCLUDE INVERTIBILITY OF A WITH VALID REASONING)
        % A is not invertible, as the rref(A) doesn't have a pivot position
        % in every column and row. Therefore, the Rank(A) is not equivalent
        % to n, the number of columns, and it's linearly dependent.
    % Therefore, the determinant of A is 0.

    det_A = det(A);
    %disp(det(sym(A))) % (COMMENT OUT BEFORE SUBMISSION!)

    det_AT = det(transpose(A));

    % (DETERMINE RELATION BETWEEN det(A) AND det(A^T))
        % det(A) = det(A^T) = 0
    % (WHAT CAN YOU SAY ABOUT THE INVERIBILITY OF A^T WHEN A IS NOT INVERTIBLE?)
        % When A is not invertible, A^T is also not invertible because A is 
        % singular. Additionally, the determinant of A and A^T is zero. This is 
        % shown by the relationship: det(A) = det(A^T) = 0.

    % --- Part B [10 Points] --- %
    A1 = [1 1 -2; 1 -2 4; 0 1 -2];
    b1 = [1; -2; 3];

    sol_1_partic = ParticularSolution(A1, b1);
    sol_1_matlab = A1\b1;
    sol_1_cramer = CramersRule3x3(A1, b1);

    % (IS THE SYSTEM CONSISTENT & PROVIDE REASONING)
        % The system is inconsistent, as there is a pivot column in the
        % last column. This system is also singular.
    % (DETERMINE ALL SOLUTIONS OF THE SYSTEM)
        % Because the system is inconsistent, there is no solution.

    % --- Part C [10 Points] --- %
    A2 = [1 1 -2; 1 -2 4; 0 1 -2];
    b2 = [1; -2; 1];

    sol_2_partic = ParticularSolution(A2, b2);
    sol_2_matlab = A2\b2;
    sol_2_cramer = CramersRule3x3(A2, b2);

    % (IS THE SYSTEM CONSISTENT & PROVIDE REASONING)
        % The system is consistent, as the Rank(A2) = Rank([A2 b2]), which
        % both equal 2. When row reducing, the bottom row becomes a zero
        % vector, which means there are infinitely many solutions. This
        % system is also singular.
    % (DETERMINE ALL SOLUTIONS OF THE SYSTEM)
        % There are infinitely many solutions, therefore:
        % x = [0; 1; 0] + [0; 2; 1]*x3

    % --- Part D [10 Points] --- %
    A3 = [1 1 -2; 1 -2 -2; 0 1 2];
    b3 = [1; -2; 1];

    sol_3_partic = ParticularSolution(A3, b3);
    sol_3_matlab = A3\b3;
    sol_3_cramer = CramersRule3x3(A3, b3);

    % (IS THE SYSTEM CONSISTENT & PROVIDE REASONING)
        % The system is consistent, as there is a pivot column in every
        % column except for the rightmost column. Therefore, Rank(A3) =
        % Rank([A3 b3]), which both equal 3.
    % (DETERMINE ALL SOLUTIONS OF THE SYSTEM)
        % The unique solution of the system is: [0; 1; 0]. 
        % x1 = 0
        % x2 = 1
        % x3 = 0
end

