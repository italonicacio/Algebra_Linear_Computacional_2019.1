include("eliminacao01.jl");
include("sr00.jl");

function resolve00(A,b)

	(m,n) = size(A);
	

	U = eliminacao01([A b]);
	b = U[:,n+1];
	U = U[:,1:n];

	x = sr00(U,b);

	return x;
end
