import wollok.game.*
object random
{
	method fila()
	{
		return (1..12).anyOne()
	}
	
	method columna()
	{
		return (1..10).anyOne()
	}
	
}

object reglas
{
	method imagen() = "reglas.png"
}
	 
object mira
{
	var posicion = new Position(1,11)
	var apuntado = false
	var posicionesDisparadas=[]
	method imagen() = "mira.png"
	method posicion() = posicion
	method disparar()
	{
		if(barcoDeBatalla.puedeDisparar())
		{
			if (!apuntado)
			{
				posicion.drawElement(misil)
				apuntado=true
			}
			else
			{
				var elementoGenerado = elementos.generar()
				var x = posicion.x()
				var y= posicion.y()
				if(posicionesDisparadas.contains([x,y]))
				{
					 game.say(self, "Ya has disparado aqui, prueba en otro lado")
					 posicion.drawElement(self)
				}
				else
				{
					posicionesDisparadas.add([x,y])
					posicion.drawElement(self)
					game.addVisualIn(elementoGenerado, game.at(x, y))
					elementoGenerado.producirEfecto()
					barcoDeBatalla.mostrarEstado()		
				}
				self.posicion().moveRight(1)
				apuntado=false
			}
		}
		else
		{
			barcoDeBatalla.recordarPerdida()
		}
		
		
			
	}
		
}


object elementos
{
	var elementosEspeciales = [vida, bomba, agua, barcoNormal, barcoDePesca, agua, barcoVelero, barcoVikingo, agua, crucero, motoAcuatica, agua, nadador]
	method generar()
	{
		return elementosEspeciales.anyOne()
		
	}
}

object wat
{
	method imagen() = "wat.png"
}

object blanco
{
	method imagen() ="fondo.png"
}

object barcoDeBatalla
{
	var puntaje=0
	var vidas=3
	method imagen() = "barcoDeBatalla.png"
	method producirEfecto(elementoEspecial)
	{
		elementoEspecial.producirEfecto()
	}
	
	method modificarPuntaje(puntos)
	{
		puntaje+=puntos
	}
	
	method modificarVida(vida)
	{
		vidas+=vida
	}
	
	method mostrarEstado()
	{
		if (vidas>0)
		game.say(self, "VIDAS: " + vidas + "PUNTAJE: " + puntaje)
		else
		self.perder()
	}
	
	method perder()
	{
		game.say(self, "NO TE QUEDAN VIDAS PUNTAJE: " + puntaje)
	}
	
	method recordarPerdida()
	{
		game.say(self, "RECORDA QUE NO TE QUEDAN VIDAS, PUNTAJE: " + puntaje)
	}
	
	method puedeDisparar()
	{
		if (vidas<1)
		{
			self.perder()
		}
		return true
	}
	
}

object misil
{
	method imagen() = "misil.png"
	
	method posicion() = mira.posicion()
	
}
class LimiteIzq
{
	method empuja(mira)
	{
		mira.posicion().moveRight(1)
	}
	
}
object uno inherits LimiteIzq
{
	method imagen() = "1.png"
}

object dos inherits LimiteIzq
{
	method imagen() = "2.png"
}

object tres inherits LimiteIzq
{
	method imagen() = "3.png"
}

object cuatro inherits LimiteIzq
{
	method imagen() = "4.png"
}

object cinco inherits LimiteIzq
{
	method imagen() = "5.png"
}

object seis inherits LimiteIzq
{
	method imagen() = "6.png"
}

object siete inherits LimiteIzq
{
	method imagen() = "7.png"
}

object ocho inherits LimiteIzq
{
	method imagen() = "8.png"
}

object nueve inherits LimiteIzq
{
	method imagen() = "9.png"
}

object diez inherits LimiteIzq
{
	method imagen() = "10.png"
}

class LimiteSup
{
	method empuja(mira)
	{
		mira.posicion().moveDown(1)
	}
}
object a inherits LimiteSup
{
	method imagen() = "a.png"
}

object b inherits LimiteSup
{
	method imagen() = "b.png"
}

object c inherits LimiteSup
{
	method imagen() = "c.png"
}

object d inherits LimiteSup
{
	method imagen() = "d.png"
}

object e inherits LimiteSup
{
	method imagen() = "e.png"
}

object f inherits LimiteSup
{
	method imagen() = "f.png"
}

object g inherits LimiteSup
{
	method imagen() = "g.png"
}

object h inherits LimiteSup
{
	method imagen() = "h.png"
}

object i inherits LimiteSup
{
	method imagen() = "i.png"
}

object j inherits LimiteSup
{
	method imagen() = "j.png"
}

object fondoStatus
{
	method imagen() = "fondoStatus.png"
}

object agua
{
	method imagen() = "agua.png"
	
	method producirEfecto(){}

}

object barcoDePesca 
{
	const puntos=10
	
	method imagen() = "barcoDePesca.png"
	
	method producirEfecto() {barcoDeBatalla.modificarPuntaje(puntos)}
	
}

object barcoNormal 
{
	const puntos=5
	
	method imagen() = "barcoNormal.png"
	
	method producirEfecto() {barcoDeBatalla.modificarPuntaje(puntos)}
	
}

object barcoVelero 
{
	const puntos=15
	
	method imagen() = "barcoVelero.png"
	
	method producirEfecto() {barcoDeBatalla.modificarPuntaje(puntos)}
}

object barcoVikingo 
{
	const puntos=20
	
	method imagen() = "barcoVikingo.png"
	
	method producirEfecto() {barcoDeBatalla.modificarPuntaje(puntos)}
}

object crucero 
{
	const puntos=150
	
	method imagen() = "crucero.png"
	
	method producirEfecto() {barcoDeBatalla.modificarPuntaje(puntos)}
}

object motoAcuatica 
{
	const puntos=-20
	
	method imagen() = "motoAcuatica.png"
	
	method producirEfecto() {barcoDeBatalla.modificarPuntaje(puntos)}
}

object nadador 
{
	const puntos=-10
	
	method imagen() = "nadador.png"
	
	method producirEfecto() {barcoDeBatalla.modificarPuntaje(puntos)}
}
object bomba 
{
	const afectaVida=-1
	
	method imagen() = "bomba.png"
	
	method producirEfecto() {barcoDeBatalla.modificarVida(afectaVida)}
}

object vida 
{	
	const afectaVida=1
	
	method imagen() = "vida.png"
	
	method producirEfecto() {barcoDeBatalla.modificarVida(afectaVida)}
}