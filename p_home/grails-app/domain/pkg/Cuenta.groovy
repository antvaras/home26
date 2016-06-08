package pkg

class Cuenta {
	//Cuenta_perfil_usuario cuenta_perfil_usuario
	String empresa
	String	producto	
	Integer	precio
	Integer	cuotas
	Date	fecha_compra

	// Relaciones

	//static belongsTo = Cuenta_perfil_usuario //esta relacion va en la tabla cuenta_perfil_usuario

    static constraints = {
    }
}
