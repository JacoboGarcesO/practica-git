// Vinería Sofka
// Sofka tiene una vinería, vende vinos solo a los mayores de edad,
// y vende dos tipos de vinos, uno de mora y otro de manzana,
// el precio actual de los vinos de manzanas es de $100.000 y de los
// vinos mora $50.000. Se requiere construir el sistema de ventas de la
// vinería, tenga en cuenta la edad del cliente para determinar si le puede vender.
// Además se desea que, a los clientes que compran más vinos de manzana, que de mora,
// les aparezca un mensaje así:
// "Eres un obsesionado con nuestro vinos de manzana-> Manzanero",
// si compra más vino de mora que de manzana así:
// "Eres un obsesionado con nuestros vinos de mora-> Morero",
// el sistema debe poder recibir la cantidad de dinero que entregó el cliente,
// en caso de haber entregado más dinero de lo que se esperaba el sistema debe dar
// las gracias por la propina, pero si el cliente pagó menos, el sistema debe
// notificarle cuanto queda debiendo.
// Entrada: Edad, cantidad manzana, cantidad mora, dinero entregado
// Proceso: Validar edad para poder vender
//			totalPagar = cantidadMora * 50000 + cantidadManazana * 100000
//			Verificar de cuál de los dos vinos compró más.
//			Verificar si toca agradecer por la propina o decir cuánto queda debiendo.
// Salida: Mensajes (1)
//			Mensajes (2)

Algoritmo ComprarEnSofka
	Definir edad, cantidadMora, cantidadManazana Como Entero;
	Definir totalPagar, dineroEntregado Como Real;
	
	Repetir
		edad = obtenerEntero("Ingresa tu edad: ");
		Si (edad >= 18) Entonces
			cantidadMora = obtenerEntero("Ingresa la cantidad de mora: ");
			cantidadManazana = obtenerEntero("Ingresa la cantidad de manzana: ");
			mostrarMensajesMoreroManzanero(cantidadManazana, cantidadMora);
			totalPagar = cantidadManazana*100000 + cantidadMora*50000;
			Escribir "Tienes que pagar $", totalPagar;
			dineroEntregado = obtenerReal("Ingresa tu pago: ");
			mostrarEstadoPago(totalPagar, dineroEntregado);
		SiNo
			Escribir "Eres menor de edad, no podemos venderte vino.";
		FinSi
	Hasta Que edad >= 18
FinAlgoritmo

Funcion numero = obtenerEntero(mensaje)
	Definir numero Como Entero;
	Repetir
		Escribir mensaje;
		Leer numero;
		Si (numero <= 0) Entonces
			Escribir "El número debe der positivo.";
		FinSi
	Hasta Que numero > 0
FinFuncion

Funcion numero = obtenerReal(mensaje)
	Definir numero Como Real;
	Repetir
		Escribir mensaje;
		Leer numero;
		Si (numero <= 0) Entonces
			Escribir "El número debe der positivo.";
		FinSi
	Hasta Que numero > 0
FinFuncion

Funcion mostrarEstadoPago(totalPagar, dineroEntregado)
	Si (totalPagar > dineroEntregado) Entonces
		Escribir "Quedas debiendo: $", totalPagar - dineroEntregado;
	SiNo
		Si (totalPagar < dineroEntregado) Entonces
			Escribir "Gracias por la propina";
		SiNo
			Escribir "Gracias por tu compra";
		FinSi
	FinSi
FinFuncion

Funcion mostrarMensajesMoreroManzanero(cantidadManazana, cantidadMora)
	Si (cantidadManazana > cantidadMora) Entonces
		Escribir "Eres un obsesionado con nuestro vinos de manzana-> Manzanero";
	SiNo
		Si (cantidadManazana < cantidadMora) Entonces
			Escribir "Eres un obsesionado con nuestros vinos de mora-> Morero";
		SiNo
			Escribir "Te gustan por igual.";
		FinSi
	FinSi
FinFuncion
