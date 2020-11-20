//Parada Sánchez Liliana
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javabeans.SabanaBean;

public class SabanaDAO {
	public static List<SabanaBean> getSabanaBean(){
		BD bdConexion = new BD();
        List<SabanaBean> lista = new ArrayList<SabanaBean>();
        String instruccion = "select horario.clave_horario, materia.clave_materia, materia.abreviatura_carrera as clave_carrera,"
        					+ " materia.nombre as materia, materia.carrera, CONCAT(usuario.titulo, ' ', usuario.nombre, ' ', "
        					+ "usuario.apellido_paterno,' ', usuario.apellido_materno) as nombreMaestro,\r\n horario.periodo, "
        					+ "horario.turno, horario.grupo, horario.alumnos, materia.semestre, materia.creditos, horario.lunes, "
        					+ "horario.martes, horario.miercoles, horario.jueves, horario.viernes, horario.aula\r\n "
        					+ "from horario JOIN usuario on horario.id_usuario = usuario.id_usuario "
        					+ "JOIN materia on materia.id_materia = horario.id_materia";
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion); 
            
            ResultSet rs = ps.executeQuery();  
            while(rs.next()){  
                SabanaBean s = new SabanaBean();  
                s.setClave_horario(rs.getString("clave_horario"));
                s.setClave_materia(rs.getString("clave_materia"));
                s.setClave_carrera(rs.getString("clave_carrera"));
                s.setMateria(rs.getString("materia"));
                s.setCarrera(rs.getString("carrera"));
                s.setNombreMaestro(rs.getString("nombreMaestro"));
                s.setPeriodo(rs.getString("periodo"));
                s.setTurno(rs.getString("turno"));
                s.setGrupo(rs.getString("grupo"));
                s.setAlumnos(rs.getInt("alumnos"));
                s.setSemestre(rs.getInt("semestre"));
                s.setCreditos(rs.getInt("creditos"));
                s.setLunes(rs.getString("lunes"));
                s.setMartes(rs.getString("martes"));
                s.setMiercoles(rs.getString("miercoles"));
                s.setJueves(rs.getString("jueves"));
                s.setViernes(rs.getString("viernes"));
                s.setAula(rs.getString("aula"));
                
                lista.add(s);  
            }  
            con.close();  
        }catch(Exception e){
        	e.printStackTrace();
        }  
          
        return lista;  
    }
}
