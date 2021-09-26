<%@page import="Modelo.MCliente"%>
<%@page import="Controlador.CClientes"%>
<%@page import="java.math.BigDecimal" %>
<%
try{
	MCliente cliente = new CClientes().Consultar(new BigDecimal(request.getParameter("texto_cedula_cliente")));
	request.setAttribute("cliente", cliente);
	request.getRequestDispatcher("Clientes.jsp").forward(request, response);
}
catch(Exception e){
	request.setAttribute("error", "Solo pueden haber números en el espacio Cedula");
	request.getRequestDispatcher("Clientes.jsp").forward(request, response);
}
%>