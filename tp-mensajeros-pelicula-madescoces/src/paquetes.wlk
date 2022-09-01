import vehiculos.*
import mensajerias.*
import destinos.*
import mensajeros.*

object paquete{
	var pagado = false
	var property precio = 50
	var property destino = puenteBrooklyn
	
	method puedeSerEntregadoPor(_mensajero) = pagado && destino.dejaPasar(_mensajero)
	method pagar() { pagado = true }
	method pagado() = pagado
}

object paquetito{
	const pagado = true
	var property destino = puenteBrooklyn
	
	method puedeSerEntregadoPor(_mensajero) = destino.dejaPasar(_mensajero)
	method pagar() {}
	method pagado() = pagado
}

object paqueton{
	var property pagado = false
	var property destino = []
	var property pagosParciales = []
	var property precio = 0
	
		
	method puedeSerEntregadoPor(_mensajero) = destino.forEach({ _destino => _destino.dejaPasar(_mensajero) })
	
	method agregarDestino(_destino){
		destino.add(_destino)
		precio += 100
	}
	
	method pagar() { pagado = true }
	
	method pagoParcial(_pago){
		pagosParciales.add(_pago)
		
		if ((precio-pagosParciales.sum())<=0) pagado = true		
	}
}