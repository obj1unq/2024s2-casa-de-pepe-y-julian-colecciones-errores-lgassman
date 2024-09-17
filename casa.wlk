import cosas.* 
import cuentas.*
 
object casa {
	const property cosas = []
	var property cuenta = cuentaCorriente

	method comprar(cosa) {
		cuenta.extraer(cosa.precio())
		cosas.add(cosa)
	}
	
	method cantidadDeCosasCompradas() {
		return cosas.size()
	}

	method tieneAlgun(categoria) {
		return cosas.any({cosa => cosa.categoria() == categoria})
	}

	method ultimoComprado() {
		return cosas.last()
	}
	method vieneDeComprar(categoria) {
		return not cosas.isEmpty() and self.ultimoComprado().categoria() == categoria
	}

	method esDerrochona() {
		return self.total() >= 9000
	}

	method total() {
		return cosas.sum({cosa => cosa.precio()})
		//return cosas.map({cosa => cosa.precio()}).sum()
	}

	method compraMasCara() {
		return cosas.max({cosa => cosa.precio()})
		// return cosas.map({cosa => cosa.precio()}).max() => Esto no está bien, porque devuelve el número y yo quería la cosa
	}

	method comprados(categoria) {
		return cosas.filter({cosa => cosa.categoria() == categoria})
	}

	method malaEpoca() {
		//return cosas.all({cosa => cosa.categoria() == comida}) // No está taaaan mal para este caso particular, pero suele ser feo comparar contra un objeto global
		return cosas.all({cosa => cosa.categoria().esComestible()}) //Se puede evitar el warning??? Sí! con polimorfismo
	}

	method queFaltaComprar(lista){
		return lista.filter({cosa => not self.comprada(cosa)})
	}

	method comprada(cosa) {
		return cosas.contains(cosa)
	}

	method cantidadDeComida() {
		return cosas.count({cosa => cosa.categoria().esComestible()})
		//alternativa return self.comprados(comida).size() 		
		//alternativa return cosas.filter({cosa => cosa.categoria().esComestible()}).size() 
		//count es igual a filter + size. Preferimos siempre count
	}
	method faltaComida() {
		return self.cantidadDeComida() < 2 
	}

	method categoriasCompradas() {
		return cosas.map({cosa => cosa.categoria()}).asSet()
	}

}
