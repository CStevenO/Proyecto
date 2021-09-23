<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proveedores</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

</head>

<body>
<jsp:include page="Menu.jsp"></jsp:include>

<form method="post">
<div class="container pt-3">
        <div class="mb-3">
            <label for="texto_NIT" class="form-label">NIT</label>
            <input type="number" class="form-control" id="texto_NIT"
                placeholder="Ingrese el Numero de Identificacion Tributaria del proveedor" name="texto_NIT_proveedor" required>
        </div>
        <div class="mb-3">
            <label for="texto_proveedor" class="form-label">Nombre Proveedor</label>
            <input type="text" class="form-control" id="texto_proveedor" placeholder="Ingrese el Nombre del proveedor" name="texto_nombre_proveedor">
        </div>
        <div class="mb-3">
            <label for="texto_direccion" class="form-label">Direccion</label>
            <input type="text" class="form-control" id="texto_direccion" placeholder="Ingrese Direccion del proveedor" name="texto_direccion_proveedor">
        </div>
        <div class="mb-3">
            <label for="texto_telefono" class="form-label">Telefono</label>
            <input type="text" class="form-control" id="texto_telefono" placeholder="Ingrese Telefono del proveedor"name="texto_telefono_proveedor">
        </div>
        <div class="mb-3">
            <label for="texto_ciudad" class="form-label">Ciudad</label>
            <input type="text" class="form-control" id="texto_ciudad" placeholder="Ingrese Ciudad del proveedor" name="texto_ciudad_proveedor">
        </div>

        <div class="d-grid gap-3 d-md-block">
            <button class="btn btn-primary" type="button" name="boton_consultar_proveedor">Consultar</button>
            <button class="btn btn-success" type="button" name="boton_crear_proveedor">Crear</button>
            <button class="btn btn-info" type="button" name="boton_actualizar_proveedor">Actualizar</button>
            <button class="btn btn-danger" type="button" name="boton_borrar_proveedor">Borrar</button>
        </div>
    </div>
</form>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
        crossorigin="anonymous"></script>
</body>

</html>