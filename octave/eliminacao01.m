function U = eliminacao01(A)
    epsilon = 0.0001;
    [m n] = size(A);
    U = zeros(m,n);
    for i = 1:n-1       
        pivot = A(i,i);
        %teste para troca de linha
        if abs(pivot) < epsilon 
            
            for k = i+1:m 
                
                if A(k,i) > epsilon    
                    pivot = A(k,i);
                    auxLinha = A(k,:);
                    A(k, :) = A(i, :);
                    A(i,:) = auxLinha;
                    break   
                
                else
                    continue
                end
            end             
        endif    
        %escalonamento
        for j = i+1:m                  
            A(j,:) = A(j,:) - A(j,i)/pivot* A(i,:);          
        endfor
    endfor
    
    U = A;

endfunction


