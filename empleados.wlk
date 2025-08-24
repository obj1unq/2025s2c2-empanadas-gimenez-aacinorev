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

    method cambiarSueldo(valor){
        sueldo = valor
    }

    method sueldo(){
        return sueldo
    }

    method cobrarSueldo(){
        return "Cobré :)"
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
