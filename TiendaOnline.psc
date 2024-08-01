Algoritmo TiendaOnline
	Definir elegir, i, j, t, fila, columna, pagina, producto, precio, cantidad, l, maximo, decidir, dinero, siONo, confirmar Como Entero;
	Definir nombre, seleccionar, password Como Caracter;
	fila = 3;
	columna = 3;
	pagina = 3;
	l = 0;
	Dimension dinero[1], password[1];
	dinero[0] = 0;
	Dimension producto[1000, 1000, 1000], precio[1000, 1000, 1000], cantidad[1000, 1000, 1000], nombre[1000, 1000, 1000], maximo[1000, 1000, 1000];
	producto[0,0,0] = 1; nombre[0,0,0] = "Celular"; precio[0,0,0] = 1000000; cantidad[0,0,0] = 0; 
	producto[1,0,0] = 2; nombre[1,0,0] = "Cpu"; precio[1,0,0] = 800000; cantidad[1,0,0] = 0; 
	producto[2,0,0] = 3; nombre[2,0,0] = "Mouse"; precio[2,0,0] = 70000; cantidad[2,0,0] = 0; 
	producto[0,1,0] = 4; nombre[0,1,0] = "Teclado"; precio[0,1,0] = 75000; cantidad[0,1,0] = 0; 
	producto[0,2,0] = 5; nombre[0,2,0] = "Monitor"; precio[0,2,0] = 600000; cantidad[0,2,0] = 0; 
	producto[1,1,0] = 6; nombre[1,1,0] = "Cargador"; precio[1,1,0] = 50000; cantidad[1,1,0] = 0; 
	producto[1,2,0] = 7; nombre[1,2,0] = "Auriculares"; precio[1,2,0] = 35000; cantidad[1,2,0] = 0; 
	producto[2,1,0] = 8; nombre[2,1,0] = "Microfono"; precio[2,1,0] = 40000; cantidad[2,1,0] = 0; 
	producto[2,2,0] = 9; nombre[2,2,0] = "Camara"; precio[2,2,0] = 50000; cantidad[2,2,0] = 0; 
	
	producto[0,0,1] = 1; nombre[0,0,1] = "Colores"; precio[0,0,1] = 50000; cantidad[0,0,1] = 0; 
	producto[1,0,1] = 2; nombre[1,0,1] = "Marcadores"; precio[1,0,1] = 50000; cantidad[1,0,1] = 0; 
	producto[2,0,1] = 3; nombre[2,0,1] = "Libretas"; precio[2,0,1] = 5000; cantidad[2,0,1] = 0; 
	producto[0,1,1] = 4; nombre[0,1,1] = "Tijeras"; precio[0,1,1] = 3000; cantidad[0,1,1] = 0; 
	producto[0,2,1] = 5; nombre[0,2,1] = "Resaltadores"; precio[0,2,1] = 55000; cantidad[0,2,1] = 0; 
	producto[1,1,1] = 6; nombre[1,1,1] = "Plumones"; precio[1,1,1] = 50000; cantidad[1,1,1] = 0; 
	producto[1,2,1] = 7; nombre[1,2,1] = "Acuarelas"; precio[1,2,1] = 30000; cantidad[1,2,1] = 0; 
	producto[2,1,1] = 8; nombre[2,1,1] = "Pinturas"; precio[2,1,1] = 10000; cantidad[2,1,1] = 0; 
	producto[2,2,1] = 9; nombre[2,2,1] = "Pinceles"; precio[2,2,1] = 20000; cantidad[2,2,1] = 0; 
	
	producto[0,0,2] = 1; nombre[0,0,2] = "Bowl"; precio[0,0,2] = 30000; cantidad[0,0,2] = 0; 
	producto[1,0,2] = 2; nombre[1,0,2] = "Cuchillos"; precio[1,0,2] = 40000; cantidad[1,0,2] = 0; 
	producto[2,0,2] = 3; nombre[2,0,2] = "Cucharas"; precio[2,0,2] = 20000; cantidad[2,0,2] = 0; 
	producto[0,1,2] = 4; nombre[0,1,2] = "Tenedores"; precio[0,1,2] = 20000; cantidad[0,1,2] = 0; 
	producto[0,2,2] = 5; nombre[0,2,2] = "Cuchillitos"; precio[0,2,2] = 20000; cantidad[0,2,2] = 0; 
	producto[1,1,2] = 6; nombre[1,1,2] = "Platos"; precio[1,1,2] = 100000; cantidad[1,1,2] = 0; 
	producto[1,2,2] = 7; nombre[1,2,2] = "Pocillos"; precio[1,2,2] = 90000; cantidad[1,2,2] = 0; 
	producto[2,1,2] = 8; nombre[2,1,2] = "Sartenes"; precio[2,1,2] = 110000; cantidad[2,1,2] = 0; 
	producto[2,2,2] = 9; nombre[2,2,2] = "Ollas"; precio[2,2,2] = 150000; cantidad[2,2,2] = 0; 
	para i = 0 Hasta fila - 1 Hacer
		para j = 0 Hasta columna - 1 Hacer
			para t = 0 Hasta pagina - 1 Hacer
				maximo[i,j,t] = 100;
			FinPara
		FinPara
	FinPara
	
	Repetir
		elegir = opciones(dinero);
		Segun elegir Hacer
			
			0:
				ingresarDinero(dinero);
				
			1: 
				Repetir
					l = navegar(producto, nombre, precio, cantidad, fila, columna, pagina, l, dinero);
					leer seleccionar;
					
					Segun seleccionar Hacer
						"a": si l > 0 Entonces
								l = l - 1;
							FinSi
							Borrar Pantalla;
							
						"d": si l < pagina - 1 Entonces
								l = l + 1;
							FinSi
							Borrar Pantalla;
							
						"0": 
							Escribir "Está seguro que desea comprar algo?";
							Escribir "1. Confirmar / 2. Volver";
							Repetir
								Leer siONo;
								si siONo < 1 | siONo > 2 Entonces
									Escribir "Opción no valida";
								FinSi
								
							Hasta Que siONo == 1 | siONo == 2
							
							Segun siONo Hacer
								1:addAlCarro(producto, nombre, precio, cantidad, fila, columna, pagina, l, maximo, dinero);
									
								2:
									Escribir "Presione una tecla para volver";
									Esperar Tecla;
									Borrar Pantalla;
									
							FinSegun
							
							
						"x": 
							Escribir "Volviendo" Sin Saltar;
							Esperar 1 Segundos;
							Escribir "." Sin Saltar;
							Esperar 1 Segundos;
							Escribir "." Sin Saltar;
							Esperar 1 Segundos;
							Escribir "." Sin Saltar;
							Esperar 1 Segundos;
							Borrar Pantalla;
							
						De Otro Modo:
							Borrar Pantalla;
							
					FinSegun;
					
				Hasta Que seleccionar == "x"; 
				
				
				
			2: 
				Repetir
					decidir = actualizarCantidad(producto, nombre, precio, cantidad, fila, columna, pagina, l, maximo, dinero);
				Hasta Que decidir == 2
				
			3:
				totalDelCarro(producto, nombre, precio, cantidad, fila, columna, pagina, maximo, dinero);
				
			4:
				Inventario(producto, nombre, precio, cantidad, fila, columna, pagina, maximo, dinero);
				
			5:
				eliminarProducto(producto, nombre, precio, cantidad, fila, columna, pagina, maximo, dinero);
				
			6:
				elegir = salir();
				
			7:
				password[0] = "";
				Repetir
					decidir = administracion(dinero, password);
					Segun decidir Hacer
						0:
							administrarDinero(dinero);
						1:
							administrarPorProducto(producto, nombre, precio, cantidad, fila, columna, pagina, maximo, dinero);
						2:
							confirmar = confirmarCambiarTodo();
							si confirmar == 1 Entonces
								Borrar Pantalla;
								fila = 0;
								columna = 0;
								pagina = 0;
								Repetir
									
									Escribir "Ingrese el tamaño de la fila. Productos: 0";
									Repetir
										Leer fila;
										si fila > 5 | fila < 1 Entonces
											Escribir "Debes ingresar un valor superior a 0 e inferior a 5";
										FinSi
									Hasta Que fila <= 5 & fila >= 1
									
									Escribir "Ingrese el tamaño de la columna. Productos: ", fila;
									Repetir
										Leer columna;
										si columna < 1 Entonces
											Escribir "Debes ingresar un valor superior a 0";
										FinSi
										si (columna * fila) > 999 Entonces
											Escribir "Productos: ", fila * columna, ". El máximo de productos debe ser de 999";
										FinSi
										
									Hasta Que columna >= 1 & (columna * fila) < 999
									
									Escribir "Ingrese la cantidad de páginas. Productos: ", fila * columna;
									Repetir
										Leer pagina;
										si pagina < 1 Entonces
											Escribir "Debes ingresar un valor superior a 0";
										FinSi
										si (pagina * columna * fila) > 999 Entonces
											Escribir "Productos: ", fila * columna * pagina, ". El máximo de productos debe ser de 999";
										FinSi
										
									Hasta Que columna >= 1 & (pagina * columna * fila) < 999
									
									
								Hasta Que pagina * columna * fila <= 999;
								
								Escribir "Productos: ", fila * columna * pagina, ". Presione una tecla para ir al siguiente paso";
								Esperar Tecla;
								
								cambiarTodo(producto, nombre, precio, cantidad, fila, columna, pagina, maximo, dinero);
								Escribir "Actualizando" Sin Saltar;
								Esperar 1 Segundos;
								Escribir "." Sin Saltar;
								Esperar 1 Segundos;
								Escribir "." Sin Saltar;
								Esperar 1 Segundos;
								Escribir ".";
								Esperar 1 Segundos;
								Escribir "Actualización completada. Presione una tecla para volver.";
								Esperar Tecla;
								Borrar Pantalla;
								
							FinSi
							
							
							
						3:
							administrarCarro(producto, nombre, precio, cantidad, fila, columna, pagina, maximo, dinero);
							
						4:
							
							
					FinSegun
					
				Hasta Que decidir == 4
				
		FinSegun
		
	Hasta Que elegir == 66 
	
