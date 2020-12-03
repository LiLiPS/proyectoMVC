//Parada Sánchez Liliana
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javabeans.DepartamentoBean;

public class DepartamentoDAO {
	public static List<DepartamentoBean> getDepartamentos(){
		BD bdConexion = new BD();
        List<DepartamentoBean> lista = new ArrayList<DepartamentoBean>();
        String instruccion = "select * from departamento";
          
        try{  
            Connection con = bdConexion.getConnection();  
            PreparedStatement ps = con.prepareStatement(instruccion);  
            ResultSet rs = ps.executeQuery();  
            while(rs.next()){  
            	DepartamentoBean d = new DepartamentoBean();  
                d.setPk_departamento(rs.getInt("pk_departamento"));
                d.setDepartamento(rs.getString("departamento"));  
                lista.add(d);  
            }  
            con.close();  
        }catch(Exception e){
        	e.printStackTrace();
        }  
          
        return lista;  
    }
}
