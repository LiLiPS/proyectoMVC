//Parada Sánchez Liliana
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;

public class BD {
	private String jdbcHost, jdbcPort, jdbcDatabase, connectionUrl, username, password;

	public BD() {
		jdbcHost = "localhost";
		jdbcPort = "3306";
		jdbcDatabase = "proyectomvc";
		connectionUrl = "jdbc:mysql://" + jdbcHost + ":" + jdbcPort + "/" + jdbcDatabase;
		username = "root";
		password = "";
	}
	
	public Connection getConnection(){  
        Connection con=null;  
        
        try{        	
            Class.forName("com.mysql.cj.jdbc.Driver");  
            con=DriverManager.getConnection(connectionUrl,username,password);  
        }catch(Exception e){
        	System.out.println(e);
        }  
        return con;  
    }
}