FinAlgoritmo
Funcion administrarCarro(producto, nombre, precio, cantidad, fila, columna, pagina, maximo, dinero)
	Definir i, j, l, co, u, t, num, elegir Como Entero;
	Dimension num[fila, columna, pagina];
	
	Escribir "Elija el producto: ";
	co = 0;
	para l = 0 Hasta  pagina - 1 Hacer
		para i = 0 Hasta  columna - 1 Hacer
			para j = 0 Hasta fila - 1 Hacer
				co = co + 1;
				num[j,i,l] = co;
				Escribir " producto ", co ": ", nombre[j,i,l] Sin Saltar;
				u = 0;
				t = co;
				Mientras t > 0 Hacer
					t = trunc(t/10);
					u = u + 1;
				FinMientras
				si u = 0 Entonces
					u = 1;
				FinSi
				
				Para t = Longitud(nombre[j,i,l]) + u + 4 Hasta 21 Hacer
					Escribir " " Sin Saltar;
					
				FinPara
				
				Escribir "| En el carro: ", cantidad[j,i,l] Sin Saltar; 
				u = 0;
				t = cantidad[j,i,l];
				Mientras t > 0 Hacer
					t = trunc(t/10);
					u = u + 1;
				FinMientras
				si u == 0 Entonces
					u = 1;
				FinSi
				
				Para t = u + 14 Hasta 20 Hacer
					Escribir " " Sin Saltar;
					
				FinPara
				
				Escribir "|";
				
				
				
			FinPara
		FinPara
	FinPara
	Repetir
		Leer elegir;
		si elegir <= 0 | elegir > (pagina * columna * fila) Entonces
			Escribir "Esa no es una opción disponible, vuelva a elegir";
		FinSi
	Hasta Que elegir > 0 & elegir <= (pagina * columna * fila)
	
	para l = 0 Hasta pagina - 1 Hacer
		para i = 0 Hasta columna - 1 Hacer
			para j = 0 Hasta fila - 1 Hacer
				si num[j,i,l] == elegir Entonces
					
					Escribir "Ingrese la cantidad que desea tener.";
					Repetir
						Leer cantidad[j,i,l];
						
						si cantidad[j,i,l] < 0 | cantidad[j,i,l] > 1000000 Entonces
							Escribir "La cantidad que puedes tener en el carro es de 0 a 1000000";
							
						FinSi
						
					Hasta Que cantidad[j,i,l] >= 0 & cantidad[j,i,l] <= 1000000
					
					
					l = pagina - 1;
					
				FinSi
				
			FinPara
		FinPara
	FinPara
	
	Escribir "Cantidad actualizada. Presione una tecla para volver.";
	Esperar Tecla;
	Borrar Pantalla;
	
