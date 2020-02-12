Proceso consola_ev1
	Repetir	
	menu();	
	Definir op1 como entero;	
	leer op1;
	Limpiar Pantalla;
	
		Segun op1 Hacer
			1:
				secuencial();
			2:
				
				siEntonces();
			3:
				siEntoncesAni();
			4:
				condSegun();
			5:
				repetMientras();
			6:
				reprepetir();
			7:
				repPara();
			8:
				arrSimple();
			9:
				arrBidi();
		FinSegun
	Hasta Que op1=10;
	
FinProceso

//Volver 
subproceso volver()
	Definir vol como caracter;
	Escribir "";
	Escribir "Deseas volver al menu? (s/n)";
	leer vol; 
	Si vol="s" Entonces
		Limpiar Pantalla;
		menu();	
	SiNo
		Escribir "Chau";
	FinSi
	
FinSubProceso
//display del menu
Subproceso menu()
	Escribir "Elige la opcion segun el numero:";
	Escribir "";
	Escribir "1.- Secuencial";
	Escribir "2.- Condicional Si Entonces";
	Escribir "3.- Condicional Si Entonces Anidado";
	Escribir "4.- Condicional Segun";
	Escribir "5.- Repetitiva Mientras";
	Escribir "6.- Repetitiva Repetir";
	Escribir "7.- Repetitiva Para";
	Escribir "8.- Arreglo Simple";
	Escribir "9.- Arreglo Bidimensional";
	Escribir "10.- Salir";
	Escribir "";
FinSubProceso

//menu 1: secuencial
SubProceso secuencial()
	Escribir "1.- Secuencial:";
	Escribir " ";
	Definir n1, n2, n3 Como Entero;
	Escribir "Ingrese 3 numeros para entregar un promedio";
	Leer n1, n2, n3;
	
	Definir suma Como Entero;
	suma <- n1+n2+n3;
	Definir promedio como real;
	promedio <- suma/3;
	Escribir "El promedio de ", n1, ", ", n2, " y ", n3, " es: ", promedio;
	Escribir "";
	volver();
FinSubProceso

//menu 2: condicional Si Entonces
SubProceso siEntonces()
	Escribir "2.- Condicional Si Entonces:";
	Escribir " ";
	Definir nombre, genero como caracter;
	Escribir "Ingrese su nombre y genero (m/h) para entrar al baño";
	leer nombre, genero;
	Si genero="m" Entonces
		Escribir "Sr/a. ", nombre, ", dirijase al baño de mujeres.";
	SiNo
		Escribir "Sr/a. ", nombre, ", dirijase al baño de hombres.";
	FinSi
	Escribir "";
	volver();
FinSubProceso

//menu 3: condicional Si Entonces Anidado
Subproceso siEntoncesAni()
	Escribir "3.- Condicional Si Entonces Anidado:";
	Escribir " ";
	Definir nombre, genero como caracter;
	Escribir "Ingrese su nombre y genero (m/h) para entrar al baño";
	leer nombre, genero;
	
	Definir op Como entero;
	Escribir "Elija el servicio a ocupar: 1) Baño o 2) Ducha";
	leer op;
	
	Si op=1 entonces
		Si genero="m" Entonces
			Escribir "Sr/a. ", nombre, ", dirijase al baño de mujeres. Debe cancelar $250 para usar el baño.";
		SiNo
			Escribir "Sr/a. ", nombre, ", dirijase al baño de hombres. Debe cancelar $250 para usar el baño.";
		FinSi
	Finsi
	Si op=2 entonces
		Si genero="m" Entonces
			Escribir "Sr/a. ", nombre, ", dirijase al baño de mujeres. Debe cancelar $2.500 para usar la ducha.";
		SiNo
			Escribir "Sr/a. ", nombre, ", dirijase al baño de hombres. Debe cancelar $2.500 para usar la ducha.";
		FinSi
	FinSi
	Escribir "";
	volver();
FinSubProceso

