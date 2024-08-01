// Desarrolla un programa que solicite al usuario ingresar dos vectores de la misma longitud
// y luego calcule la suma de ambos vectores elemento por elemento.
// Al final, muestra el vector resultante.

Algoritmo SumarVectores
	Definir vector1, vector2, resultado, i, tamanio Como Entero;
	Escribir "Ingrese el tamaño de los vectores, por favor: ";
	Leer tamanio;
	
	Dimension vector1[tamanio];
	Dimension vector2[tamanio];
	Dimension resultado[tamanio];
	
	Para i = 0 Hasta tamanio - 1 Con Paso 1 Hacer
		Escribir "Ingrese el número ", i + 1, " para el vector 1: ";
		Leer vector1[i];
		Escribir "Ingrese el número ", i + 1, " para el vector 2: ";
		Leer vector2[i];
	FinPara
	
	Para i = 0 Hasta tamanio - 1 Con Paso 1 Hacer
		resultado[i] = vector1[i] + vector2[i];
	FinPara
	
	Escribir "La suma de los dos vectores es: ";
	Para i = 0 Hasta tamanio - 1 Con Paso 1 Hacer
		Escribir resultado[i];
	FinPara
FinAlgoritmo
