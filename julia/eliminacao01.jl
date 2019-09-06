#Essa função de eliminação retorna U, depois de fazer a decomposição LU.
#Função faz pivotamento.


############
#Observação#
############

# Para usar essa função é necessario mandar uma matriz AA que seja do tipo float
# tentei fazer a conversão de tipo porem os resultados saiam como se fossem um número inteiro.

function eliminacao01(A)
	A
	epsilon = 0.00001;
	(m, n) = size(A);
	
	for i = 1:n-1
		pivot = A[i,i];

		if abs(pivot) < epsilon

			for k = i+1:m
				if abs(A[k,i] > epsilon)

					pivot = A[k,i];
					auxlinha = copy(A[k,:]);
					A[k,:] = copy(A[i,:]);
					A[i,:] = auxlinha;
					break

				end
			end
		end


		for j = i+1:m

			mult = A[j,i]/pivot;
			A[j,:] = A[j,:] - mult*A[i,:];
			

		end
		
	end

	return A;


end