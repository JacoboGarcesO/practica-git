// Leer un n�mero y sumar todos los n�meros pares que hayan entre 0 y el n�mero ingresado.
// Entrada: El numero que ingresa el usuario.
// Proceso: Un ciclo que vaya desde 0 hasta el n�mero ingresado.
//			Validar si el numero es par.
//			Agregar ese n�mero a la suma.
// Salida: La suma de los pares.

Algoritmo SumarNumerosPares2
	Definir numero1, i, sumaPares Como Entero;
	Escribir "Ingrese un n�mero para sumar los pares que esten antes, por favor:";
	Leer numero1;
	i = 0;
	sumaPares = 0;
	
	Mientras i <= numero1 Hacer
		sumaPares = sumaPares + i;
		i = i + 2;
	FinMientras
	
	Escribir "La suma de los pares que est�n entre 0 y ", numero1, " es:", sumaPares;
FinAlgoritmo
