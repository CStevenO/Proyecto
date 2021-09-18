<%@page import="Modelo.usuarios.MUsuario"%>
<%@page import="Controlador.usuarios.CUsuarios"%>
<%@page import="java.math.BigDecimal" %>
<%
MUsuario usuario = new CUsuarios().Consultar(new BigDecimal(request.getParameter("texto_cedula_usuario")));
//request.setAttribute("cedula", usuario.getCedula_usuario());
//request.getRequestDispatcher("../Tienda/Usuario.jsp").forward(request, response);
session.setAttribute("usuario", usuario);
response.sendRedirect("../Tienda/Usuarios.jsp");
%>