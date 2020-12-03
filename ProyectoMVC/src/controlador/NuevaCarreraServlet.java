//Parada Sánchez Liliana
package controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.DepartamentoDAO;

@WebServlet("/NuevaCarreraServlet")
public class NuevaCarreraServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String rol, pagina;
	HttpSession session;
   
    public NuevaCarreraServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession(false);
		
		if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
			rol = session.getAttribute("rol").toString();

			if (rol.equals("maestro") || rol.equals("jefe") || rol.equals("jefe_maestro")) {
				pagina = "/menu.jsp";
			}else {
				pagina = "/crearCarrera.jsp";
			}

		} else 
			pagina = "/login.jsp";
		
		request.setAttribute("departamentos", DepartamentoDAO.getDepartamentos());
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagina);
		dispatcher.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
