#!/usr/bin/python2.7
# -*- encoding: utf-8 -*-
#importamos el archivo calculator.py
from calculator import * #del archivo calculator importar todo (la clase calculator_class)
class calculator_test():#Declaracion de la clase 
        def __init__(self):#definicion del constructor
                numeros=[]#variable que almacenara todos los numeros que indique el usuario
                contador=int(raw_input("¿Cuantos numeros deseas?"))#raw_input para recivir datos de consola
                while contador > 0:#mientras aun queden datos por capturar
                        n=int(raw_input("Introduce el numero = "))#preguntar por un numero (centinela)
                        numeros.append(n)#anexar el numero al vector de numeros
                        contador=contador-1#descontar una unidad ala variable centinela
                a=calculator_class()#instancia de la clase calculator_class
                print a.sum(numeros)#imprimir lo que retorna el metodo sum (la sumatoria)
if __name__ == '__main__':        
	b=calculator_test()#instancia de la clases y llamada al constructor
		



