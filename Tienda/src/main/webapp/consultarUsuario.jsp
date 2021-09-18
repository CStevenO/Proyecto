<%@page import="Modelo.usuarios.MUsuario"%>
<%@page import="Controlador.usuarios.CUsuarios"%>
<%@page import="java.math.BigDecimal" %>
<%
MUsuario usuario = new CUsuarios().Consultar(new BigDecimal(request.getParameter("texto_cedula_usuario")));
//session.setAttribute("usuario", usuario);
//response.sendRedirect("../Tienda/Usuarios.jsp");
System.out.println(usuario.getEmail_usuario());
request.setAttribute("usuario", usuario);
request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
response.sendRedirect("../Tienda/Usuarios.jsp");
%>