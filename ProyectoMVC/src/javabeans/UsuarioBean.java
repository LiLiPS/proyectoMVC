//Parada Sánchez Liliana
package javabeans;

public class UsuarioBean {
	// horas: horas que se le asignaron al maestro por semana
	private int pk_usuario, fk_carrera, fk_rol, horas;
	// titulo: Ing. Lic.
	private String clave_usuario, titulo, nombre, apellido_materno, apellido_paterno, usuario, contrasena, telefono,
			correo;

	public int getPk_usuario() {
		return pk_usuario;
	}

	public int getFk_carrera() {
		return fk_carrera;
	}

	public int getFk_rol() {
		return fk_rol;
	}

	public int getHoras() {
		return horas;
	}

	public String getClave_usuario() {
		return clave_usuario;
	}

	public String getTitulo() {
		return titulo;
	}

	public String getNombre() {
		return nombre;
	}

	public String getApellido_materno() {
		return apellido_materno;
	}

	public String getApellido_paterno() {
		return apellido_paterno;
	}

	public String getUsuario() {
		return usuario;
	}

	public String getContrasena() {
		return contrasena;
	}

	public String getTelefono() {
		return telefono;
	}

	public String getCorreo() {
		return correo;
	}

	public void setPk_usuario(int pk_usuario) {
		this.pk_usuario = pk_usuario;
	}

	public void setFk_carrera(int fk_carrera) {
		this.fk_carrera = fk_carrera;
	}

	public void setFk_rol(int fk_rol) {
		this.fk_rol = fk_rol;
	}

	public void setHoras(int horas) {
		this.horas = horas;
	}

	public void setClave_usuario(String clave_usuario) {
		this.clave_usuario = clave_usuario;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setApellido_materno(String apellido_materno) {
		this.apellido_materno = apellido_materno;
	}

	public void setApellido_paterno(String apellido_paterno) {
		this.apellido_paterno = apellido_paterno;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

}
