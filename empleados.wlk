object gimenez {
    var fondos = 300000

    method fondos(){
        return fondos
    }

    method pagar(empleado){
        fondos = fondos - empleado.sueldo()
        empleado.cobrarSueldo()
    }

}

object galvan{
    var sueldo = 15000
    var deuda = 0
    var dinero = 0

    method cambiarSueldo(valor){
        sueldo = valor
    }

    method sueldo(){
        return sueldo
    }

    method cobrarSueldo(){
        dinero = sueldo
        self.pagarDeudas()
    }

    method pagarDeudas(){
        if (dinero >= deuda){
            deuda = 0
            dinero = dinero + (dinero - deuda)
        }
        else 
            deuda = deuda - dinero
    }

    method dinero(){
        return dinero
    }

    method deuda(){
        return deuda
    }

    method gastar(cuanto){
        if (dinero >= cuanto){
            dinero = dinero - cuanto
        }
        else
            deuda = deuda + (cuanto - dinero)
    }

}

object baigorria {
    var empanadas = 0
    var sueldoCobrado = 0
    var total = 0

    method vender(cantidad){
        empanadas = empanadas + cantidad
    }

    method sueldo(){
        return 15 * empanadas
    }

    method empanadas(){
        return empanadas
    }

    method cobrarSueldo(){
        sueldoCobrado = self.sueldo()
        self.totalAcumulador()
        empanadas = 0
    }

    method totalAcumulador(){
        total = total + sueldoCobrado
    }

    method totalCobrado(){
        return total
    }
}
