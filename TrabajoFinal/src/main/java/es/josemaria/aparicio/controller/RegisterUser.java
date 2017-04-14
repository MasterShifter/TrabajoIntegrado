package es.josemaria.aparicio.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.josemaria.aparicio.dao.ConfirmUserDAO;
import es.josemaria.aparicio.dao.ConfirmUserDAOImpl;
import es.josemaria.aparicio.dao.UserDAO;
import es.josemaria.aparicio.dao.UserDAOImpl;

/**
 * Servlet implementation class RegistrarUsuario
 */
public class RegisterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nickname = request.getParameter("apodo");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String surname = request.getParameter("apellidos");
		String fechaNac = request.getParameter("fechaNac");
		DateFormat df = new SimpleDateFormat("dd/mm/yyyy");
		Date result = null;
		try {
			result = df.parse(fechaNac);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		
		// Insertar al usuario en la Base de datos
		UserDAO userDAO = new UserDAOImpl();
		userDAO.register(nickname, password, email, new Date(), name, surname, result);
		
		ConfirmUserDAO confirmUserDAO = new ConfirmUserDAOImpl();
		confirmUserDAO.insertConfirmUser(nickname, UUID.randomUUID().toString());
		
		// Enviar al usuario al index
		response.sendRedirect("./");
		
	}

}