//menu 4: condicional segun
SubProceso condSegun()
	Escribir "4.- Condicional Segun:";
	Escribir " ";
	Definir num como entero;
	Escribir "Ingrese un numero del 1 al 10 para entregarlo de forma escrita";
	leer num;
	Segun num Hacer
		1:
			Escribir "Uno";
		2:
			Escribir "Dos";
		3:
			Escribir "Tres";
		4:
			Escribir "Cuatro";
		5: 
			Escribir "Cinco";
		6:
			Escribir "Seis";
		7:	
			Escribir "Siete";
		8:
			Escribir "Ocho";
		9:
			Escribir "Nueve";
		10:
			Escribir "Diez";
		De Otro Modo:
			Escribir "El numero ingresado no se puede entregar";
	FinSegun
	Escribir "";
	volver();
FinSubProceso

//menu 5: Repetitiva mientras
SubProceso repetMientras()
	Escribir "5.- Repetitiva Mientras:";
	Escribir " ";
	//	Definir num, cant como entero;
	//	Escribir "Cuantos numeros va a promediar?";
	//	Leer cant;
	//	Dimension num[cant];
	//	Escribir "Ingrese los numeros que desea promediar. Escriba 0 para obtener el resultado";
	//	
	//	Definir i Como Entero;
	//	Definir suma como entero;
	//	suma<-0;
	//	Para i<-0 Hasta cant-1 Hacer
	//		Leer num[i];
	//		Mientras num[i]=0 Hacer
	//			
	//			suma <- num[i] + 1;
	//		FinMientras
	//	FinPara
	//	
	////	Mientras num[i]=0 Hacer
	////		suma <- num[i] + num[i+1];
	////	FinMientras
	//	Escribir suma;
	Escribir "";
	volver();
	
FinSubProceso

//menu 6: Repetitiva Repetir
SubProceso reprepetir()
	Escribir "6.- Repetitiva Repetir:";
	Escribir " ";
	Definir nombre como caracter;
	Escribir "Ingresa todos los nombres que se te ocurran que empiecen con J. Ganas cuando encuentres el nombre de oro";
	Repetir
		Leer nombre;
	Hasta Que nombre= "juan";
	Escribir "Ganaste! Encontraste el nombre de oro.";
	Escribir "Tu cantidad de intentos fue:",;
	Escribir "";
	volver();
FinSubProceso

//menu 7: repetitiva para
SubProceso repPara()
	Escribir "7.- Repetitiva Para:";
	Escribir " ";
	Definir nombres como caracter;
	Dimension nombres[10];
	
	Escribir "Ingrese 10 nombres al sistema";
	Definir i como entero;
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		leer nombres[i];
	FinPara
	Escribir "";
	volver();
FinSubProceso

//menu 8: arreglo simple
subproceso arrSimple()
	Escribir "8.- Arreglo Simple:";
	Escribir "";
	Definir alum como caracter;
	Definir cant Como Entero;
	
	Escribir "Cuantos alumnos ingresamos al sistema?";
	leer cant;
	Dimension alum[cant];
	
	Escribir "Ingrese los nombres de los alumnos";
	Definir i como entero;
	Para i<-0 Hasta cant-1 Hacer
		Leer alum[i];
	FinPara
	
	Escribir "Los alumnos ingresados son:";
	Para i<-0 Hasta cant-1 Hacer
		Escribir "[", alum[i], "]";
	FinPara
	Escribir "";
	volver();
FinSubProceso

//menu 9: Arreglo bidimensional
SubProceso arrBidi()
	Escribir "9.- Arreglo Bidimensional";
	Escribir "";
	
	definir num como entero;
	Escribir "Ingrese el numero de alumnos que ingresa al curso";
	leer num;
	
	Definir alumnos como caracter;
	Dimension alumnos[num];
	definir matriz como caracter;
	dimension matriz[num,4];
	definir i como entero;
	Definir j como entero;
	Para i<-0 hasta num-1 hacer
		Escribir "Ingrese el nombre, apellido, fono y email del alumno";
		Para j<-0 hasta 3 hacer
			leer matriz[i,j];
		FinPara
	FinPara
	
	Escribir "Los datos de los alumnos son:";
	Escribir sin saltar matriz[i,j];
	Escribir "";
	volver();
FinSubProceso


