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

import javabeans.HorarioBean;
import modelo.HorarioDAO;

@WebServlet("/DetalleSabanaServlet")
public class DetalleSabanaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DetalleSabanaServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rol, pagina;
		HttpSession session = request.getSession(false);	
		List<HorarioBean> lista = new ArrayList<HorarioBean>();
		
		if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
			rol = session.getAttribute("rol").toString();

			if (rol.equals("maestro") || rol.equals("administrador")) {
				pagina = "/menu.jsp";
			}else {
				pagina = "/detalleSabana.jsp";
				String sid = request.getParameter("id");	
				lista = HorarioDAO.getHorariobyGrupo(Integer.parseInt(sid));
				request.setAttribute("horario", lista);
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
