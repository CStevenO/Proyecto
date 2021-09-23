<%
int rol = (int)session.getAttribute("rol");
%>

<main>
    <nav class="navbar navbar-expand-md navbar-light"
        style="background: linear-gradient(to right, #51ceff, #5980ff);" aria-label="Fourth navbar example">
        <div class="container-fluid">
            <a class="navbar-brand" href="#"> <img src="../Tienda/img/ponerimagendelogo" alt="" width="30" height="24"> Tienda de
                Viveres</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarsExample04">
                <ul class="navbar-nav me-auto mb-2 mb-md-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="../Tienda/Inicio.jsp">Inicio</a>
                    </li>
                    <%
                	if(rol == 1){
                	%>
	                    <li class="nav-item">
	                        <a class="nav-link active" href="../Tienda/Usuarios.jsp">Usuarios</a>
	                    </li>
	                    <li class="nav-item">
	                        <a class="nav-link active" href="../Tienda/Clientes.jsp">Clientes</a>
	                    </li>
	                    <li class="nav-item">
	                        <a class="nav-link active" href="../Tienda/Proveedores.jsp">Proveedores</a>
	                    </li>
	                    <li class="nav-item">
	                        <a class="nav-link active" href="../Tienda/Productos.jsp">Productos</a>
	                    </li>
                    <% }%>
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Ventas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Reportes</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</main>
