// Entrada: x, y
// Proceso: Hacer la operación: (x ^ (1/2) + y ^ 2) /2 - 1 / (x + y)
// Salida: El resultado.

Algoritmo ResolverOperacion
	Definir x, y, resultado Como Real;
	Escribir "Ingrese el valor de x, por favor: ";
	Leer x;
	Escribir "Ingrese el valor de y, por favor: ";
	Leer y;
	resultado = (x ^ (1/2) + y ^ 2) /2 - 1 / (x + y);
	Escribir "El resultado de la operación es: ", resultado;
FinAlgoritmo
