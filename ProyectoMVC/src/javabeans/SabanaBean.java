//Parada Sánchez Liliana
package javabeans;

public class SabanaBean {
	private String clave_horario, clave_materia, clave_carrera, materia, carrera;
	private String nombreMaestro, periodo, turno, grupo;
	private int alumnos, semestre, creditos, pk_grupo, fk_usuario, fk_materia, pk_carrera;
	private String lunes, martes, miercoles, jueves, viernes, aula;

	public String getClave_horario() {
		return clave_horario;
	}

	public String getClave_materia() {
		return clave_materia;
	}

	public String getClave_carrera() {
		return clave_carrera;
	}

	public String getMateria() {
		return materia;
	}

	public String getCarrera() {
		return carrera;
	}

	public String getNombreMaestro() {
		return nombreMaestro;
	}

	public String getPeriodo() {
		return periodo;
	}

	public String getTurno() {
		return turno;
	}

	public String getGrupo() {
		return grupo;
	}

	public int getAlumnos() {
		return alumnos;
	}

	public int getSemestre() {
		return semestre;
	}

	public int getCreditos() {
		return creditos;
	}

	public String getLunes() {
		return lunes;
	}

	public String getMartes() {
		return martes;
	}

	public String getMiercoles() {
		return miercoles;
	}

	public String getJueves() {
		return jueves;
	}

	public String getViernes() {
		return viernes;
	}

	public String getAula() {
		return aula;
	}

	public void setClave_horario(String clave_horario) {
		this.clave_horario = clave_horario;
	}

	public void setClave_materia(String clave_materia) {
		this.clave_materia = clave_materia;
	}

	public void setClave_carrera(String clave_carrera) {
		this.clave_carrera = clave_carrera;
	}

	public void setMateria(String materia) {
		this.materia = materia;
	}

	public void setCarrera(String carrera) {
		this.carrera = carrera;
	}

	public void setNombreMaestro(String nombreMaestro) {
		this.nombreMaestro = nombreMaestro;
	}

	public void setPeriodo(String periodo) {
		this.periodo = periodo;
	}

	public void setTurno(String turno) {
		this.turno = turno;
	}

	public void setGrupo(String grupo) {
		this.grupo = grupo;
	}

	public void setAlumnos(int alumnos) {
		this.alumnos = alumnos;
	}

	public void setSemestre(int semestre) {
		this.semestre = semestre;
	}

	public void setCreditos(int creditos) {
		this.creditos = creditos;
	}

	public void setLunes(String lunes) {
		this.lunes = lunes;
	}

	public void setMartes(String martes) {
		this.martes = martes;
	}

	public void setMiercoles(String miercoles) {
		this.miercoles = miercoles;
	}

	public void setJueves(String jueves) {
		this.jueves = jueves;
	}

	public void setViernes(String viernes) {
		this.viernes = viernes;
	}

	public void setAula(String aula) {
		this.aula = aula;
	}

	public int getPk_grupo() {
		return pk_grupo;
	}

	public void setPk_grupo(int pk_grupo) {
		this.pk_grupo = pk_grupo;
	}

	public int getFk_usuario() {
		return fk_usuario;
	}

	public void setFk_usuario(int fk_usuario) {
		this.fk_usuario = fk_usuario;
	}

	public int getFk_materia() {
		return fk_materia;
	}

	public void setFk_materia(int fk_materia) {
		this.fk_materia = fk_materia;
	}

	public int getPk_carrera() {
		return pk_carrera;
	}

	public void setPk_carrera(int pk_carrera) {
		this.pk_carrera = pk_carrera;
	}
}
