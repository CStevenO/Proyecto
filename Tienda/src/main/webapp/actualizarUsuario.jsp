<%@page import="Modelo.usuarios.MUsuario"%>
<%@page import="Controlador.usuarios.CUsuarios"%>
<%@page import="java.math.BigDecimal" %>
<%
try{
	MUsuario usuario = new MUsuario(new BigDecimal(request.getParameter("texto_cedula_usuario")),
			(String)request.getParameter("texto_correo_usuario"),(String)request.getParameter("texto_nombre_usuario"),
			(String)request.getParameter("texto_contra_usuario"),(String)request.getParameter("texto_usuario"),2);
	if(usuario.areThereEmpties()){
		request.setAttribute("vacios", usuario.getVacios());
		request.setAttribute("usuario", usuario);
		request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
	}
	else{
		boolean actualizo = new CUsuarios().actualizar(usuario);
		request.setAttribute("actualizar", actualizo);
		request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
	}
}
catch(Exception e){
	request.setAttribute("error", "Solo pueden haber números en el espacio Cedula");
	request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
}
%>