FinFuncion


Funcion cambiarTodo(producto, nombre, precio, cantidad, fila, columna, pagina, maximo, dinero)
	Definir i, j, l, c Como Entero;
	
	Para l = 0 Hasta pagina - 1 Hacer
		c = 0;
		Para i = 0 Hasta columna - 1 Hacer
			Para j = 0 Hasta fila - 1 Hacer
				c = c + 1;
				producto[j,i,l] = c;
				cantidad[j,i,l] = 0;
				
				Escribir "Ingrese el nombre del producto #", producto[j,i,l], " de la página ", l + 1;
				Repetir
					Leer nombre[j,i,l];
					si Longitud(nombre[j,i,l]) > 15 Entonces
						Escribir "El nombre debe tener como máximo 15 carácteres. Ingrese otro.";
					FinSi
				Hasta Que Longitud(nombre[j,i,l]) <= 15
				
				Escribir "Ingrese el precio del producto: ", nombre[j,i,l];
				Repetir
					Leer precio[j,i,l];
					si precio[j,i,l] > 99999999 Entonces
						Escribir "El precio máximo es de: 99999999";
					FinSi
				Hasta Que precio[j,i,l] <= 99999999
				
				Escribir "Ingrese la cantidad en venta del producto: ", nombre[j,i,l];
				Repetir
					Leer maximo[j,i,l];
					si maximo[j,i,l] > 1000000 Entonces
						Escribir "La cantidad máxima es de: 1000000";
					FinSi
				Hasta Que maximo[j,i,l] <= 1000000
				
			FinPara
		FinPara
	FinPara
	
	
FinFuncion

Funcion confirmar = confirmarCambiarTodo()
	Definir confirmar Como Entero;
	Escribir "Si prosigues tendrás que cambiar todo desde el comienzo. ¿Deseas continuar?";
	Escribir "1. Sí / 2. No ";
	Repetir
		Leer confirmar;
		si confirmar < 1 | confirmar > 2
			Escribir "Esa no es una opción disponible, vuelva a elegir";
		FinSi
	Hasta Que confirmar == 1 | confirmar == 2
	
FinFuncion

