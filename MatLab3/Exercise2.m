function [name, ufid, ...
    A1, b1, sol_1_partic, sol_1_matlab, sol_1_cramer, ...
    A2, b2, sol_2_partic, sol_2_matlab, sol_2_cramer, ...
    A3, b3, sol_3_partic, sol_3_matlab, sol_3_cramer] = Exercise2()
    % --- Name & UFID --- %
    name = "Lauren Dulick";
    ufid = 12345678;

    % --- Part A (see CramersRule.m) [10 Points] --- %

    % --- Part B [10 Points] --- %
    % (i) m > n
    A1 = randi([-7,7],5,3);
    b1 = randi([-7,7],5,1);

    sol_1_partic = ParticularSolution(A1, b1);
    sol_1_matlab = A1\b1;
    sol_1_cramer = CramersRule(A1, b1);

    % (ii) m < n
    A2 = randi([-7,7],3,5);
    b2 = randi([-7,7],3,1);

    sol_2_partic = ParticularSolution(A2, b2);
    sol_2_matlab = A2\b2;
    sol_2_cramer = CramersRule(A2, b2);

    % (iii) m = n
    A3 = randi([-7,7],5,5);
    b3 = randi([-7,7],5,1);

    sol_3_partic = ParticularSolution(A3, b3);
    sol_3_matlab = A3\b3;
    sol_3_cramer = CramersRule(A3, b3);

    % --- Part C [10 Points] --- %

    % When A is invertible, A has a unique solution. Therefore, all 3
    % methods work: Particular Solution, MatLab, and Cramer's Rule.

    % When Ax = b is consistent where A is an n x n singular matrix, only
    % the Particular Solution method works, as shown by Exercise 1, Part C
    % and Part D. This is because the Particular Solution program returns a
    % solution for both systems with unique solutions and systems with
    % infinitely many solutions, whereas the Cramer's Rule program only
    % returns a solution for non-singular systems, which means a solution
    % for systems with infinitely many solutions (that are still consistent)
    % will not be displayed.

    % When Ax = b is consistent where A is an m x n (non-square) matrix,
    % the MatLab method works, based upon the outputs in Exercise 2, Part B.
end
