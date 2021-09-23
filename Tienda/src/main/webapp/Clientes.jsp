<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clientes</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

</head>

<body>
<jsp:include page="Menu.jsp"></jsp:include>


<form method="post">
    <div class="container pt-3">
        <div class="mb-3">
            <label for="texto_cedula" class="form-label">Cedula</label>
            <input type="number" class="form-control" id="texto_cedula"
                placeholder="Ingrese numero de documento de identidad" name="texto_cedula_cliente">
        </div>
        <div class="mb-3">
            <label for="texto_nombre" class="form-label">Nombre Completo</label>
            <input type="text" class="form-control" id="texto_nombre" placeholder="Ingrese Nombres y apellidos del cliente" name="texto_nombre_cliente">
        </div>
        <div class="mb-3">
            <label for="texto_direccion" class="form-label">Direccion</label>
            <input type="text" class="form-control" id="texto_direccion" placeholder="Ingrese Direccion del cliente" name="texto_direccion_cliente">
        </div>
        <div class="mb-3">
            <label for="texto_usuario" class="form-label">Telefono</label>
            <input type="tel" class="form-control" id="texto_usuario" placeholder="Ingrese Telefono del cliente" name="texto_usuario_cliente">
        </div>
        <div class="mb-3">
            <label for="texto_correo" class="form-label">Corrreo Electronico</label>
            <input type="email" class="form-control" id="texto_correo" placeholder="Ingrese Correo Electronico del cliente" name="texto_correo_cliente">
        </div>

        <div class="d-grid gap-3 d-md-block">
            <button class="btn btn-primary" type="button" name="boton_consultar_cliente">Consultar</button>
            <button class="btn btn-success" type="button" name="boton_crear_cliente">Crear</button>
            <button class="btn btn-info" type="button" name="boton_actualizar_cliente">Actualizar</button>
            <button class="btn btn-danger" type="button" name="boton_borrar_cliente">Borrar</button>
        </div>
    </div>
</form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
        crossorigin="anonymous"></script>
</body>

</html>