Funcion administrarPorProducto(producto, nombre, precio, cantidad, fila, columna, pagina, maximo, dinero)
	Definir i, j, l, co, u, t, cambiar, num, elegir Como Entero;
	Dimension num[fila, columna, pagina];
	
	Escribir "Eliga que producto cambiar: ";
	co = 0;
	para l = 0 Hasta  pagina - 1 Hacer
		para i = 0 Hasta  columna - 1 Hacer
			para j = 0 Hasta fila - 1 Hacer
				co = co + 1;
				num[j,i,l] = co;
				Escribir " producto ", co ": ", nombre[j,i,l] Sin Saltar;
				u = 0;
				t = co;
				Mientras t > 0 Hacer
					t = trunc(t/10);
					u = u + 1;
				FinMientras
				si u = 0 Entonces
					u = 1;
				FinSi
				
				Para t = Longitud(nombre[j,i,l]) + u + 4 Hasta 21 Hacer
					Escribir " " Sin Saltar;
					
				FinPara
				
				Escribir "| Actualmente En Venta: ", maximo[j,i,l] Sin Saltar; 
				u = 0;
				t = maximo[j,i,l];
				Mientras t > 0 Hacer
					t = trunc(t/10);
					u = u + 1;
				FinMientras
				si u == 0 Entonces
					u = 1;
				FinSi
				
				Para t = u + 14 Hasta 20 Hacer
					Escribir " " Sin Saltar;
					
				FinPara
				
				Escribir "| El costo por cada unidad: ", precio[j,i,l] Sin Saltar;
				
				u = 0;
				t = precio[j,i,l];
				Mientras t > 0 Hacer
					t = trunc(t/10);
					u = u + 1;
				FinMientras
				si u = 0 Entonces
					u = 1;
				FinSi
				
				Para t = u + 4 Hasta 20 Hacer
					Escribir " " Sin Saltar;
					
				FinPara
				
				Escribir "";
				
				
			FinPara
		FinPara
	FinPara
	Repetir
		Leer cambiar;
		si cambiar <= 0 | cambiar > (pagina * columna * fila) Entonces
			Escribir "Esa no es una opción disponible, vuelva a elegir";
		FinSi
	Hasta Que cambiar > 0 & cambiar <= (pagina * columna * fila)
	
	para l = 0 Hasta pagina - 1 Hacer
		para i = 0 Hasta columna - 1 Hacer
			para j = 0 Hasta fila - 1 Hacer
				si num[j,i,l] == cambiar Entonces
					
					Repetir
						Escribir "1. Cambiar Nombre Del Producto.";
						Escribir "2. Cambiar Número De Productos En Venta.";
						Escribir "3. Cambiar El Precio Del Producto.";
						Escribir "4. Salir.";
						Leer elegir;
						si elegir < 1 | elegir > 4 Entonces
							Escribir "Esa no es una opción disponible, vuelva a elegir";
						FinSi
						Segun elegir Hacer
							1: 
								Escribir "Ingrese el nuevo nombre del producto: ";
								Repetir
									Leer nombre[j,i,l];
									si Longitud(nombre[j,i,l]) > 15 Entonces
										Escribir "El nombre debe tener como máximo 15 carácteres. Ingrese otro.";
									FinSi
								Hasta Que Longitud(nombre[j,i,l]) <= 15
								Escribir "Nombre cambiado con éxito. Presione una tecla para volver.";
								Esperar Tecla;
								
							2:
								Escribir "Ingrese la nueva cantidad de producto en venta: ";
								Repetir
									Leer maximo[j,i,l];
									si maximo[j,i,l] > 1000000 Entonces
										Escribir "La cantidad máxima es de: 1000000";
									FinSi
								Hasta Que maximo[j,i,l] <= 1000000
								Escribir "Cantidad cambiada con éxito. Presione una tecla para volver.";
								Esperar Tecla;
								
							3:
								Escribir "Ingrese el nuevo precio del producto: ";
								Repetir
									Leer precio[j,i,l];
									si precio[j,i,l] > 99999999 Entonces
										Escribir "El precio máximo es de: 99999999";
									FinSi
								Hasta Que precio[j,i,l] <= 99999999
								Escribir "Precio cambiado con éxito. Presione una tecla para volver.";
								Esperar Tecla;
								
							4:
								
						FinSegun
					Hasta Que elegir == 4
					
					
					l = pagina - 1;
					
				FinSi
				
			FinPara
		FinPara
	FinPara
	
	Escribir "Presione una tecla para salir.";
	Esperar Tecla;
	Borrar Pantalla;
	
FinFuncion

Funcion administrarDinero(dinero)
	Definir administrar Como Entero;
	Escribir "Dinero actual: $", dinero[0];
	Escribir "Escriba la cantidad de dinero que desea tener, esto reemplazará el valor que tienes actualmente";
	Repetir
		Leer administrar;
		si administrar <= 0 Entonces
			Escribir "Debes ingresar números positivos";
		FinSi
	Hasta Que administrar > 0 
	dinero[0] = administrar;
	Escribir "Dinero actual: $", dinero[0];
	
	Escribir "Cambio hecho con éxito. Presione una tecla para volver.";
	Esperar Tecla;
	Borrar Pantalla;
	
FinFuncion

Funcion decidir = administracion(dinero, password)
	Definir decidir, c Como Entero;
	decidir = 10;
	c = 0;
	si password[0] <> "0000" Entonces
		Escribir "Espacio solo para administradores. Ingrese la contraseña para verificar si usted está autorizado.";
		Escribir "Te quedan ", 5 - c, " intentos";
		Repetir
			
			Leer password[0];
			si password[0] <> "0000" Entonces
				c = c + 1;
				Escribir "Contraseña incorrecta, te quedan ", 5 - c, " intentos.";
				
			FinSi
			si password[0] == "0000" Entonces
				Escribir "Contraseña correcta, presione una tecla para continuar.";
				Esperar Tecla;
				Borrar Pantalla;
			FinSi
		Hasta Que password[0] == "0000" | c = 5
	FinSi
	
	si password[0] == "0000" Entonces
		Repetir
			Escribir "----|Administración|----";
			Escribir "0. Cambiar Dinero";
			Escribir "1. Cambiar Producto.";
			Escribir "2. Cambiar Por Completo.";
			Escribir "3. Cambiar Cantidad.";
			Escribir "4. Salir";
			Leer decidir;
			si decidir < 0 | decidir > 4 Entonces
				Escribir "Opción incorrecta.";
				Esperar 1 Segundos;
				Borrar Pantalla;
				
			FinSi
			
		Hasta Que decidir >= 0 & decidir <= 4
		
	SiNo
		Escribir "Usted no está autorizado. Toque una tecla para volver.";
		Esperar Tecla;
		
	FinSi
	
	Borrar Pantalla;
	
	
FinFuncion

