Funcion mostrar_menu
	Escribir "Ingrese"
	Escribir "#1- Para consultar saldo"
	Escribir "#2- Para depositar dinero"
	Escribir "#3- Para retirar dinero"
FinFuncion

Funcion mostrar_separador
	Escribir "=========================================="
FinFuncion

Funcion consultar_saldo(saldo)
	Escribir "Su saldo actual es "
	Escribir saldo, " Dolares"
FinFuncion

Funcion nuevo_saldo <- depositar(saldo)
	Definir nuevo_saldo, cantidad_depositada Como Entero
	// solo se reciben valores multiplos de 10, es decir, la cantidad minima es 10
	Escribir "Ingrese la cantidad a depositar, en multiplos de 10 (minimo 10)"
	Leer cantidad_depositada
	Si cantidad_depositada MOD 10 = 0 Y cantidad_depositada >= 10 Entonces
		nuevo_saldo <- saldo + cantidad_depositada
	SiNo
		Escribir "Cantidad no valida"
		nuevo_saldo <- saldo
	FinSi
FinFuncion

Funcion nuevo_saldo <- retirar(saldo)
	Definir nuevo_saldo, cantidad_retiro Como Entero
	Escribir "Ingrese la cantidad a retirar, en multiplos de 10 (minimo 10)"
	Leer cantidad_retiro
	Si cantidad_retiro MOD 10 = 0 Y cantidad_depositada >= 10 y saldo >= cantidad_retiro Entonces
		nuevo_saldo <- saldo - cantidad_retiro
	SiNo
		Escribir "Cantidad no valida"
		nuevo_saldo <- saldo
	FinSi
FinFuncion

Algoritmo cajero_automatico
	Definir saldo, opc Como Entero
	saldo <- 10
	Repetir
		mostrar_menu
		Leer opc
		mostrar_separador
		Segun opc Hacer
			1:
				consultar_saldo(saldo)
			2:
				saldo <- depositar(saldo)
			3:
				saldo <- retirar(saldo)
			4:
				Escribir "Saliendo..."
			De Otro Modo:
				Escribir "Valor incorrecto"
		Fin Segun
	Hasta Que opc = 4
	

FinAlgoritmo
