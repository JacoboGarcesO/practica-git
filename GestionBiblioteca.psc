Algoritmo GestionBiblioteca
	Definir opcion , copiasDisponibles, cantidadLibros, libroActual, opcionActualizar Como Entero;
	Definir titulos , autores Como Caracter;
	Dimension titulos[1000], autores[1000], copiasDisponibles[1000] ;
	opcion = leerOpcion();
	cantidadLibros = 0;
	Repetir
		opcion = leerOpcion;
		Segun opcion hacer
			1:
				Escribir "Ingrese el titulo del libro #" , cantidadLibros + 1;
				Leer titulos[cantidadLibros];
				Escribir "Ingrese el autor del libro #" , titulos[cantidadLibros];
				Leer autores[cantidadLibros];
				Escribir "Ingrese el copias disponibles para el libro " , titulos[cantidadLibros];
				Leer copiasDisponibles[cantidadLibros];
				cantidadLibros = cantidadLibros + 1;
				
				Escribir "El libro ", titulos[cantidadLibros - 1], " fue agregado correctamente.";
				Escribir "Presione cualquier tecla para continuar.";
				Esperar Tecla;
			2:
				Borrar Pantalla;
				Escribir "Estos son los libros que puedes actualizar: ";
				Escribir "";
				mostrarLibros(titulos, autores, copiasDisponibles, cantidadLibros);
				
				Escribir "";
				Escribir "Ingrese el n�mero del libro que desea actualizar: ";
				Leer libroActual;
				
				Escribir "";
				Escribir "Opciones para actualizar el libro ", titulos[libroActual - 1];
				Escribir "1. Actualizar el t�tulo (", titulos[libroActual - 1], ").";
				Escribir "2. Actualizar el autor (", autores[libroActual - 1], ").";
				Escribir "3. Actualizar las copias disponibles (", copiasDisponibles[libroActual - 1], ").";
				Escribir "Ingrese la opci�n del elemento que quiere actualizar del libro: ";
				Leer opcionActualizar;
				
				Segun opcionActualizar Hacer
					1:
						Escribir "Ingrese el titulo del libro " , titulos[libroActual - 1];
						Leer titulos[libroActual - 1];
					2:
						Escribir "Ingrese el autor del libro " , titulos[libroActual - 1];
						Leer autores[libroActual - 1];
					3:
						Escribir "Ingrese las copias disponibles para el libro " , titulos[libroActual - 1];
						Leer copiasDisponibles[libroActual - 1];
					De Otro Modo:
						Escribir "Ingresaste una opci�n incorrecta.";
				FinSegun
				
				Escribir "";
				Escribir "Actualizaci�n terminada correctamente.";
				Escribir "Presione une tecla para continuar.";
				Esperar Tecla;
			3:
				Borrar Pantalla;
				buscarPorTitulo(titulos, autores, copiasDisponibles, cantidadLibros);
				Escribir "Presione une tecla para continuar.";
				Esperar Tecla;
			4:
				Borrar Pantalla;
				Escribir "Los libros registrados son: ";
				Escribir "";
				mostrarLibros(titulos, autores, copiasDisponibles, cantidadLibros);
				Escribir "";
				Escribir "Presione une tecla para continuar.";
				Esperar Tecla;
			5:
				Borrar Pantalla;
				Escribir "Los libros para prestar son: ";
				Escribir "";
				mostrarLibros(titulos, autores, copiasDisponibles, cantidadLibros);
				Escribir "";
				Escribir "Ingrese el n�mero del libro que desea prestar: ";
				Leer libroActual;
				
				Si (copiasDisponibles[libroActual - 1] > 0) Entonces
					copiasDisponibles[libroActual - 1] = copiasDisponibles[libroActual - 1] - 1;
					Escribir "Prestaste exitosamente el libro ", titulos[libroActual - 1];
				SiNo	
					Escribir "No podemos prestar el libro porque no tiene copias disponibles.";
				FinSi
				
				Escribir "";
				Escribir "Presione une tecla para continuar.";
				Esperar Tecla;
			6:
				Escribir "Vuelva pronto.";
		FinSegun
	Hasta Que opcion == 6
FinAlgoritmo
Funcion opcion = leerOpcion()
	Definir opcion Como Entero;
	
	Repetir
		Borrar Pantalla;
		obtenerMenu();
		Escribir "Ingresa el n�mero de la operaci�n que deseas realizar: ";
		Leer opcion;
		
		Si (opcion < 1 | opcion > 6) Entonces
			Borrar Pantalla;
			Escribir "************** ERROR **************";
			Escribir "La opci�n ingresada no es correcta.";
			Escribir "La opci�n debe estar entre 1 y 6.";
			Escribir "Presione une tecla para continuar.";
			Esperar Tecla;
		FinSi
	Hasta Que opcion >= 1 & opcion <= 6
FinFuncion

Funcion mostrarLibros(titulos, autores, copiasDisponibles, cantidadLibros)
	Definir i Como Entero;
	Para i = 0 Hasta cantidadLibros - 1 Hacer
		Escribir i + 1, ". ", titulos[i], " - ", autores[i], ": ", copiasDisponibles[i];
	FinPara
FinFuncion

Funcion buscarPorTitulo(titulos, autores, copiasDisponibles, cantidadLibros)
	Definir i, indiceLibro Como Entero;
	Definir tituloABuscar Como Caracter;
	Escribir "Ingresa el t�tulo del libro que quieres buscar: ";
	Leer tituloABuscar;
	indiceLibro = -1;
	
	Para i = 0 Hasta cantidadLibros - 1 Hacer
		Si (tituloABuscar == titulos[i]) Entonces
			indiceLibro = i;
		FinSi
	FinPara
	
	Si (indiceLibro == -1) Entonces
		Escribir "No encontramos el libro.";
	SiNo
		Escribir titulos[indiceLibro], " - ", autores[indiceLibro], ": ", copiasDisponibles[indiceLibro];
	FinSi
FinFuncion


Funcion obtenerMenu()
	Escribir "============ MEN� ============";
	Escribir "1. Agregar libro";
	Escribir "2. Actualizar informaci�n.";
	Escribir "3. Buscar libro por t�tulo";
	Escribir "4. Mostrar todos los libros.";
	Escribir "5. Prestar libro.";
	Escribir "6. Salir.";
FinFuncion