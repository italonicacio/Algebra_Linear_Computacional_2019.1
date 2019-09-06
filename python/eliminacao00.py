from numpy import *

def eliminacao00(A):

	(m , n) = A.shape
	
	for i in range(0, n-1):

		pivot = A[i,i]

		for j in range(i+1, m):

			
			
			A[j] = A[j] - (A[j,i]/pivot)*A[i]
			
			
			

	return A

