function proj_ortogonal(v,w)

    z = ( (v'*w)/(w'*w) ) * w;
    
    return z;
    
end