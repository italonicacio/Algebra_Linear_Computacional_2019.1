using LinearAlgebra

function householder(a,b)
    n = size(a,1);
    
    w = a-b;
    Id = Matrix{Float64}(I,n,n);
    Q =  Id - 2(w*w')/dot(w,w);

    return Q;
end