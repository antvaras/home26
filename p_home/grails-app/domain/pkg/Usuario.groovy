package pkg

class Usuario {
	String	nombre
	String	apellidos	
	Date	fecha_nacimiento
	String	email

	// Relaciones 
	static hasMAny = [cuentas_perfiles_usuarios: Cuenta_perfil_usuario]

    static constraints = {
    }
}
