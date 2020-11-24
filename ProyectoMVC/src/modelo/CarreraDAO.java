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
                lista.add(c);  
            }  
            con.close();  
        }catch(Exception e){
        	e.printStackTrace();
        }  
          
        return lista;  
    }

}
