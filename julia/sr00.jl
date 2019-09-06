#Função de substituição reversa, onde retorna um x que é o o que queremos encontrar de Ax=b


function sr00(U,b);

	(m,n) = size(U);
	x = zeros(m);

	x[m] = b[m]/U[m,m];

	for i = m-1:-1:1
		soma = 0;

		for j = i+1:n

			soma = soma + U[i,j]*x[j];
		end
		x[i] = (b[i] - soma)/U[i,i];
	end

	return x;
	
end

