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

import modelo.GrupoDAO;
import modelo.HorarioDAO;

@WebServlet("/EliminarGrupoServlet")
public class EliminarGrupoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String rol, pagina;
	HttpSession session;
   
    public EliminarGrupoServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession(false);
		int pk_grupo = Integer.parseInt(request.getParameter("id"));
		
		if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
			rol = session.getAttribute("rol").toString();

			if (rol.equals("maestro") || rol.equals("administrador")) {
				pagina = "/menu.jsp";
			}else {
				HorarioDAO.borrarHorario(pk_grupo);
				GrupoDAO.borrarGrupo(pk_grupo);
				pagina = "SabanaServlet";
			}
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagina);
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
