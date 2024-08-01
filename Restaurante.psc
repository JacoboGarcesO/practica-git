Algoritmo Restaurante
	Definir n, m, i, j Como Entero;
	Definir A Como Real;
	Escribir "Ingresa la cantidad de platos: ";
	Leer n;
	Escribir "Ingresa la cantidad ingredientes de cada plato: ";
	Leer m;
	Dimension A[n, m];
	
	Para i = 0 Hasta n - 1 Hacer
		Para j = 0 Hasta m - 1 Hacer
			Escribir "Ingrese el costo del ingrediente ", j + 1, " del plato ", i + 1;
			Leer A[i, j];
		FinPara
	FinPara
	
	mostrarMatriz(A, n, m);
	calcularCostoPlato(A, n, m);
FinAlgoritmo

Funcion mostrarMatriz(matriz, filas, columnas)
	Definir i, j Como Entero;
	Escribir "";
	Escribir "La matriz ingresada es:";
	Para i = 0 Hasta filas - 1 Hacer
		Escribir i + 1, ". | " Sin Saltar;
		Para j = 0 Hasta columnas - 1 Hacer
			Escribir matriz[i, j], " " Sin Saltar;
		FinPara
		Escribir "";
	FinPara
FinFuncion

Funcion calcularCostoPlato(matriz, filas, columnas)
	Definir i, j Como Entero;
	Definir acumuladorCostos, B Como Real;
	Dimension B[filas];
	Para i = 0 Hasta filas - 1 Hacer
		acumuladorCostos = 0;
		Para j = 0 Hasta columnas - 1 Hacer
			acumuladorCostos = acumuladorCostos + matriz[i, j];
		FinPara
		B[i] = acumuladorCostos;
	FinPara
	
	Escribir "";
	
	acumuladorCostos = 0;
	Para i = 0 Hasta filas - 1 Hacer
		acumuladorCostos = acumuladorCostos + B[i];
	FinPara
	
	Escribir "El costo promedio de los ingredientes utilizados en los platos es: $", acumuladorCostos / filas;
	
	Para i = 0 Hasta filas - 1 Hacer
		Escribir "Costo total de los ingredientes del plato  ", i + 1, ": $", B[i];
	FinPara
FinFuncion