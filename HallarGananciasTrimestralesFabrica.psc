// Entrada: 
//	* Numero de pares fabricados, valor de cada par y numero de pares vendidos.
//	* Costo de fabricaci�n de cada par y servicios fijos.
//	* Total de empleados y salario mensual.
// Proceso:
//	* paresVendidos * valorPorPar
//	* paresFabricados * costoFabricacionPorPar + serviciosFijos
//	* cantidadEmpleados * salarioEmpleado
//	* (ingresos - egresos) * 3
// Salida: Las ganancias o las p�rdidas

Algoritmo HallarGananciasTrimestralesFabrica
	Definir paresFabricados, paresVendidos, cantidadEmpleados Como Entero;
	Definir valorPorPar, costoFabricacion, serviciosFijos, salarioEmpleados, ingresos, egresos, ganancias Como Real;
	Escribir "Ingrese el n�mero de pares fabricados, por favor: ";
	Leer paresFabricados;
	Escribir "Ingrese el n�mero de pares vendidos, por favor: ";
	Leer paresVendidos;
	Escribir "Ingrese el valor de cada par, por favor: ";
	Leer valorPorPar;
	Escribir "Ingrese el costo de fabricaci�n de cada par, por favor: ";
	Leer costoFabricacion;
	Escribir "Ingrese el valor de los servicios fijos, por favor: ";
	Leer serviciosFijos;
	Escribir "Ingrese la cantidad de empleados, por favor: ";
	Leer cantidadEmpleados;
	Escribir "Ingrese el salario por empleado, por favor: ";
	Leer salarioEmpleados;
	ingresos = paresVendidos * valorPorPar;
	egresos = paresFabricados * costoFabricacion + serviciosFijos + cantidadEmpleados * salarioEmpleados;
	ganancias = (ingresos - egresos) * 3;
	Escribir "Tus ganancias o p�rdidas son las siguientes: ", ganancias;
FinAlgoritmo
