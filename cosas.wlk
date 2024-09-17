//categorias
object electrodomestico{
	method esComestible() {
		return false
	}
}

object mueble {
	method esComestible() {
		return false
	}
}

object comida {
	method esComestible() {
		return true
	}
}

//cosas
object heladera {
	method precio() { return 20000 }
	method categoria() { return electrodomestico }
}

object cama {
	method precio() { return 8000 }
	method categoria() { return mueble }
}

object tiraDeAsado {
	method precio() { return 350 }
	method categoria() { return comida }
}

object paqueteDeFideos {
	method precio() { return 50 }
	method categoria() { return comida }
}

object plancha {
	method precio() { return 1200 }
	method categoria() { return electrodomestico }
}
