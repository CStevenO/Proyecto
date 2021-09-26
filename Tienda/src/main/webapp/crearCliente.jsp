<%@page import="Modelo.MCliente"%>
<%@page import="Controlador.CClientes"%>
<%@page import="java.math.BigDecimal" %>

<%
try{
	MCliente cliente = new MCliente(new BigDecimal(request.getParameter("texto_cedula_cliente")),
			(String)request.getParameter("texto_direccion_cliente"),
			(String)request.getParameter("texto_correo_cliente"),
			(String)request.getParameter("texto_nombre_cliente"), 
			(String)request.getParameter("texto_telefono_cliente"));
			
	if(cliente.areThereEmpties()){
		request.setAttribute("vacios", cliente.getVacios());
		request.setAttribute("cliente", cliente);
		request.getRequestDispatcher("Clientes.jsp").forward(request, response);
	}
	else{
		boolean carga = new CClientes().insertar(cliente);
		request.setAttribute("confirmacion", carga);
		request.getRequestDispatcher("Clientes.jsp").forward(request, response);
	}
}
catch(Exception e){
	request.setAttribute("error", "Solo pueden haber números en el espacio Cédula");
	request.getRequestDispatcher("Clientes.jsp").forward(request, response);
}
%>