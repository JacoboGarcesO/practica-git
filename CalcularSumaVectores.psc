// Desarrolla un programa que solicite al usuario ingresar dos vectores
// de la misma longitud y luego calcule la suma de ambos vectores elemento por elemento.
// Al final, muestra el vector resultante.

Algoritmo CalcularSumaVectores
	Definir vector1, vector2, tamanio, i, resultado Como Entero;
	tamanio = obtenerTamanio();
	Dimension vector1[tamanio], vector2[tamanio], resultado[tamanio];
	
	Para i = 0 Hasta tamanio - 1 Con Paso 1 Hacer
		Escribir "Ingrese el dato número ", i + 1, " del vector 1: ";
		Leer vector1[i];
		Escribir "Ingrese el dato número ", i + 1, " del vector 2: ";
		Leer vector2[i];
		
		resultado[i] = vector1[i] + vector2[i];
	FinPara
	
	mostrarResultado(resultado, tamanio);
FinAlgoritmo

Funcion tamanio = obtenerTamanio()
	Definir tamanio Como Entero;
	
	Repetir
		Escribir "Ingresa el tamaño de los vectores: ";
		Leer tamanio;
	Hasta Que tamanio > 0
FinFuncion

Funcion mostrarResultado(vector, tamanio)
	Definir i Como Entero;
	Para i = 0 Hasta tamanio - 1 Con Paso 1 Hacer
		Escribir vector[i];
	FinPara
FinFuncion
