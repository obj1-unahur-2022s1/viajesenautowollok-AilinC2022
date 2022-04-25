import remiseras.*

object oficina {
	var primeraRemisera = roxana
	var segundaRemisera = juana
	
	method asignarRemiseras(remisera1, remisera2) {
		primeraRemisera = remisera1
		segundaRemisera = remisera2
	}
	
	method cambiarPrimerRemiserarPor(remisera) {
		primeraRemisera = remisera
	}
	
	method cambiarSegundoRemiseraPor(remisera) {
		segundaRemisera = remisera
	}
	
	method intercambiarRemiseras() {
		self.asignarRemiseras(segundaRemisera, primeraRemisera)
	}
	
	method remiseraElegidaParaViaje(cliente, kms) {
		if(segundaRemisera.precioPorViaje(cliente, kms) < primeraRemisera.precioPorViaje(cliente, kms) and (segundaRemisera.precioPorViaje(cliente, kms) - primeraRemisera.precioPorViaje(cliente, kms)).abs() > 30) {
			return segundaRemisera
		}
		else {
			return primeraRemisera
			}
		}
}
