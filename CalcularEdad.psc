// Realizar un algoritmo que reciba el año de nacimiento de un individuo y retorne la edad del mismo.
// Entrada: Año de nacimiento.
// Proceso: Al año actual, restarle el año de nacimiento.
// Salida: La edad.

Algoritmo CalcularEdad // PascalCase
	Definir anioNacimiento, anioActual, edad Como Entero; // CamelCase
	Escribir "Ingresa tu año de nacimiento, por favor: ";
	Leer anioNacimiento;
	Escribir "Ingresa el año actual, por favor: ";
	Leer anioActual;
	edad = anioActual - anioNacimiento;
	Escribir "Tu edad es: ", edad;
FinAlgoritmo
