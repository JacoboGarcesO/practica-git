Algoritmo CondicionalesSiSiNo
	Definir numeroUsuario Como Entero;
	Definir expresionLogica Como Logico;
	Escribir "Ingrese un número: ";
	Leer numeroUsuario;
	
	expresionLogica = numeroUsuario > 0;
	
	Si (expresionLogica) Entonces
		Escribir "El número ingresado es positivo.";
	SiNo
		expresionLogica = numeroUsuario == 0;
		Si (expresionLogica) Entonces
			Escribir "El número ingresado es 0.";
		SiNo
			Escribir "El número ingresado es negativo.";
		FinSi
	FinSi
FinAlgoritmo
