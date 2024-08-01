// Utilizar vectores paralelos para leer el nombre y el salario de N empleados ingresados por teclado.
// Después de llenados los vectores calcular: 
// 	Promedio de salarios.
// 	Empleado con mayor salario y mostrar el nombre del empleado.
// 	Empleado con menor salario y mostrar el nombre del empleado.
// Entrada: nombres, salarios, cantidadEmpleados
// Proceso: Calcular el promedio de salarios.
//			Encontrar al empleado de menor salario.
//			Encontrar al empleado de mayor salario.
// Salida: 
// 			Promedio de salarios.
// 			Empleado con mayor salario y mostrar el nombre del empleado.
// 			Empleado con menor salario y mostrar el nombre del empleado.

Algoritmo NominaEmpleados
	Definir nombres, nombreMenorSalario, nombreMayorSalario Como Caracter;
	Definir salarios, sumaSalarios Como Real;
	Definir cantidadEmpleados, i Como Entero;
	cantidadEmpleados = obtenerCantidadEmpleados();
	Dimension nombres[cantidadEmpleados], salarios[cantidadEmpleados];
	
	Para i = 0 Hasta cantidadEmpleados - 1 Con Paso 1 Hacer
		Escribir "Ingrese el nombr del emplado ", i + 1;
		Leer nombres[i];
		Escribir "Ingrese el salario de ", nombres[i];
		Leer salarios[i];
	FinPara
	
	sumaSalarios = sumarSalarios(salarios, cantidadEmpleados);
	
	Escribir "El promedio de salarios es $", sumaSalarios / cantidadEmpleados;
	nombreMayorSalario = hallarEmpleadoMayorSalario(nombres, salarios, cantidadEmpleados);
	nombreMenorSalario = hallarEmpleadoMenorSalario(nombres, salarios, cantidadEmpleados);
	Escribir "El empleado con mayor salario es: ", nombreMayorSalario;
	Escribir "El empleado con menor salario es: ", nombreMenorSalario;
FinAlgoritmo

Funcion cantidadEmpleados = obtenerCantidadEmpleados()
	Definir cantidadEmpleados Como Entero;
	
	Repetir
		Escribir "Ingrese la cantidad de empleados: ";
		Leer cantidadEmpleados;
		
		Si (cantidadEmpleados <= 0) Entonces
			Escribir "La cantidad de empleados debe ser mayor a 0.";
		FinSi
	Hasta Que cantidadEmpleados > 0
FinFuncion

Funcion acumulador = sumarSalarios(salarios, tamanio)
	Definir i Como Entero;
	Definir acumulador Como Real;
	
	acumulador = 0;
	Para i = 0 Hasta tamanio - 1 Con Paso 1 Hacer
		acumulador = acumulador + salarios[i];
	FinPara
FinFuncion

Funcion nombreMayor = hallarEmpleadoMayorSalario(nombres, salarios, tamanio)
	Definir i Como Entero;
	Definir nombreMayor Como Caracter;
	Definir salarioMayor Como Real;
	
	nombreMayor = nombres[0];
	salarioMayor = salarios[0];
	
	Para i = 0 Hasta tamanio - 1 Con Paso 1 Hacer
		Si (salarios[i] > salarioMayor) Entonces
			nombreMayor = nombres[i];
			salarioMayor = salarios[i];
		FinSi
	FinPara
FinFuncion

Funcion nombreMenor = hallarEmpleadoMenorSalario(nombres, salarios, tamanio)
	Definir i Como Entero;
	Definir nombreMenor Como Caracter;
	Definir salarioMenor Como Real;
	
	nombreMenor = nombres[0];
	salarioMenor = salarios[0];
	
	Para i = 0 Hasta tamanio - 1 Con Paso 1 Hacer
		Si (salarios[i] < salarioMenor) Entonces
			nombreMenor = nombres[i];
			salarioMenor = salarios[i];
		FinSi
	FinPara
FinFuncion
	