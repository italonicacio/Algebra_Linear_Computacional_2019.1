function x = resolve00(A,b)
  U = eliminacao01([A b]);
  [m n] = size(U);
  b = U(:, n);
  U = U(:, 1:n-1);
  x = sr00(U,b);
 
endfunction
  