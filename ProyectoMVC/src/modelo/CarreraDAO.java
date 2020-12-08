package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javabeans.CarreraBean;

public class CarreraDAO {
	public static List<CarreraBean> getCarreras(){
		BD bdConexion = new BD();
        List<CarreraBean> lista = new ArrayList<CarreraBean>();
        String instruccion = "select * from view_carreras";
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion);  
            ResultSet rs = ps.executeQuery();  
            while(rs.next()){  
            	CarreraBean c = new CarreraBean();  
                c.setPk_carrera(rs.getInt("pk_carrera"));
                c.setFk_departamento(rs.getInt("fk_departamento"));
                c.setNombre_carrera(rs.getString("nombre_carrera"));
                c.setAbreviatura_carrera(rs.getString("abreviatura_carrera"));
                c.setDepartamento(rs.getString("departamento")); 
                c.setNombreMaestro(rs.getString("nombreMaestro"));
                lista.add(c);  
            }  
            con.close();  
        }catch(Exception e){
        	e.printStackTrace();
        }  
          
        return lista;  
    }
	
	public static List<CarreraBean> getCarreraJefe(int pk){
		BD bdConexion = new BD();
		List<CarreraBean> lista = new ArrayList<CarreraBean>();
		String instruccion = "select carrera.nombre_carrera, carrera.pk_carrera, jefe_carrera.fk_usuario from jefe_carrera "
				+ "LEFT JOIN carrera ON jefe_carrera.fk_carrera = carrera.pk_carrera "
				+ "where fk_usuario = ?";
		
		try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion);
            ps.setInt(1,pk);  
            ResultSet rs = ps.executeQuery();  
            while(rs.next()){  
            	CarreraBean c = new CarreraBean();  
                c.setPk_carrera(rs.getInt("pk_carrera"));
                c.setNombre_carrera(rs.getString("nombre_carrera"));
                lista.add(c);  
            }  
            con.close();  
        }catch(Exception e){
        	e.printStackTrace();
        }  
          
        return lista;		
	}
	
	public static CarreraBean getCarrerabyID(int id){
		BD bdConexion = new BD();
		CarreraBean c = new CarreraBean();  
        String instruccion = "select * from view_carreras where pk_carrera=?";
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion);  
            ps.setInt(1,id);  
            ResultSet rs = ps.executeQuery();  
            if(rs.next()){ 
            	c.setPk_carrera(rs.getInt("pk_carrera"));
                c.setFk_departamento(rs.getInt("fk_departamento"));
                c.setNombre_carrera(rs.getString("nombre_carrera"));
                c.setAbreviatura_carrera(rs.getString("abreviatura_carrera"));
                c.setNombreMaestro(rs.getString("nombreMaestro"));
                c.setPk_jefe_carrera(rs.getInt("fk_usuario"));
            }  
            con.close();  
        }catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return c;  
    }
	
	public static List<CarreraBean> getCarrerasbyNombre(String nombre){ 
		BD bdConexion = new BD();
        List<CarreraBean> lista = new ArrayList<CarreraBean>(); 
        String instruccion = "select * from view_carreras where nombre_carrera LIKE ?";
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion);  
            ps.setString(1,"%" + nombre + "%");  
            ResultSet rs = ps.executeQuery(); 
            while(rs.next()){  
            	CarreraBean c = new CarreraBean();  
                c.setPk_carrera(rs.getInt("pk_carrera"));
                c.setFk_departamento(rs.getInt("fk_departamento"));
                c.setNombre_carrera(rs.getString("nombre_carrera"));
                c.setAbreviatura_carrera(rs.getString("abreviatura_carrera"));
                c.setDepartamento(rs.getString("departamento"));  
                c.setNombreMaestro(rs.getString("nombreMaestro"));
                lista.add(c);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return lista;  
    }
	
	public static int guardarCarrera(CarreraBean c){ 
		BD bdConexion = new BD();
        int status = 0; 
        
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement("INSERT INTO carrera(fk_departamento,nombre_carrera,abreviatura_carrera) values (?,?,?)");  
            ps.setInt(1, c.getFk_departamento());
            ps.setString(2, c.getNombre_carrera());  
            ps.setString(3, c.getAbreviatura_carrera());
              
            status = ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return status;  
    }
	
	public static int getUlitmaCarrera() {
		BD bdConexion = new BD();
		int pk = 0;
        String instruccion = "select pk_carrera from view_carreras order by pk_carrera desc limit 1";
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion);   
            ResultSet rs = ps.executeQuery();  
            if(rs.next()){ 
            	pk = rs.getInt("pk_carrera");
            }  
            con.close();  
        }catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return pk;
	}
	
	public static int actualizarCarrera(CarreraBean c){ 
		BD bdConexion = new BD();
        int status = 0; 
        
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement("UPDATE carrera SET fk_departamento=?, nombre_carrera=?, abreviatura_carrera=? where pk_carrera=?");  
            ps.setInt(1, c.getFk_departamento());
            ps.setString(2, c.getNombre_carrera());  
            ps.setString(3, c.getAbreviatura_carrera());
            ps.setInt(4, c.getPk_carrera());
              
            status = ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return status;  
    }
	
	public static int borrarCarrera(int id_carrera){  
		BD bdConexion = new BD();
        int status = 0;
        
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement("delete from carrera where pk_carrera=?");
            ps.setInt(1,id_carrera);
            status=ps.executeUpdate();
            
            con.close();  
        }catch(Exception e){
        	e.printStackTrace();
        }  
          
        return status;  
    }

}
