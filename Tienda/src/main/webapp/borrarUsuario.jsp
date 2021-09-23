<%@page import="Modelo.MUsuario"%>
<%@page import="Controlador.CUsuarios"%>
<%@page import="java.math.BigDecimal" %>
<%
try{
	MUsuario usuario = new MUsuario();
	usuario.setCedula_usuario(new BigDecimal(request.getParameter("texto_cedula_usuario")));
	boolean borro = new CUsuarios().eliminar(usuario);
	request.setAttribute("borrar", borro);
	request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
}
catch(Exception e){
	request.setAttribute("error", "Solo pueden haber números en el espacio Cedula");
	request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
}
%>