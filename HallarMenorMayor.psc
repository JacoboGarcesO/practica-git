// Dado un arreglo de n�meros enteros,
// debes escribir un programa que encuentre el n�mero m�nimo
// y m�ximo en el arreglo y los muestre en pantalla.

Algoritmo HallarMenorMayor
	Definir datos, i, numeroDatos, minimo, maximo Como Entero;
	Escribir "Ingresa el tama�o del arreglo, por favor: ";
	Leer numeroDatos;
	
	Dimension datos[numeroDatos];
	
	Para i = 0 Hasta numeroDatos - 1 Con Paso 1 Hacer
		Escribir "Ingresa el dato #", i + 1;
		Leer datos[i];
	FinPara
	
	minimo = datos[0];
	maximo = datos[0];
	
	Para i = 0 Hasta numeroDatos - 1 Con Paso 1 Hacer
		Si (datos[i] < minimo) Entonces
			minimo = datos[i];
		FinSi
		
		Si (datos[i] > maximo) Entonces
			maximo = datos[i];
		FinSi
	FinPara
	
	Escribir "El n�mero m�nimo es: ", minimo;
	Escribir "El n�mero m�ximo es: ", maximo;
FinAlgoritmo
