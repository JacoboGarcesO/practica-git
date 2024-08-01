Algoritmo sin_titulo
	Definir nombres, nombreMenorEdad Como Caracter;
	Definir edades, i, tamanio Como Entero;
	Escribir "Ingres la cantidad de personas: ";
	Leer tamanio;
	
	Dimension nombres[tamanio], edades[tamanio];
	
	Para i = 0 Hasta tamanio - 1 Con Paso 1 Hacer
		Escribir "Ingrese el nombre #", i + 1;
		Leer nombres[i];
		Escribir "Ingrese la edad de ", nombres[i];
		Leer edades[i];
	FinPara
	
	Para i = 0 Hasta tamanio - 1 Con Paso 1 Hacer
		Escribir nombres[i], " tiene ", edades[i], " años.";
	FinPara
	
	nombreMenorEdad = hallarMenor(nombres, edades, tamanio);
	Escribir nombreMenorEdad;
FinAlgoritmo

Funcion nombreMenorEdad = hallarMenor(nombres, edades, tamanio)
	Definir nombreMenorEdad Como Caracter;
	Definir menorEdad, i Como Entero;
	
	nombreMenorEdad = nombres[0];
	menorEdad = edades[0];
	
	Para i =0 Hasta tamanio - 1 Con Paso 1 Hacer
		Si (edades[i] < menorEdad) Entonces
			nombreMenorEdad = nombres[i];
			menorEdad = edades[i];
		FinSi
	FinPara
FinFuncion
