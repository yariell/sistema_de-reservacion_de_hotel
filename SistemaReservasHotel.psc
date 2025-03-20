Algoritmo SistemaReservasHotel
    Definir Habitaciones Como Caracter
    Definir Clientes Como Caracter
    Definir IndexUsers Como Real
    IndexUsers = 1
    Dimension Clientes[6]
    
    Definir Empleados Como Caracter
    Definir IndexEmpleados Como Real
    IndexEmpleados = 1
    Dimension Empleados[6]
    
    Definir HabitacionesReservadas Como Caracter
    Definir IndexHabitaciones Como Real
    IndexHabitaciones = 1
    Dimension HabitacionesReservadas[6]
    
    Definir Montos Como Real
    Definir _Opcion_ Como Entero
    Definir CuentaPagos Como Entero
    Definir NombreCliente Como Caracter
    Definir NombreEmpleado Como Caracter
    Definir TipoHabitacion Como Caracter
    
    Definir habitacion Como Caracter
    Definir CostoHabitacion Como Real
	definir montoPagado como real 
    Definir opcion Como Entero
    
    Repetir
        Limpiar Pantalla
        Escribir " --- Sistema de Reservas del Hotel --- "
        Escribir " 1. Registrar Cliente"
        Escribir " 2. Registrar Empleado"
        Escribir " 3. Reservar Habitación"
        Escribir " 4. Realizar Pago"
        Escribir " 5. Mostrar Datos"
        Escribir " 6. Salir"
        Escribir "Seleccione una opción: "
        Leer opcion
        
        Segun opcion Hacer
            Caso 1:
                Limpiar Pantalla
                Escribir "Nombre del cliente: "
                Leer NombreCliente
                Clientes[IndexUsers] = NombreCliente
                IndexUsers = IndexUsers + 1
                Escribir "Cliente registrado con éxito."
                
            Caso 2:
                Limpiar Pantalla
                Escribir "Nombre del empleado: "
                Leer NombreEmpleado
                Empleados[IndexEmpleados] = NombreEmpleado
                IndexEmpleados = IndexEmpleados + 1
                Escribir "Empleado registrado con éxito."
                
            Caso 3:
                Limpiar Pantalla
                Escribir "Tipo de habitación (1-sencilla, 2-doble, 3-suite): "
                Leer opcion
                Segun opcion hacer
                    caso 1:
                        habitacion = "sencilla"
                        CostoHabitacion = 50
                    caso 2:
                        habitacion = "doble"
                        CostoHabitacion = 80
                    caso 3:
                        habitacion = "suite"
                        CostoHabitacion = 120
                Fin Segun
                
                Escribir "Habitación ", habitacion, " reservada con éxito, su costo es de $", CostoHabitacion
                HabitacionesReservadas[IndexHabitaciones] = habitacion
                IndexHabitaciones = IndexHabitaciones + 1
                Esperar Tecla
                
            Caso 4:
                Limpiar Pantalla
                Escribir "Monto a pagar es: $", CostoHabitacion
                Leer Montos
				si montos < CostoHabitacion Entonces
					Escribir "No tiene el dinero requerido para realizar el pago de $", CostoHabitacion
				SiNo
					Escribir "Pago de ", Montos, " realizado con éxito."
				FinSi
				
				montoPagado = Montos
                Esperar Tecla
            Caso 5:
                Limpiar Pantalla
                Escribir "Datos guardados:"
                Escribir "Clientes registrados:"
                Para i Desde 1 Hasta IndexUsers - 1 Hacer
                    Escribir Clientes[i]
                Fin Para
                
                Escribir "Empleados registrados:"
                Para i Desde 1 Hasta IndexEmpleados - 1 Hacer
                    Escribir Empleados[i]
                Fin Para
                
                Escribir "Habitaciones reservadas:"
                Para i Desde 1 Hasta IndexHabitaciones - 1 Hacer
                    Escribir HabitacionesReservadas[i]
                Fin Para
                
				Escribir "Monto pagado"
				Escribir "$",montoPagado
                Esperar Tecla
                
            Caso 6:
                Limpiar Pantalla
                Escribir "¿Está seguro que desea salir? (S/N): "
                Definir confirmacion Como Caracter
                Leer confirmacion
                Si confirmacion = "S" O confirmacion = "s" Entonces
                    Escribir "Saliendo del sistema..."
                Sino
                    opcion = 0
                Fin Si
                
            De Otro Modo:
                Escribir "Opción no válida, intente de nuevo."
        Fin Segun
    Hasta Que opcion = 6 Y (confirmacion = "S" O confirmacion = "s")
Fin Proceso