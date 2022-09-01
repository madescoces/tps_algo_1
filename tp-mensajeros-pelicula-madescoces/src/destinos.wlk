import vehiculos.*
import mensajerias.*
import paquetes.*
import mensajeros.*


object puenteBrooklyn{
	method dejaPasar(_mensajero) = _mensajero.pesoConVehiculo() <= 1000
}

object matrix{
	method dejaPasar(_mensajero) = _mensajero.puedeLlamar()
}

object infierno{
	method dejaPasar(_mensajero) = _mensajero.esMalo()
}

