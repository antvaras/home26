package pkg

class Cuenta_perfil_usuario {
	Usuario usuario
	Boolean	falabella
	Boolean	ripley

	// Relaciones
	
	static belongsTo = Usuario
	static hasMany = [cuentas: Cuenta]

    static constraints = {
    }
}
