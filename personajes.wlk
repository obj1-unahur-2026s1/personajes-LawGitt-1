import armas.*

object floki {
    var armaActual = ballesta

    method encontrar(elemento) {
        elemento.recibeAtaque(armaActual.potencia)
        armaActual.usar()
    }

    method cambiarArma(arma) {armaActual = arma}
}

object mario {
    var valorRecolectado = 0
    var ultimAaltura = 0

    method encontrar(elemento) {
        valorRecolectado += elemento.valorQueOtorga()
        elemento.recibeTrabajo()
        ultimAaltura = elemento.altura()
    }

    method esFeliz() = valorRecolectado >= 50 or ultimAaltura >= 10
}

object luisa {
    var personajeActual = floki

    method asignarPersonajeActual(personaje) {personajeActual = personaje}

    method aparece(elemento) {personajeActual.encontrar(elemento)}
}

