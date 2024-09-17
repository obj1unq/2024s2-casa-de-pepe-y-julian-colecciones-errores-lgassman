import cuentas.*
import casa.*
import cosas.*

describe "test excepciones" {

    test "test ok" {

        cuentaCorriente.saldo(1000)
        cuentaCorriente.extraer(900)
        assert.equals(100, cuentaCorriente.saldo())
    }

    test "test no negativo" {

        cuentaCorriente.saldo(1000)
        assert.throwsException({cuentaCorriente.extraer(1200)})
        assert.equals(1000, cuentaCorriente.saldo())
    }

    test "test casa compra ok" {
        cuentaCorriente.saldo(1000)
        casa.comprar(tiraDeAsado)
        assert.equals(1, casa.cantidadDeCosasCompradas())
        assert.equals(650, cuentaCorriente.saldo())
    }

    test "test casa no puede comprar" {
        cuentaCorriente.saldo(1000)
        assert.throwsException({casa.comprar(plancha)})
        assert.equals(0, casa.cantidadDeCosasCompradas())
        assert.equals(1000, cuentaCorriente.saldo())
    }



}