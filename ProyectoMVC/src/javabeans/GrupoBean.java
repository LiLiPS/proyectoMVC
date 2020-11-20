package javabeans;

public class GrupoBean {
	private int pk_grupo, fk_usuario, fk_materia, alumnos;
	private String clave_grupo, grupo, aula, periodo, turno;

	public int getPk_grupo() {
		return pk_grupo;
	}

	public int getFk_usuario() {
		return fk_usuario;
	}

	public int getFk_materia() {
		return fk_materia;
	}

	public int getAlumnos() {
		return alumnos;
	}

	public String getClave_grupo() {
		return clave_grupo;
	}

	public String getGrupo() {
		return grupo;
	}

	public String getAula() {
		return aula;
	}

	public String getPeriodo() {
		return periodo;
	}

	public String getTurno() {
		return turno;
	}

	public void setPk_grupo(int pk_grupo) {
		this.pk_grupo = pk_grupo;
	}

	public void setFk_usuario(int fk_usuario) {
		this.fk_usuario = fk_usuario;
	}

	public void setFk_materia(int fk_materia) {
		this.fk_materia = fk_materia;
	}

	public void setAlumnos(int alumnos) {
		this.alumnos = alumnos;
	}

	public void setClave_grupo(String clave_grupo) {
		this.clave_grupo = clave_grupo;
	}

	public void setGrupo(String grupo) {
		this.grupo = grupo;
	}

	public void setAula(String aula) {
		this.aula = aula;
	}

	public void setPeriodo(String periodo) {
		this.periodo = periodo;
	}

	public void setTurno(String turno) {
		this.turno = turno;
	}
}
