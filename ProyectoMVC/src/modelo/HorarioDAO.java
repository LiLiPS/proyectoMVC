//Parada Sánchez Liliana
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javabeans.HorarioBean;
import javabeans.HoraBean;

public class HorarioDAO {
	public static int borrarHorario(int grupo){  
		BD bdConexion = new BD();
        int status = 0;
        
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement("delete from horario where fk_grupo=?");
            ps.setInt(1,grupo);
            status=ps.executeUpdate();
            
            con.close();  
        }catch(Exception e){
        	e.printStackTrace();
        }  
          
        return status;  
    }
	
	public static List<HorarioBean> getHorariobyGrupo(int grupo){
		BD bdConexion = new BD();
		List<HorarioBean> lista = new ArrayList<HorarioBean>();
        String instruccion = "select * from view_horarios where fk_grupo=?";
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion);  
            ps.setInt(1,grupo);  
            ResultSet rs = ps.executeQuery();  
            while(rs.next()){ 
            	HorarioBean h = new HorarioBean();  
            	h.setGrupo(rs.getString("grupo"));
                h.setAula(rs.getString("aula"));
                h.setDia(rs.getInt("dia"));
                h.setFk_hora(rs.getInt("fk_hora"));
                h.setHora(rs.getString("hora"));
                h.setAlumnos(rs.getInt("alumnos"));
                lista.add(h);
            }  
            con.close();  
        }catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return lista;  
    }
	
	public static List<HoraBean> getHoras(){
		BD bdConexion = new BD();
        List<HoraBean> lista = new ArrayList<HoraBean>();
        String instruccion = "select * from hora";
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion);  
            ResultSet rs = ps.executeQuery();  
            while(rs.next()){  
            	HoraBean h = new HoraBean();  
                h.setPk_hora(rs.getInt("pk_hora"));
                h.setHora(rs.getString("hora"));
                lista.add(h);  
            }  
            con.close();  
        }catch(Exception e){
        	e.printStackTrace();
        }  
          
        return lista;  
    }
	
	public static boolean validaHorario(int usuario, int hora, int dia){
		BD bdConexion = new BD();
        String instruccion = "select * from view_horas where fk_usuario=? AND fk_hora=? AND dia=?";
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion);  
            ps.setInt(1,usuario);
            ps.setInt(2,hora);
            ps.setInt(3,dia);
            
            ResultSet rs = ps.executeQuery();  
            while(rs.next()){ 
            	return true;
            }  
            con.close();  
        }catch(Exception ex){
        	ex.printStackTrace();
        }  
        return false;  
    }
	
	public static int guardarHorario(HorarioBean h){ 
		BD bdConexion = new BD();
        int status = 0; 
        
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement("INSERT INTO horario(fk_grupo,fk_hora,dia) values (?,?,?)");  
            ps.setInt(1, h.getFk_grupo());
            ps.setInt(2, h.getFk_hora());  
            ps.setInt(3, h.getDia()); 
              
            status = ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return status;  
    }
	
	

}
