// Realizar un algoritmo que reciba el a�o de nacimiento de un individuo y
// retorne la edad del mismo.
// Entrada: A�o de nacimiento y a�o actual.
// Proceso: Restarle al a�o actual, el a�o de nacimiento.
// Salida: La edad.

Algoritmo CalcularEdadIndividuo
	Definir anioDeNacimiento, anioActual, edad Como Entero;
	Escribir "Digite su a�o de nacimiento, por favor: ";
	Leer anioDeNacimiento;
	Escribir "Digite el a�o actual, por favor: ";
	Leer anioActual;
	edad = anioActual - anioDeNacimiento;
	Escribir "Tu edad actual es: ", edad;
FinAlgoritmo
