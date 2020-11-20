package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javabeans.GrupoBean;
import javabeans.GrupoVistaBean;

public class GrupoDAO {
	public static int guardarGrupo(GrupoBean g){ 
		BD bdConexion = new BD();
        int status = 0; 
        
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement("INSERT INTO grupo(fk_usuario,fk_materia,clave_grupo,grupo, aula, periodo, turno, alumnos) values (?,?,?,?,?,?,?,?)");  
            ps.setInt(1, g.getFk_usuario());
            ps.setInt(2, g.getFk_materia());  
            ps.setString(3, g.getClave_grupo()); 
            ps.setString(4, g.getGrupo());
            ps.setString(5, g.getAula());
            ps.setString(6, g.getPeriodo());
            ps.setString(7, g.getTurno());
            ps.setInt(8, g.getAlumnos());
              
            status = ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return status;  
    }
	
	public static int actualizarGrupo(GrupoBean g){  
		BD bdConexion = new BD();
        int status = 0;  
        
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement("UPDATE grupo SET fk_usuario=?, fk_materia=?,clave_grupo=?,grupo=?,aula=?,periodo=?,turno=?, alumnos=? where pk_grupo=?");  
            ps.setInt(1, g.getFk_usuario());
            ps.setInt(2, g.getFk_materia());  
            ps.setString(3, g.getClave_grupo()); 
            ps.setString(4, g.getGrupo());
            ps.setString(5, g.getAula());
            ps.setString(6, g.getPeriodo());
            ps.setString(7, g.getTurno());
            ps.setInt(8, g.getAlumnos());
            ps.setInt(9, g.getPk_grupo());
              
            status = ps.executeUpdate();  
            
            con.close();  
        }catch(Exception ex){
        	ex.printStackTrace();
        }  
          
        return status;  
    }
	
	public static int borrarGrupo(int pk_grupo){  
		BD bdConexion = new BD();
        int status = 0;
        
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement("delete from grupo where pk_grupo=?");
            ps.setInt(1,pk_grupo);
            status=ps.executeUpdate();
            
            con.close();  
        }catch(Exception e){
        	e.printStackTrace();
        }  
          
        return status;  
    }
	
	public static List<GrupoVistaBean> getGrupos() {
		BD bdConexion = new BD();
		List<GrupoVistaBean> lista = new ArrayList<GrupoVistaBean>();
		
		String instruccion = "select * from view_grupos";
				
		try {
			Connection con = bdConexion.getConnection();
			PreparedStatement ps = con.prepareStatement(instruccion);

			ResultSet rs = ps.executeQuery();
			while(rs.next()){ 
				GrupoVistaBean gv = new GrupoVistaBean();
				gv.setPk_grupo(rs.getInt("pk_grupo"));
				gv.setClave_grupo(rs.getString("clave_grupo"));
				gv.setGrupo(rs.getString("grupo"));
				gv.setAula(rs.getString("aula"));
				gv.setPeriodo(rs.getString("periodo"));
				gv.setTurno(rs.getString("turno"));
				gv.setAlumnos(rs.getInt("alumnos"));
				gv.setNombre(rs.getString("nombre"));
				gv.setApellido_paterno(rs.getString("apellido_paterno"));
				gv.setApellido_materno(rs.getString("apellido_materno"));
				gv.setNombre_materia(rs.getNString("nombre_materia"));
				lista.add(gv); 
			}
			
			con.close(); 
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return lista;
	}

}
