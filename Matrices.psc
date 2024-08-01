Algoritmo Matrices
	Definir matriz, i, j, filas, columnas, minimo, maximo Como Entero;
	Escribir "Ingrese la cantidad de filas, por favor: ";
	Leer filas;
	Escribir "Ingrese la cantidad de columnas, por favor: ";
	Leer columnas;
	
	Dimension matriz[filas, columnas];
	Escribir "El tamaño de la matriz es: ", filas * columnas;
	
	Para i = 0 Hasta filas - 1 Con Paso 1 Hacer
		Para j = 0 Hasta columnas - 1 Con Paso 1 Hacer
			Escribir "Ingrese el dato en la posición [", i, ", ", j, "]:";
			Leer matriz[i, j];
		FinPara
	FinPara
	
	Para i = 0 Hasta filas - 1 Con Paso 1 Hacer
		Para j = 0 Hasta columnas - 1 Con Paso 1 Hacer
			Escribir matriz[i, j], " " Sin Saltar;
		FinPara
		Escribir "";
	FinPara
	
	minimo = matriz[0, 0];
	maximo = matriz[0, 0];
	
	Para i = 0 Hasta filas - 1 Con Paso 1 Hacer
		Para j = 0 Hasta columnas - 1 Con Paso 1 Hacer
			Si (matriz[i, j] < minimo) Entonces
				minimo = matriz[i, j];
			FinSi
			
			Si (matriz[i, j] > maximo) Entonces
				maximo = matriz[i, j];
			FinSi
		FinPara
	FinPara
	
	Escribir "El máximo es: ", maximo;
	Escribir "El mínimo es: ", minimo;
FinAlgoritmo
