<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Modelo.MProveedor"%>
<%@page import="java.math.BigDecimal"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proveedores</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="Menu.jsp"></jsp:include>
<%MProveedor proveedor = (MProveedor)request.getAttribute("proveedor"); 
if(proveedor == null){
	proveedor = new MProveedor();
}
%>
<form method="post">
<div class="container pt-3">
        <div class="mb-3">
            <label for="texto_NIT" class="form-label">NIT</label>
            <input type="number" class="form-control" id="texto_NIT"
                placeholder="Ingrese el Numero de Identificacion Tributaria del proveedor" name="texto_NIT_proveedor" value="<%=proveedor.getNit_proveedor() %>" required>
        </div>
        <div class="mb-3">
            <label for="texto_proveedor" class="form-label">Nombre Proveedor</label>
            <input type="text" class="form-control" id="texto_proveedor" placeholder="Ingrese el Nombre del proveedor" name="texto_nombre_proveedor" value="<%=proveedor.getNombre_proveedor() %>">
        </div>
        <div class="mb-3">
            <label for="texto_direccion" class="form-label">Direccion</label>
            <input type="text" class="form-control" id="texto_direccion" placeholder="Ingrese Direccion del proveedor" name="texto_direccion_proveedor" value="<%=proveedor.getDireccion_proveedor() %>">
        </div>
        <div class="mb-3">
            <label for="texto_telefono" class="form-label">Telefono</label>
            <input type="tel" class="form-control" id="texto_telefono" placeholder="Ingrese Telefono del proveedor"name="texto_telefono_proveedor" value="<%=proveedor.getTelefono_proveedor() %>">
        </div>
        <div class="mb-3">
            <label for="texto_ciudad" class="form-label">Ciudad</label>
            <input type="text" class="form-control" id="texto_ciudad" placeholder="Ingrese Ciudad del proveedor" name="texto_ciudad_proveedor" value="<%=proveedor.getCiudad_proveedor() %>">
        </div>

        <div class="d-grid gap-3 d-md-block">
            <button class="btn btn-primary" type="submit" name="boton_consultar_proveedor" formaction="../Tienda/consultarProveedor.jsp">Consultar</button>
            <button class="btn btn-success" type="submit" name="boton_crear_proveedor" formaction="../Tienda/crearProveedor.jsp">Crear</button>
            <button class="btn btn-info" type="submit" name="boton_actualizar_proveedor" formaction="../Tienda/actualizarProveedor.jsp">Actualizar</button>
            <button class="btn btn-danger" type="submit" name="boton_borrar_proveedor" formaction="../Tienda/borrarProveedor.jsp">Borrar</button>
        </div>
    </div>
</form>

<%
		if(request.getAttribute("confirmacion")!=null){
			boolean confirmacion = (boolean)request.getAttribute("confirmacion");
			if(confirmacion){
				%>
				<div align='center'>
					<div class="toast">
				    	<div class="toast-header">
				      		<strong class="mr-auto text-primary">Ingresar</strong>
				      		<small class="text-muted">Base de datos</small>
				    	</div>
				    	<div class="toast-body">
				      		El proveedor ha sido ingresado exitosamente.
				    	</div>
				  	</div>
				  	<script>
						$(document).ready(function(){
						  $('.toast').toast('show');
						});
				 	</script>
			 	</div>
			  <% 
			}
			else{
				%>
				<div align='center'>
					<div class="toast">
					    <div class="toast-header">
					      <strong class="mr-auto text-primary">Ingresar</strong>
					      <small class="text-muted">Base de datos</small>
					    </div>
					    <div class="toast-body">
					      El proveedor no ha sido ingresado.
					    </div>
					  </div>
					  <script>
						$(document).ready(function(){
						  $('.toast').toast('show');
						});
				 	  </script>
			 	  </div>
			  <% 
			}
		}
		if(request.getAttribute("borrar")!=null){
			boolean borro = (boolean)request.getAttribute("borrar");
			if(borro){
				%>
				<div align='center'>
					<div class="toast">
					    <div class="toast-header">
					      	<strong class="mr-auto text-primary">Borrar</strong>
					      	<small class="text-muted">Base de datos</small>
					    </div>
					    <div class="toast-body">
					      	El proveedor ha sido borrado exitosamente.
					    </div>
					  </div>
					  <script>
							$(document).ready(function(){
						 	 $('.toast').toast('show');
							});
				 	  </script>
		 	 	</div>
			  <% 
			}
			else{
				%>
				<div align='center'>
					<div class="toast">
					    <div class="toast-header">
					      	<strong class="mr-auto text-primary">Borrar</strong>
					      	<small class="text-muted">Base de datos</small>
					    </div>
					    <div class="toast-body">
					      	El proveedor no ha sido borrado.
					    </div>
					  </div>
					  <script>
							$(document).ready(function(){
						 	 $('.toast').toast('show');
							});
				 	  </script>
			 	 </div>
			 	 
			  <% 
			}
		}
		if(request.getAttribute("actualizar")!=null){
			boolean actualizo = (boolean)request.getAttribute("actualizar");
			if(actualizo){
		%>
		<div align='center'>
					<div class="toast">
					    <div class="toast-header">
					      	<strong class="mr-auto text-primary">Actualizar</strong>
					      	<small class="text-muted">Base de datos</small>
					    </div>
					    <div class="toast-body">
					      	El proveedor ha sido actualizado exitosamente.
					    </div>
					  </div>
					  <script>
							$(document).ready(function(){
						 	 $('.toast').toast('show');
							});
				 	  </script>
		 	 	</div>
		
		<%
			}
			else{
		%>
		<div align='center'>
					<div class="toast">
					    <div class="toast-header">
					      	<strong class="mr-auto text-primary">Actualizar</strong>
					      	<small class="text-muted">Base de datos</small>
					    </div>
					    <div class="toast-body">
					      	El proveedor no ha sido actualizado.
					    </div>
					  </div>
					  <script>
							$(document).ready(function(){
						 	 $('.toast').toast('show');
							});
				 	  </script>
			 	 </div>
	 	 <%
			}
		}
		if(request.getAttribute("error")!=null){
			String error = (String)request.getAttribute("error");
		%>
		<div align='center'>
					<div class="toast">
					    <div class="toast-header">
					      	<strong class="mr-auto text-primary">Error</strong>
					      	<small class="text-muted">Base de datos</small>
					    </div>
					    <div class="toast-body">
					      	<%=error %>
					    </div>
					  </div>
					  <script>
							$(document).ready(function(){
						 	 $('.toast').toast('show');
							});
				 	  </script>
		 	 	</div>
 	 	<% 
		}
		if(request.getAttribute("vacios")!=null){
			String error = (String)request.getAttribute("vacios");
		%>
		<div align='center'>
					<div class="toast">
					    <div class="toast-header">
					      	<strong class="mr-auto text-primary">Error</strong>
					      	<small class="text-muted">Base de datos</small>
					    </div>
					    <div class="toast-body">
					      	<%=error %>
					    </div>
					  </div>
					  <script>
							$(document).ready(function(){
						 	 $('.toast').toast('show');
							});
				 	  </script>
		 	 	</div>
 	 	<% 
		}
 	 	%>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
        crossorigin="anonymous"></script>
</body>

</html>