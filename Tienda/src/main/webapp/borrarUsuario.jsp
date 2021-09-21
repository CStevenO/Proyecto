<%@page import="Modelo.usuarios.MUsuario"%>
<%@page import="Controlador.usuarios.CUsuarios"%>
<%@page import="java.math.BigDecimal" %>
<%
if(request.getParameter("texto_cedula_usuario")!=""){
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
}
else{
	request.setAttribute("error", "El espacio Cedula esta vacio");
	request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
}

%>