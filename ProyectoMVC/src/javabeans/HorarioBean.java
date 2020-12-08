//Parada Sánchez Liliana
package javabeans;

public class HorarioBean {
	private int pk_horario, fk_grupo, fk_hora, dia, alumnos;
	private String grupo, aula, hora;

	public int getPk_horario() {
		return pk_horario;
	}

	public int getFk_grupo() {
		return fk_grupo;
	}

	public int getFk_hora() {
		return fk_hora;
	}

	public int getDia() {
		return dia;
	}

	public void setPk_horario(int pk_horario) {
		this.pk_horario = pk_horario;
	}

	public void setFk_grupo(int fk_grupo) {
		this.fk_grupo = fk_grupo;
	}

	public void setFk_hora(int fk_hora) {
		this.fk_hora = fk_hora;
	}

	public void setDia(int dia) {
		this.dia = dia;
	}

	public int getAlumnos() {
		return alumnos;
	}

	public void setAlumnos(int alumnos) {
		this.alumnos = alumnos;
	}

	public String getAula() {
		return aula;
	}

	public void setAula(String aula) {
		this.aula = aula;
	}

	public String getGrupo() {
		return grupo;
	}

	public void setGrupo(String grupo) {
		this.grupo = grupo;
	}

	public String getHora() {
		return hora;
	}

	public void setHora(String hora) {
		this.hora = hora;
	}
}
