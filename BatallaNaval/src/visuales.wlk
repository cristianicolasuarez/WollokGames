import wollok.game.*
object random
{
	method fila()
	{
		return (1..27).anyOne()
	}
	
	method columna()
	{
		return (2..11).anyOne()
	}
	
}

object luigi
{
	method imagen() = "luigi.png"
}

object mario
{
	method imagen() = "mario.png"
}

	 
object mira
{
	var posicion = new Position(1,11)
	method imagen() = "mira.png"
	method posicion() = posicion
}

object wat
{
	method imagen() = "wat.png"
}

object blanco
{
	method imagen() ="fondo.png"
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

object k inherits LimiteSup
{
	method imagen() = "k.png"
}

object l inherits LimiteSup
{
	method imagen() = "l.png"
}

object m inherits LimiteSup
{
	method imagen() = "m.png"
}

object n inherits LimiteSup
{
	method imagen() = "n.png"
}

object o inherits LimiteSup
{
	method imagen() = "o.png"
}

object p inherits LimiteSup
{
	method imagen() = "p.png"
}

object q inherits LimiteSup
{
	method imagen() = "q.png"
}

object r inherits LimiteSup
{
	method imagen() = "r.png"
}

object s inherits LimiteSup
{
	method imagen() = "s.png"
}

object t inherits LimiteSup
{
	method imagen() = "t.png"
}

object u inherits LimiteSup
{
	method imagen() = "u.png"
}

object v inherits LimiteSup
{
	method imagen() = "v.png"
}

object w inherits LimiteSup
{
	method imagen() = "w.png"
}

object x inherits LimiteSup
{
	method imagen() = "x.png"
}

object y inherits LimiteSup
{
	method imagen() = "y.png"
}

object z inherits LimiteSup
{
	method imagen() = "z.png"
}

object fondoStatus
{
	method imagen() = "fondoStatus.png"
}

object agua
{
	method imagen() = "agua.png"
}

object barcoDePesca
{
	method imagen() = "barcoDePesca.png"
}

object barcoNormal
{
	method imagen() = "barcoNormal.png"
}

object barcoVelero
{
	method imagen() = "barcoVelero.png"
}

object barcoVikingo
{
	method imagen() = "barcoVikingo.png"
}

object crucero
{
	method imagen() = "crucero.png"
}

object motoAcuatica
{
	method imagen() = "motoAcuatica.png"
}

object nadador
{
	method imagen() = "nadador.png"
}
object bomba
{
	method imagen() = "bomba.png"
}

object vida 
{
	method imagen() = "vida.png"
}