Funcion elegir = salir()
	Definir decidir, elegir Como Entero;
	Escribir "¿Seguro quieres salir? Se perderá todo el progreso y las configuraciones";
	Escribir "1. Sí / 2. No ";
	Repetir
		Leer decidir;
		si decidir < 1 | decidir > 2
			Escribir "Esa no es una opción disponible, vuelva a elegir";
		FinSi
	Hasta Que decidir == 1 | decidir == 2
	si decidir == 1 Entonces
		elegir = 66;
		Escribir "Saliendo" Sin Saltar;
		Esperar 1 Segundos;
		Escribir "." Sin Saltar;
		Esperar 1 Segundos;
		Escribir "." Sin Saltar;
		Esperar 1 Segundos;
		Escribir "." Sin Saltar;
		Esperar 1 Segundos;
		Escribir "";
	FinSi
	
	
FinFuncion

Funcion eliminarProducto(producto, nombre, precio, cantidad, fila, columna, pagina, maximo, dinero)
	Definir i, j, l, t, u, c, a, num, co, eliminar, decidir, confirmar Como Entero;
	Dimension num[fila, columna, pagina];
	Escribir "Dinero actual: $", dinero[0];
	co = 0;
	Escribir " __________________________";
	Escribir "/|        ELIMINAR        |\";
	para l = 0 Hasta  pagina - 1 Hacer
		para i = 0 Hasta  columna - 1 Hacer
			para j = 0 Hasta fila - 1 Hacer
				num[j,i,l] = 0;
				si cantidad[j,i,l] > 0 Entonces
					co = co + 1;
					num[j,i,l] = co;
					u = 0;
					a = num[j,i,l];
					Mientras  a > 0 Hacer
						a = trunc(a/10); 
						u = u + 1;
						
					FinMientras
					si u = 0 Entonces
						u = 1;
					FinSi
					
					Escribir " |------------------------|";
					Escribir " | ", num[j,i,l], ": ", nombre[j,i,l] Sin Saltar;
					para c = Longitud(nombre[j,i,l]) + u + 5 Hasta 24 Hacer
						Escribir " "Sin Saltar;
					FinPara
					Escribir "x|";
					
				FinSi
				
			FinPara
		FinPara
	FinPara
	Escribir " |------------------------|";
	Dimension t[co];
	u = 0;
	para l = 0 Hasta  pagina - 1 Hacer
		para i = 0 Hasta  columna - 1 Hacer
			para j = 0 Hasta fila - 1 Hacer
				si cantidad[j,i,l] > 0 Entonces
					t[u] = cantidad[j,i,l];
					u = u + 1;
					si u == co Entonces
						l = pagina - 1;
					FinSi
				FinSi
				
			FinPara
		FinPara
	FinPara
	
	
	Escribir "¿Desea eliminar algún producto?";
	Escribir "1. Sí / 2. No ";
	Repetir
		Leer decidir;
		si decidir < 1 | decidir > 2
			Escribir "Esa no es una opción disponible, vuelva a elegir";
		FinSi
	Hasta Que decidir == 1 | decidir == 2
	
	si decidir == 1 Entonces
		Escribir "¿Qué producto desea eliminar?";
		Repetir
			Leer eliminar;
			si eliminar < 1 | eliminar > co
				Escribir "Esa no es una opción disponible, vuelva a elegir";
			FinSi
		Hasta Que eliminar >= 1 & eliminar <= co
		
		Escribir "¿Estás seguro que quieres proseguir? Al eliminar un producto solo se te reembolsará un 50% del costo total";
		Escribir "1. Sí / 2. No ";
		Repetir
			Leer confirmar;
			si confirmar < 1 | confirmar > 2
				Escribir "Esa no es una opción disponible, vuelva a elegir";
			FinSi
		Hasta Que confirmar == 1 | confirmar == 2
		
		si confirmar == 1 Entonces
			Escribir "Eliminando producto"Sin Saltar;
			Esperar 1 Segundos;
			Escribir "." Sin Saltar;
			Esperar 1 Segundos;
			Escribir "." Sin Saltar;
			Esperar 1 Segundos;
			Escribir "." Sin Saltar;
			Esperar 1 Segundos;
			
			u = confirmar - 1;
			
			para l = 0 Hasta pagina - 1 Hacer
				para i = 0 Hasta columna - 1 Hacer
					para j = 0 Hasta fila - 1 Hacer
						si cantidad[j,i,l] == t[u] Entonces
							dinero[0] = dinero[0] + redon((precio[j,i,l] * cantidad[j,i,l]) * 0.5);
							cantidad[j,i,l] = 0;
							l = pagina - 1;
						FinSi
						
					FinPara
				FinPara
			FinPara
			
			
			Escribir "Producto eliminado con éxito. " Sin Saltar;
			
		FinSi
		
	FinSi
	
	
	
	
	Escribir "Presione una tecla para salir.";
	Esperar Tecla;
	Borrar Pantalla;
	
FinFuncion

Funcion inventario(producto, nombre, precio, cantidad, fila, columna, pagina, maximo, dinero)
	Definir i, j, l, t, u, c, num, co Como Entero;
	Dimension num[fila, columna, pagina];

	Escribir "Inventario: ";
	Escribir "Dinero actual: $", dinero[0];
	Escribir "En el carro: ";
	co = 0;
	Escribir "|--------------------|";
	para l = 0 Hasta  pagina - 1 Hacer
		para i = 0 Hasta  columna - 1 Hacer
			para j = 0 Hasta fila - 1 Hacer
				num[j,i,l] = 0;
				si cantidad[j,i,l] > 0 Entonces
					co = co + 1;
					num[j,i,l] = co;
					Escribir "|                    | #", num[j,i,l], ": ";
					Escribir "| ", nombre[j,i,l] Sin Saltar;
					para c = Longitud(nombre[j,i,l]) + 2 Hasta 20 Hacer
						Escribir " "Sin Saltar;
					FinPara
					Escribir "| Precio: ", precio[j,i,l];
					Escribir "|                    | Total: ", cantidad[j,i,l];
					Escribir "|--------------------|";
						
						
				FinSi
				
				
			FinPara
		FinPara
	FinPara

	Escribir "Presione una tecla para salir.";
	Esperar Tecla;
	Borrar Pantalla;
	
