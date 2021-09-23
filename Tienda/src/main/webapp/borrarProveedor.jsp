<%@page import="Modelo.MProveedor"%>
<%@page import="Controlador.CProveedores"%>
<%@page import="java.math.BigDecimal" %>
<%
try{
	MProveedor proveedor = new MProveedor();
	proveedor.setNit_proveedor(new BigDecimal(request.getParameter("texto_NIT_proveedor")));
	boolean borro = new CProveedores().eliminar(proveedor);
	request.setAttribute("borrar", borro);
	request.getRequestDispatcher("Proveedores.jsp").forward(request, response);
}
catch(Exception e){
	request.setAttribute("error", "Solo pueden haber números en el espacio NIT");
	request.getRequestDispatcher("Proveedores.jsp").forward(request, response);
}
%>