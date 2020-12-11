//Parada Sánchez Liliana
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javabeans.SabanaBean;

public class SabanaDAO {
	public static List<SabanaBean> getSabanaBean(int carrera){
		BD bdConexion = new BD();
        List<SabanaBean> lista = new ArrayList<SabanaBean>();
        String instruccion = "select * from view_sabana where pk_carrera = ?";
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion); 
            ps.setInt(1, carrera); 
            ResultSet rs = ps.executeQuery();  
            while(rs.next()){  
                SabanaBean s = new SabanaBean();  
                s.setClave_horario(rs.getString("clave_grupo"));
                s.setClave_materia(rs.getString("clave_materia"));
                s.setClave_carrera(rs.getString("abreviatura_carrera"));
                s.setMateria(rs.getString("nombreMateria"));
                s.setCarrera(rs.getString("nombre_carrera"));
                s.setNombreMaestro(rs.getString("nombreMaestro"));
                s.setPeriodo(rs.getString("periodo"));
                s.setTurno(rs.getString("turno"));
                s.setGrupo(rs.getString("grupo"));
                s.setAlumnos(rs.getInt("alumnos"));
                s.setSemestre(rs.getInt("semestre"));
                s.setCreditos(rs.getInt("creditos"));
                s.setPk_carrera(rs.getInt("pk_carrera"));
                s.setPk_grupo(rs.getInt("pk_grupo"));
                s.setFk_materia(rs.getInt("fk_materia"));
                s.setFk_usuario(rs.getInt("fk_usuario"));
                s.setAula(rs.getString("aula"));
                
                lista.add(s);  
            }  
            con.close();  
        }catch(Exception e){
        	e.printStackTrace();
        }  
          
        return lista;  
    }
	
	public static List<SabanaBean> getSabanabyClave(String clave){ 
		BD bdConexion = new BD();
        List<SabanaBean> lista = new ArrayList<SabanaBean>(); 
        String instruccion = "select * from view_sabana where clave_grupo LIKE ?";
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion);  
            ps.setString(1,"%" + clave + "%");  
            ResultSet rs = ps.executeQuery(); 
            while(rs.next()){  
            	SabanaBean s = new SabanaBean();  
                s.setClave_horario(rs.getString("clave_grupo"));
                s.setClave_materia(rs.getString("clave_materia"));
                s.setClave_carrera(rs.getString("abreviatura_carrera"));
                s.setMateria(rs.getString("nombreMateria"));
                s.setCarrera(rs.getString("nombre_carrera"));
                s.setNombreMaestro(rs.getString("nombreMaestro"));
                s.setPeriodo(rs.getString("periodo"));
                s.setTurno(rs.getString("turno"));
                s.setGrupo(rs.getString("grupo"));
                s.setAlumnos(rs.getInt("alumnos"));
                s.setSemestre(rs.getInt("semestre"));
                s.setCreditos(rs.getInt("creditos"));
                s.setPk_carrera(rs.getInt("pk_carrera"));
                s.setPk_grupo(rs.getInt("pk_grupo"));
                s.setFk_materia(rs.getInt("fk_materia"));
                s.setFk_usuario(rs.getInt("fk_usuario"));
                s.setAula(rs.getString("aula"));
                
                lista.add(s);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return lista;  
    }
}
