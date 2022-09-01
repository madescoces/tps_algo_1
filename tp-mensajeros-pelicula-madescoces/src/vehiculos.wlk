import vehiculos.*
import mensajerias.*
import destinos.*
import paquetes.*

object bicicleta{
	method peso() = 1
}	

object camion{
	var acoplados = 1

	method peso() = acoplados*500
	method addAcoplado() { acoplados += 1 }
	method removeAcoplado() { if (acoplados > 1) acoplados -= 1 }
}

object camioneta{
	var paquetes = []
	var llena = false
	
	method peso() { 
		return if (llena) 900 else 450
	} 
	
	method addPaquete(_paquete) { 
		if (paquetes.size() <= 3) { 
			paquetes.add(_paquete)			
		} else {
			llena = true
		}
	} 
	
	method removePaquete(_paquete){
		if (paquetes.size() > 0){
			paquetes.remove(_paquete)
		} else {
			llena = false
		}
	}
	
	method llena() = llena
}