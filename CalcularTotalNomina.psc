// Realizar un algoritmo para calcular el total a pagar por n�mina para N empleados,
//     teniendo en cuenta lo siguiente:
// Si el empleado gana m�s de 1 SMMLV, se le deben sumar 110.000 pesos a su n�mina.
// Al empleado se le debe deducir el 16% de su salario base por salud y pensi�n.
// Si el empleado tiene m�s de 40 a�os se le da un bono del 7% aplicado sobre su salario base.
// Entrada: Nombre, edad, salario base y cantidad de empleados.
// Proceso: Bucle desde 1 hasta la cantidad de empleados.
//			Verificar si es mayor que 1 SMMLV para a�adir 110.000.
//			Verificar la edad y si es mayor que 40, adicionarle el 7%.
// 			Deducir el 16%.
//			Agregar el salario final de cada empleado a la suma total de n�mina.
// Salida: Total a pagar por n�mina.

Algoritmo CalcularTotalNomina
	Definir nombre Como Caracter;
	Definir edad, cantidadEmpleados, i Como Entero;
	Definir salarioBase, totalNomina, salarioFinal Como Real;
	Escribir "Ingrese la cantidad de empleados, por favor: ";
	Leer cantidadEmpleados;
	totalNomina = 0;
	
	Para i = 1 Hasta cantidadEmpleados Con Paso 1 Hacer
		Escribir "Ingrese el nombre del empleado ", i, ":";
		Leer nombre;
		Escribir "Ingrese la edad del empleado ", i, ":";
		Leer edad;
		Escribir "Ingrese el salario base del empleado ", i, ":";
		Leer salarioBase;
		salarioFinal = 0;
		
		Si (salarioBase > 1160000) Entonces
			salarioFinal = 110000;
		FinSi
		
		Si (edad > 40) Entonces
			salarioFinal = salarioFinal + salarioBase * 7 / 100;
		FinSi
		
		salarioFinal = salarioFinal + (salarioBase - salarioBase * 16 / 100);
		totalNomina = totalNomina + salarioFinal;
	FinPara
	
	Escribir "El total a pagar por n�mina es: ", totalNomina;
FinAlgoritmo
