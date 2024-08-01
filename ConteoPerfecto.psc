Algoritmo ConteoPerfecto
	Definir cantidadNumeros, vectorNumeros, menor, mayor, cantidadFaltantes, numerosFaltantes Como Entero;
	cantidadNumeros = leerEntero("Ingresa la cantidad de números: ");
	Dimension vectorNumeros[cantidadNumeros];
	llenarNumeros(vectorNumeros, cantidadNumeros);
	ordenarNumeros(vectorNumeros, cantidadNumeros);
	menor = vectorNumeros[0];
	mayor = vectorNumeros[cantidadNumeros - 1];
	cantidadFaltantes = hallarCantidadFaltantes(menor, mayor, vectorNumeros, cantidadNumeros);
	Si cantidadFaltantes > 0 Entonces
		Dimension numerosFaltantes[cantidadFaltantes];
		llenarNumerosFaltantes(menor, mayor, cantidadFaltantes, numerosFaltantes, vectorNumeros, cantidadNumeros);
		mostrarFaltantes(cantidadFaltantes, numerosFaltantes);
	SiNo
		Escribir "Definitivamente rompiste el sistema";
	FinSi
FinAlgoritmo

Funcion numero = leerEntero(mensaje)
	Definir numero Como Entero;
	
	Repetir
		Escribir mensaje;
		Leer numero;
		
		Si (numero <= 0) Entonces
			Escribir "El número que ingresaste debe ser mayor que 0.";
		FinSi
	Hasta Que numero > 0
FinFuncion

Funcion llenarNumeros(vectorNumeros, cantidadNumeros)
	Definir i Como Entero;
	Para i = 0 Hasta cantidadNumeros - 1 Hacer
		vectorNumeros[i] = leerEntero("Ingresa el número " + ConvertirATexto(i + 1) + ": ");
	FinPara
FinFuncion

Funcion ordenarNumeros(vectorNumeros, cantidadNumeros)
	Definir i, j, numeroAuxiliar Como Entero;
	Para i = 0 Hasta cantidadNumeros - 1 hacer
		para j = 0 Hasta cantidadNumeros - i - 2 Hacer
			Si vectorNumeros[j] > vectorNumeros[j+1] Entonces
				numeroAuxiliar = vectorNumeros[j];
				vectorNumeros[j] = vectorNumeros[j+1];
				vectorNumeros[j+1] = numeroAuxiliar;
			FinSi
		FinPara
	FinPara
FinFuncion

Funcion cantidadFaltantes = hallarCantidadFaltantes(menor, mayor, vectorNumeros, cantidadNumeros)
	Definir i, cantidadFaltantes Como Entero;
	cantidadFaltantes = 0;
	Para i = menor Hasta mayor Hacer
		Si (~buscarNumero(vectorNumeros, cantidadNumeros, i)) Entonces
			cantidadFaltantes = cantidadFaltantes + 1;
		FinSi
	FinPara
FinFuncion

Funcion llenarNumerosFaltantes(menor, mayor, cantidadFaltantes, numerosFaltantes, vectorNumeros, cantidadNumeros)
	Definir i, contadorFaltantes Como Entero;
	contadorFaltantes = 0;
	Para i = menor Hasta mayor Hacer
		Si (~buscarNumero(vectorNumeros, cantidadNumeros, i)) Entonces
			numerosFaltantes[contadorFaltantes] = i;
			contadorFaltantes = contadorFaltantes + 1;
		FinSi
	FinPara
FinFuncion

Funcion estaEnVector = buscarNumero(vectorNumeros, cantidadNumeros, numeroBuscar)
	Definir i Como Entero;
	Definir estaEnVector Como Logico;
	
	estaEnVector = Falso;
	
	Para i = 0 Hasta cantidadNumeros - 1 Hacer
		Si (vectorNumeros[i] == numeroBuscar) Entonces
			estaEnVector = Verdadero;
		FinSi
	FinPara
FinFuncion

Funcion mostrarFaltantes(cantidadFaltantes, numerosFaltantes)
	Definir i Como Entero;
	Para i = 0 Hasta cantidadFaltantes - 1 Hacer
		Escribir numerosFaltantes[i];
	FinPara
FinFuncion
	