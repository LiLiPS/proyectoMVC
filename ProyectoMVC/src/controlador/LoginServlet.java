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

import modelo.LoginDAO;
import modelo.UsuarioBean;

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

		if (LoginDAO.validar(n, p)) {
			UsuarioBean us = LoginDAO.rolUsuario(n, p);
			HttpSession session = request.getSession();
			session.setAttribute("usu", us);
			session.setAttribute("titulo", us.getTitulo());
			session.setAttribute("usuario", us.getNombre());
			session.setAttribute("rol", us.getRol());
			session.setAttribute("id_usuario", us.getId_usuario());
			pagina = "/menu.jsp";
		} else {
			System.out.print("Lo sentimos, error de usuario o contraseña!");
			pagina = "/login.jsp";
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(pagina);
		dispatcher.forward(request, response);
	}

}
