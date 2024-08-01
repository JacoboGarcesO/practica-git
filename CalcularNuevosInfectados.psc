// Calcular el número de infectados en el nuevo mes de un hospital, teniendo en cuenta el nombre del hospital,
// el número de infectados en el mes pasado y el porcentaje de incremento .
// Entrada: Nombre del hospital, infectados mes pasado, porcentaje incremento.
// Proceso: infectadosMesPasado * porcentajeIncremento / 100
// Salida: Nuevos infectados

Algoritmo CalcularNuevosInfectados
	Definir infectadosMesPasado, nuevosInfectados Como Entero;
	Definir porcentajeIncremento Como Real;
	Definir nombreHospital Como Caracter;
	Escribir "Ingrese el nombre del hospital, por favor: ";
	Leer nombreHospital;
	Escribir "Ingrese los infectados del mes pasado, por favor: ";
	Leer infectadosMesPasado;
	Escribir "Ingrese el porcentaje de incremento, por favor: ";
	Leer porcentajeIncremento;
	nuevosInfectados = infectadosMesPasado * porcentajeIncremento / 100;
	Escribir "La nueva cantidad de infectados del hospital ", nombreHospital, " es: ", nuevosInfectados;
FinAlgoritmo
