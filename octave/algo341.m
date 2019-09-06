function [A p] = algo341(A)
    epsilon = 0.00001;
    n = size(A,1);
    p = zeros(n-1,1);
    
    for k = 1:n-1
        v = A(k:n,k);
        v=abs(v);
     
        %abaixo vai pegar o maior valor absoluto de v
        [val r] = max(v);% vr = norma infinito de v
        r = r + k -1;
        
        temp = A(k,:);
        A(k,:) = A(r,:);
        A(r,:) = temp;
        p(k) = r;
       
        
        if (abs(A(k,k)) > epsilon) %diferente de 0
            
            rows = k+1:n;
            A(rows,k) =  A(rows,k)/A(k,k);
            A(rows,rows) = A(rows,rows) - A(rows,k)*A(k,rows);
           
        endif
    endfor
 endfunction       
        