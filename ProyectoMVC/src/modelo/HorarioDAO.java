package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class HorarioDAO {
	public static int borrarHorario(int id_materia){  
		BD bdConexion = new BD();
        int status = 0;
        
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement("delete from horario where id_materia=?");
            ps.setInt(1,id_materia);
            status=ps.executeUpdate();
            
            con.close();  
        }catch(Exception e){
        	e.printStackTrace();
        }  
          
        return status;  
    }

}
