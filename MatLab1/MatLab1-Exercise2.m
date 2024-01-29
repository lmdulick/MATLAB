function [name, ufid, B, pivcols, compare, m, n, solution_type] = Exercise2(A, b)
    % --- Name & UFID --- %
    name = "Lauren Dulick";
    ufid = 12345678;

    % --- Part A [10 Points] --- %
    [B, pivcols] = rref([A b]);
    % B = the reduced row echelon form of [A b]
    % pivcols = number of pivot columns and what column they're located in
    % in matrix A

    % The system Ax = b is inconsistent due to the presence of a pivot column in the last
    % column.

    % --- Part B [10 Points] --- %
    compare = rank_comp(A, [A b]);
    % THEOREM: Rouch-Capelli Theorem
        % def - If A and [A b] have the same rank, they are consistent. 
        % By the Rouch-Capelli Theorem, the system Ax = b is inconsistent.
        % Additionally, I have the same result as in Part A, which is also
        % inconsistent.
   
    % --- Part C [10 Points] --- %
    [m, n] = size(A);
    solution_type = LS_solution(n, A, [A b]);
end
