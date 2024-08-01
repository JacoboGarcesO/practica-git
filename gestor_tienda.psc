Algoritmo gestor_tienda
	definir opcion, cantidades, tamanio, auxiliarCantidad, i, j, productoActual Como Entero;
	Definir precios, auxiliarPrecio Como Real;
	Definir nombres, auxiliarNombre Como Caracter;
	Dimension nombres[1000], precios[1000], cantidades[1000];
	tamanio = 0;
	
	Repetir
		opcion <- leerOpcion();
		
		Segun opcion Hacer
			1:
				Escribir "Ingrese el producto #", tamanio + 1,": ";;
				leer nombres[tamanio];
				Escribir "Ingrese la cantidad de ", nombres[tamanio],": ";;
				leer cantidades[tamanio];
				Escribir "Ingrese el precio del #", nombres[tamanio],": ";;
				leer precios[tamanio];
				tamanio = tamanio + 1;
				Escribir "El producto fue añadido exitosamente, presiona una tecla para continuar.";
				Esperar Tecla;
			2:
				Escribir "Estos son los productos que puedes actualizar";
				Para i = 0 Hasta tamanio - 1 Hacer
					Escribir i + 1, ". ", nombres[i], " - ", cantidades[i], " - ", precios[i];
				FinPara				
				Escribir "Ingresa el número del producto que desea actualizar: ";
				Leer productoActual;
				Escribir "Ingrese la nueva cantidad para ", nombres[productoActual - 1];
				Leer cantidades[productoActual - 1];
			3:
			4:
				mostrarDeFormaDescendente(tamanio, nombres, precios, cantidades);
			5:
			De Otro Modo:
				Escribir "Vuelva pronto" ;
		FinSegun
	Hasta Que opcion == 6
	
FinAlgoritmo

Funcion mostrarDeFormaDescendente(tamanio, nombres, precios, cantidades)
	Definir i, j, auxiliarCantidad Como Entero;
	Definir auxiliarNombre Como Caracter;
	Definir auxiliarPrecio Como Real;
	Para i = 0 Hasta tamanio - 1 Hacer
		Para j = 0 Hasta tamanio - 2 Hacer
			Si (precios[j] > precios[j + 1]) Entonces
				auxiliarPrecio = precios[j + 1];
				precios[j + 1] = precios[j];
				precios[j] = auxiliarPrecio;
				
				auxiliarNombre = nombres[j + 1];
				nombres[j + 1] = nombres[j];
				nombres[j] = auxiliarNombre;
				
				auxiliarCantidad = cantidades[j + 1];
				cantidades[j + 1] = cantidades[j];
				cantidades[j] = auxiliarCantidad;
			FinSi
		FinPara
	FinPara
	Para i = tamanio - 1 Hasta 0 Con Paso -1 Hacer
		Escribir tamanio - i, ". ", nombres[i], " - ", cantidades[i], " - ", precios[i];
	FinPara
FinFuncion

Funcion opcion <- leerOpcion()
	Definir opcion Como Entero;
	
	Repetir
		Escribir "===========MENU===========";
		Escribir "1. Agregar producto al carrito";
		Escribir "2. Actualizar la cantidad de un producto en el carrito";
		Escribir "3. Calcular el total a pagar por los productos que hay en el carrito";
		Escribir "4. Mostrar todos los productos en el carrito";
		Escribir "5. Eliminar producto en el carrito";
		leer opcion;
		
		Si (opcion < 1 | opcion > 6) Entonces
			Borrar Pantalla;
			Escribir "********* ERROR *********";
			Escribir "La opción debe estar entre 1 y 6, presione una tecla para continuar:";
			Esperar Tecla;
		FinSi
	Hasta Que opcion >= 1 & opcion <= 6
FinFuncion
