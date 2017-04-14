package es.josemaria.aparicio.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import es.josemaria.aparicio.dao.ConfirmUserDAO;
import es.josemaria.aparicio.dao.ConfirmUserDAOImpl;
import es.josemaria.aparicio.dao.UserDAO;
import es.josemaria.aparicio.dao.UserDAOImpl;

/**
 * Servlet implementation class RegistrarUsuario
 */
public class CheckLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private UserDAO userDAO = new UserDAOImpl();
	
	@Autowired
	private ConfirmUserDAO confirmUserDAO = new ConfirmUserDAOImpl();
	
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CheckLogin() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String login = request.getParameter("login");
		String password = request.getParameter("password");

		Integer id = userDAO.checkLoginId(login, password);

		String destino = new String();

		System.out.println("id:" + id);
		if (id == null) {
			destino = "login?error=Usuario y/o contraseña incorrecto";

		} else {
			String uuid = confirmUserDAO.getuuidByidUser(id);
			if (uuid == null){
				// Guardar datos del usuario en sesión
				HttpSession sesion = request.getSession();
				sesion.setAttribute("userLogged_id", id);
				
				destino = "./";
			} else {
				destino = "login?error=Usuario no confirmado";
			}
		}

		// Enviar al usuario al index
		response.sendRedirect(destino);

	}

}
