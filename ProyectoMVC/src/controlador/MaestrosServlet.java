//Parada Sánchez Liliana
package controlador;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javabeans.LoginBean;
import modelo.UsuarioDAO;

@WebServlet("/MaestrosServlet")
public class MaestrosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<LoginBean> list = new ArrayList<LoginBean>();
	String rol, pagina;
	HttpSession session;
	String estadoPagina = "nada";
       
    public MaestrosServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession(false);
		int id_c = Integer.parseInt(session.getAttribute("pk_carrera").toString());
		
		if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
			rol = session.getAttribute("rol").toString();

			if (rol.equals("maestro") || rol.equals("administrador")) 
				pagina = "/menu.jsp";
			else {
				pagina = "/maestros.jsp";
				list = UsuarioDAO.usuariosbyCarrera(id_c);
			}
		} else 
			pagina = "/login.jsp";
				
		request.setAttribute("list",list);
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagina);
		dispatcher.forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession(false);
		int id_c = Integer.parseInt(session.getAttribute("pk_carrera").toString());	
		String sid = request.getParameter("claveM");
		String clave = sid;			
		
		try {
			estadoPagina = request.getParameter("sts");
			if (estadoPagina == null) {
				estadoPagina = "nada";
				list = UsuarioDAO.usuariosbyCarrera(id_c);
			}
			if (estadoPagina.equals("buscar")) {
				if (clave == "")
					list = UsuarioDAO.usuariosbyCarrera(id_c);
				else
					list = UsuarioDAO.usuariosClave(clave);
			}
		} catch (Exception exx) {
			exx.printStackTrace();
		}
		
		request.setAttribute("list",list);
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagina);
		dispatcher.forward(request, response);
	}

}
