////subprograma calcularMuro
////    Nos debe pedir primero si el muro será de 20 o 30 cm de espesor.
////	Luego el largo y el alto. 
////	Apartir de estos datos se debe mostrar al usuario la superficie del muro y la cantidad de
////	materiales que necesitaremos para construirlo.
////	Si el muro es de 30cm necesitaremos por metro cuadrado: 15.2 kg de cemento, 
////	                                                         0.115 m3 de arena
////                                                             120 ladrillos.
////	si el muro es de 20cm 
////    necesitaremos por metro cuadrado: 10.9 kg de cemento,
////                                 0.09 m3 de arena 
////	                              y 90 ladrillos.//
Algoritmo sin_titulo
	definir metroCuadrado  Como Real
	calcularMuro(metroCuadrado)
FinAlgoritmo

SubProceso calcularMuro (metroCuadrado  por referencia )
	Definir espesor Como Entero
	definir largo, alto Como Real
	definir superficie, ladrillos, arena, cemento Como Real
	
	Repetir
		escribir "Cual será el espesor del muro de 20 o 30 cm? "
		Leer espesor
	Hasta Que espesor <> 20 y espesor <>30
	escribir "ingrese el ancho"
	Leer ancho
	escribir"Ingrese el largo"
	leer largo
	
	superficie= espesor * ancho *largo  ////    calcula la superficie
	escribir " la superficie del muro sera de: " superficie  , " metros cubicos"
	
	//// calculo de materiales
	si espesor ==30 Entonces
		cemento=15.2
		arena=0.115
		ladrillos=120
	SiNo
		cemento=10.9
		arena=0.09
		ladrillos=90
	FinSi
	escribir " Necesitará:"
	Escribir "Cemento: ", cemento * superficie
	Escribir "Arena: ", arena * superficie
	escribir"ladrillos: " ladrillos * superficie
	
FinSubProceso
