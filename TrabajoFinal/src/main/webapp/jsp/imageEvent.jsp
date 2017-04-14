<%@page import="java.io.OutputStream"%><%@page import="es.josemaria.aparicio.dao.EventDAOImpl"%><%@page import="es.josemaria.aparicio.dao.EventDAO"%><%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%><%
try {
	String idEvent = request.getParameter("imag");
	EventDAO eventDAO = new EventDAOImpl();
	byte[] imagen = eventDAO.getPhotoById(Integer.parseInt(idEvent));
	try {
		if (imagen != null) {
			response.setContentType("image/jpeg");
			response.setHeader("Content-Disposition", "attachment");
			OutputStream o = response.getOutputStream();
			o.write(imagen);
			o.flush();
			o.close();
			return;
		}
	} catch (IllegalStateException e) {
	}
} catch (Exception e) {
}
%>