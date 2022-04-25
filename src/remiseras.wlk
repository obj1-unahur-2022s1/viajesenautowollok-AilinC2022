/*
 * definir remiseras y clientes.
 */
 
 //clientes:
 
 object ludmila {
 	method precioPorKm() = 18
 }

object anaMaria {
	var estabilidadEconomica = true
	
	method estaEstable() {
		return estabilidadEconomica
	}
	
	method precioPorKm() {
		if(self.estaEstable()){
			return 30
		} 
		else{
			return 25
		}
	}
}

object teresa {
	var precioInicial = 22
	method precioPorKm() = precioInicial
}

//Melina es una cadeta, trabaja para las otras clientas
object melina {
	var clienteActual = teresa
	
	method estaTrabajandoPara(unCliente) {
		clienteActual = unCliente
	}	
	method precioPorKm() = clienteActual.precioPorKm() - 3
}


//remiseras conductoras

object roxana {
	method precioPorViaje(cliente, kms) = cliente.precioPorKm() * kms
}

object gabriela {
	method precioPorViaje(cliente, kms) = (cliente.precioPorKm() * kms) + (cliente.precioPorKm() * kms * 0.2)
}

object mariela {
	method precioPorViaje(cliente, kms) = 50.max(cliente.precioPorKm() * kms)
}

object juana {
	method precioPorViaje(cliente, kms) {
		if (kms <= 8){
			return 100
		}
		else{
			return 200
		}
	}
}

//Lucia remisera que cubre reemplazos
object lucia {
	var remiseraALaQueReemplaza = mariela
	
	method estaReemplazandoA(unaRemisera) {
		remiseraALaQueReemplaza	= unaRemisera
	}
	method precioPorViaje(cliente, kms) = remiseraALaQueReemplaza.precioPorViaje(cliente, kms)
}

