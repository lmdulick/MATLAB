function [system_type, name, ufid] = LS_solution(n, A, Ab)
    % --- Name & UFID --- %
    name = "Lauren Dulick";
    ufid = 12345678;
    
    % PURPOSE OF THIS FUNCTION: determine if an augmented matrix is
    % consistent or inconsistent
    % n = number of variables within the system of equations
    % A = matrix A
    % Ab = augmented matrix of A and b = [A|b]

    inc = "Inconsistent";
    con_with_one_sol = "Consistent with One Solution";
    con_with_inf_sols = "Consistent with Infinite Solutions";
     
    % Add your code below

    if rank(A) ~= rank(Ab)
        system_type = inc;
    elseif rank(A) == rank(Ab) && rank(A) == n
        system_type = con_with_one_sol;
    else
        system_type = con_with_inf_sols;
    end 

end
