package controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javabeans.CarreraBean;
import modelo.CarreraDAO;
import modelo.DepartamentoDAO;
import modelo.UsuarioDAO;

@WebServlet("/CargarCarreraServlet")
public class CargarCarreraServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public CargarCarreraServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rol, pagina;
		HttpSession session = request.getSession(false);			
		
		if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
			rol = session.getAttribute("rol").toString();
			System.out.print(rol);
			if (rol.equals("maestro") || rol.equals("jefe") || rol.equals("jefe_maestro")) {
				pagina = "/menu.jsp";
			}else {
				pagina = "/editarCarrera.jsp";
				String sid = request.getParameter("id");	
				CarreraBean c = CarreraDAO.getCarrerabyID(Integer.parseInt(sid));
				request.setAttribute("carrera", c);
			}
		} else {
			pagina = "/login.jsp";
		}
		
		request.setAttribute("departamentos", DepartamentoDAO.getDepartamentos());
		request.setAttribute("maestros", UsuarioDAO.rolUsuario(0));
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagina);
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
