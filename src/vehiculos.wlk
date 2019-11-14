class Vehiculo {
	var property cilindrada
	var property control = new Control()
	
	method alcance()= self.control().alcance()
	method velocidadMaxima()
}

class Control{
	var property alcance
}
class ControlInteriores inherits Control{
	override method alcance() = 500
}
class ControlExteriores inherits Control{
	override method alcance(distancia)=distancia
}
class Tamanio{
	var property velocidad
}
class HelicopteroGrande inherits vehiculos.Vehiculo{
	override method velocidadMaxima()= self.cilindrada()*20
}
class HelicopteroPequenio inherits vehiculos.Vehiculo{
	override method velocidadMaxima()= self.alcance()/500 + 3
}
class Auto inherits Vehiculo{
	override method velocidadMaxima()=100
}

class Avion inherits vehiculos.Vehiculo{
	const property velocidad = 100
	override method velocidadMaxima(){
		return self.velocidad() + self.control().alcance()/50000	
	}
}