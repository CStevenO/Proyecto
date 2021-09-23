<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Modelo.MUsuario"%>
<%@page import="Controlador.CUsuarios"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	//hola mundo
	MUsuario usuario = new MUsuario();
	usuario.setUsuario(request.getParameter("usuario"));
	usuario.setPassword(request.getParameter("contrasena"));
	MUsuario usuario1 = new CUsuarios().Consultar(usuario);
	if(usuario1 != null){
		if(usuario1.getUsuario() != ""){
			out.println(usuario1.getEmail_usuario());
			session.setAttribute("rol", usuario1.getRol());
			response.sendRedirect("../Tienda/Inicio.jsp");
		}
		else{
			out.println(usuario.getEmail_usuario());
			response.sendRedirect("../Tienda/index.html");
		}
	}
	%>
</body>
</html>