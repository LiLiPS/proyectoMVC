//Parada Sánchez Liliana
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javabeans.Jefe_CarreraBean;

public class JefeDAO {
	
	public static List<Jefe_CarreraBean> getJefes(){
		BD bdConexion = new BD();
        List<Jefe_CarreraBean> lista = new ArrayList<Jefe_CarreraBean>();
        String instruccion = "select jefe_carrera.*, CONCAT(usuario.titulo, ' ', usuario.nombre, ' ', usuario.apellido_paterno,' ', usuario.apellido_materno) as nombreMaestro, carrera.nombre_carrera from jefe_carrera " + 
        		"LEFT JOIN usuario ON jefe_carrera.fk_usuario = usuario.pk_usuario " + 
        		"LEFT JOIN carrera ON jefe_carrera.fk_carrera = carrera.pk_carrera";
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion);  
            ResultSet rs = ps.executeQuery();  
            while(rs.next()){  
            	Jefe_CarreraBean j = new Jefe_CarreraBean();  
                j.setPk_jefe_carrera(rs.getInt("pk_jefe_carrera"));
                j.setFk_usuario(rs.getInt("fk_usuario"));
                j.setFk_carrera(rs.getInt("fk_carrera"));
                j.setNombre_carrera(rs.getString("nombre_carrera"));
                j.setNombreMaestro(rs.getString("nombreMaestro"));
                lista.add(j);  
            }  
            con.close();  
        }catch(Exception e){
        	e.printStackTrace();
        }  
          
        return lista;  
    }
	
	public static int guardarJefe(Jefe_CarreraBean j){ 
		BD bdConexion = new BD();
        int status = 0; 
        
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement("INSERT INTO jefe_carrera(fk_usuario,fk_carrera) values (?,?)");  
            ps.setInt(1, j.getFk_usuario());
            ps.setInt(2, j.getFk_carrera());  
              
            status = ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return status;  
    }  
}
