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

import javabeans.GrupoVistaBean;
import javabeans.HorarioBean;
import javabeans.LoginBean;
import modelo.GrupoDAO;
import modelo.HorarioDAO;
import modelo.UsuarioDAO;

@WebServlet("/ReporteServlet")
public class ReporteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public ReporteServlet() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rol, pagina;
		int horas = 0;
		HttpSession session = request.getSession(false);			
		
		if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
			rol = session.getAttribute("rol").toString();
			System.out.print(rol);
			if (rol.equals("administrador")) {
				pagina = "/menu.jsp";
			}else {
				pagina = "/reporte.jsp";
				String sid = request.getParameter("id");	
				LoginBean m = UsuarioDAO.rolUsuario(Integer.parseInt(sid)).get(0);
				List<GrupoVistaBean> g = GrupoDAO.getGruposbyMaestro(Integer.parseInt(sid));
				
				System.out.println(g.size());
				
				for(GrupoVistaBean grupo:g) {
					//Buscar horario
					List<HorarioBean> h = HorarioDAO.getHorariobyGrupo(grupo.getPk_grupo());
					//Asignar horario a objeto
					for(HorarioBean horario:h) {
						if(horario.getDia() == 1) {
							grupo.setHora_lunes(horario.getHora());
							horas += 2;
						}
						if(horario.getDia() == 2) {
							grupo.setHora_martes(horario.getHora());
							horas += 2;
						}
						if(horario.getDia() == 3) {
							grupo.setHora_miercoles(horario.getHora());
							horas += 2;
						}
						if(horario.getDia() == 4) {
							grupo.setHora_jueves(horario.getHora());
							horas += 2;
						}
						if(horario.getDia() == 5) {
							grupo.setHora_viernes(horario.getHora());
							horas += 1;
						}
					}
				}
				
				request.setAttribute("maestro", m);
				request.setAttribute("grupos", g);
				request.setAttribute("horas", horas);
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
