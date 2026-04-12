object  castillo {
  var nivelDeDefensa = 150

  method altura() = 20

  method recibeAtaque(potencia) {
    nivelDeDefensa -= potencia
  }

  method recibeTrabajo() {
    nivelDeDefensa = 200.min(nivelDeDefensa + 20)
  }

  method valorQueOtorga() = nivelDeDefensa *0,2
}

object aurora {
    var estaViva = true

    method altura() = 1

    method recibeAtaque(potencia) {
        if (potencia >= 10) estaViva = false
    }
    
    method valorQueOtorga() = 15 
      
    method recibeAtaque(potencia) {
        if (potencia >= 10) estaViva = false
    }
}

object tipa {
    var altura = 8

    method altura() {return}

    method recibeAtaque(potencia) {}

    method recibeTrabajo() {altura +=1}
}