FinFuncion

Funcion totalDelCarro(producto, nombre, precio, cantidad, fila, columna, pagina, maximo, dinero)
	Definir i, j, l, t, q, u, c, x, num Como Entero;
	Definir total, totalProduc Como Real;
	Dimension num[fila, columna, pagina], totalProduc[fila, columna, pagina];
	total = 0;
	c = 0;
	
	Escribir "Dinero actual: $", dinero[0];
	para l = 0 Hasta pagina - 1 Hacer
		para i = 0 Hasta columna - 1 Hacer
			para j = 0 Hasta fila - 1 Hacer
				num[j,i,l] = 0;
				si cantidad[j,i,l] > 0 Entonces
					si cantidad[j,i,l] > 0 Entonces
						c = c + 1;
						num[j,i,l] = c;
						totalProduc[j,i,l] = precio[j,i,l] * cantidad[j,i,l];
						total = total + totalProduc[j,i,l]; 
						Escribir " producto ", num[j,i,l], ": ", nombre[j,i,l], " x ", cantidad[j,i,l] Sin Saltar;
						x = 0;
						u = 0;
						t = num[j,i,l];
						q = cantidad[j,i,l];
						Mientras q > 0 Hacer
							q = trunc(q/10);
							x = x + 1;
						FinMientras
						si x = 0 Entonces
							x = 1;
						FinSi
						Mientras t > 0 Hacer
							t = trunc(t/10);
							u = u + 1;
						FinMientras
						si u = 0 Entonces
							u = 1;
						FinSi
						
						Para t = Longitud(nombre[j,i,l]) + u + x Hasta 27 Hacer
							Escribir " " Sin Saltar;
							
						FinPara
						
						Escribir "| Valor total por producto: $", totalProduc[j,i,l] Sin Saltar; 
						u = 0;
						t = cantidad[j,i,l];
						Mientras t > 0 Hacer
							t = trunc(t/10);
							u = u + 1;
						FinMientras
						si u = 0 Entonces
							u = 1;
						FinSi
						
						Para t = u + 15 Hasta 20 Hacer
							Escribir " " Sin Saltar;
							
						FinPara
					FinSi
					Escribir "";
					
				FinSi
			FinPara
		FinPara
	FinPara
	Escribir "________________________________________________________";
	Escribir "Valor total del carrito: $", total;
	Escribir "Toca para volver";
	Esperar Tecla;
	Borrar Pantalla;
FinFuncion

Funcion decidir = actualizarCantidad(producto, nombre, precio, cantidad, fila, columna, pagina, l, maximo, dinero)
	Definir decidir, i, j, t, u, c, num, actualizar, cantidadAnterior, diferencia Como Entero;
	Dimension num[fila, columna, pagina];
	c = 0;
	
	Escribir "Desea actualizar la cantidad de unidades de un producto del carro?";
	Escribir "1. Sí / 2. No";
	Repetir
		Leer decidir;
		si decidir < 1 | decidir > 2
			Escribir "Esa no es una opción disponible, vuelva a elegir";
		FinSi
	Hasta Que decidir == 1 | decidir == 2;
	
	Segun decidir Hacer
		1:
			Escribir "Dinero actual: " dinero[0];
			Escribir "Elija el producto que desea actualizar: ";
			
			para l = 0 Hasta pagina - 1 Hacer
				para i = 0 Hasta columna - 1 Hacer
					para j = 0 Hasta fila - 1 Hacer
						num[j,i,l] = 0;
						si cantidad[j,i,l] > 0 Entonces
							c = c + 1;
							num[j,i,l] = c;
							Escribir " producto ", num[j,i,l], ": ", nombre[j,i,l] Sin Saltar;
							u = 0;
							t = num[j,i,l];
							Mientras t > 0 Hacer
								t = trunc(t/10);
								u = u + 1;
							FinMientras
							si u = 0 Entonces
								u = 1;
							FinSi
							
							Para t = Longitud(nombre[j,i,l]) + u + 4 Hasta 20 Hacer
								Escribir " " Sin Saltar;
								
							FinPara
							
							Escribir "| actualmente tienes: ", cantidad[j,i,l] Sin Saltar; 
							u = 0;
							t = cantidad[j,i,l];
							Mientras t > 0 Hacer
								t = trunc(t/10);
								u = u + 1;
							FinMientras
							si u = 0 Entonces
								u = 1;
							FinSi
							
							Para t = u + 15 Hasta 20 Hacer
								Escribir " " Sin Saltar;
								
							FinPara
							
							Escribir "| El costo por cada unidad: ", precio[j,i,l] Sin Saltar;
							
							u = 0;
							t = precio[j,i,l];
							Mientras t > 0 Hacer
								t = trunc(t/10);
								u = u + 1;
							FinMientras
							si u = 0 Entonces
								u = 1;
							FinSi
							
							Para t = u + 4 Hasta 20 Hacer
								Escribir " " Sin Saltar;
								
							FinPara
							
							Escribir "";
							
						FinSi
					FinPara
				FinPara
			FinPara
			
			Repetir
				Leer actualizar;
				si actualizar < 1 | actualizar > c  Entonces
					Escribir "Esta no es una opcion disponible";
					
				FinSi
			Hasta Que actualizar >= 1 & actualizar <= c
			
			para l = 0 Hasta pagina - 1 Hacer
				para i = 0 Hasta columna - 1 Hacer
					para j = 0 Hasta fila - 1 Hacer
						si num[j,i,l] == actualizar Entonces
							cantidadAnterior = cantidad[j,i,l];
							Repetir
								Escribir "Ingrese la nueva cantidad: ";
								Leer cantidad[j,i,l];
								diferencia = (cantidad[j,i,l] - cantidadAnterior) * precio[j,i,l];
								si dinero[0] - diferencia < 0 Entonces
									Escribir "No posees suficiente dinero";
								FinSi
								si cantidad[j,i,l] <= 0 Entonces
									Escribir "La cantidad mínima que puedes actualizar es a 1";
								FinSi
							Hasta Que dinero[0] - diferencia >= 0 & cantidad[j,i,l] > 0  
							
							
						FinSi
					FinPara
				FinPara
			FinPara
			
			dinero[0] = dinero[0] - diferencia;
			
			Escribir "Cantidad actualizada con exito, presione cualquier tecla para continuar";
			
			Escribir "Dinero actual: ", dinero[0];
			
			Esperar Tecla;
			
			Borrar Pantalla;
			
		2:
			
			Escribir "Volviendo" Sin Saltar;
			Esperar 1 Segundos;
			Escribir "." Sin Saltar;
			Esperar 1 Segundos;
			Escribir "." Sin Saltar;
			Esperar 1 Segundos;
			Escribir "." Sin Saltar;
			Esperar 1 Segundos;
			Borrar Pantalla;
			
	FinSegun
	
	
