//Parada Sánchez Liliana
package controlador;

import java.io.IOException;
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

@WebServlet("/CargarMaestrosCarreraServlet")
public class CargarMaestrosCarreraServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HttpSession session;
	String rol, pagina;
     
    public CargarMaestrosCarreraServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession(false);			
		
		if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
			rol = session.getAttribute("rol").toString();
			System.out.print(rol);
			if (rol.equals("maestro") || rol.equals("jefe") || rol.equals("jefe_maestro")) {
				pagina = "/menu.jsp";
			}else {
				pagina = "/maestrosCarrera.jsp";
				String sid = request.getParameter("id");	
				List<LoginBean> m = UsuarioDAO.usuariosbyCarrera(Integer.parseInt(sid));
				request.setAttribute("pk_carrera", sid);
				request.setAttribute("maestros", m);
			}
		} else {
			pagina = "/login.jsp";
		}
		
		request.setAttribute("listamaestros", UsuarioDAO.rolUsuario(0));
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagina);
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int carrera = Integer.parseInt(request.getParameter("pk_carrera"));
		int maestro = Integer.parseInt(request.getParameter("maestro"));
		
		if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
			rol = session.getAttribute("rol").toString();
			System.out.print(rol);
			if (rol.equals("maestro") || rol.equals("jefe") || rol.equals("jefe_maestro")) {
				pagina = "/menu.jsp";
			}else {
				UsuarioDAO.actualizarCarreraUsuario(maestro, carrera);
				pagina = "CargarMaestrosCarreraServlet?id="+carrera;
			}
		} else {
			pagina = "/login.jsp";
		}
		
		response.sendRedirect(pagina);
	}

}
