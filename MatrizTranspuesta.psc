// Crea un programa que solicite al usuario ingresar una matriz y luego genere y muestre la matriz transpuesta,
// es decir, una nueva matriz con las filas de la matriz original convertidas en columnas y viceversa.

Algoritmo MatrizTranspuesta
	Definir matriz, filas, columnas, matrizT Como Entero;
	filas = leerEntero("Ingrese las filas que tendrá la matriz: ");
	columnas = leerEntero("Ingrese las columnas que tendrá la matriz: ");
	Dimension matriz[filas, columnas], matrizT[columnas, filas];
	llenarMatriz(matriz, filas, columnas);
	llenarMatrizTranspuesta(matriz, filas, columnas, matrizT);
	Escribir "Matriz normal: ";
	mostrarMatriz(matriz, filas, columnas);
	Escribir "Matriz transpuesta: ";
	mostrarMatriz(matrizT, columnas, filas);
FinAlgoritmo

Funcion llenarMatrizTranspuesta(matriz, filas, columnas, matrizT)
	Definir i, j Como Entero;
	
	Para i = 0 Hasta filas - 1 Hacer
		Para j = 0 Hasta columnas - 1 Hacer
			matrizT[j, i] = matriz[i, j];
		FinPara
	FinPara
FinFuncion

Funcion llenarMatriz(matriz, filas, columnas)
	Definir i, j Como Entero;
	
	Para i = 0 Hasta filas - 1 Hacer
		Para j = 0 Hasta columnas - 1 Hacer
			Escribir "Ingrese un número para la posición: [", i + 1, ", ", j + 1, "]";
			Leer matriz[i, j];
		FinPara
	FinPara
FinFuncion

Funcion numeroEntero = leerEntero(mensajito)
	Definir numeroEntero Como Entero;
	
	Repetir
		Borrar Pantalla;
		Escribir mensajito;
		Leer numeroEntero;
		Si numeroEntero <= 0 Entonces
			Borrar Pantalla;
			Escribir "XXXXXXXXXXXXXXXXXXXXXX | ERROR | XXXXXXXXXXXXXXXXXXXXXX";
			Escribir "El número ingresado debe ser mayor que 0.";
			Escribir "Presione una tecla para intentar de nuevo...";
			Esperar Tecla;
		FinSi
	Hasta Que numeroEntero > 0
FinFuncion

Funcion mostrarMatriz(matriz, filas, columnas)
	Definir i, j Como Entero;
	
	Para i = 0 Hasta filas - 1 Hacer
		Para j = 0 Hasta columnas - 1 Hacer
			Escribir matriz[i, j], ", " Sin Saltar;
		FinPara
		Escribir "";
	FinPara
FinFuncion
	