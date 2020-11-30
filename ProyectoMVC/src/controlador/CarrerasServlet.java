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

@WebServlet("/CarrerasServlet")
public class CarrerasServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CarrerasServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String carrera = request.getParameter("carrera");  
		int id_carrera = Integer.parseInt(carrera);
		
		String pagina;
		HttpSession session = request.getSession(false);
		if (session != null) {
			pagina = "/menu.jsp";
			session.setAttribute("pk_carrera", id_carrera);
		} else 
			pagina = "/loginError.jsp";

		RequestDispatcher dispatcher = request.getRequestDispatcher(pagina);
		dispatcher.forward(request, response);
	}

}
