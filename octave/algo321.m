function A = algo321(A)
    n = size(A,1);
    
    for i = 1:n-1
        rows = i+1:n;
        A(rows,i) =  A(rows,i)/A(i,i);
        A(rows,rows) = A(rows,rows) - A(rows,i)*A(i,rows);
     endfor
endfunction