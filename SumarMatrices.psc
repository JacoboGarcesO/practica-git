// Desarrolla un programa que solicite al usuario ingresar dos matrices de igual tamaño
// y luego calcule la suma de ambas matrices elemento por elemento. Muestra la matriz resultante en pantalla.
// Si el tamaño de las matrices es diferente, se le debe volver a solicitar al usuario que ingrese los
// tamaños hasta que sean iguales.

Algoritmo SumarMatrices
	Definir matriz1, matriz2, resultado, i, j, filas1, columnas1, filas2, columnas2 Como Entero;
	
	Repetir
		Escribir "Ingrese la cantidad de filas de la matriz 1: ";
		Leer filas1;
		Escribir "Ingrese la cantidad de columnas de la matriz 1: ";
		Leer columnas1;
		Escribir "Ingrese la cantidad de filas de la matriz 2: ";
		Leer filas2;
		Escribir "Ingrese la cantidad de columnas de la matriz 2: ";
		Leer columnas2;
		
		Si(filas1 <> filas2 | columnas1 <> columnas2) Entonces
			Escribir "La cantidad de filas y de columnas deben ser iguales.";
		FinSi
	Hasta Que filas1 == filas2 & columnas1 == columnas2
	
	
	Dimension matriz1[filas1, columnas1], matriz2[filas2, columnas2], resultado[filas1, columnas1];
	
	Para i = 0 Hasta filas1 - 1 Con Paso 1 Hacer
		Para j = 0 Hasta columnas1 - 1 Con Paso 1 Hacer
			Escribir "Ingrese un número para la matriz 1 en la posición [", i, ", ", j, "]: ";
			Leer matriz1[i, j];
			Escribir "Ingrese un número para la matriz 2 en la posición [", i, ", ", j, "]: ";
			Leer matriz2[i, j];
			resultado[i, j] = matriz1[i, j] + matriz2[i, j];
		FinPara
	FinPara
	
	Para i = 0 Hasta filas1 - 1 Con Paso 1 Hacer
		Para j = 0 Hasta columnas1 - 1 Con Paso 1 Hacer
			Escribir resultado[i, j], " " Sin Saltar;
		FinPara
		Escribir "";
	FinPara
FinAlgoritmo
