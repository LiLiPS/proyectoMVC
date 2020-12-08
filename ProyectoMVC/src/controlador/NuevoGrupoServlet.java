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

import modelo.HorarioDAO;
import modelo.MateriaDAO;
import modelo.UsuarioDAO;

@WebServlet("/NuevoGrupoServlet")
public class NuevoGrupoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String rol, pagina;
	HttpSession session;
	String estadoPagina = "nada";
       
    public NuevoGrupoServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession(false);
		
		if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
			rol = session.getAttribute("rol").toString();

			if (rol.equals("maestro") || rol.equals("administrador")) {
				pagina = "/menu.jsp";
			}else {
				pagina = "/crearGrupo.jsp";
			}

		} else 
			pagina = "/login.jsp";
				
		request.setAttribute("materias", MateriaDAO.getMaterias());
		request.setAttribute("maestros", UsuarioDAO.rolUsuario(0));
		request.setAttribute("horas", HorarioDAO.getHoras());
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagina);
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
