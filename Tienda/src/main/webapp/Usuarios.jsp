<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Modelo.usuarios.MUsuario"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Usuarios</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

</head>
<body>
<jsp:include page="Menu.jsp"></jsp:include>
<%MUsuario usuario = (MUsuario)request.getAttribute("usuario"); 
if(usuario == null){
	usuario = new MUsuario();
}
if(request.getAttribute("confirmacion")!=null){
	boolean confirmacion = (boolean)request.getAttribute("confirmacion");
	if(confirmacion){
		%>
		<div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
		  <div class="toast-header">
		    <img src="..." class="rounded me-2" alt="...">
		    <strong class="me-auto">Ingreso Usuario</strong>
		    <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
		  </div>
		  <div class="toast-body">
		    El usuario ha sido ingresado exitosamente
		  </div>
		</div>
		<% 
	}
	else{
		%>
		<div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
		  <div class="toast-header">
		    <img src="..." class="rounded me-2" alt="...">
		    <strong class="me-auto">Ingreso Usuario</strong>
		    <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
		  </div>
		  <div class="toast-body">
		    El usuario no ha sido ingresado
		  </div>
		</div>
		<% 
	}
}
%>

	<form method="post">
	    <div class="container pt-3">
	        <div class="mb-3">
	            <label for="texto_cedula" class="form-label">Cedula</label>
	            <input type="text" class="form-control" id="texto_cedula"
	                placeholder="Ingrese numero de documento de identidad" name="texto_cedula_usuario" value=<%=usuario.getCedula_usuario() %>>
	        </div>        
	        <div class="mb-3">
	            <label for="texto_nombre" class="form-label">Nombre Completo</label>
	            <input type="text" class="form-control" id="texto_nombre" placeholder="Ingrese Nombres y apellidos" name="texto_nombre_usuario"
	            	value=<%=usuario.getNombre_usuario() %>>
	        </div>
	        <div class="mb-3">
	            <label for="texto_correo" class="form-label">Correo Electronico</label>
	            <input type="email" class="form-control" id="texto_correo" placeholder="Ingrese Correo Electronico" name="texto_correo_usuario"
	            	value=<%=usuario.getEmail_usuario() %>>
	        </div>
	        <div class="mb-3">
	            <label for="texto_usuario" class="form-label">Usuario</label>
	            <input type="text" class="form-control" id="texto_usuario" placeholder="Ingrese Usuario" name="texto_usuario"
	            	value=<%=usuario.getUsuario() %>>
	        </div>
	        <div class="mb-3">
	            <label for="texto_contra" class="form-label">Contrase�a</label>
	            <input type="password" class="form-control" id="texto_contra" placeholder="Ingrese Constrase�a" name="texto_contra_usuario">
	        </div>
	
	        <div class="d-grid gap-3 d-md-block">
	            <button class="btn btn-primary" type="submit" name="boton_consultar_usuario" formaction="../Tienda/consultarUsuario.jsp">Consultar</button>
	            <button class="btn btn-success" type="submit" name="boton_crear_usuario" formaction="../Tienda/crearUsuario.jsp">Crear</button>
	            <button class="btn btn-info" type="submit" name="boton_actualizar_usuario">Actualizar</button>
	            <button class="btn btn-danger" type="submit" name="boton_borrar_usuario">Borrar</button>
	        </div>
	    </div>
   </form>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
        crossorigin="anonymous"></script>
</body>
</body>
</html>