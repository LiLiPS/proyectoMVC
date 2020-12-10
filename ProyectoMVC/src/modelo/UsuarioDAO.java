package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javabeans.LoginBean;

public class UsuarioDAO {
	public static List<LoginBean> rolUsuario(int pk_usuario) {
		BD bdConexion = new BD();
		List<LoginBean> lista = new ArrayList<LoginBean>();
		
		String instruccion = "select * from view_usuarios ";
		
		if(pk_usuario > 0) {
			instruccion += "where pk_usuario=?";
		}
		
		try {
			Connection con = bdConexion.getConnection();
			PreparedStatement ps = con.prepareStatement(instruccion);
			if(pk_usuario > 0) {
				ps.setInt(1, pk_usuario);
			}			

			ResultSet rs = ps.executeQuery();
			while(rs.next()){ 
				LoginBean lb = new LoginBean();
				lb.setPk_usuario(rs.getInt("pk_usuario"));
				lb.setTitulo(rs.getString("titulo"));
				lb.setNombre(rs.getString("nombre"));
				lb.setApellido_paterno(rs.getString("apellido_paterno"));
				lb.setApellido_materno(rs.getString("apellido_materno"));
				lb.setTelefono(rs.getString("telefono"));
				lb.setCorreo(rs.getString("correo"));
				lb.setPk_rol(rs.getInt("pk_rol"));
				lb.setRol(rs.getString("rol"));
				lb.setPk_carrera(rs.getInt("pk_carrera"));
				lb.setNombre_carrera(rs.getString("nombre_carrera"));
				lb.setDepartamento(rs.getString("departamento"));
				lb.setClave_usuario(rs.getString("clave_usuario"));
				lb.setHoras(rs.getInt("Horas"));
				lista.add(lb); 
			}
			
			con.close(); 
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return lista;
	}
	
	public static List<LoginBean> usuariosClave(String clave) {
		BD bdConexion = new BD();
		List<LoginBean> lista = new ArrayList<LoginBean>();
		
		String instruccion = "select * from view_usuarios where clave_usuario LIKE ?";
		
		try {
			Connection con = bdConexion.getConnection();
			PreparedStatement ps = con.prepareStatement(instruccion);
			ps.setString(1,"%" + clave + "%");  		

			ResultSet rs = ps.executeQuery();
			while(rs.next()){ 
				LoginBean lb = new LoginBean();
				lb.setPk_usuario(rs.getInt("pk_usuario"));
				lb.setTitulo(rs.getString("titulo"));
				lb.setNombre(rs.getString("nombre"));
				lb.setApellido_paterno(rs.getString("apellido_paterno"));
				lb.setApellido_materno(rs.getString("apellido_materno"));
				lb.setTelefono(rs.getString("telefono"));
				lb.setCorreo(rs.getString("correo"));
				lb.setPk_rol(rs.getInt("pk_rol"));
				lb.setRol(rs.getString("rol"));
				lb.setPk_carrera(rs.getInt("pk_carrera"));
				lb.setNombre_carrera(rs.getString("nombre_carrera"));
				lb.setDepartamento(rs.getString("departamento"));
				lb.setClave_usuario(rs.getString("clave_usuario"));
				lb.setHoras(rs.getInt("Horas"));
				lista.add(lb); 
			}
			
			con.close(); 
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return lista;
	}
	
	public static int usuariosClaveArchivo(String nombre) {
		BD bdConexion = new BD();
		int pk_usuario = 0;
		
		String instruccion = "select usuario.pk_usuario from usuario "
				+ "where  CONCAT(usuario.titulo, ' ', usuario.apellido_paterno,' ', usuario.apellido_materno, ' ',usuario.nombre) = ?";
		
		try {
			Connection con = bdConexion.getConnection();
			PreparedStatement ps = con.prepareStatement(instruccion);
			ps.setString(1,nombre);  		

			ResultSet rs = ps.executeQuery();
			if(rs.next()){ 
				pk_usuario = rs.getInt("pk_usuario"); 
			}
			
			con.close(); 
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return pk_usuario;
	}
	
	public static List<LoginBean> usuariosbyCarrera(int id_carrera) {
		BD bdConexion = new BD();
		List<LoginBean> lista = new ArrayList<LoginBean>();
		
		String instruccion = "select * from view_usuarios where pk_carrera = ?";
		
		try {
			Connection con = bdConexion.getConnection();
			PreparedStatement ps = con.prepareStatement(instruccion);
			ps.setInt(1, id_carrera);		

			ResultSet rs = ps.executeQuery();
			while(rs.next()){ 
				LoginBean lb = new LoginBean();
				lb.setPk_usuario(rs.getInt("pk_usuario"));
				lb.setTitulo(rs.getString("titulo"));
				lb.setNombre(rs.getString("nombre"));
				lb.setApellido_paterno(rs.getString("apellido_paterno"));
				lb.setApellido_materno(rs.getString("apellido_materno"));
				lb.setTelefono(rs.getString("telefono"));
				lb.setCorreo(rs.getString("correo"));
				lb.setPk_rol(rs.getInt("pk_rol"));
				lb.setRol(rs.getString("rol"));
				lb.setPk_carrera(rs.getInt("pk_carrera"));
				lb.setNombre_carrera(rs.getString("nombre_carrera"));
				lb.setDepartamento(rs.getString("departamento"));
				lb.setClave_usuario(rs.getString("clave_usuario"));
				lb.setHoras(rs.getInt("Horas"));
				lista.add(lb); 
			}
			
			con.close(); 
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return lista;
	}
	
	public static int actualizarUsuario(int id, int rol){  
		BD bdConexion = new BD();
        int status = 0;  
        
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement("UPDATE usuario SET fk_rol=? where pk_usuario=?");  
            ps.setInt(1, rol);
            ps.setInt(2, id);
              
            status = ps.executeUpdate();  
            
            con.close();  
        }catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return status;  
    }
	
	public static int actualizarCarreraUsuario(int id, int carrera){  
		BD bdConexion = new BD();
        int status = 0;  
        
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement("UPDATE usuario SET fk_carrera=? where pk_usuario=?");  
            ps.setInt(1, carrera);
            ps.setInt(2, id);
              
            status = ps.executeUpdate();  
            
            con.close();  
        }catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return status;  
    }

}
