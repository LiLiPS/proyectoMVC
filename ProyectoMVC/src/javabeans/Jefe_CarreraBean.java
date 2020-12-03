package javabeans;

public class Jefe_CarreraBean {
	private int pk_jefe_carrera, fk_usuario, fk_carrera;
	private String nombreMaestro, nombre_carrera;

	public int getPk_jefe_carrera() {
		return pk_jefe_carrera;
	}

	public int getFk_usuario() {
		return fk_usuario;
	}

	public int getFk_carrera() {
		return fk_carrera;
	}

	public void setPk_jefe_carrera(int pk_jefe_carrera) {
		this.pk_jefe_carrera = pk_jefe_carrera;
	}

	public void setFk_usuario(int fk_usuario) {
		this.fk_usuario = fk_usuario;
	}

	public void setFk_carrera(int fk_carrera) {
		this.fk_carrera = fk_carrera;
	}

	public String getNombre_carrera() {
		return nombre_carrera;
	}

	public void setNombre_carrera(String nombre_carrera) {
		this.nombre_carrera = nombre_carrera;
	}

	public String getNombreMaestro() {
		return nombreMaestro;
	}

	public void setNombreMaestro(String nombreMaestro) {
		this.nombreMaestro = nombreMaestro;
	}

}
