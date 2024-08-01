// 1. Leer un número y sumar todos los números pares que hayan entre 0 y el número ingresado.

// Entrada: numero
// Proceso:
//		Buscar los números pares entre 0 y el número ingresado.
//		Verificar si los numeros son pares al dividir entre 2 y obtener un residuo igual a 0.
//      Ciclo para que inicie en 0, termine en el número ingresado y tenga paso 2.
//      suma = numeroPar + suma;
// Salida: suma

Algoritmo SumaPares
	Definir number, suma, i Como Entero;
	number = pedirNumero("Ingresa un número, por favor: ");
	suma = sumarPares(number);
	Escribir "La suma de los números pares es: ", suma;
FinAlgoritmo

Funcion suma = sumarPares(number)
	Definir i, suma Como Entero;
	suma = 0;
	Para i = 0 Hasta number Hacer
		Si (i % 2 == 0) Entonces
			suma = i + suma;
		FinSi
	Fin Para
FinFuncion

Funcion number = pedirNumero (mensaje)
	Definir number Como Entero;
	Escribir mensaje;
	Leer number;
FinFuncion