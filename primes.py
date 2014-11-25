#Programa para verificar si n es un numero primo
class prime_class:#declaracion de la clase prime_class
	def is_prime(self,n): #metodo que recibe el numero entero
		if n > 1: # si y solo si n es mayor que 1, uno no es numero primo
			for i in range(2,n): # desde 2 hasta n verificar n
				if (n % i) == 0:# Si el residuo es 0 , no es un numero primo
					return False
					break
			else:
				return True # es primo, se termino la iteracion, no se encontro numero que sea divisor de n
		else:
			return False # ya que n no es mayor que 1 se dice que no es primo

if __name__ == '__main__':
	p =prime_class()# instancia de la clase prime_class
	numeros ={12,1,45,40,821,947,827,829}	#lista de numero 4 no primos y 4 primos

	for i in numeros:# para cada elemento dentro de la lista
		print p.is_prime(i)# imprimir el resultado de la funcion is_prime