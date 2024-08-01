// Teniendo en cuenta la fórmula de distancia = velocidad * tiempo, calcule lo siguiente:
// 	-> Distancia entre Bogotá y Medellín de un auto que su velocidad promedio fue de 80 Km/h y
//     el tiempo fue 10 horas.
//		Entrada: Velocidad y tiempo.
//		Proceso: distancia = velocidad * tiempo.
//		Salida: La distancia.
// 	-> Calcular la velocidad de un auto entre Medellín y Envigado cuya distancia es de 18 KM y
//     el tiempo del recorrido duró 15 minutos.
//		Entrada: Distancia y tiempo.
//		Proceso: velocidad = distancia / tiempo.
//		Salida: La velocidad.

Algoritmo CalcularDistancia
	Definir distancia, tiempo, velocidad Como Real;
	// Primer punto:
	velocidad = 80;
	tiempo = 10;
	distancia = velocidad * tiempo;
	Escribir "Distancia entre Bogotá y Medellín de un auto que su velocidad promedio fue de 80 Km/h y el tiempo fue 10 horas es:", distancia;
	
	// Segundo punto:
	distancia = 18;
	tiempo = 0.25;
	velocidad = distancia / tiempo;
	Escribir "La velocidad de un auto entre Medellín y Envigado cuya distancia es de 18 KM y el tiempo del recorrido duró 15 minutos es: ", velocidad;
FinAlgoritmo
