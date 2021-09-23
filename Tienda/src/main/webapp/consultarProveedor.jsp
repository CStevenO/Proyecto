<%@page import="Modelo.MProveedor"%>
<%@page import="Controlador.CProveedores"%>
<%@page import="java.math.BigDecimal" %>
<%
try{
	MProveedor proveedor = new CProveedores().Consultar(new BigDecimal(request.getParameter("texto_NIT_proveedor")));
	request.setAttribute("proveedor", proveedor);
	request.getRequestDispatcher("Proveedores.jsp").forward(request, response);
}
catch(Exception e){
	request.setAttribute("error", "Solo pueden haber números en el espacio Nit");
	request.getRequestDispatcher("Proveedores.jsp").forward(request, response);
}
%>