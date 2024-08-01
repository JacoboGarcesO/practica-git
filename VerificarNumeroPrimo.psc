// Realizar un algoritmo que determine si un número es primo.
// Entrada: El numero.
// Proceso: Los numeros primos solo tienen dos divisores exactos.
//			Ciclo que empiece en 0 y termine en el numero ingresado.
//			Validar cada divisor posible que tenga el numero ingresado.
//			Si la cantidad final de divisores es 2, entonces es primo.
// Salida: Es o no primo.

Algoritmo VerificarNumeroPrimo
	Definir numero, i, cantidadDivisores Como Entero;
	Escribir "Ingrese el número a verificar, por favor: ";
	Leer numero;
	i = 1;
	cantidadDivisores = 0;
	Mientras i <= numero Hacer
		Si (numero % i == 0) Entonces
			cantidadDivisores = cantidadDivisores + 1;
		FinSi
		i = i + 1;
	FinMientras
	
	Si (cantidadDivisores == 2) Entonces
		Escribir "El número ingresado es primo.";
	SiNo
		Escribir "El número ingresado no es primo.";
	FinSi
FinAlgoritmo