FinFuncion

Funcion addAlCarro(producto, nombre, precio, cantidad, fila, columna, pagina, l, maximo, dinero)
	Definir i, j, comprar, precioSeleccionado, cantidadSeleccionada, decidir, unidades, maximoSeleccionado Como Entero;
	Definir nombreSeleccionado, elegir Como Caracter;
	elegir = "";
	Escribir "Dinero actual: " dinero[0];
	Repetir
		Repetir
			Escribir "Seleccione el producto que desea comprar";
			Leer comprar;
			si comprar < 1 | comprar > (fila * columna)
				Escribir "No es una opción disponible. Presione una tecla para continuar";
				Esperar Tecla;
				
			FinSi
			
		Hasta Que comprar >= 1 & comprar <= (fila * columna);
		
		
		Para i = 0 Hasta columna - 1 Hacer
			para j = 0 Hasta fila - 1 Hacer
				si producto[j,i,l] = comprar Entonces
					nombreSeleccionado = nombre[j,i,l];
					precioSeleccionado = precio[j,i,l];
					cantidadSeleccionada = cantidad[j,i,l];
					maximoSeleccionado = maximo[j,i,l];
					
				FinSi
			FinPara
		FinPara
		
		si precioSeleccionado > dinero[0] Entonces
			Escribir "No tienes suficiente dinero";
			Escribir "Pesione x para salir o cualquier otra tecla para comprar otro artículo";
			Leer elegir;
		FinSi
		
	Hasta Que precioSeleccionado <= dinero[0] | elegir = "x";
	
	si precioSeleccionado <= dinero[0] & elegir <> "x" Entonces
		Escribir "Desea comprar: ";
		Escribir nombreSeleccionado, " con un precio de : ", precioSeleccionado;
		Escribir "Actualmente posees ", cantidadSeleccionada, " unidades de este artículo";
		Escribir "Quedan ", maximoSeleccionado, " unidades de este artículo";
		Escribir "1. Sí / 2. No";
		Repetir
			Leer decidir;
			si decidir < 1 | decidir > 2
				Escribir "Esa no es una opción disponible, vuelva a elegir";
			FinSi
		Hasta Que decidir == 1 | decidir == 2;
		
		
		si decidir == 1 & maximoSeleccionado > 0 Entonces
			Escribir "Cuantas unidades desea añadir al carro?";
			Repetir
				Leer unidades;
				si unidades > maximoSeleccionado Entonces
					Escribir "No puedes exeder del máximo de unidades";
				FinSi
				si unidades * precioSeleccionado > dinero[0] Entonces
					Escribir "No tienes dinero suficiente para comprar esa cantidad de artículos, ingrese otra cantidad para añadir al carro";
				FinSi
				
			Hasta Que unidades <= maximoSeleccionado & unidades * precioSeleccionado <= dinero[0]
			
			Para i = 0 Hasta columna - 1 Hacer
				para j = 0 Hasta fila - 1 Hacer
					si producto[j,i,l] = comprar Entonces
						
						cantidad[j,i,l] = cantidadSeleccionada + unidades;
						maximo[j,i,l] = maximoSeleccionado - unidades;
						
					FinSi
				FinPara
			FinPara
			dinero[0] = dinero[0] - (unidades * precioSeleccionado);
			Escribir "Unidades añadidas al carro con éxito, toque una tecla para continuar.";
			Escribir "Costo total: ", unidades * precioSeleccionado ;
			Escribir "Dinero actual: " dinero[0];
			Esperar Tecla;
			
		SiNo
			si maximoSeleccionado <= 0 Entonces
				Escribir "Este producto está agotado";
			FinSi
			
		FinSi
		
	FinSi

	Borrar Pantalla;
	
FinFuncion

