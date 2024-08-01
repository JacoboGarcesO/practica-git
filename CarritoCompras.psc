Algoritmo CarritoCompras
	Definir opcion, cantidades, contadorProductos, confirmacion, CANTIDAD_MAXIMA_PRODUCTOS, productoActual Como Entero;
	Definir nombres Como Caracter;
	Definir precios Como Real;

	CANTIDAD_MAXIMA_PRODUCTOS = 100;
	Dimension precios[CANTIDAD_MAXIMA_PRODUCTOS], nombres[CANTIDAD_MAXIMA_PRODUCTOS], cantidades[CANTIDAD_MAXIMA_PRODUCTOS];
	contadorProductos = 0;

	Repetir
		opcion = leerOpcion();
	
		Segun opcion Hacer
			1:
				Si (contadorProductos < CANTIDAD_MAXIMA_PRODUCTOS) Entonces
					confirmacion = confirmarAccion("¿Está seguro de que desea agregar un producto al carrito?");
					Si (confirmacion == 1) Entonces
						agregarProducto(precios, nombres, cantidades, contadorProductos);
						contadorProductos = contadorProductos + 1;
					FinSi
				SiNo
					Escribir "El carrito está lleno, si desea ingresar otro producto elimine uno del carrito.";
				FinSi
				
				Escribir "Presione cualquier tecla para volver al menú.";
				Esperar Tecla;
			2:
				confirmacion = confirmarAccion("¿Está seguro de que desea actualizar un producto en su compra?");
				Si (confirmacion == 1) Entonces
					mostrarProductos(nombres, cantidades, precios, contadorProductos, "Los productos que puedes actualizar son:");
					actualizarCantidad(nombres, cantidades, precios);
				FinSi
				Escribir "Presione cualquier tecla para volver al menú.";
				Esperar Tecla;
			3:
				calcularTotal(nombres, cantidades, precios, contadorProductos);
				Escribir "Presione cualquier tecla para volver al menú.";
				Esperar Tecla;
			4:
				mostrarProductos(nombres, cantidades, precios, contadorProductos, "Productos en el carrito:");
				Escribir "Presione cualquier tecla para volver al menú.";
				Esperar Tecla;
			5:
				confirmacion = confirmarAccion("¿Está seguro de que desea eliminar un producto en su compra?");
				Si (confirmacion == 1) Entonces
					mostrarProductos(nombres, cantidades, precios, contadorProductos, "Los productos que puedes eliminar son:");
					contadorProductos = contadorProductos - 1;
					eliminarProducto(nombres, cantidades, precios, contadorProductos);
				FinSi
				Escribir "Presione cualquier tecla para volver al menú.";
				Esperar Tecla;
			6:
				Escribir "Gracias por comprar, vuelve pronto.";
		FinSegun
	Hasta Que opcion == 6
FinAlgoritmo

Funcion eliminarProducto(nombres, cantidades, precios, contadorProductos)
	Definir productoActual, i Como Entero;
	Escribir "Ingrese el número del producto que desea eliminar: ";
	Leer productoActual;
	productoActual = productoActual - 1;
	Escribir "El producto que vas a eliminar es: ";
	Escribir "Nombre: ", nombres[productoActual];
	Escribir "Precio: ", precios[productoActual];
	Escribir "Cantidad: ", cantidades[productoActual];
	Escribir "";
	
	Para i = 0 Hasta contadorProductos - 1 Hacer
		Si (i >= productoActual) Entonces
			nombres[i] = nombres[i + 1];
			precios[i] = precios[i + 1];
			cantidades[i] = cantidades[i + 1];
		FinSi
	FinPara
	
	Escribir "¡El producto se eliminó satisfactoriamente!";
FinFuncion

Funcion actualizarCantidad(nombres, cantidades, precios)
	Definir productoActual Como Entero;
	Escribir "Ingrese el número del producto que desea actualizar: ";
	Leer productoActual;
	productoActual = productoActual - 1;
	Escribir "El producto que vas a actualizar es: ";
	Escribir "Nombre: ", nombres[productoActual];
	Escribir "Precio: ", precios[productoActual];
	Escribir "Cantidad: ", cantidades[productoActual];
	Escribir "";
	Escribir "Ingrese la nueva cantidad que desea para este producto: ";
	Leer cantidades[productoActual];
	Escribir "¡El producto se actualizó satisfactoriamente!";
FinFuncion

