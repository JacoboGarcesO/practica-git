Algoritmo AdministradorTareas
	Definir tareas Como Caracter;
	Definir sonCompletadas Como Logico;
	Definir operacion, cantidadTareas, confirmacion Como Entero;
	Dimension tareas[1000], sonCompletadas[1000];
	cantidadTareas = 0;
	
	Repetir
		operacion = leerOpcion();
		
		Segun operacion Hacer
			1:
				confirmacion = agregarTarea(tareas, sonCompletadas, cantidadTareas);
				Si (confirmacion == 1 ) Entonces
					cantidadTareas = cantidadTareas + 1;	
				FinSi
			2:
			3:
			4:
			5:
			6:
			7:
			8:
				Escribir "¡Vuelva pronto!";
		FinSegun
	Hasta Que operacion == 8
FinAlgoritmo

Funcion confirmacion = agregarTarea(tareas, sonCompletadas, cantidadTareas)
	Definir tarea Como Caracter;
	Definir confirmacion Como Entero;
	Escribir "Ingrese el nombre de la tarea #", cantidadTareas + 1;
	Leer tarea;
	Escribir "La tarea que creaste fue: ", tarea;
	Esperar 3 segundos;
	confirmacion = confirmarOperacion("¿Estás seguro que deseas agregar esta tarea?");
	Si (confirmacion == 1) Entonces
		tareas[cantidadTareas] = tarea;
		sonCompletadas[cantidadTareas] = Falso;
		Escribir "¡La tareas se agregó exitosamente!";
		Escribir "Presiona una tecla para volver al menú...";
		Esperar Tecla;
	FinSi
FinFuncion

Funcion confirmacion = confirmarOperacion(mensaje)
	Definir confirmacion Como Entero;
	
	Repetir
		Borrar Pantalla;
		Escribir "============== PANTALLA DE CONFIRMACIÓN ==============";
		Escribir mensaje;
		Escribir "1. Sí.";
		Escribir "2. No.";
		Escribir "| INGRESA EL NÚMERO DE LA OPCIÓN QUE QUIERES REALIZAR |";
		Leer confirmacion;
		
		Si confirmacion <> 1 & confirmacion <> 2 Entonces
			Borrar Pantalla;
			Escribir "XXXXXXXXXXXXXXX | ERROR | XXXXXXXXXXXXXXX";
			Escribir "La opción que ingresaste debe estar entre 1 y 2.";
			Escribir "Presiona una tecla para intentarlo de nuevo...";
			Esperar Tecla;
		FinSi
	Hasta Que confirmacion == 1 | confirmacion == 2
FinFuncion

Funcion operacion = leerOpcion()
	Definir operacion Como Entero;
	
	Repetir
		mostrarMenu();
		Leer operacion;
		
		Si (operacion < 1 | operacion > 8) Entonces
			Borrar Pantalla;
			Escribir "XXXXXXXXXXXXXXX | ERROR | XXXXXXXXXXXXXXX";
			Escribir "La opción que ingresaste debe estar entre 1 y 8.";
			Escribir "Presiona una tecla para intentarlo de nuevo...";
			Esperar Tecla;
		FinSi
	Hasta Que (operacion >= 1 & operacion <= 8)
FinFuncion

Funcion mostrarMenu()
	Borrar Pantalla;
	Escribir "========================= | MENÚ | =========================";
	Escribir "1. Agregar tareas.";
	Escribir "2. Eliminar tareas.";
	Escribir "3. Actualizar tareas.";
	Escribir "4. Marcar tareas como completadas.";
	Escribir "5. Mostrar todas las tareas pendientes.";
	Escribir "6. Mostrar todas las tareas completadas.";
	Escribir "7. Mostrar todas las tareas.";
	Escribir "8. Salir.";
	Escribir "";
	Escribir "| INGRESA EL NÚMERO DE LA OPCIÓN QUE QUIERES REALIZAR |";
FinFuncion
