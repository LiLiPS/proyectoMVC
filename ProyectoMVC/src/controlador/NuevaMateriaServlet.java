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
		MateriaBean materia = new MateriaBean();

		if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
			rol = session.getAttribute("rol").toString();

			if (rol.equals("maestro") || rol.equals("administrador")) {
				//out.print("<script>location.replace('menu.jsp');</script>");
				pagina = "/menu.jsp";
			}else {
				int i = MateriaDAO.guardarMateria(materia);  
				if(i>0){  
					//response.sendRedirect("materias.jsp");  
					pagina = "/materias.jsp";
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
