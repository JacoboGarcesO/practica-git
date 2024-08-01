// Dado un arreglo de números enteros,
// debes escribir un programa que encuentre el número mínimo
// y máximo en el arreglo y los muestre en pantalla.

Algoritmo HallarMenorMayor
	Definir datos, i, numeroDatos, minimo, maximo Como Entero;
	Escribir "Ingresa el tamaño del arreglo, por favor: ";
	Leer numeroDatos;
	
	Dimension datos[numeroDatos];
	
	Para i = 0 Hasta numeroDatos - 1 Con Paso 1 Hacer
		Escribir "Ingresa el dato #", i + 1;
		Leer datos[i];
	FinPara
	
	minimo = datos[0];
	maximo = datos[0];
	
	Para i = 0 Hasta numeroDatos - 1 Con Paso 1 Hacer
		Si (datos[i] < minimo) Entonces
			minimo = datos[i];
		FinSi
		
		Si (datos[i] > maximo) Entonces
			maximo = datos[i];
		FinSi
	FinPara
	
	Escribir "El número mínimo es: ", minimo;
	Escribir "El número máximo es: ", maximo;
FinAlgoritmo
