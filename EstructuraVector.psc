Algoritmo EstructuraVector
	Definir vector, tamanio, i Como Entero;
	Escribir "Ingrese el tamaño del vector, por favor: ";
	Leer tamanio;
	
	Dimension vector[tamanio];
	
	Para i = 0 Hasta tamanio - 1 Con Paso 1 Hacer
		Escribir "Ingrese el dato #", i + 1;
		Leer vector[i];
	FinPara
	
	Para i = 0 Hasta tamanio - 1 Con Paso 1 Hacer
		Escribir vector[i];
	FinPara
FinAlgoritmo
