//Parada Sánchez Liliana
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javabeans.MateriaBean;

public class MateriaDAO {
	
	public static int guardarMateria(MateriaBean m){ 
		BD bdConexion = new BD();
        int status = 0; 
        
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement("INSERT INTO materia(fk_carrera,clave_materia,nombre,semestre, horas_t, horas_p, creditos) values (?,?,?,?,?,?,?)");  
            ps.setInt(1, m.getFk_carrera());
            ps.setString(2, m.getClave_materia());  
            ps.setString(3, m.getNombre()); 
            ps.setInt(4, m.getSemestre());
            ps.setInt(5, m.getHoras_t());
            ps.setInt(6, m.getHoras_p());
            ps.setInt(7, m.getCreditos());
              
            status = ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return status;  
    }  
	
	public static int actualizarMateria(MateriaBean m){  
		BD bdConexion = new BD();
        int status = 0;  
        
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement("UPDATE materia SET fk_carrera=?, clave_materia=?,nombre=?,semestre=?,horas_t=?,horas_p=?,creditos=? where pk_materia=?");  
            ps.setInt(1, m.getFk_carrera());
            ps.setString(2, m.getClave_materia());  
            ps.setString(3, m.getNombre()); 
            ps.setInt(4, m.getSemestre());
            ps.setInt(5, m.getHoras_t());
            ps.setInt(6, m.getHoras_p());
            ps.setInt(7, m.getCreditos());
            ps.setInt(8, m.getPk_materia());
              
            status = ps.executeUpdate();  
            
            con.close();  
        }catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return status;  
    }
	
	public static int borrarMateria(int id_materia){  
		BD bdConexion = new BD();
        int status = 0;
        
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement("delete from materia where pk_materia=?");
            ps.setInt(1,id_materia);
            status=ps.executeUpdate();
            
            con.close();  
        }catch(Exception e){
        	e.printStackTrace();
        }  
          
        return status;  
    }
	
	public static MateriaBean getMateriabyID(int id){
		BD bdConexion = new BD();
        MateriaBean m = new MateriaBean();  
        String instruccion = "select * from view_materias where pk_materia=?";
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion);  
            ps.setInt(1,id);  
            ResultSet rs = ps.executeQuery();  
            if(rs.next()){ 
            	m.setPk_materia(rs.getInt("pk_materia"));
                m.setFk_carrera(rs.getInt("fk_carrera"));
                m.setNombre_carrera(rs.getString("nombre_carrera"));
                m.setClave_materia(rs.getString("clave_materia"));
                m.setNombre(rs.getString("nombre"));  
                m.setSemestre(rs.getInt("semestre"));
                m.setHoras_t(rs.getInt("horas_t"));
                m.setHoras_p(rs.getInt("horas_p"));
                m.setCreditos(rs.getInt("creditos"));
            }  
            con.close();  
        }catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return m;  
    } 
	
	public static List<MateriaBean> getMaterias(){
		BD bdConexion = new BD();
        List<MateriaBean> lista = new ArrayList<MateriaBean>();
        String instruccion = "select * from view_materias";
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion);  
            ResultSet rs = ps.executeQuery();  
            while(rs.next()){  
                MateriaBean m = new MateriaBean();  
                m.setPk_materia(rs.getInt("pk_materia"));
                m.setFk_carrera(rs.getInt("fk_carrera"));
                m.setNombre_carrera(rs.getString("nombre_carrera"));
                m.setClave_materia(rs.getString("clave_materia"));
                m.setNombre(rs.getString("nombre"));  
                m.setSemestre(rs.getInt("semestre"));
                m.setHoras_t(rs.getInt("horas_t"));
                m.setHoras_p(rs.getInt("horas_p"));
                m.setCreditos(rs.getInt("creditos"));
                lista.add(m);  
            }  
            con.close();  
        }catch(Exception e){
        	e.printStackTrace();
        }  
          
        return lista;  
    }
	
	public static List<MateriaBean> getMateriasbyClave(String clave){ 
		BD bdConexion = new BD();
        List<MateriaBean> lista = new ArrayList<MateriaBean>(); 
        String instruccion = "select * from view_materias where clave_materia LIKE ?";
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion);  
            ps.setString(1,"%" + clave + "%");  
            ResultSet rs = ps.executeQuery(); 
            while(rs.next()){  
            	MateriaBean m = new MateriaBean();  
                m.setPk_materia(rs.getInt("pk_materia"));
                m.setFk_carrera(rs.getInt("fk_carrera"));
                m.setNombre_carrera(rs.getString("nombre_carrera"));
                m.setClave_materia(rs.getString("clave_materia"));
                m.setNombre(rs.getString("nombre"));  
                m.setSemestre(rs.getInt("semestre"));
                m.setHoras_t(rs.getInt("horas_t"));
                m.setHoras_p(rs.getInt("horas_p"));
                m.setCreditos(rs.getInt("creditos"));
                lista.add(m);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return lista;  
    }
	
	public static List<MateriaBean> getMateriasbyCarrera(int id_carrera){ 
		BD bdConexion = new BD();
        List<MateriaBean> lista = new ArrayList<MateriaBean>(); 
        String instruccion = "select * from view_materias where fk_carrera = ?";
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion);  
            ps.setInt(1,id_carrera);  
            ResultSet rs = ps.executeQuery(); 
            while(rs.next()){  
            	MateriaBean m = new MateriaBean();  
                m.setPk_materia(rs.getInt("pk_materia"));
                m.setFk_carrera(rs.getInt("fk_carrera"));
                m.setNombre_carrera(rs.getString("nombre_carrera"));
                m.setClave_materia(rs.getString("clave_materia"));
                m.setNombre(rs.getString("nombre"));  
                m.setSemestre(rs.getInt("semestre"));
                m.setHoras_t(rs.getInt("horas_t"));
                m.setHoras_p(rs.getInt("horas_p"));
                m.setCreditos(rs.getInt("creditos"));
                lista.add(m);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return lista;  
    }

}
