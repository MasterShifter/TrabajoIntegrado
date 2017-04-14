package es.josemaria.aparicio.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import es.josemaria.aparicio.bean.User;
import es.josemaria.aparicio.dao.EventDAO;
import es.josemaria.aparicio.dao.UserDAO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private EventDAO eventDAO ;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, HttpServletRequest request) {
		model.addAttribute("user", new User());
		model.addAttribute("listUsers", userDAO.findAllUsers());
		model.addAttribute("event", new User());
		model.addAttribute("listEvents", eventDAO.findAllEvents());
		
		//Obtener el usuario logueado
		HttpSession sesion = request.getSession();
		Integer idUser = null;
		try{
		idUser = Integer.parseInt(sesion.getAttribute("userLogged_id").toString());
		}catch(Exception e){
		}
		if (idUser != null){
			User user = userDAO.findUserById(idUser);
			model.addAttribute("userLogged", user);
		}
		
		return "home";
	}
	
	@RequestMapping(value = "/registro", method = RequestMethod.GET)
	public String registro(Model model, HttpServletRequest request) {
		
		//Obtener el usuario logueado
		HttpSession sesion = request.getSession();
		Integer idUser = null;
		try{
		idUser = Integer.parseInt(sesion.getAttribute("userLogged_id").toString());
		}catch(Exception e){
		}
		if (idUser != null){
			User user = userDAO.findUserById(idUser);
			model.addAttribute("userLogged", user);
		}
		
		return "register";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model, HttpServletRequest request) {
		
		//Obtener el usuario logueado
		HttpSession sesion = request.getSession();
		Integer idUser = null;
		try{
		idUser = Integer.parseInt(sesion.getAttribute("userLogged_id").toString());
		}catch(Exception e){
		}
		if (idUser != null){
			User user = userDAO.findUserById(idUser);
			model.addAttribute("userLogged", user);
		}
		
		return "login";
	}
	
}
