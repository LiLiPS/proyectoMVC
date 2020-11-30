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

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rol, pagina;
		HttpSession session = request.getSession(false);
		
		/*
		 * ps.setInt(1, m.getFk_carrera());
            ps.setString(2, m.getClave_materia());  
            ps.setString(3, m.getNombre()); 
            ps.setInt(4, m.getSemestre());
            ps.setInt(5, m.getHoras_t());
            ps.setInt(6, m.getHoras_p());
            ps.setInt(7, m.getCreditos());*/
		
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
				//out.print("<script>location.replace('menu.jsp');</script>");
				pagina = "/menu.jsp";
			}else {
				int i = MateriaDAO.guardarMateria(materia);  
				if(i>0){  
					//response.sendRedirect("materias.jsp");  
					pagina = "MateriasServlet";
				}else{  
					//response.sendRedirect("crearMateria.jsp"); 
					pagina = "/crearMateria.jsp";
				}
				//pagina = "/materias.jsp";
			}

		} else {
			//out.print("<script>location.replace('login.jsp');</script>");
			pagina = "/login.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagina);
		dispatcher.forward(request, response);
	}

}
