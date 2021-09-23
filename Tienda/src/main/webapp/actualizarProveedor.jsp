<%@page import="Modelo.MProveedor"%>
<%@page import="Controlador.CProveedores"%>
<%@page import="java.math.BigDecimal" %>
<%
try{
	MProveedor proveedor = new MProveedor(new BigDecimal(request.getParameter("texto_NIT_proveedor")),
			(String)request.getParameter("texto_ciudad_proveedor"),(String)request.getParameter("texto_direccion_proveedor"),
			(String)request.getParameter("texto_nombre_proveedor"),(String)request.getParameter("texto_telefono_proveedor"));
	if(proveedor.areThereEmpties()){
		request.setAttribute("vacios", proveedor.getVacios());
		request.setAttribute("proveedor", proveedor);
		request.getRequestDispatcher("Proveedores.jsp").forward(request, response);
	}
	else{
		boolean actualizo = new CProveedores().actualizar(proveedor);
		request.setAttribute("actualizar", actualizo);
		request.getRequestDispatcher("Proveedores.jsp").forward(request, response);
	}
}
catch(Exception e){
	request.setAttribute("error", "Solo pueden haber números en el espacio NIT");
	request.getRequestDispatcher("Proveedores.jsp").forward(request, response);
}
%>