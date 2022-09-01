import vehiculos.*
import mensajerias.*
import destinos.*
import paquetes.*

object roberto{
	var property peso = 70
	const puedeLlamar = false
	var property vehiculo = bicicleta
	
	method puedeLlamar() = puedeLlamar	
	method pesoConVehiculo() = peso + vehiculo.peso()
	method esMalo() = true	
}

object chuck{
	const property peso = 900
	const puedeLlamar = true
		
	method puedeLlamar() = puedeLlamar
	method pesoConVehiculo() = peso
	method esMalo() = false
}

object neo{
	const property peso = 0
	var puedeLlamar = true
	var property credito = 10
	
	method puedeLLamar() = (credito > 0)		
	method pesoConVehiculo() = peso	
	method esMalo() = false
}

object porcel{
	var property peso = 250
	const puedeLlamar = true
	var property vehiculo = camioneta
	
	method puedeLlamar() = puedeLlamar	
	method pesoConVehiculo() = peso + vehiculo.peso()
	method esMalo() = true	
}

