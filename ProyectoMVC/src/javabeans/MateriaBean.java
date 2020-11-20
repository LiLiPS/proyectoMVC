//Parada Sánchez Liliana
package javabeans;

public class MateriaBean {
	// horas_t: teóricas horas_p: prácticas
	private int pk_materia, fk_carrera, semestre, creditos, horas_t, horas_p;
	private String clave_materia, nombre;

	public int getPk_materia() {
		return pk_materia;
	}

	public int getFk_carrera() {
		return fk_carrera;
	}

	public int getSemestre() {
		return semestre;
	}

	public int getCreditos() {
		return creditos;
	}

	public int getHoras_t() {
		return horas_t;
	}

	public int getHoras_p() {
		return horas_p;
	}

	public String getClave_materia() {
		return clave_materia;
	}

	public String getNombre() {
		return nombre;
	}

	public void setPk_materia(int pk_materia) {
		this.pk_materia = pk_materia;
	}

	public void setFk_carrera(int fk_carrera) {
		this.fk_carrera = fk_carrera;
	}

	public void setSemestre(int semestre) {
		this.semestre = semestre;
	}

	public void setCreditos(int creditos) {
		this.creditos = creditos;
	}

	public void setHoras_t(int horas_t) {
		this.horas_t = horas_t;
	}

	public void setHoras_p(int horas_p) {
		this.horas_p = horas_p;
	}

	public void setClave_materia(String clave_materia) {
		this.clave_materia = clave_materia;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
}