Funcion calcularTotal(nombres, cantidades, precios, contadorProductos)
	Definir i Como Entero;
	
	Para i = 0 Hasta  contadorProductos - 1 Hacer
		Escribir "El precio total a pagar por: ", nombres[i], " es $", cantidades[i] * precios[i];
	FinPara
FinFuncion

Funcion mostrarProductos(nombres, cantidades, precios, contadorProductos, mensaje)
	ordenarProductosDescendente(nombres, cantidades, precios, contadorProductos);
	Borrar Pantalla;
	Si (contadorProductos == 0) Entonces
		Escribir "No hay productos en el carrito.";
	SiNo
		Escribir mensaje;
		Definir i Como Entero;
		Para i = 0 hasta contadorProductos - 1 Hacer
			Escribir "Producto #", i + 1, ":";
			Escribir "Nombre: ", nombres[i];
			Escribir "Precio: ", precios[i];
			Escribir "Cantidad: ", cantidades[i];
			Escribir "";
		FinPara
	FinSi
FinFuncion

Funcion ordenarProductosDescendente(nombres, cantidades, precios, contadorProductos)
	Definir i, j, auxiliarCantidad Como Entero;
	Definir auxiliarNombre Como Caracter;
	Definir auxiliarPrecio Como Real;
	
	Para i = 0 Hasta contadorProductos - 1 Hacer
		Para j = 0 Hasta contadorProductos - i - 2 Hacer
			Si (precios[j] < precios[j + 1]) Entonces
				auxiliarPrecio = precios[j];
				precios[j] = precios[j + 1];
				precios[j + 1] = auxiliarPrecio;
				
				auxiliarCantidad = cantidades[j];
				cantidades[j] = cantidades[j + 1];
				cantidades[j + 1] = auxiliarCantidad;
				
				auxiliarNombre = nombres[j];
				nombres[j] = nombres[j + 1];
				nombres[j + 1] = auxiliarNombre;
			FinSi
		FinPara
	FinPara
FinFuncion

Funcion agregarProducto(precios, nombres, cantidades, contadorProductos)
	Borrar Pantalla;
	Escribir "*** Estás agregando un producto al carrito ***";
	Escribir "Ingrese el nombre del producto #", contadorProductos + 1;
	Leer nombres[contadorProductos];
	Escribir "Ingrese el precio de: ", nombres[contadorProductos];
	Leer precios[contadorProductos];
	Escribir "Ingrese la cantidad del producto: ", nombres[contadorProductos];
	Leer cantidades[contadorProductos];
	Escribir "¡El producto se agregó satisfactoriamente!";
FinFuncion

Funcion opcion = leerOpcion()
	Definir opcion Como Entero;

	Repetir
		mostrarMenu();
		Leer opcion;
		
		Si (opcion < 1 | opcion > 6) Entonces
			Borrar Pantalla;
			Escribir "XXXXXXXXXXXXXXXXXXXX ERROR XXXXXXXXXXXXXXXXXXXX";
			Escribir "El número que ingresaste debe estar entre 1 y 6.";
			Escribir "Presione cualquier tecla para continuar.";
			Esperar Tecla;
		FinSi
	Hasta Que opcion >= 1 & opcion <= 6
FinFuncion

Funcion mostrarMenu()
	Borrar Pantalla;
	Escribir "====================== MENÚ ======================";
	Escribir "1. Agregar producto al carrito.";
	Escribir "2. Actualizar cantidad del producto en el carrito.";
	Escribir "3. Calcular el total del carrito.";
	Escribir "4. Mostrar todos los productos en el carrito.";
	Escribir "5. Eliminar producto del carrito.";
	Escribir "6. Salir.";
	Escribir "Ingrese el número de la opción que desea realizar: ";
FinFuncion

Funcion confirmacion = confirmarAccion(mensaje)
	Definir confirmacion Como Entero;
	
	Repetir
		Borrar Pantalla;
		Escribir mensaje;
		Escribir "1. Sí.";
		Escribir "2. No.";
		Leer confirmacion;
		Si (confirmacion < 1 | confirmacion > 2) Entonces
			Borrar Pantalla;
			Escribir "XXXXXXXXXXXXXXXX ERROR XXXXXXXXXXXXXXXX";
			Escribir "El número que ingresaste debe ser 1 o 2.";
			Escribir "Presione cualquier tecla para continuar.";
			Esperar Tecla;
		FinSi
	Hasta Que confirmacion == 1 | confirmacion == 2
FinFuncion
	