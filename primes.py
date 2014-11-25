class prime_class:
	def is_prime(self,n):
		if n > 1:
			for i in range(2,n):
				if (n % i) == 0:
					return False
					break
			else:
				return True
		else:
			return False

if __name__ == '__main__':
	p =prime_class()
	numeros ={12,1,45,40,821,947,827,829}	

	for i in numeros:
		print p.is_prime(i)