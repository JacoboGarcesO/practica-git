// 1. Leer un n�mero y sumar todos los n�meros pares que hayan entre 0 y el n�mero ingresado.

// Entrada: numero
// Proceso:
//		Buscar los n�meros pares entre 0 y el n�mero ingresado.
//		Verificar si los numeros son pares al dividir entre 2 y obtener un residuo igual a 0.
//      Ciclo para que inicie en 0, termine en el n�mero ingresado y tenga paso 2.
//      suma = numeroPar + suma;
// Salida: suma

Algoritmo SumaPares
	Definir number, suma, i Como Entero;
	number = pedirNumero("Ingresa un n�mero, por favor: ");
	suma = sumarPares(number);
	Escribir "La suma de los n�meros pares es: ", suma;
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