function [transform_type, name, ufid] = transformation(A)
    % Purpose: to determine whether a given matrix is one-to-one, onto,
    % both, or neither
    % Input Argument [A]: matrix A
    % Output Argument [transform_type]: one-to-one, onto, both, or neither
    % (the transformation_type string)

    % --- Name & UFID --- %
    name = "Lauren Dulick";
    ufid = 51794124;

    [m, n] = size(A); % # of rows and columns of A, respectively

    both = "Onto and one-to-one";
    onto = "Onto but not one-to-one";
    one_to_one = "One-to-one but not onto";
    neither = "Neither onto nor one-to-one";

    rank_A = rank(A);
    % Use dependence.m as a guide to write this new function. Enter code below.
    if rank_A == m && rank_A == n 
        transform_type = both;
        % dep = both
        % disp(both)
    elseif rank_A == m
        transform_type = onto;
    elseif rank_A == n 
        transform_type = one_to_one;
    else
        transform_type = neither;
    end
end
