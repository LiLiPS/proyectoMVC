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

import javabeans.Jefe_CarreraBean;
import modelo.JefeDAO;

@WebServlet("/JefesServlet")
public class JefesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<Jefe_CarreraBean> list = new ArrayList<Jefe_CarreraBean>();
	String rol, pagina;
	HttpSession session;

    public JefesServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
session = request.getSession(false);
		
		if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
			rol = session.getAttribute("rol").toString();

			if (rol.equals("maestro") || rol.equals("jefe") || rol.equals("jefe_maestro")) {
				pagina = "/menu.jsp";
			}else {
				pagina = "/jefes.jsp";
				list = JefeDAO.getJefes();
			}

		} else 
			pagina = "/login.jsp";
				
		request.setAttribute("list",list);
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagina);
		dispatcher.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
