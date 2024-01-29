function [name, ufid, ...
          bA, A1, Ab1, sol1, A2, Ab2, sol2, A3, Ab3, sol3, ...
          example_A1, example_b1, example_type1, ...
          bC, A4, Ab4, sol4, A5, Ab5, sol5, A6, Ab6, sol6, ...
          example_A2, example_b2, example_type2, ...
          example_A3, example_b3, example_type3] = Exercise3()
    % --- Name & UFID --- %
    name = "Lauren Dulick";
    ufid = 12345678;

    % --- Part A: Underdetermined Systems [10 Points] --- %
    
    bA = randi([-7,7],2,1);
    
    A1 = randi([-7,7],2,3);
    Ab1 = [A1 bA];
    [~, n] = size(Ab1);
    sol1 = LS_solution(n, A1, [A1 bA]);

    A2 = randi([-7,7],2,3);
    Ab2 = [A2 bA];
    [~, n] = size(Ab2);
    sol2 = LS_solution(n, A2, [A2 bA]);

    A3 = randi([-7,7],2,3);
    Ab3 = [A3 bA];
    [~, n] = size(Ab3);
    sol3 = LS_solution(n, A3, [A3 bA]);
    
    % --- Part B: Explanation of Part A [10 Points] --- %

    % EXPLANATION: An underdetermined linear system cannot have a unique
    % solution because there are more variables than equations. Therefore,
    % a more likely scenario is infinitely many solutions or no solution.
    % Systems with a unique, singular solution require more equations than
    % variables.

    % Example of an inconsistent underdetermined linear system:
    example_A1 = [2 3 1; 4 6 2];
    example_b1 = [7; 10];
    [~, n] = size(example_A1);
    example_type1 = LS_solution(n, example_A1, [example_A1, example_b1]);
   
    % --- Part C: Overdetermined Systems [10 Points] --- %
    bC = randi([-7,7],3,1);

    A4 = randi([-7,7],3,2);
    Ab4 = [A4 bC];
    [~, n] = size(Ab4);
    sol4 = LS_solution(n, A4, [A4 bC]);

    A5 = randi([-7,7],3,2);
    Ab5 = [A5 bC];
    [~, n] = size(Ab5);
    sol5 = LS_solution(n, A5, [A5 bC]);

    A6 = randi([-7,7],3,2);
    Ab6 = [A6 bC];
    [~, n] = size(Ab6);
    sol6 = LS_solution(n, A6, [A6 bC]);
    
    % --- Part D: Explanation of Part C [10 Points] --- %
   
    % EXPLANATION: Overdetermined linear systems are expected to be
    % inconsistent because there are more equations than variables. An
    % abundance of equations create dependencies, which most likely lead to inconsistencies
    % with conflicting requirements that cannot simultaneously be
    % satisfied. Therefore, the majority of overdetermined linear systems
    % are inconsistent.

    % Example of overdetermined linear system with one solution:    
    example_A2 = [6 7; 2 3; 4 5];
    example_b2 = [11; 5; 8];
    [~, n] = size(example_A2);
    example_type2 = LS_solution(n, example_A2, [example_A2, example_b2]);

    % Example of overdetermined linear system with infinitely many solutions:
    example_A3 = [2 3; 6 9; 4  6];
    example_b3 = [5; 15; 10];
    [~, n] = size(example_A3);
    example_type3 = LS_solution(n, example_A3, [example_A3, example_b3]);
end
