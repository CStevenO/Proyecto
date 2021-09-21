<%@page import="Modelo.usuarios.MUsuario"%>
<%@page import="Controlador.usuarios.CUsuarios"%>
<%@page import="java.math.BigDecimal" %>
<%
if(request.getParameter("texto_cedula_usuario")!=""){
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
			boolean carga = new CUsuarios().insertar(usuario);
			request.setAttribute("confirmacion", carga);
			request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
		}
	}
	catch(Exception e){
		request.setAttribute("error", "Solo pueden haber n�meros en el espacio Cedula");
		request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
	}
}
else{
	request.setAttribute("error", "El espacio Cedula esta vacio");
	request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
}
%>