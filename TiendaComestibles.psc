Algoritmo TiendaComestibles
	Definir A, n, m, i, j, diaMaximo Como Entero;
	Escribir "Ingresa la cantidad de tipos de productos: ";
	Leer n;
	Escribir "Ingresa la cantidad de días en los que se ha realizado el registro ";
	Leer m;
	Dimension A[n, m];
	
	Para i = 0 Hasta n - 1 Hacer
		Para j = 0 Hasta m - 1 Hacer
			Escribir "Ingrese la cantidad del producto ", i + 1, " en el día ", j + 1;
			Leer A[i, j];
		FinPara
	FinPara
	
	mostrarMatriz(A, n, m);
	calcularCantidadTipo(A, n, m);
	diaMaximo = hallarDiaMaximo(A, n, m);
	Escribir "El día con mayor cantidad total de productos es el día ", diaMaximo;
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

Funcion calcularCantidadTipo(matriz, filas, columnas)
	Definir i, j, acumuladorProductos, B Como Entero;
	Dimension B[filas];
	Para i = 0 Hasta filas - 1 Hacer
		acumuladorProductos = 0;
		Para j = 0 Hasta columnas - 1 Hacer
			acumuladorProductos = acumuladorProductos + matriz[i, j];
		FinPara
		B[i] = acumuladorProductos;
	FinPara
	
	Escribir "";
	
	Para i = 0 Hasta filas - 1 Hacer
		Escribir "Cantidad total del tipo ", i + 1, " durante los días: ", B[i];
	FinPara
FinFuncion

Funcion diaMaximo = hallarDiaMaximo(matriz, filas, columnas)
	Definir i, j, acumuladorDias, totalMaximoDia, diaMaximo Como Entero;
	totalMaximoDia = 0;
	Para i = 0 Hasta columnas - 1 Hacer
		acumuladorDias = 0;
		Para j = 0 Hasta filas - 1 Hacer
			acumuladorDias = acumuladorDias + matriz[j, i];
		FinPara
	
		
		Si (acumuladorDias > totalMaximoDia) Entonces
			totalMaximoDia = acumuladorDias;
			diaMaximo = i + 1;
		FinSi
	FinPara
FinFuncion
