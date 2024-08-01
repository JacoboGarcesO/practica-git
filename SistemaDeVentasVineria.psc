// Vinería Sofka
// Sofka tiene una vinería, vende vinos solo a los mayores de edad,
// y vende dos tipos de vinos, uno de mora y otro de manzana,
// el precio actual de los vinos de manzanas es de $100.000 y de los vinos
// mora $50.000. Se requiere construir el sistema de ventas de la vinería,
// tenga en cuenta la edad del cliente para determinar si le puede vender.
// Además se desea que, a los clientes que compran más vinos de manzana,
// que de mora, les aparezca un mensaje así:
// "Eres un obsesionado con nuestro vinos de manzana-> Manzanero" (2),
// si compra más vino de mora que de manzana así:
// "Eres un obsesionado con nuestros vinos de mora-> Morero" (1),
// el sistema debe poder recibir la cantidad de dinero que entregó el
// cliente, en caso de haber entregado más dinero de lo que se esperaba
// el sistema debe dar las gracias por la propina, pero si el cliente pagó menos,
// el sistema debe notificarle cuanto queda debiendo.
// Entrada: Edad, tipo de vino, cantidad de mora, cantidad manzana, dinero entregado
// Proceso: Si cantidadMoras > cantidadManzanas Entonces se le muestra el mensaje 1
//			Sino se le muestra el mensaje 2.
//			Verificar si es mayor de edad -> Si edad >= 18 Entonces le vendemos
//					Sino no le vendemos y volvemos a solicitar su edad.
//			Verificar el dinero entregado -> Si dineroEntregado > totalPagar Entonces
//			Se le dice "gracias por la propina", Sino se le dice cuándo quedo debiendo.
//			Si son iguales se le dice "gracias por su compra"
//			totalPagar = cantidadMora*50000 + cantidadManzana*100000
// Salida: 
//		* "Eres un obsesionado con nuestro vinos de manzana-> Manzanero".
//		* "Eres un obsesionado con nuestros vinos de mora-> Morero".
//		* Cantidad a pagar por los vinos.
//		* "Gracias por su compra".
//		* "Gracias por la propina".
//		* "Quedaste debiendo $x".

Algoritmo SistemaDeVentasVineria
	Definir edad, opcionDeCompra, cantidadMora, cantidadManzana Como Entero;
	Definir dineroEntregado, totalPagar Como Real;
	edad = obtenerEdad();
	opcionDeCompra = obtenerOpcionDeCompra();
	
	Segun opcionDeCompra Hacer
		1:
			cantidadMora = 0;
			Escribir "Ingrese la cantidad de vino de manzana que desea comprar: ";
			Leer cantidadManzana;
		2:
			cantidadManzana = 0;
			Escribir "Ingrese la cantidad de vino de mora que desea comprar: ";
			Leer cantidadMora;
		3: 
			Escribir "Ingrese la cantidad de vino de mora que desea comprar: ";
			Leer cantidadMora;
			Escribir "Ingrese la cantidad de vino de manzana que desea comprar: ";
			Leer cantidadManzana;
	FinSegun
	
	totalPagar = calcularTotalAPagar(cantidadManzana, cantidadMora);
	dineroEntregado = obtenerDinero(totalPagar);
	mostrarMensajesDinero(dineroEntregado, totalPagar);
	mostrarMensajesCantidad(cantidadManzana, cantidadMora);
FinAlgoritmo

Funcion edad = obtenerEdad()
	Definir edad Como Entero;
	
	Repetir
		Escribir "Ingresa tu edad, por favor: ";
		Leer edad;
		
		Si (edad < 18) Entonces
			Escribir "No podemos venderle vino a menores de edad.";
		FinSi
	Hasta Que edad >= 18
FinFuncion

Funcion opcion = obtenerOpcionDeCompra()
	Definir opcion Como Entero;
	
	Repetir
		Escribir "------- MENU DE COMPRAS -------";
		Escribir "1. Comprar vino de manzana.";
		Escribir "2. Comprar vino de mora.";
		Escribir "3. Comprar de los dos tipos de vino.";
		Leer opcion;
		
		Si (opcion < 1 | opcion > 3) Entonces
			Escribir "Las opciones deben estar entre 1 y 3.";
		FinSi
	Hasta Que opcion >= 1 & opcion <= 3
FinFuncion

Funcion mostrarMensajesCantidad(cantidadManzana, cantidadMora)
	Si cantidadManzana > cantidadMora Entonces
		Escribir "Eres un obsesionado con nuestro vinos de manzana -> Manzanero";
	SiNo
		Si cantidadManzana == cantidadMora Entonces
			Escribir "Tienes unos gustos muy parejos.";
		SiNo
			Escribir "Eres un obsesionado con nuestros vinos de mora -> Morero";
		FinSi
	FinSi
FinFuncion

Funcion totalPagar = calcularTotalAPagar(cantidadManzana, cantidadMora)
	Definir totalPagar Como Real;
	totalPagar = cantidadMora * 50000 + cantidadManzana * 100000;
FinFuncion

Funcion dinero = obtenerDinero(totalPagar)
	Definir dinero Como Real;
	
	Repetir
		Escribir "Ingresa el dinero para pagar tu cuenta de $", totalPagar, ": ";
		Leer dinero;
		
		Si (dinero <= 0) Entonces
			Escribir "El dinero no puede tener un valor negativo o de 0.";
		FinSi
	Hasta Que dinero > 0
FinFuncion

Funcion mostrarMensajesDinero(dinero, totalPagar)
	Si (totalPagar > dinero) Entonces
		Escribir "Quedaste debiendo $", totalPagar - dinero;
	SiNo
		Si (totalPagar == dinero) Entonces
			Escribir "Gracias por tu compra.";
		SiNo
			Escribir "Gracias por la propina.";
		FinSi
	FinSi
FinFuncion
