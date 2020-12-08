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

import javabeans.GrupoBean;
import javabeans.HorarioBean;
import modelo.HorarioDAO;
import modelo.GrupoDAO;

@WebServlet("/CrearGrupoServlet")
public class CrearGrupoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String rol, pagina;
	HttpSession session;
       
    public CrearGrupoServlet() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession(false);
		int maestro = Integer.parseInt(request.getParameter("maestro"));
		int materia = Integer.parseInt(request.getParameter("materia"));
		String clave_horario = request.getParameter("clave_horario");
		String grupo = request.getParameter("grupo");
		String aula = request.getParameter("aula");
		String periodo = request.getParameter("periodo");
		String turno = request.getParameter("turno");
		int alumnos = Integer.parseInt(request.getParameter("alumnos"));
		int lunes = Integer.parseInt(request.getParameter("lunes"));
		int martes = Integer.parseInt(request.getParameter("martes"));
		int miercoles = Integer.parseInt(request.getParameter("miercoles"));
		int jueves = Integer.parseInt(request.getParameter("jueves"));
		int viernes = Integer.parseInt(request.getParameter("viernes"));

		GrupoBean g = new GrupoBean();
		g.setFk_usuario(maestro);
		g.setFk_materia(materia);
		g.setClave_grupo(clave_horario);
		g.setGrupo(grupo);
		g.setAula(aula);
		g.setPeriodo(periodo);
		g.setTurno(turno);
		g.setAlumnos(alumnos);
			
		if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
			rol = session.getAttribute("rol").toString();

			if (rol.equals("maestro") || rol.equals("administrador")) {
				pagina = "/menu.jsp";
			}else {
				if(HorarioDAO.validaHorario(maestro, lunes, 1) == false && 
				   HorarioDAO.validaHorario(maestro, martes, 2) == false &&
				   HorarioDAO.validaHorario(maestro, miercoles, 3) == false &&
				   HorarioDAO.validaHorario(maestro, jueves, 4) == false &&
				   HorarioDAO.validaHorario(maestro, viernes, 5) == false) {
					int i = GrupoDAO.guardarGrupo(g); 
					if(i>0) {
						int pk_grupo = GrupoDAO.getUlitmoGrupo();
						HorarioBean ho = new HorarioBean();
						if(lunes != 0) {
							ho.setFk_grupo(pk_grupo);
							ho.setFk_hora(lunes);
							ho.setDia(1);
							HorarioDAO.guardarHorario(ho);
						}
						if(martes != 0) {
							ho.setFk_grupo(pk_grupo);
							ho.setFk_hora(martes);
							ho.setDia(2);
							HorarioDAO.guardarHorario(ho);
						}
						if(miercoles != 0) {
							ho.setFk_grupo(pk_grupo);
							ho.setFk_hora(miercoles);
							ho.setDia(3);
							HorarioDAO.guardarHorario(ho);
						}
						if(jueves != 0) {
							ho.setFk_grupo(pk_grupo);
							ho.setFk_hora(jueves);
							ho.setDia(4);
							HorarioDAO.guardarHorario(ho);
						}
						if(viernes != 0) {
							ho.setFk_grupo(pk_grupo);
							ho.setFk_hora(viernes);
							ho.setDia(5);
							HorarioDAO.guardarHorario(ho);
						}
						pagina = "SabanaServlet";
					}else  
						pagina = "/crearGrupo.jsp";
				}
				
			}

		} else 
			pagina = "/login.jsp";

		RequestDispatcher dispatcher = request.getRequestDispatcher(pagina);
		dispatcher.forward(request, response);
	}
}

