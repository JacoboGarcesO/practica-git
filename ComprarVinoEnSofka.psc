//Vinería Sofka
// Sofka tiene una vinería, vende vinos solo a los mayores de edad,
// y vende dos tipos de vinos, uno de mora y otro de manzana, el precio
// actual de los vinos de manzanas es de $100.000 y de los vinos mora $50.000.
// Se requiere construir el sistema de ventas de la vinería, tenga en cuenta
// la edad del cliente para determinar si le puede vender. Además se desea que,
// a los clientes que compran más vinos de manzana, que de mora, les aparezca un mensaje así:
// "Eres un obsesionado con nuestro vinos de manzana-> Manzanero",
// si compra más vino de mora que de manzana así:
// "Eres un obsesionado con nuestros vinos de mora-> Morero",
// el sistema debe poder recibir la cantidad de dinero que entregó el cliente,
// en caso de haber entregado más dinero de lo que se esperaba el sistema debe dar
// las gracias por la propina, pero si el cliente pagó menos, el sistema debe notificarle 
// cuanto queda debiendo.
// Entrada: Edad, cantidad mora, cantidad manzana, dinero entregado.
// Proceso: Verificar si es mayor de edad
//			valorPagarManzana = cantidadManzana * 100000
//			valorPagarMora = cantidadMora * 50000
//			Verificar cuál de las dos cantidades de vino es mayor.
//			total = valorPagarManzana + valorPagarMora
//			Verificar si el dinero es mayor al total o sino.
// Salida: "Eres un obsesionado con nuestro vinos de manzana-> Manzanero"
//		   "Eres un obsesionado con nuestros vinos de mora-> Morero"
//			"Gracias por la propina"
//			faltante
Algoritmo ComprarVinoEnSofka
	Definir edad, cantidadMora, cantidadManzana Como Entero;
	Definir dineroEntregado, valorPagarManzana, valorPagarMora, totalPagar Como Real;

	Repetir
		edad = obtenerNumeroEntero("Ingrese la edad, por favor: ");
		
		Si (edad >= 18) Entonces
			cantidadMora = obtenerNumeroEntero("Ingrese la cantidad de vinos de mora que desea comprar, por favor ($50.000):");
			cantidadManzana = obtenerNumeroEntero("Ingrese la cantidad de vinos de manzana que desea comprar, por favor ($100.000):");
			valorPagarManzana = calcularValorPagar(cantidadManzana, 100000);
			valorPagarMora = calcularValorPagar(cantidadMora, 50000);
			totalPagar = valorPagarManzana + valorPagarMora;
			Escribir "El dinero que tienes que pagar por los vinos es: $", totalPagar;
			dineroEntregado = obtenerNumeroReal("Ingresa la cantidad de dinero con la que vas a pagar: ");
			verificarPago(totalPagar, dineroEntregado);
			mostrarMensajesVineros(cantidadMora, cantidadManzana);
		SiNo
			Escribir "No te podemos vender vino porque eres menor de edad.";
		FinSi
	Hasta Que edad >= 18
FinAlgoritmo

Funcion numero = obtenerNumeroEntero(mensaje)
	Definir numero Como Entero;
	Repetir
		Escribir mensaje;
		Leer numero;
		Si (numero <= 0) Entonces
			Escribir "El número debe ser mayor que 0.";
		FinSi
	Hasta Que numero > 0
FinFuncion

Funcion numero = obtenerNumeroReal(mensaje)
	Definir numero Como Real;
	Repetir
		Escribir mensaje;
		Leer numero;
		Si (numero <= 0) Entonces
			Escribir "El número debe ser mayor que 0.";
		FinSi
	Hasta Que numero > 0
FinFuncion

Funcion resultado = calcularValorPagar(cantidad, precio)
	Definir resultado Como Real;
	resultado = cantidad * precio;
FinFuncion

Funcion mostrarMensajesVineros(cantidadMora, cantidadManzana)
	Si (cantidadMora > cantidadManzana) Entonces
		Escribir "Eres un obsesionado con nuestros vinos de mora -> Morero";
	SiNo
		Si (cantidadManzana > cantidadMora) Entonces
			Escribir "Eres un obsesionado con nuestro vinos de manzana -> Manzanero";
		SiNo
			Escribir "Eres neutro.";
		FinSi
	FinSi
FinFuncion

Funcion verificarPago(totalPagar, dineroEntregado)
	Si (totalPagar > dineroEntregado) Entonces
		Escribir "El dinero que quedas debiendo es: ", totalPagar - dineroEntregado;
	SiNo
		Si (dineroEntregado > totalPagar) Entonces
			Escribir "Gracias por la propina, vuelva pronto.";
		SiNo
			Escribir "Gracias por tu compra.";
		FinSi
	FinSi
FinFuncion
