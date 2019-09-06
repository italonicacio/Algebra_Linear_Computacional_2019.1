function x = sr00(U,b)
    
    [m n] = size(U);
    x = zeros(m,1);
    x(m) = b(m)/U(m,m);
    
    for i = m-1:-1:1
        soma = 0;         
         for j = i+1:n
          
           soma = soma + U(i,j)*x(j);
        endfor
        x(i) = (b(i) - soma)/U(i,i);
    endfor
endfunction
      

