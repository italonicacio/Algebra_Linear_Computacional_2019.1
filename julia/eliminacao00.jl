
############
#Observação#
############

# Para usar essa função é necessario mandar uma matriz AA que seja do tipo float
# tentei fazer a conversão de tipo porem os resultados saiam como se fossem um número inteiro.

function eliminacao00(A)
	
	(m, n) = size(A);
	
	for i = 1:n-1
		pivot = A[i,i];
		for j = i+1:m

			mult = A[j,i]/pivot;

			
			
			A[j,:] = A[j,:] - mult*A[i,:];
			

		end
		
	end

	return A;

end