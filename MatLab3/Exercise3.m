function [name, ufid, ...
    N1, B1, pivcols1, C1, R1, ...
    N2, B2, pivcols2, C2, R2, ...
    N3, B3, pivcols3, C3, R3, ...
    A4, N4, B4, pivcols4, C4, R4, ...
    rank_A1, rank_A2, rank_A3, rank_A4] = Exercise3(A1, A2, A3)
    % --- Name & UFID --- %
    name = "Lauren Dulick";
    ufid = 12345678;

    % --- Part A [10 Points] --- %
    % (i) Compute a basis for the nullspace, columnspace, and rowspace of A1.
    N1 = null(A1);

    [B1, pivcols1] = rref(A1);
    C1 = A1(:, pivcols1);

    R1 = B1(1:rank(A1), :);

    % --- Part B [10 Points] --- %
    % (ii) Compute a basis for the nullspace, columnspace, and rowspace of A2.
    N2 = null(A2);

    [B2, pivcols2] = rref(A2);
    C2 = A2(:, pivcols2);

    R2 = B2(1:rank(A2), :);

    % (iii) Compute a basis for the nullspace, columnspace, and rowspace of A3.
    N3 = null(A3);

    [B3, pivcols3] = rref(A3);
    C3 = A3(:, pivcols3);

    R3 = B3(1:rank(A3), :);

    % (iv) Compute a basis for the nullspace, columnspace, and rowspace of A4.
    A4 = [1 0 -2 -3 0 0; -3 -2 0 0 0 3; -7 -4 2 3 0 6; -3 -4 -6 -9 5 6];

    N4 = null(A4);

    [B4, pivcols4] = rref(A4);
    C4 = A4(:, pivcols4);

    R4 = B4(1:rank(A4), :);

    % (WHAT DOES THE *NULLSPACE* OF A4 LOOK LIKE GEOMETRICALLY?)
        % The null space of A4 is a 3-dimensional space in R^6. 
    % (WHAT DOES THE *COLUMNSPACE* OF A4 LOOK LIKE GEOMETRICALLY?)
        % The column space of A4 is a 6-dimensional space in R^4.

    % --- Part C [10 Points] --- %
    % Verify the Rank Theorem for A1, A2, A3, & A4.
    rank_A1 = rank(A1);
    %   i) dim(Col A1) = dim(Row A1) = 3
    %  ii) rank(A1) + dim(Nul A1) = 3 + 0 = 3 = n

    rank_A2 = rank(A2);
    %   i) dim(Col A2) = dim(Row A2) = 3
    %  ii) rank(A2) + dim(Nul A2) = 3 + 2 = 5 = n

    rank_A3 = rank(A3);
    %   i) dim(Col A3) = dim(Row A3) = 5
    %  ii) rank(A3) + dim(Nul A3) = 5 + 0 = 5 = n

    rank_A4 = rank(A4);
    %   i) dim(Col A4) = dim(Row A4) = 3
    %  ii) rank(A4) + dim(Nul A4) = 3 + 3 = 6 = n

    % [EC, +5 pts] Consider the case that you have found 3 linearly
    % independent solutions to the system Ax = 0 where A is an 20 x 23
    % coeffiecient matrix. Also, these solutions can construct every other
    % possible solution to the system by forming some linear combination
    % of the set of them.
    %
    % (a) What is dim Nul A? What about dim Col A?
    %
    %     dim Nul A = 20
    %     dim Col A = 3
    %
    % (b) Can you be certain that every non-homogenous system Ax = b has
    %     a solution? Why or why not (provide valid reasoning/proof)?
    %
    %     No, because non-homogeneous solutions may have a zero row in the
    %     RREF form with a non-zero value in the last column. For instance:
    %       1 0 0 | 3
    %       0 1 0 | 8
    %       0 0 0 | 7   <- 7 is the problem

end
