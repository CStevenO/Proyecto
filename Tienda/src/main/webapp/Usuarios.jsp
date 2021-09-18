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
<%MUsuario usuario = ((MUsuario)session.getAttribute("usuario")); 
if(usuario == null){
	usuario = new MUsuario();
}
%>
<main>
        <nav class="navbar navbar-expand-md navbar-light"
            style="background: linear-gradient(to right, #51ceff, #5980ff);" aria-label="Fourth navbar example">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"> <img src="ponerimagendelogo" alt="" width="30" height="24"> Tienda de
                    Viveres</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarsExample04">
                    <ul class="navbar-nav me-auto mb-2 mb-md-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="../Tienda/Menu.html">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="../Tienda/Usuarios.html">Usuarios</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="../Tienda/Clientes.html">Clientes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="../Tienda/Proveedores.html">Proveedores</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="#">Productos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="#">Ventas</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="#">Reportes</a>
                        </li>
                        <!-- 
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-bs-toggle="dropdown"
                                aria-expanded="false">Dropdown</a>
                            <ul class="dropdown-menu" aria-labelledby="dropdown04">
                                <li><a class="dropdown-item" href="#">Action</a></li>
                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                            </ul>
                        </li>-->
                    </ul>
                    <form>
                        <!-- <input class="form-control" type="text" placeholder="Search" aria-label="Search">-->
                    </form>
                </div>
            </div>
        </nav>
    </main>
	<form>
	    <div class="container pt-3">
	        <div class="mb-3">
	            <label for="texto_cedula" class="form-label">Cedula</label>
	            <input type="text" class="form-control" id="texto_cedula"
	                placeholder="Ingrese numero de documento de identidad" name="texto_cedula_usuario" value=<%=usuario.getCedula_usuario() %>>
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
	            <label for="texto_contra" class="form-label">Contraseña</label>
	            <input type="password" class="form-control" id="texto_contra" placeholder="Ingrese Constraseña" name="texto_contra_usuario">
	        </div>
	
	        <div class="d-grid gap-3 d-md-block">
	            <button class="btn btn-primary" type="submit" name="boton_consultar_usuario" formaction="../Tienda/consultarUsuario.jsp">Consultar</button>
	            <button class="btn btn-success" type="submit" name="boton_crear_usuario">Crear</button>
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