//Parada Sánchez Liliana
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDAO {
	
	public static boolean validar(String name, String pass) {
		BD bdConexion = new BD();
		boolean status = false;
		String instruccion = "select * from usuario where usuario=? and contrasena=?";
		
		try {
			Connection con = bdConexion.getConnection();
			PreparedStatement ps = con.prepareStatement(instruccion);
			ps.setString(1, name);
			ps.setString(2, pass);

			ResultSet rs = ps.executeQuery();
			status = rs.next();
			
			con.close(); 
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public static UsuarioBean rolUsuario(String name, String pass) {
		BD bdConexion = new BD();
		UsuarioBean us = new UsuarioBean();
		String instruccion = "select id_usuario, titulo, nombre, apellido_paterno, apellido_materno, rol from usuario where usuario=? and contrasena=?";		
		
		try {
			Connection con = bdConexion.getConnection();
			PreparedStatement ps = con.prepareStatement(instruccion);
			ps.setString(1, name);
			ps.setString(2, pass);

			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				us.setId_usuario(rs.getInt(1));
				us.setTitulo(rs.getString(2));
				us.setNombre(rs.getString(3));
				us.setApellido_paterno(rs.getString(4));
				us.setApellido_materno(rs.getString(5));
				us.setRol(rs.getString(6));
			}
			
			con.close(); 
		} catch (Exception e) {
			System.out.println(e);
		}
		return us;
	}

}
