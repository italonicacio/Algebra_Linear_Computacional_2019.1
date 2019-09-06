using LinearAlgebra
include("poli_sturm.jl");
include("elimina_zeros.jl");

function msinal(w, d, p)

    p = poli_sturm(w,d,p);

    p = elimina_zeros(p);

    n = size(p,1);
    ms = 0;
    for i = 2:n+1
        if p[i]*p[i-1] < 0
            ms += 1;
        end
    end

    return ms;
    
    
end