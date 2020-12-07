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

import javabeans.CarreraBean;
//import javabeans.Jefe_CarreraBean;
import modelo.DepartamentoDAO;
import modelo.CarreraDAO;
//import modelo.UsuarioDAO;

@WebServlet("/NuevaCarreraServlet")
public class NuevaCarreraServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String rol, pagina;
	HttpSession session;
   
    public NuevaCarreraServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession(false);
		
		if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
			rol = session.getAttribute("rol").toString();

			if (rol.equals("maestro") || rol.equals("jefe") || rol.equals("jefe_maestro")) {
				pagina = "/menu.jsp";
			}else {
				pagina = "/crearCarrera.jsp";
			}

		} else 
			pagina = "/login.jsp";
		
		request.setAttribute("departamentos", DepartamentoDAO.getDepartamentos());
		//request.setAttribute("maestros", UsuarioDAO.rolUsuario(0));
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagina);
		dispatcher.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rol, pagina;
		HttpSession session = request.getSession(false);		
		int departamento = Integer.parseInt(request.getParameter("departamento"));
		String abreviatura = request.getParameter("abreviatura_carrera");
		String nombre = request.getParameter("nombre_carrera");
		//int jefe = Integer.parseInt(request.getParameter("jefe"));

		CarreraBean carrera = new CarreraBean();
		carrera.setAbreviatura_carrera(abreviatura);
		carrera.setNombre_carrera(nombre);
		carrera.setFk_departamento(departamento);
		
		//Jefe_CarreraBean jc = new Jefe_CarreraBean();

		if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
			rol = session.getAttribute("rol").toString();

			if (rol.equals("maestro") || rol.equals("jefe") || rol.equals("jefe_maestro")) {
				pagina = "/menu.jsp";
			}else {
				int i = CarreraDAO.guardarCarrera(carrera);  
				if(i>0)  
					pagina = "ListaCarrerasServlet";
				else  
					pagina = "/crearCarrera.jsp";
			}
		} else 
			pagina = "/login.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagina);
		dispatcher.forward(request, response);
	}

}
