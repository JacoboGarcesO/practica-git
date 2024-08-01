Algoritmo Cine
	Definir A, n, m, i, j Como Entero;
	Escribir "Ingresa la cantidad de salas: ";
	Leer n;
	Escribir "Ingresa la cantidad de días: ";
	Leer m;
	Dimension A[n, m];
	
	Para i = 0 Hasta n - 1 Hacer
		Para j = 0 Hasta m - 1 Hacer
			Escribir "Ingrese ingresa la cantidad de personas en la sala ", i + 1, " el día ", j + 1;
			Leer A[i, j];
		FinPara
	FinPara
	
	mostrarMatriz(A, n, m);
	calcularAsistentesSala(A, n, m);
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


Funcion calcularAsistentesSala(matriz, filas, columnas)
	Definir i, j, acumuladorAsistentes, B Como Entero;
	Dimension B[filas];
	Para i = 0 Hasta filas - 1 Hacer
		acumuladorAsistentes = 0;
		Para j = 0 Hasta columnas - 1 Hacer
			acumuladorAsistentes = acumuladorAsistentes + matriz[i, j];
		FinPara
		B[i] = acumuladorAsistentes;
	FinPara
	
	Escribir "";
	
	acumuladorAsistentes = 0;
	Para i = 0 Hasta filas - 1 Hacer
		acumuladorAsistentes = acumuladorAsistentes + B[i];
	FinPara
	
	Escribir "La cantidad promedio de asistentes en todas las salas es: $", acumuladorAsistentes / filas;
	
	Para i = 0 Hasta filas - 1 Hacer
		Escribir "Cantidad total de asistentes en la sala ", i + 1, ": ", B[i];
	FinPara
FinFuncion
