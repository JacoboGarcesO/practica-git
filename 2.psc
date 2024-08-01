Algoritmo sin_titulo
	Definir tareas, auxiliar Como Caracter;
	Definir sonCompletadas Como Logico;
	Definir opcion, tamanio, i, tareaActual Como Entero;
	tamanio = 0;
	Dimension tareas[100];
	Dimension sonCompletadas[100];

	Repetir
		Escribir "===== MENÚ =====";
		Escribir "1. Agregar tarea";
		Escribir "2. Eliminar tarea";
		Escribir "3. Actualizar tarea";
		Escribir "4. Marcar tarea como completada";
		Escribir "5. Mostrar todas las tareas pendientes";
		Escribir "6. Mostrar todas las tareas completadas";
		Escribir "7. Mostrar todas las tareas";
		Escribir "8. Salir";
		Escribir "Ingrese una opción: ";
		Leer opcion;
		
		Segun opcion Hacer
			1:
				Escribir "Ingrese el nombre de la tarea que desea agregar: ";
				Leer tareas[tamanio];
				sonCompletadas[tamanio] = Falso;
				tamanio = tamanio + 1;
				
				Escribir "Tarea agregada con éxito, para regresar al menú presione enter: ";
				Leer auxiliar;
			2:
				Escribir "Las tareas que puedes eliminar son: ";
				Para i = 0 Hasta tamanio - 1 Con Paso 1 Hacer
					Si (sonCompletadas[i]) Entonces
						Escribir i + 1, ". Completada - ", tareas[i];
					SiNo
						Escribir i + 1, ". Sin completar - ", tareas[i];
					FinSi
				FinPara
				
				Escribir "Ingresa el número de la tarea que quieres eliminar: ";
				Leer tareaActual;
				tamanio = tamanio - 1;
				
				Para i = 0 Hasta tamanio - 1 Con Paso 1 Hacer
					Si (i < tareaActual - 1) Entonces
						tareas[i] = tareas[i];
						sonCompletadas[i] = sonCompletadas[i];
					SiNo
						tareas[i] = tareas[i + 1];
						sonCompletadas[i] = sonCompletadas[i + 1];
					FinSi
				FinPara
				
				Escribir "Tarea eliminada con éxito, para regresar al menú presione enter: ";
				Leer auxiliar;
			3:
				Escribir "Las tareas que puedes actualizar son: ";
				Para i = 0 Hasta tamanio - 1 Con Paso 1 Hacer
					Si (sonCompletadas[i]) Entonces
						Escribir i + 1, ". Completada - ", tareas[i];
					SiNo
						Escribir i + 1, ". Sin completar - ", tareas[i];
					FinSi
				FinPara
				
				Escribir "Ingresa el número de la tarea que quieres actualizar: ";
				Leer tareaActual;
				
				Escribir "Esta es la tarea qe vas a actualizar: ";
				
				Si (sonCompletadas[tareaActual - 1]) Entonces
					Escribir "Completada - ", tareas[tareaActual - 1];
				SiNo
					Escribir "Sin completar - ", tareas[tareaActual - 1];
				FinSi
				
				Escribir "Ingresa el nuevo nombre de la tarea: ";
				Leer tareas[tareaActual - 1];
				Escribir "Tarea actualizada con éxito, para regresar al menú presione enter: ";
				Leer auxiliar;
			4:
			5:
			6:
			7:
				Para i = 0 Hasta tamanio - 1 Con Paso 1 Hacer
					Si (sonCompletadas[i]) Entonces
						Escribir i + 1, ". Completada - ", tareas[i];
					SiNo
						Escribir i + 1, ". Sin completar - ", tareas[i];
					FinSi
				FinPara
				
				Escribir "Tareas mostradas con éxito, para regresar al menú presione enter: ";
				Leer auxiliar;
			8:
				Escribir "¡Vuelve pronto!";
			De Otro Modo:
				Escribir "Opción incorrecta.";
		FinSegun
	Hasta Que opcion == 8
FinAlgoritmo
