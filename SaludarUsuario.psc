//Realizar un algoritmo para leer el nombre y el apellido de una persona,
// esperando que retorne en un mensaje con el siguiente formato,
// los datos leídos: "Mucho gusto en conocerte Jacobo Garcés.".
// Entrada: Nombre y apellido.
// Proceso: Construir el mensaje
// Salida: El mensaje

Algoritmo SaludarUsuario
	Definir nombre, apellido Como Caracter;
	Escribir "Ingrese su nombre, por favor: ";
	Leer nombre;
	Escribir "Ingrese su apellido, por favor: ";
	Leer apellido;
	Escribir "Mucho gusto en conocerte ", nombre, " ", apellido;
FinAlgoritmo
