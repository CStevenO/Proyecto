<%@page import="Modelo.usuarios.MUsuario"%>
<%@page import="Controlador.usuarios.CUsuarios"%>
<%@page import="java.math.BigDecimal" %>
<%
if(request.getParameter("texto_cedula_usuario")!=""){
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
}
else{
	request.setAttribute("error", "El espacio Cedula esta vacio");
	request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
}
%>