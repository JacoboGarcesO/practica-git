// Realizar un algoritmo para calcular la nota final de un grupo de estudiantes.
// El algoritmo debe mostrar un menú con dos opciones: 
//		1. Ingresar notas de un alumno.
//		2. Salir.
// Se sabe que todos los estudiantes cuentan con 5 notas y en la primera opción se deberán ingresar cada una de las
// notas con su respectivo porcentaje.
// El porcentaje se debe ir acumulando para validar que sí corresponda al 100%. Si es menor al 100%, debe mostrarle cuánto
// le falta para llegar al 100% y volverá al menú principal.
// Si es mayor que el 100%, deberá mostrar en cuánto se excedió por encima del 100% y volver al menú principal.
// Cuando el porcentaje coincida con el 100%, calcule la nota final multiplicando cada una de las notas por su respectivo
// porcentaje y sumando los resultados.
// Una vez hecho esto, muestre la nota final y vuelva al menú principal.
// El programa solo terminar cuando el usuario seleccione la opción 2 (Salir).

Algoritmo CalcularNotaFinal
	Definir nota, porcentaje, porcentajeTotal, notaFinal Como Real;
	Definir opcion, i Como Entero;
	
	Repetir
		Escribir "Bienvenido al sistema de gestión de notas, por favor selecciona una opción: ";
		Escribir "1. Ingresar notas de un alumno.";
		Escribir "2. Salir.";
		Leer opcion;
		
		Si (opcion == 1) Entonces
			porcentajeTotal = 0;
			notaFinal = 0;
			i = 1;
			
			Mientras i <= 5 Hacer
				Escribir "Ingrese la nota ", i, ", por favor: ";
				Leer nota;
				Escribir "Ingrese el porcentaje de la nota ", i, ", por favor: ";
				Leer porcentaje;
				porcentajeTotal = porcentajeTotal + porcentaje;
				notaFinal = notaFinal + nota * porcentaje / 100;
				
				Si (i == 5 & porcentajeTotal <> 100) Entonces
					Si (porcentajeTotal > 100) Entonces
						Escribir "Se excedió un ", porcentajeTotal - 100, "% por encima del 100%.";
					SiNo
						Escribir "Le faltó un ", 100 - porcentajeTotal, "% para llegar al 100%.";
					FinSi
				FinSi
				
				i = i + 1;
			FinMientras
			
			Si (porcentajeTotal == 100) Entonces
				Escribir "La nota final es: ", notaFinal;
			FinSi
		FinSi
		
	Hasta Que opcion == 2
	Escribir "Has salido del sistema.";
FinAlgoritmo
