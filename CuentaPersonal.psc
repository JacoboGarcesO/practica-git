Algoritmo CuentaPersonal
	Definir cantidadGastos, cantidadIngresos, i Como Entero;
	Definir gastos, ingresos, sumaTotalIngresos, sumaTotalGastos Como Real;
	Definir descripcionesGastos, descripcionesIngresos Como Caracter;
	
	cantidadGastos = leerEntero("Ingrese la cantidad de gastos: ");
	cantidadIngresos = leerEntero("Ingrese la cantidad de ingresos: ");
	
	Dimension gastos[cantidadGastos], descripcionesGastos[cantidadGastos];
	Dimension ingresos[cantidadIngresos], descripcionesIngresos[cantidadIngresos];

	Para i = 0 Hasta cantidadGastos - 1 Hacer
		descripcionesGastos[i] = leerCadena("Ingrese la descripción del gasto: ");
		gastos[i] = leerReal("Ingrese lo que le costó: " + descripcionesGastos[i]);
	FinPara
	
	Para i = 0 Hasta cantidadIngresos - 1 Hacer
		descripcionesIngresos[i] = leerCadena("Ingrese la descripción del ingreso: ");
		ingresos[i] = leerReal("Ingrese lo que le pagaron por: " + descripcionesIngresos[i]);
	FinPara
	
	sumaTotalGastos = mostrarSumaTotal(gastos, cantidadGastos, "La suma total de los gastos es: ");
	sumaTotalIngresos = mostrarSumaTotal(ingresos, cantidadIngresos, "La suma total de los ingresos es: ");
	hallarMayorIngreso(ingresos, cantidadIngresos, descripcionesIngresos);
	hallarMenorGasto(gastos, cantidadGastos, descripcionesGastos);
	Escribir "El dinero total que le queda a la persona es: $", sumaTotalIngresos - sumaTotalGastos;
	ordenarGastosAscendente(gastos, cantidadGastos, descripcionesGastos);
	ordenarIngresosDescendente(ingresos, cantidadIngresos, descripcionesIngresos);
FinAlgoritmo

Funcion ordenarGastosAscendente(gastos, cantidadGastos, descripcionesGastos)
	Definir i, j Como Entero;
	Definir auxiliarGasto Como Real;
	Definir auxiliarDescripciones Como Caracter;
	
	Para  i = 0 Hasta cantidadGastos - 1 Hacer
		Para j = 0 Hasta cantidadGastos - i - 2 Hacer
			Si (gastos[j] > gastos[j + 1]) Entonces
				auxiliarGasto = gastos[j];
				gastos[j] = gastos[j + 1];
				gastos[j + 1] = auxiliarGasto;
				
				auxiliarDescripciones = descripcionesGastos[j];
				descripcionesGastos[j] = descripcionesGastos[j + 1];
				descripcionesGastos[j + 1] = auxiliarDescripciones;
			FinSi
		FinPara
	FinPara
	
	Para  i = 0 Hasta cantidadGastos - 1 Hacer
		Escribir descripcionesGastos[i], ": ", gastos[i];
	FinPara
FinFuncion

Funcion ordenarIngresosDescendente(ingresos, cantidadIngresos, descripcionesIngresos)
	Definir i, j Como Entero;
	Definir auxiliarIngreso Como Real;
	Definir auxiliarDescripciones Como Caracter;
	
	Para  i = 0 Hasta cantidadIngresos - 1 Hacer
		Para j = 0 Hasta cantidadIngresos - i - 2 Hacer
			Si (ingresos[j] < ingresos[j + 1]) Entonces
				auxiliarIngreso = ingresos[j];
				ingresos[j] = ingresos[j + 1];
				ingresos[j + 1] = auxiliarIngreso;
				
				auxiliarDescripciones = descripcionesIngresos[j];
				descripcionesIngresos[j] = descripcionesIngresos[j + 1];
				descripcionesIngresos[j + 1] = auxiliarDescripciones;
			FinSi
		FinPara
	FinPara
	
	Para  i = 0 Hasta cantidadIngresos - 1 Hacer
		Escribir descripcionesIngresos[i], ": ", ingresos[i];
	FinPara
FinFuncion

Funcion hallarMayorIngreso(ingresos, cantidadIngresos, descripcionesIngresos)
	Definir mayorIngreso Como Real;
	Definir i Como Entero;
	Definir mayorDescripcion Como Caracter;
	mayorIngreso = ingresos[0];
	mayorDescripcion = descripcionesIngresos[0];
	
	Para i = 1 Hasta cantidadIngresos - 1 Hacer
		Si (ingresos[i] > mayorIngreso) Entonces
			mayorIngreso = ingresos[i];
			mayorDescripcion = descripcionesIngresos[i];
		FinSi
	FinPara
	
	Escribir "El mayor ingreso es: ", mayorDescripcion, " con un valor de $", mayorIngreso;
FinFuncion

Funcion hallarMenorGasto(gastos, cantidadGastos, descripcionesGastos)
	Definir menorGasto Como Real;
	Definir i Como Entero;
	Definir menorDescripcion Como Caracter;
	menorGasto = gastos[0];
	menorDescripcion = descripcionesGastos[0];
	
	Para i = 1 Hasta  cantidadGastos - 1 Hacer
		si gastos[i] < menorGasto Entonces
			menorGasto = gastos[i];
			menorDescripcion = descripcionesGastos[i];
		FinSi
	FinPara
	Escribir "El menor gasto es: ", menorDescripcion, " con un valor de $", menorGasto;
FinFuncion

Funcion sumaTotal = mostrarSumaTotal(vector, m, mensaje)
	Definir sumaTotal Como Real;
	Definir i Como Entero;
	sumaTotal = 0;
	
	para i = 0 Hasta m - 1 Hacer
		sumaTotal = sumaTotal + vector[i];
	FinPara
	Escribir mensaje, sumaTotal;
FinFuncion

Funcion N = leerReal(mensaje)
	Definir N Como Real;
	
	Repetir
		Escribir mensaje;
		Leer N;
		
		Si (N < 1) Entonces
			Escribir "El número ingresado debe ser mayor que 0.";
		FinSi
	Hasta Que N >= 1
FinFuncion

Funcion N = leerCadena(mensaje)
	Definir N Como Caracter;
	
	Repetir
		Escribir mensaje;
		Leer N;
		
		Si (N == "") Entonces
			Escribir "El texto ingresado no puede estar vacío.";
		FinSi
	Hasta Que N <> ""
FinFuncion

Funcion N = leerEntero(mensaje)
	Definir N Como Entero;
	
	Repetir
		Escribir mensaje;
		Leer N;
		
		Si (N < 1) Entonces
			Escribir "El número ingresado debe ser mayor que 0.";
		FinSi
	Hasta Que N >= 1
FinFuncion
