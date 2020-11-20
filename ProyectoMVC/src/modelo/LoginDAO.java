//Parada Sánchez Liliana
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDAO {
	
	public static int validar(String name, String pass) {
		BD bdConexion = new BD();
		int status = 0;
		String instruccion = "select pk_usuario from usuario where usuario=? and contrasena=?";
		
		try {
			Connection con = bdConexion.getConnection();
			PreparedStatement ps = con.prepareStatement(instruccion);
			ps.setString(1, name);
			ps.setString(2, pass);

			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				status = rs.getInt(1);
			}		
			
			con.close(); 
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
}
