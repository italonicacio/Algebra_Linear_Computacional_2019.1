using LinearAlgebra
include("householder.jl");

function tridiagonalizacao(T)
   
    n = size(T,1);

    if n >= 3
        for i = 2:n-1

            x = T[ i:n, i-1];
            sizeX = size(x,1);
            y = zeros(sizeX,1);
            y[1] = norm(x);
      
            Q = householder(x,y);

            T[ i:n, i-1] = y;
            T[i-1, i:n] = y;
            T[ i:n , i:n] = Q * T[i:n,i:n] * Q;    

        end
    end

    return T;
    
end