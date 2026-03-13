Funcion mostrar_menu
	Escribir "Bienvenidos a la calculadora, ingrese"
	Escribir "1 Para sumar"
	Escribir "2 Para restar"
	Escribir "3 Para multiplicar"
	Escribir "4 Para salir"
FinFuncion
Funcion resultado <- calcular (num1, num2, op)
	Definir resultado Como Real
	Segun op Hacer
		
		1: 
			resultado <- num1 + num2
		2:
			resultado <- num1 - num2
		3:
			resultado <- num1 * num2
		De Otro Modo:
			resultado <- 0
	FinSegun
FinFuncion

Funcion valor_entero <- pedir_entero(mensaje)
	Definir valor_entero Como Entero
	Escribir mensaje
	Leer valor_entero
FinFuncion

Funcion valor_real <- pedir_real(mensaje)
	Definir valor_real Como Real
	Escribir mensaje
	Leer valor_real
FinFuncion

Algoritmo calculadora
	Definir valor1, valor2, opc, resultado Como Real
	Repetir
		mostrar_menu
		opc <- pedir_entero("Ingrese la opcion deseada")
		Si opc = 1 O opc = 2 O opc = 3 Entonces
			valor1 <- pedir_real("Ingrese el primer numero")
			valor2 <- pedir_real("Ingrese el segundo numero")
			resultado <- calcular(valor1, valor2, opc)
			Escribir "Resultado ", resultado
		SiNo
			Si opc = 4 Entonces
				Escribir "Bye Bye"
			SiNo
				Escribir "Opcion no valida"
			FinSi
		FinSi
	Hasta Que opc = 4

	
	
FinAlgoritmo
