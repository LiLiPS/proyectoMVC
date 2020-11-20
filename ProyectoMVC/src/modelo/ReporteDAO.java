//Parada Sánchez Liliana
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javabeans.ReporteBean;

public class ReporteDAO {
	
	public static List<ReporteBean> getReporteBeansById(int id){
		BD bdConexion = new BD();
        List<ReporteBean> lista = new ArrayList<ReporteBean>();
        String instruccion = "select horario.clave_grupo, usuario.clave_usuario, materia.clave_materia, materia.nombre as materia, horario.grupo, horario.aula, horario.alumnos, materia.abreviatura_carrera as abreviaturaCarrera,\r\n" + 
        		"	   materia.semestre, horario.lunes, horario.martes, horario.miercoles, horario.jueves, horario.viernes, materia.horas_t, materia.horas_p, materia.creditos,\r\n" + 
        		"	   usuario.horas, CONCAT(usuario.titulo, ' ', usuario.nombre, ' ', usuario.apellido_paterno,' ', usuario.apellido_materno) as nombreMaestro from\r\n" + 
        		"	   horario JOIN usuario on horario.id_usuario = usuario.id_usuario JOIN materia on materia.id_materia = horario.id_materia WHERE usuario.id_usuario = ?;";
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion); 
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();  
            while(rs.next()){  
                ReporteBean r = new ReporteBean();  
                r.setClave_maestro(rs.getString("clave_usuario"));
                r.setClave_materia(rs.getString("clave_materia"));
                r.setMateria(rs.getString("materia"));
                r.setGrupo(rs.getString("grupo"));
                r.setAula(rs.getString("aula"));
                r.setAlumnos(rs.getInt("alumnos"));
                r.setAbreviaturaCarrera(rs.getString("abreviaturaCarrera"));
                r.setSemestre(rs.getInt("semestre"));
                r.setLunes(rs.getString("lunes"));
                r.setMartes(rs.getString("martes"));
                r.setMiercoles(rs.getString("miercoles"));
                r.setJueves(rs.getString("jueves"));
                r.setViernes(rs.getString("viernes"));
                r.setHoras_t(rs.getInt("horas_t"));
                r.setHoras_p(rs.getInt("horas_p"));
                r.setCreditos(rs.getInt("creditos"));
                r.setHoras(rs.getInt("horas"));
                r.setNombreMaestro(rs.getString("nombreMaestro"));
                                
                lista.add(r);  
            }  
            con.close();  
        }catch(Exception e){
        	e.printStackTrace();
        }  
          
        return lista;  
    }

}
