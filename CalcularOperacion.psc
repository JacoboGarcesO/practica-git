// Entrada: x, y.
// Proceso: Hacer la operación.
// Salida: El resultado de la operación.
// (x ^ (1/2) + y ^ 2) / 2 - 1 / (x + y)

Algoritmo CalcularOperacion
	Definir x, y, resultado Como Real;
	Escribir "Ingrese el valor de x, por favor: ";
	Leer x;
	Escribir "Ingrese el valor de y, por favor: ";
	Leer y;
	resultado = (x ^ (1/2) + y ^ 2) / 2 - 1 / (x + y);
	Escribir "El resultado es: ", resultado;
FinAlgoritmo
