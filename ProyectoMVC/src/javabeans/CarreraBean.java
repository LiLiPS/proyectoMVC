//Parada Sánchez Liliana
package javabeans;

public class CarreraBean {
	private int pk_carrera, fk_departamento;
	private String nombre_carrera, abreviatura_carrera, departamento;

	public int getPk_carrera() {
		return pk_carrera;
	}

	public int getFk_departamento() {
		return fk_departamento;
	}

	public String getNombre_carrera() {
		return nombre_carrera;
	}

	public String getAbreviatura_carrera() {
		return abreviatura_carrera;
	}

	public void setPk_carrera(int pk_carrera) {
		this.pk_carrera = pk_carrera;
	}

	public void setFk_departamento(int fk_departamento) {
		this.fk_departamento = fk_departamento;
	}

	public void setNombre_carrera(String nombre_carrera) {
		this.nombre_carrera = nombre_carrera;
	}

	public void setAbreviatura_carrera(String abreviatura_carrera) {
		this.abreviatura_carrera = abreviatura_carrera;
	}

	public String getDepartamento() {
		return departamento;
	}

	public void setDepartamento(String departamento) {
		this.departamento = departamento;
	}

}
