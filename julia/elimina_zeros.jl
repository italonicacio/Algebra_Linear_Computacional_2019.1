function elimina_zeros(v)
    p = filter!(x->x!=0,v);
    return p;
end