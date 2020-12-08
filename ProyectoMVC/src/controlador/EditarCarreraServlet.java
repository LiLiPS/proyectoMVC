//Parada Sánchez Liliana
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

import javabeans.CarreraBean;
import javabeans.Jefe_CarreraBean;
import modelo.CarreraDAO;
import modelo.JefeDAO;
import modelo.UsuarioDAO;

@WebServlet("/EditarCarreraServlet")
public class EditarCarreraServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String rol, pagina;
	HttpSession session;
     
    public EditarCarreraServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession(false);		
		int pk_carrera = Integer.parseInt(request.getParameter("pk_carrera"));
		int departamento = Integer.parseInt(request.getParameter("departamento"));
		String abreviatura = request.getParameter("abreviatura_carrera");
		String nombre = request.getParameter("nombre_carrera");
		int pk_jefe = Integer.parseInt(request.getParameter("pk_jefe"));
		int jefe = Integer.parseInt(request.getParameter("jefe"));

		CarreraBean carrera = new CarreraBean();
		carrera.setPk_carrera(pk_carrera);
		carrera.setAbreviatura_carrera(abreviatura);
		carrera.setNombre_carrera(nombre);
		carrera.setFk_departamento(departamento);
		
		if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
			rol = session.getAttribute("rol").toString();

			if (rol.equals("maestro") || rol.equals("jefe") || rol.equals("jefe_maestro")) {
				pagina = "/menu.jsp";
			}else {
				int i = CarreraDAO.actualizarCarrera(carrera);  
				if(i>0) {
					if(pk_jefe != jefe) {
						//modificar roles de jefe original
						JefeDAO.borrarJefe(pk_jefe, pk_carrera);
						List<CarreraBean> lista = CarreraDAO.getCarreraJefe(pk_jefe);
						
						if(lista.isEmpty()) {
							//cambiar rol a maestro
							UsuarioDAO.actualizarUsuario(pk_jefe, 2);
						}
						
						//asignar rol a jefe nuevo
						Jefe_CarreraBean jc = new Jefe_CarreraBean();
						jc.setFk_carrera(pk_carrera);
						jc.setFk_usuario(jefe);
						
						int j = JefeDAO.guardarJefe(jc);
						if(j>0) {
							UsuarioDAO.actualizarUsuario(jefe, 4);
						}
					}
				} 
				pagina = "ListaCarrerasServlet";
			}
		} else 
			pagina = "/login.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagina);
		dispatcher.forward(request, response);
	}

}
