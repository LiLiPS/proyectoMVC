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

import javabeans.CarreraBean;
import modelo.CarreraDAO;

@WebServlet("/ListaCarrerasServlet")
public class ListaCarrerasServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<CarreraBean> list = new ArrayList<CarreraBean>();
	String rol, pagina;
	HttpSession session;
	String estadoPagina = "nada";
       
    public ListaCarrerasServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession(false);
		
		if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
			rol = session.getAttribute("rol").toString();

			if (rol.equals("maestro") || rol.equals("jefe") || rol.equals("jefe_maestro")) {
				pagina = "/menu.jsp";
			}else {
				pagina = "/carreras.jsp";
				list = CarreraDAO.getCarreras();
			}

		} else 
			pagina = "/login.jsp";
				
		request.setAttribute("list",list);
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagina);
		dispatcher.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession(false);
		String sid = request.getParameter("claveC");
		String clave = sid;
		
		try { 
			estadoPagina = request.getParameter("sts");
			if (estadoPagina == null) {
				estadoPagina = "nada";
				list = CarreraDAO.getCarreras();
			}
			if (estadoPagina.equals("buscar")) {
				if (clave == "") {
					list = CarreraDAO.getCarreras();
				}else
					list = CarreraDAO.getCarrerasbyNombre(clave);
			}
		} catch (Exception exx) {
			exx.printStackTrace();
		}
		
		request.setAttribute("list",list);
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagina);
		dispatcher.forward(request, response);
	}

}
