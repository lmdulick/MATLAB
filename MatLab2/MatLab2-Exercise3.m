function [name, ufid, ...
    A1, A2, A3, A4, ...
    A, B, ABBA, C, AC, CA, AI, IA, inverse_A, ...
    D, inverse_D, rref_something, rref_inverse_D, inv_inv_D, ...
    E, inverse_DE, inv_D_inv_E, inv_E_inv_D, ...
    inv_DT, inv_D_T] = Exercise3(n)
    % --- Name & UFID --- %
    name = "Lauren Dulick";
    ufid = 51794124;

    % --- Part A [10 Points] --- %
    % For-Loop (i)
    A1 = zeros(n);
    for i = 1:n
        for j = 1:n
            A1(i,j) = i + j;
        end
    end

    % For-Loop (ii)
    A2 = zeros(n);
    for i = 1:n
        for j = i:n
            A2(i,j) = i + j;
            A2(j,i) = A2(i,j);
        end
    end

    % Do you have the same output for matrix A? YES

    % For-Loop (i) = n^2 FLOPs
    % For-Loop (ii) = n*(n-1)/2 FLOPs

    % Which requires less FLOPs? For-Loop (ii)

    % --- Part B [10 Points] --- %
    % While-Loop (i)
    A3 = zeros(n); % (DO NOT MODIFY THIS LINE)
    i = 1;
    while i <= n
        j = 1;
        while j <= n
            A3(i,j) = i+j;
            j = j+1;
        end
        i = i+1;
    end


    % While-Loop (ii)
    A4 = zeros(n); % (DO NOT MODIFY THIS LINE)
    i = 1;
    while i <= n
        j = 1;
        while j <= n
            A4(i,j) = i+j;
            A4(j,i) = A4(i,j);
            j = j+1;
        end
        i = i+1;
    end

    % --- Part C [10 Points] --- %
    A = A1; % (DO NOT MODIFY THIS LINE)
    B = randi([-7,7],n,n-2);

    ABBA = A*B;
    % B*A does not work because the number of rows in A does not match the
    % number of columns in B. Therefore, these two matrices cannot be
    % multiplied together in this order.

    C = randi([-7,7],n,n);

    AC = A*C;
    CA = C*A;
    % AC and CA are not equal because matrix multiplication is not
    % commutative, thus the order of multiplication matters.
    % Aside: Matrix multiplication is function composition.

    AI = A*eye(n);
    IA = eye(n)*A;
    % AI and IA are equal because of the rule A*I = I*A = A.
    % Hint: I_n, the identity matrix, has some special property.

    % --- Part D [10 Points] --- %
    %inverse_A = NaN;
    inverse_A = inv(A);
    % As shown by the warning, A is invertible.

    D = [1 0 -1; 2 1 -2; 0 1 -1];
    inverse_D = inv(D);

    % Complete using *only* two lines and using the rref function (cannot use
    % inv function)!
    rref_something = rref([D eye(3)]);
    rref_inverse_D = rref_something(:,4:6);

    inv_inv_D = inv(inv(D));
    % The inverse of the inverse of a matrix is the original matrix itself.

    E = [1 -2 2; 1 -1 0; 1 -1 2];

    inverse_DE = inv(D*E);
    inv_D_inv_E = inv(D)*inv(E);
    inv_E_inv_D = inv(E)*inv(D);
    % SAME RESULT: inverse_DE and inv_E_inv_D
    % The inverse of the product of two invertible matrices D and C is
    % equal to (DC)^-1 = C^-1 * D^-1

    inv_DT = inv(D');
    inv_D_T = (inv(D))';
    % The inverse of the transpose of an invertible matrix D is equal to
    % (D^T)^-1 = (D^-1)^T
end
