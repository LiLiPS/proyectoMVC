package javabeans;

public class LoginBean {
	private int pk_usuario, pk_rol, pk_carrera, horas;
	private String clave_usuario, titulo, nombre, apellido_paterno, apellido_materno, rol, telefono, correo, nombre_carrera, departamento;

	public int getPk_usuario() {
		return pk_usuario;
	}

	public int getPk_rol() {
		return pk_rol;
	}

	public String getTitulo() {
		return titulo;
	}

	public String getNombre() {
		return nombre;
	}

	public String getApellido_paterno() {
		return apellido_paterno;
	}

	public String getApellido_materno() {
		return apellido_materno;
	}

	public String getRol() {
		return rol;
	}

	public void setPk_usuario(int pk_usuario) {
		this.pk_usuario = pk_usuario;
	}

	public void setPk_rol(int pk_rol) {
		this.pk_rol = pk_rol;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setApellido_paterno(String apellido_paterno) {
		this.apellido_paterno = apellido_paterno;
	}

	public void setApellido_materno(String apellido_materno) {
		this.apellido_materno = apellido_materno;
	}

	public void setRol(String rol) {
		this.rol = rol;
	}

	public int getPk_carrera() {
		return pk_carrera;
	}

	public String getTelefono() {
		return telefono;
	}

	public String getCorreo() {
		return correo;
	}

	public String getNombre_carrera() {
		return nombre_carrera;
	}

	public String getDepartamento() {
		return departamento;
	}

	public void setPk_carrera(int pk_carrera) {
		this.pk_carrera = pk_carrera;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public void setNombre_carrera(String nombre_carrera) {
		this.nombre_carrera = nombre_carrera;
	}

	public void setDepartamento(String departamento) {
		this.departamento = departamento;
	}

	public String getClave_usuario() {
		return clave_usuario;
	}

	public void setClave_usuario(String clave_usuario) {
		this.clave_usuario = clave_usuario;
	}

	public int getHoras() {
		return horas;
	}

	public void setHoras(int horas) {
		this.horas = horas;
	}
}