Funcion l = navegar(producto, nombre, precio, cantidad, fila, columna, pagina, l, dinero)
	Definir i, j, t, u Como Entero;
	Definir productos, seleccionar Como Caracter;
	Dimension productos[fila,columna,pagina];
	
	Escribir "Página: " l + 1;
	para j = 0 Hasta fila - 1 Hacer
		Escribir "|" Sin Saltar;
		para i = 0 Hasta 20 Hacer
			Escribir "-"Sin Saltar;
		FinPara
	FinPara
	Escribir "|";
	
	Para i = 0 Hasta columna - 1 Hacer
		Escribir "| "Sin Saltar;
		Para j = 0 Hasta fila - 1 Hacer
			Escribir producto[j,i,l], ": " Sin Saltar;
			Escribir nombre[j,i,l] ": " Sin Saltar;
			
			u = 0;
			t = producto[j,i,l];
			Mientras t > 0 Hacer
				t = trunc(t/10);
				u = u + 1;
				
			FinMientras
			si u = 0 Entonces
				u = 1;
			FinSi
			
			para t = Longitud(nombre[j,i,l]) + u + 5 Hasta 20 Hacer
				Escribir " " Sin Saltar;
				
			FinPara
			Escribir "| " Sin Saltar;
			
		FinPara
		Escribir "";
		Escribir "| "Sin Saltar;
		Para j = 0 Hasta fila - 1 Hacer
			Escribir "Precio: ",precio[j,i,l] Sin Saltar;
			
			u = 0;
			t = precio[j,i,l];
			Mientras t > 0 Hacer
				t = trunc(t/10);
				u = u + 1;
				
			FinMientras
			si u = 0 Entonces
				u = 1;
			FinSi
			
			para t = u + Longitud("_Precio:_") Hasta 20 Hacer
				Escribir " " Sin Saltar;
				
			FinPara
			Escribir "| " Sin Saltar;
			
		FinPara
		Escribir "";
		Escribir "| "Sin Saltar;
		Para j = 0 Hasta fila - 1 Hacer
			
			Escribir "En carro: ", cantidad[j,i,l] Sin Saltar;
			
			u = 0;
			t = cantidad[j,i,l];
			Mientras t > 0 Hacer
				t = trunc(t/10);
				u = u + 1;
				
			FinMientras
			si u = 0 Entonces
				u = 1;
			FinSi
			
			para t = Longitud("_En_carro:_") + u Hasta 20 Hacer
				Escribir " " Sin Saltar;
				
			FinPara
			Escribir "| " Sin Saltar;
		FinPara
		Escribir "";
		para j = 0 Hasta fila - 1 Hacer
			Escribir "|" Sin Saltar;
			para t = 0 Hasta 20 Hacer
				Escribir "-"Sin Saltar;
			FinPara
		FinPara
		Escribir "|";
	FinPara
	Escribir "|  <- a | x | d ->    | Seleccionar: 0      |    Tu dinero: $" dinero[0];
	
FinFuncion

Funcion ingresarDinero(dinero)
	Definir ingresar, decidir Como Entero;
	ingresar = 0;
	Escribir "Desea ingresar dinero?";
	Escribir "1. Sí / 2. No";
	Repetir
		Leer decidir;
		si decidir < 1 | decidir > 2 Entonces
			Escribir "No es una opción";
		FinSi
		
	Hasta Que decidir == 1 | decidir == 2
	
	Segun decidir Hacer
		1:
			Escribir "Escriba la cantidad que desea Ingresar: ";
			Repetir
				Leer ingresar;
				si ingresar <= 0 Entonces
					Escribir "Debes ingresar números positivos";
				FinSi
				si ingresar < 99999999 Entonces
					Escribir "El máximo de dinero que puedes ingresar es: $99999999";
				FinSi
			Hasta Que ingresar > 0 & ingresar <= 99999999
			Escribir "Estás apunto de ingresar $", ingresar, " ¿Está seguro que desea continuar?";
			Escribir "1. Confirmar / 2. Denegar";
			Repetir
				Leer decidir;
				si decidir < 1 | decidir > 2 Entonces
					Escribir "No es una opción";
				FinSi
				
			Hasta Que decidir == 1 | decidir == 2
			
			Segun decidir Hacer
				1:
					Escribir "Espere un momento" Sin Saltar;
					Esperar 1 Segundos;
					Escribir "." Sin Saltar;
					Esperar 1 Segundos;
					Escribir "." Sin Saltar;
					Esperar 1 Segundos;
					Escribir ".";
					Esperar 1 Segundos;
					dinero[0] = dinero[0] + ingresar;
					Escribir "Dinero ingresado con éxito. Presione una tecla para volver.";
					Esperar Tecla;
				2:
					
					ingresar = 0;
				
			FinSegun
			
		2:
			
		
	FinSegun
	
	Borrar Pantalla;
	
FinFuncion

Funcion elegir = opciones(dinero)
	Definir elegir Como Entero;
	Repetir
		Escribir "";
		Escribir "0. Ingresar Dinero    |      Dinero actual: $", dinero[0];
		Escribir "1. Navegar.";
		Escribir "2. Actualizar Cantidad De Productos Del Carrito.";
		Escribir "3. Calcular El Total Del Carrito.";
		Escribir "4. Mostrar Todos Los Productos Del Carrito.";
		Escribir "5. Eliminar Producto Del Carrito.";
		Escribir "6. Salir.";
		Escribir "7. Administrar.";
		Leer elegir;
		si elegir < 0 | elegir > 7 Entonces
			Escribir "Opción incorrecta.";
			Esperar 1 Segundos;
			Borrar Pantalla;
			
		FinSi
		
	Hasta Que elegir >= 0 & elegir <= 7
	
	Borrar Pantalla;
	
FinFuncion
	