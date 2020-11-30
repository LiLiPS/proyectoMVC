package controlador;

import java.io.IOException;
//import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javabeans.MateriaBean;
import modelo.MateriaDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/MateriasServlet")
public class MateriasServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<MateriaBean> list = new ArrayList<MateriaBean>();
	String rol, pagina;
	HttpSession session;
	String estadoPagina = "nada";
       
    public MateriasServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession(false);
		int id_c = Integer.parseInt(session.getAttribute("pk_carrera").toString());
		
		if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
			rol = session.getAttribute("rol").toString();

			if (rol.equals("maestro") || rol.equals("administrador")) {
				//out.print("<script>location.replace('menu.jsp');</script>");
				pagina = "/menu.jsp";
			}else {
				pagina = "/materias.jsp";
				list = MateriaDAO.getMateriasbyCarrera(id_c);
			}

		} else {
			//out.print("<script>location.replace('login.jsp');</script>");
			pagina = "/login.jsp";
		}
				
		request.setAttribute("list",list);
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagina);
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession(false);
		int id_c = Integer.parseInt(session.getAttribute("pk_carrera").toString());
		String sid = request.getParameter("claveM");
		String clave = sid;
		
		try { 
			estadoPagina = request.getParameter("sts");
			if (estadoPagina == null) {
				estadoPagina = "nada";
				list = MateriaDAO.getMateriasbyCarrera(id_c);
			}
			if (estadoPagina.equals("buscar")) {
				if (clave == "") {
					list = MateriaDAO.getMateriasbyCarrera(id_c);
				}else
					list = MateriaDAO.getMateriasbyClave(clave);
			}
		} catch (Exception exx) {
			exx.printStackTrace();
		}
		
		request.setAttribute("list",list);
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagina);
		dispatcher.forward(request, response);
	}

}
