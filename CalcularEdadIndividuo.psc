// Realizar un algoritmo que reciba el año de nacimiento de un individuo y
// retorne la edad del mismo.
// Entrada: Año de nacimiento y año actual.
// Proceso: Restarle al año actual, el año de nacimiento.
// Salida: La edad.

Algoritmo CalcularEdadIndividuo
	Definir anioDeNacimiento, anioActual, edad Como Entero;
	Escribir "Digite su año de nacimiento, por favor: ";
	Leer anioDeNacimiento;
	Escribir "Digite el año actual, por favor: ";
	Leer anioActual;
	edad = anioActual - anioDeNacimiento;
	Escribir "Tu edad actual es: ", edad;
FinAlgoritmo
