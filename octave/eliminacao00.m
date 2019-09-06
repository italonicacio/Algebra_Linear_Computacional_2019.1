function U = eliminacao00(A)
    [m n] = size(A);
    U = zeros(m, n);
    for i = 1:n-1
        pivot = A(i,i);
        for j = i+1:m
            mult = A(j,i)/pivot
            A(j,:) = A(j,:) - mult* A(i,:);
        endfor
    endfor
    
    U = A;
endfunction


