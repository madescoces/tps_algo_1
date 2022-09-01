import vehiculos.*
import destinos.*
import paquetes.*
import mensajeros.*

object mensajeria{
	var property mensajeros = []
		
	method contratarMensajero(_mensajero) {
		 mensajeros.add(_mensajero)
		 mensajeros = mensajeros.withoutDuplicates()
	}
		
	method despedirMensajero(_mensajero) {
		 if (mensajeros.contains(_mensajero)) mensajeros.remove(_mensajero)
	}
	
	method despedirTodos() = mensajeros.clear()
	
	method mensajeriaEsGrande() = mensajeros.size() > 2
		
	
	method primeroPuedeEntregar(){
		return paquete.puedeSerEntregadoPor(mensajeros.first())
	}
	
	method ultimoMensajeroPesa(){
		return mensajeros.last().peso()
	}
}