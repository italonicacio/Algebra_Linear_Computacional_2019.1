from numpy import *

def eliminacao01(A):

	(m , n) = A.shape
	
	for i in range(0, n):

		pivot = A[i,i]

		if pivot == 0:
			for k in range(i+1, m):
				if A[k,i] != 0:

					pivot = A[k,i]
					auxLinha = A[k].copy()
					A[k] = A[i]
					A[i] = auxLinha
					
					
					break
				else:
					continue

		for j in range(i+1, m):
			
			A[j] = A[j] - (A[j,i]/pivot)*A[i]
			
			

	return A


A = random.randint(low = 1., high = 10., size = (5,5))
#A = array( [ [0., 0., 4., 3.], [7., 1., 8., 3.], [6., 7., 3., 6.] ,[5., 2., 8., 4.] ])
#A = array( [ [2., 6., 4., 3.], [7., 1., 8., 3.], [6., 7., 3., 6.] ,[5., 2., 8., 4.] ])
#print(A.round(decimals = 2), '\n\n')
U = eliminacao01(A)



print(U.round(decimals = 2))