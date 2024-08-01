Algoritmo EncontrarNotasPromedioYFinales
	Definir notas, acumuladorNotasIndividuales, acumuladorNotasGlobales Como Real;
	Definir estudiantes Como Caracter;
	Definir i, j, cantidadEstudiantes, cantidadNotas Como Entero;
	acumuladorNotasGlobales = 0;
	Escribir "Ingrese la cantidad de estudiantes, por favor: ";
	Leer cantidadEstudiantes;
	Escribir "Ingrese la cantidad de notas, por favor: ";
	Leer cantidadNotas;
	
	Dimension notas[cantidadEstudiantes, cantidadNotas];
	Dimension estudiantes[cantidadEstudiantes];
	
	Para i = 0 Hasta cantidadEstudiantes - 1 Con Paso 1 Hacer
		Escribir "Ingrese el nombre del estudiante #", i + 1;
		Leer estudiantes[i];
		
		Para j = 0 Hasta cantidadNotas - 1 Con Paso 1 Hacer
			Escribir "Ingrese la nota #", j + 1, " del estudiante: ", estudiantes[i];
			Leer notas[i, j];
		FinPara
	FinPara
	
	Para i = 0 Hasta cantidadEstudiantes - 1 Con Paso 1 Hacer
		Escribir  estudiantes[i], ": " Sin Saltar;
		
		Para j = 0 Hasta cantidadNotas - 1 Con Paso 1 Hacer
			Escribir notas[i, j], ", " Sin Saltar;
		FinPara
		Escribir "";
	FinPara
	
	Para i = 0 Hasta cantidadEstudiantes - 1 Con Paso 1 Hacer
		Escribir  estudiantes[i], ": " Sin Saltar;
		acumuladorNotasIndividuales = 0;
		
		Para j = 0 Hasta cantidadNotas - 1 Con Paso 1 Hacer
			acumuladorNotasGlobales = acumuladorNotasGlobales + notas[i, j];
			acumuladorNotasIndividuales = acumuladorNotasIndividuales + notas[i, j];
		FinPara
		Escribir "La nota final es: ", acumuladorNotasIndividuales / cantidadNotas;
	FinPara
	
	Escribir "El promedio de todos los estudiantes es: ", acumuladorNotasGlobales / (cantidadEstudiantes * cantidadNotas);
FinAlgoritmo
