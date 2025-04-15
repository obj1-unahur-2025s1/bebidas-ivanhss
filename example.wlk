object tito {
  var ultimaBebida = null
  var cantidad = 0

  method ultimaBebida(){return ultimaBebida}
  method peso() = 70
  method inerciaBase() = 490

  method consumir(unaCantidad, bebida){
    ultimaBebida = bebida
    cantidad = unaCantidad
  }
  method velocidad(){
    return ultimaBebida.rendimiento(cantidad) * self.inerciaBase() / self.peso()
  }
}

object whisky {
  method rendimiento(cantidad) = 0.9 ** cantidad
  
}

object terere {
  method rendimiento(cantidad) = (0.1 * cantidad).max(1)
}

object cianuro {
  method rendimiento(cantidad) = 0 
}
