Algoritmo sin_titulo
	menu
FinAlgoritmo

SubProceso menu()
	Definir num Como Entero
	hacer 
		Escribir "___________________________________" 
		Escribir ""
		Escribir "1. calcular muro de ladrillos"
		Escribir "2. calcular viga de hormigon"
		Escribir "3. calcular columna de hormigon"
		Escribir "4. calcular contrapiso"
		Escribir "5. calcular techo"
		Escribir "6. calcular pisos"
		Escribir "7. calcular pintura"
		Escribir "8. calcular iluminacion"
		Escribir "9. SALIR"
		leer num
		segun num Hacer
			1:
				CalcularMuro()
			2:
				CalcularViga()
			3:
				calcularColumna()
			4:
				calcularContrapisos
			5:
				calcularTecho()
			6:
				calcularPiso()
			7:
				Pintura
			8:
				calcularIluminacion()
			9:
				Escribir "SALIENDO DEL PROGRAMA"
			De Otro Modo:
				Escribir "opcion invalida: vuelva a ingresar"
		FinSegun
	Mientras Que num<>9 
	
FinSubProceso

SubProceso calcularMuro 
	Definir espesor Como Entero
	definir largo, alto Como Real
	definir superficie, ladrillos, arena, cemento Como Real
	
	Repetir
		escribir "Cual será el espesor del muro de 20 o 30 cm? "
		Leer espesor
	Hasta Que espesor <> 20 o espesor <>30
	escribir "ingrese el alto"
	Leer alto
	escribir"Ingrese el largo"
	leer largo
	
	superficie= espesor * alto *largo  ////    calcula la superficie
	escribir "la superficie del muro sera de: " superficie  , " metros cubicos"
	
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
subproceso calcularViga
	definir largoviga, pesocemento, metroarena, metropiedra, metrohierro4,metrohierro8 Como Real
	largoviga=0
	pesocemento=0
	metroarena=0
	metropiedra=0
	metrohierro4=0
	metrohierro8=0
	Escribir "Introduzca el largo de la viga en metros"
	Leer largoviga
	pesocemento= largoviga*9
	metroarena= largoviga*0.02
	metropiedra= largoviga*0.02
	metrohierro8= largoviga*4
	metrohierro4= largoviga*3
	Escribir "La cantidad de materiales es:"
	Escribir "Cemento: " pesocemento "Kg."
	Escribir "Arena: " metroarena "m^3."
	Escribir "Piedra: " metropiedra "m^3."
	EScribir "Hierro de 8: " metrohierro8 "M."
	EScribir "Hierro de 4: " metrohierro4 "M."
FinSubProceso
SubProceso calcularColumna
	Definir largoC, cemento, arena, piedra, h10, h4 Como Real
	Escribir "Ingresar el largo de la columna"
	leer largoC
	cemento = 7.5 * largoC
	arena = 0.016 * largoC
	piedra = 0.016 * largoC
	h10 = 6 * largoC
	h4 = 3 * largoC
	Escribir "Se necesitan " cemento  "Kg. de cemento"
	Escribir "Se necesitan " arena  "m3 de arena"
	Escribir "Se necesitan " piedra  "m3 de piedra"
	Escribir "Se necesitan " h10  "m de hierro del 10"
	Escribir "Se necesitan " h4  "m de hierro del 4"
FinSubProceso

SubProceso calcularContrapisos
	Definir espesor,ancho,largo,mult,arena,cemento,piedra como real
	Escribir "Ingrese espesor que sea cubrir en metros ";
	Leer espesor
	Escribir " Ingrese ancho que desea cubrir en metros ";
	Leer ancho
	Escribir " Ingrese largo que desea cubrir en metros ";
	Leer largo
	mult=espesor*ancho*largo
	Escribir mult " metros"
	cemento=105*mult
	arena=0.45*mult
	piedra=0.9*mult
	Escribir " La cantidad de materiales que necesitamos son "
	Escribir " Cemento ",cemento," Kilogramos";
	Escribir " Arena ",arena," metros3";
	Escribir " Piedra ",piedra," metros3";
	
	
FinSubProceso

SubProceso calcularTecho
	definir metrosCubicos, espesor, ancho, largo Como Real
	definir cemento, arena, piedra, hierroDel8, hierroDel6 Como Real
	Escribir "Ingrese el espesor del techo en metros" 
	leer espesor
	Escribir "Ingrese el ancho del techo en metros"
	leer ancho
	Escribir "Ingrese el largo del techo en metros" 
	leer largo 
	metrosCubicos=espesor*ancho*largo
	cemento = metrosCubicos * 33 
	arena= metrosCubicos * 0.072 
	piedra= metrosCubicos * 0.072 
	hierroDel8 = metrosCubicos * 7 
	hierroDel6 = metrosCubicos * 4
	Escribir "La cantidad de materiales necesaria para los " metrosCubicos " m3 es: "
	Escribir cemento " kg de cemento, " arena " m3 de arena, " piedra " m3 de piedra," hierroDel8 " m de hierro del 8 y " hierroDel6 " m de hierro del 6."
FinSubProceso

SubProceso calcularPiso
	definir superf,ancho,largo,recortes,resultado como real
	definir m2 como real
	escribir " Ingrese ancho de paño de piso a colocar"
	leer ancho
	escribir " Ingrese largo de paño de piso a colocar"
	leer largo
    superf= (ancho*largo)* 0.10
	escribir "La superficie a cubrir en recortes es: " superf "m2"
	m2 = (largo * ancho)
    escribir "El resultado en m2 es: " m2
	escribir "El total a cubrir es: " m2+ superf "m2" 	
FinSubProceso
SubProceso pintura 
	definir sup Como Entero
	definir ltsPint Como real
	escribir "Ingrese la superficie del muro a pintar"
	leer sup
	
	ltsPint=sup/6
	escribir "Se van a necesitar al menos " ,redon(ltsPint), " lts de pintura."
FinSubProceso

SubProceso calcularSuperficie
	definir largo,ancho,alto Como Real
	escribir "Ingrese el largo de la habitación en metros"
	leer largo
	escribir "Ingrese el ancho de la habitación en metros"
	leer ancho
	escribir "Ingrese el alto de la habitación en metros"
	leer alto
	definir superficie como real
	superficie = largo*ancho
FinSubProceso

subproceso calcularVolumen(largo,ancho,alto)
	definir volumen Como Real
	volumen = largo*ancho*alto
FinSubProceso

subproceso calcularIluminacion
	definir iluminacion, superficie Como Real
	Escribir "Ingresar superficie"
	leer superficie
	iluminacion = superficie * 0.20
	escribir "Cantidad mínima de iluminación natural: " iluminacion " m^2"
	
FinSubProceso

