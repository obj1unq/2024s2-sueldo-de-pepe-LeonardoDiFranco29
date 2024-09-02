/*
// lo hice de 2 maneras hasta con los test esta es la mas corta pero con la explicacion del profe esta mal aunque funcione
object pepe {
	method sueldo(categoria, bonoPorResultado, bonoPorPresentismo, diasFaltados) {
      return categoria.neto() + bonoPorResultado.calcularBono(categoria.neto()) + bonoPorPresentismo.calcularBono(categoria.neto(), diasFaltados)
    }
}
*/

/
object pepe {

    var categoria = cadete
    var bonoResultado = bonoMontoFijo
    var bonoPresentismo = bonoPresentismoNormal
    var faltas = 0
    
    method categoria(_categoria) {
        categoria = _categoria
    }

    method bonoResultado(_bonoResultado) {
            bonoResultado = _bonoResultado
    }

    method bonoPresentismo(_bonoPresentismo) {
            bonoPresentismo = _bonoPresentismo
    }
    method faltas(_faltas) {
            faltas = _faltas
    }
    method sueldo() {
        return self.neto() + self.extraResultado() + self.extraPresentismo()
    }
    method neto() {
        return categoria.neto()
    }
    method extraResultado() {
      return bonoResultado.calcularBono(self)
    }
    method extraPresentismo() {
      return bonoPresentismo.calcularBono(self.neto(), faltas )
    }
    

}

*/




object gerente {
    method neto() {
        return 15000
    }
}

object cadete {
    method neto(){
        return 20000
    }
}

/
object bonoPorcentaje {
    
    method calcularBono(empleado) {
        return empleado.neto() * 0.10
    }
}

object bonoMontoFijo {
    method calcularBono(empleado) {
        return 800
    }
}

object bonoNulo {
    method calcularBono(empleado) {
        return 0
    }
}
*/

/*
object bonoPorcentaje {
    
    method calcularBono(neto) {
        return neto * 0.10
    }
}

object bonoMontoFijo {
    method calcularBono(neto) {
        return 800
    }
}

object bonoNulo {
    method calcularBono(neto) {
        return 0
    }
}


*/

object bonoPresentismoNormal {
    method calcularBono(neto, diasFaltados) {
        if (diasFaltados == 0) {
            return 2000
        } else if (diasFaltados == 1) {
            return 1000
        } else {
            return 0
        }
    }
}

object bonoPresentismoAjuste {
    method calcularBono(neto, diasFaltados) {
        if (diasFaltados == 0) {
            return 100
        } else {
            return 0
        }
    }
}

object bonoPresentismoDemagogico {
    method calcularBono(neto, diasFaltados) {
        if (neto < 18000) {
            return 500
        } else {
            return 300
        }
    }
}

object bonoPresentismoNulo {
    method calcularBono(neto, diasFaltados) {
        return 0
    }
}





