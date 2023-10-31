class Campeon {
	const oleada
	const puntosDeVidaPropios
	var puntosDeAtaquePropios
	const items = #{}
	
	method equiparItem(unItem) = items.add(unItem)
	method desequiparItem(unItem) = items.remove(unItem) 
	method puntosDeDanio() = oleada.danioQueProduce()
	method estaMorido() = self.puntosDeDanio() >= puntosDeVidaPropios
	method puntosDeVida() = puntosDeVidaPropios + self.puntosDeVidaDeItemsTotal()
	method puntosDeAtaque() = puntosDeAtaquePropios + self.puntosDeAtaqueDeItems()
	method puntosDeVidaDeItemsTotal() = items.map({i => i.puntosDeVidaQueOtoga()}).sum()
	method puntosDeAtaqueDeItems() = items.map({i => i.puntosDeAtaqueQueOtorga()}).sum()
	method itemQueDaMasPuntosDeVida() = items.filter({i => i.puntosDeVidaQueOtorga() == self.puntosDeVidaDeItems().max()})
	method puntosDeVidaDeItems() = items.map({i => i.puntosDeVidaQueOtorga()})
	method itemsQueOtorganMasDeAtaqueQueDeVida() = items.filter({i => i.puntosDeAtaqueQueOtorga() > i.puntosDeVidaQueOtorga()})
	method tieneItemMasDe70DeVidaOMasDe30DeAtaque() = items.any({i => i.puntosDeVidaQueOtorga() > 70 or i.puntosDeAtaqueQueOtorga() > 30})
	method pesosDeItems() = items.map({i => i.peso()})
	method itemsPesanMenosDe300() = items.count({i => i.peso() < 300})
}
