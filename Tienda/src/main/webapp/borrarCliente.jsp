<%@page import="Modelo.MCliente"%>
<%@page import="Controlador.CClientes"%>
<%@page import="java.math.BigDecimal" %>
<%
try{
	MCliente cliente = new MCliente();
	cliente.setCedula_cliente(new BigDecimal(request.getParameter("texto_cedula_cliente")));
	boolean borro = new CClientes().eliminar(cliente);
	request.setAttribute("borrar", borro);
	request.getRequestDispatcher("Clientes.jsp").forward(request, response);
}
catch(Exception e){
	request.setAttribute("error", "Solo pueden haber números en el espacio Cedula");
	request.getRequestDispatcher("Clientes.jsp").forward(request, response);
}
%>