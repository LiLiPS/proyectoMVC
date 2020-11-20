//Parada Sánchez Liliana
package javabeans;

public class HorarioBean {
	private int pk_horario, fk_grupo, fk_hora, dia;

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
}
