#Programa para sumar una cadena de vector de numeros
class calculator_class:#Se define la clase
	def sum(self, numeros):# Metodo sum que recive el vector de numeros
		resultado = 0#Esta variables es utilizada para almacenar la suma de todos los elementos del vector
		for elem in numeros:			#paracada elemento dentro del vector numeros
			resultado = resultado + elem #sumar la variable resultado mas el elemento de la lista
		return resultado#Cuando no haya mas elementos en el vector retornar la sumatoria 
		
if __name__ == '__main__': #metodo main
	a=calculator_class()#instancia de la clase calculator_class
	numeros=[5,6,4,5,8,5,4,3,65,7,4,3]#Vector de numeros
	print a.sum(numeros)#imprimir lo que retorna el metodo sum (la sumatoria)
	

		