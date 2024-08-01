Algoritmo EstructuraMatriz
	Definir matriz, filas, columnas, i, j Como Entero;
	Escribir "Ingrese las filas de la matriz, por favor: ";
	Leer filas;
	Escribir "Ingrese las columnas de la matriz, por favor: ";
	Leer columnas;
	
	Dimension matriz[filas, columnas];
	
	Para i = 0 Hasta filas - 1 Con Paso 1 Hacer
		Para j = 0 Hasta columnas - 1 Con Paso 1 Hacer
			Escribir "Ingrese un numero en la posición [", i, ", ", j, "]:";
			Leer matriz[i, j];
		FinPara
	FinPara

	Para i = 0 Hasta filas - 1 Con Paso 1 Hacer
		Para j = 0 Hasta columnas - 1 Con Paso 1 Hacer
			Escribir  matriz[i, j], " " Sin Saltar;
		FinPara
		Escribir " ";
	FinPara
FinAlgoritmo
