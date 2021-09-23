<%@page import="Modelo.MUsuario"%>
<%@page import="Controlador.CUsuarios"%>
<%@page import="java.math.BigDecimal" %>
<%
try{
	MUsuario usuario = new CUsuarios().Consultar(new BigDecimal(request.getParameter("texto_cedula_usuario")));
	//session.setAttribute("usuario", usuario);
	//response.sendRedirect("../Tienda/Usuarios.jsp");
	request.setAttribute("usuario", usuario);
	request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
	//response.sendRedirect("../Tienda/Usuarios.jsp");
}
catch(Exception e){
	request.setAttribute("error", "Solo pueden haber números en el espacio Cedula");
	request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
}
%>