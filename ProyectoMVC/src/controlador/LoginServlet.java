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

import javabeans.LoginBean;
import modelo.CarreraDAO;
import modelo.LoginDAO;
import modelo.UsuarioDAO;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public LoginServlet() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		String n=request.getParameter("usuario");  
		String p=request.getParameter("contrasena");
		
		String pagina = "login.jsp";
		int id = LoginDAO.validar(n, p);
		

		if (id>0) {
			List<LoginBean> us = UsuarioDAO.rolUsuario(id);
			HttpSession session = request.getSession();
			session.setAttribute("usu", us.get(0));
			session.setAttribute("titulo", us.get(0).getTitulo());
			session.setAttribute("usuario", us.get(0).getNombre());
			session.setAttribute("rol", us.get(0).getRol());
			session.setAttribute("id_usuario", us.get(0).getPk_usuario());
			
			if(us.get(0).getRol().equals("jefe") || us.get(0).getRol().equals("jefe_maestro")) {
				pagina = "/elegirCarrera.jsp";
				request.setAttribute("carreras", CarreraDAO.getCarreraJefe(us.get(0).getPk_usuario()));
			}else {
				pagina = "/menu.jsp";
			}
		} else {
			pagina = "/loginError.jsp";
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(pagina);
		dispatcher.forward(request, response);
	}

}
