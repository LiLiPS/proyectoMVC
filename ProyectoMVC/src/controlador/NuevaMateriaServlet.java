package controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javabeans.MateriaBean;
import modelo.MateriaDAO;

/**
 * Servlet implementation class NuevaMateriaServlet
 */
@WebServlet("/NuevaMateriaServlet")
public class NuevaMateriaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NuevaMateriaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rol, pagina;
		HttpSession session = request.getSession(false);		
		int fk_carrera = Integer.parseInt(request.getParameter("carrera"));
		String clave = request.getParameter("clave_materia");
		String nombre = request.getParameter("nombre");
		int semestre = Integer.parseInt(request.getParameter("semestre"));
		int horas_t = Integer.parseInt(request.getParameter("horas_t"));
		int horas_p = Integer.parseInt(request.getParameter("horas_p"));
		int creditos = Integer.parseInt(request.getParameter("creditos"));

		MateriaBean materia = new MateriaBean();
		materia.setFk_carrera(fk_carrera);
		materia.setClave_materia(clave);
		materia.setNombre(nombre);
		materia.setSemestre(semestre);
		materia.setHoras_t(horas_t);
		materia.setHoras_p(horas_p);
		materia.setCreditos(creditos);

		if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
			rol = session.getAttribute("rol").toString();

			if (rol.equals("maestro") || rol.equals("administrador")) {
				pagina = "/menu.jsp";
			}else {
				int i = MateriaDAO.guardarMateria(materia);  
				if(i>0)  
					pagina = "MateriasServlet";
				else  
					pagina = "/crearMateria.jsp";
			}
		} else 
			pagina = "/login.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagina);
		dispatcher.forward(request, response);
	}

}
