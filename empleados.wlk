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

    method sueldo(){
        return sueldo
    }

    method sueldo(_sueldo){
        sueldo = _sueldo
    }

    method dinero(){
        return dinero
    }

    method dinero(_dinero){
        dinero = _dinero
    }

    method deuda(_deuda){
        deuda = _deuda
    }

    method deuda(){
        return deuda
    }

    method cambiarSueldo(valor){
        sueldo = valor
    }

    method cobrarSueldo(){
        dinero= dinero + sueldo
        self.pagarDeudas()
    }

    method pagarDeudas(){
        if (dinero >= deuda){
            dinero = dinero - deuda
            deuda = 0
        }
        else{ 
            deuda = deuda - dinero
            dinero = 0
        }
    }

    method gastar(cuanto){
        if (dinero >= cuanto){
            dinero = dinero - cuanto
        }
        else{
            deuda = deuda + (cuanto - dinero)
            dinero = 0
        }
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
