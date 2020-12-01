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

@WebServlet("/CargarMaestroServlet")
public class CargarMaestroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CargarMaestroServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rol, pagina;
		HttpSession session = request.getSession(false);			
		
		if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
			rol = session.getAttribute("rol").toString();

			if (rol.equals("maestro") || rol.equals("administrador")) {
				pagina = "/menu.jsp";
			}else {
				pagina = "/perfilUsuario.jsp";
				String sid = request.getParameter("id");	
				List<LoginBean> m = UsuarioDAO.rolUsuario(Integer.parseInt(sid));
				request.setAttribute("maestro", m);
			}
		} else {
			pagina = "/login.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagina);
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
