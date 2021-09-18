<%@page import="Modelo.usuarios.MUsuario"%>
<%@page import="Controlador.usuarios.CUsuarios"%>
<%@page import="java.math.BigDecimal" %>
<%
MUsuario usuario = new CUsuarios().Consultar(new BigDecimal(request.getParameter("texto_cedula_usuario")));

%>