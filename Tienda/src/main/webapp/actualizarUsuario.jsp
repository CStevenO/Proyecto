<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="Modelo.usuarios.MUsuario"%>
<%@page import="Controlador.usuarios.CUsuarios"%>
<%@page import="java.math.BigDecimal" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	MUsuario usuario = new MUsuario(new BigDecimal(request.getParameter("texto_cedula_usuario")),
			request.getParameter("texto_correo_usuario"),request.getParameter("texto_nombre_usuario"),
			request.getParameter("texto_contra_usuario"),request.getParameter("texto_usuario"),2);
	boolean actualizo = new CUsuarios().actualizar(usuario);
	request.setAttribute("actualizar", actualizo);
	request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
%>

</body>
</html>