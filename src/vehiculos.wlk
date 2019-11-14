class Vehiculo {
	var property cilindrada
	var property control = new Control()
	
	method velocidadMaxima()
}

class Control(){
	var property alcance
}
class ControlInteriores inherits Control(alcance = 500)
class ControlExteriores inherits Control()