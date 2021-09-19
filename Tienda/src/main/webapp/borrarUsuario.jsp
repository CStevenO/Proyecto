<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Modelo.usuarios.MUsuario"%>
<%@page import="Controlador.usuarios.CUsuarios"%>
<%@page import="java.math.BigDecimal" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	MUsuario usuario = new MUsuario();
	usuario.setCedula_usuario(new BigDecimal(request.getParameter("texto_cedula_usuario")));
	boolean borro = new CUsuarios().eliminar(usuario);
	request.setAttribute("borrar", borro);
	request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
	%>
	
</body>
</html>