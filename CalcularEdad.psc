// Realizar un algoritmo que reciba el a�o de nacimiento de un individuo y retorne la edad del mismo.
// Entrada: A�o de nacimiento.
// Proceso: Al a�o actual, restarle el a�o de nacimiento.
// Salida: La edad.

Algoritmo CalcularEdad // PascalCase
	Definir anioNacimiento, anioActual, edad Como Entero; // CamelCase
	Escribir "Ingresa tu a�o de nacimiento, por favor: ";
	Leer anioNacimiento;
	Escribir "Ingresa el a�o actual, por favor: ";
	Leer anioActual;
	edad = anioActual - anioNacimiento;
	Escribir "Tu edad es: ", edad;
FinAlgoritmo
