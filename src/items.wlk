class Item {
	const property peso
	
	method puntosDeVidaQueOtorga(unCampeon) = (if(peso <= 500){20}else{40}) + self.puntosDeVida(unCampeon)
	method puntosDeAtaqueQueOtorga(unCampeon) = if(peso <= 500){10}else{5} + self.puntosDeAtaque(unCampeon)
	method puntosDeVida(unCampeon)
	method puntosDeAtaque(unCampeon)
	
}

class AnilloDeDoran inherits Item{
	override method puntosDeVida(unCampeon) = 60
	override method puntosDeAtaque(unCampeon) = 15
}

class TomoAmplificador inherits Item{
	override method puntosDeVida(unCampeon) = unCampeon.puntosDeDanio()*0.25
	override method puntosDeAtaque(unCampeon) = unCampeon.puntosDeDanio()*0.10  
}

class SobreroDeRabadon inherits TomoAmplificador {
	override method puntosDeVida(unCampeon) = super(unCampeon)*2
	override method puntosDeAtaque(unCampeon) = super(unCampeon) + 2
	
}

