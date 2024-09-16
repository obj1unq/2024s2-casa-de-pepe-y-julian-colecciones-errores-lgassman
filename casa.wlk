import cosas.* 
import cuentas.*

object casa {
	const property cosas = []
	var property cuenta = cuentaCorriente

	method comprar(cosa) {
		cosas.add(cosa)
		cuenta.extraer(cosa.precio()) 
	}
	method cantidadDeCosasCompradas() {
		return cosas.size()
	}

	method tieneAlgun(categoria) {
		return cosas.any({cosa => cosa.categoria() == categoria})
	}

	method vieneDeComprar(categoria) {
		return not cosas.isEmpty() and cosas.last().categoria() == categoria
	}

	method esDerrochona() {
		return self.total() >= 9000
	}
	method total() {
		return cosas.sum({cosa => cosa.precio()})
	}

	method compraMasCara() {
		return cosas.max({cosa.precio()})
	}
	method comprados(categoria) {
		return cosas.filter({cosa => cosa.categoria() == categoria})
	}
	method malaEpoca() {
		return cosas.all({cosa => cosa.categoria() == comida})
	}
	method queFaltaComprar(lista){
		return lista.filter({cosa => not self.comprada(cosa)})
	}
	method comprada(cosa) {
		return cosas.contains(cosa)
	}
	method faltaComida() {
		return cosas.count({cosa => cosa.categoria() == comida}) < 2
	}
	method categoriasCompradas() {
		return cosas.map({cosa => cosa.categoria()}).asSet()
	}


}
