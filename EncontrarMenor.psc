Algoritmo EncontrarMenor
	Definir nombres, minimoNombre Como Caracter;
	Definir edades, tamanio, i Como Entero;
	Escribir "Ingresa la cantidad de personas, por favor: ";
	Leer tamanio;
	Dimension nombres[tamanio];
	Dimension edades[tamanio];

	Para i = 0 Hasta tamanio - 1 Con Paso 1 Hacer
		Escribir "Ingrese el nombre #", i + 1;
		Leer nombres[i];
		Escribir "Ingrese la edad #", i + 1;
		Leer edades[i];
	FinPara
	
	mostrarDatos(nombres, edades, tamanio);
	minimoNombre = hallarMenor(nombres, edades, tamanio);
	Escribir "El más joven es: ", minimoNombre;
FinAlgoritmo

Funcion nombreMinimo = hallarMenor(nombres, edades, tamanio)
	Definir i, edadMinima Como Entero;
	Definir nombreMinimo Como Caracter;
	edadMinima = edades[0];
	nombreMinimo = nombres[0];
	
	Para i = 0 Hasta tamanio - 1 Con Paso 1 Hacer
		Si (edades[i] < edadMinima) Entonces
			edadMinima = edades[i];
			nombreMinimo = nombres[i];
		FinSi
	FinPara
FinFuncion

Funcion mostrarDatos(nombres, edades, tamanio)
	Definir i Como Entero;
	Para i = 0 Hasta tamanio - 1 Con Paso 1 Hacer
		Escribir nombres[i], ": ", edades[i];
	FinPara
FinFuncion
	