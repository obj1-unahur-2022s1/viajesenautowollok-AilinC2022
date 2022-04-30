/*
 * Clientes y remiseras: OK - Ojo que te faltaron algunos metodos de indicacion que cambian el valor a los atributos
 * Revisa los comentarios que te dejo dentro de los métodos
 * definir remiseras y clientes.
 */
 
 //clientes:
 
 object ludmila {
 	method precioPorKm() = 18
 }

object anaMaria {
	/* Te falto el metodo para poder cambiar el valor a  estabilidadEconomica*/
	var estabilidadEconomica = true
	
	method estaEstable() {
		return estabilidadEconomica
	}
	/*Te dejo otra forma resumida de escribir este codigo */
	method precioPorKm() = if(self.estaEstable()){30} else {25}
	
}

object teresa {
	/* Te falto el metodo para poder cambiar el valor a  precioInicial*/
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
	/* Para sumar un % podes multiplicar por 1.% */
	method precioPorViaje(cliente, kms) = (cliente.precioPorKm() * kms) * 1.2
}

object mariela {
	/* Bien utilizando el max() */
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

