Algoritmo GestorContactos
	Definir opcion, numeros, tamanio, i, contactoActual, opcionActualizar Como Entero;
	Definir nombres, direcciones Como Caracter;
	Dimension nombres[1000], direcciones[1000], numeros[1000];
	tamanio = 0;
	
	Repetir
		opcion = leerOpcion();
		
		Segun opcion Hacer
			1:
				Escribir "Ingrese el nombre del contacto #", tamanio + 1, ": ";
				Leer nombres[tamanio];
				Escribir "Ingrese el número de ", nombres[tamanio], ": ";
				Leer numeros[tamanio];
				Escribir "Ingrese la dirección de ", nombres[tamanio], ": ";
				Leer direcciones[tamanio];
				tamanio = tamanio + 1;
				Escribir "El contacto se agregó exitosamente. Para volver al menú principal presione cualquier tecla.";
				Esperar Tecla;
			2:
				Escribir "Los contactos que puedes actualizar son: ";
				Para i = 0 Hasta tamanio - 1 Hacer
					Escribir i + 1, ". ", nombres[i], " - ", numeros[i], " - ", direcciones[i];
				FinPara
				Escribir "Ingrese el número del contacto que desea actualizar: ";
				Leer contactoActual;
				
				Repetir
					Escribir "============= MENÚ =============";
					Escribir "1. Nombre.";
					Escribir "2. Numero.";
					Escribir "3. Direccion.";
					Escribir "4. Volver al menú."; 
					Escribir "Ingrese el número de la operación que desea realizar: ";
					Leer opcionActualizar;
					
					Segun opcionActualizar Hacer
						1:
							Escribir "Ingrese el nuevo nombre de ", nombres[contactoActual - 1], ": ";
							Leer nombres[contactoActual - 1];
						2:
							Escribir "Ingrese el nuevo número de ", nombres[contactoActual - 1], ": ";
							Leer numeros[contactoActual - 1];
						3:
							Escribir "Ingrese la nueva dirección de ", nombres[contactoActual - 1], ": ";
							Leer direcciones[contactoActual - 1];
					FinSegun
				Hasta Que opcionActualizar == 4
			3:
			4:
				Para i = 0 Hasta tamanio - 1 Hacer
					Escribir i + 1, ". ", nombres[i], " - ", numeros[i], " - ", direcciones[i];
				FinPara
				Escribir "Para volver al menú principal presione cualquier tecla.";
				Esperar Tecla;
			5:
			De Otro Modo:
		FinSegun
	Hasta Que opcion == 6
FinAlgoritmo

Funcion opcion = leerOpcion()
	Definir opcion Como Entero;
	
	Repetir
		Escribir "============= MENÚ =============";
		Escribir "1. Agregar contacto.";
		Escribir "2. Actualizar contacto.";
		Escribir "3. Buscar contacto.";
		Escribir "4. Ver todos los contactos.";
		Escribir "5. Eliminar contacto.";
		Escribir "6. Salir."; 
		Escribir "Ingrese el número de la operación que desea realizar: ";
		Leer opcion;
		
		Si (opcion < 1 | opcion > 6) Entonces
			Escribir "La opción que ingresaste no es válida.";
		FinSi
	Hasta Que opcion >= 1 & opcion <= 6
FinFuncion
