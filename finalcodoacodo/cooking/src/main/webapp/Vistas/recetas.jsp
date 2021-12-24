<%-- 
    Document   : recetas
    Created on : 13 dic. 2021, 03:18:07
    Author     : Usuario
--%>

<%@page import="modelo.RecetasDAO"%>
<%@page import="modelo.Recetas"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
        <title>Listado de Recetas</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="/cooking/css/stylo.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Itim&family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,700;0,800;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800&display=swap" rel="stylesheet">
        <link rel="icon" href="img/logo/logo_small_icon_only.png">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    </head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
    <div class="container-fluid col-lg-10">
      <img src="./img/logo/logo_small.png" style="width: 120px;">
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="index.jsp">Inicio</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="RecetasController?accion=nuevo">Agregar Receta</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
<!-- TABLA -->
<h2 style="text-align: center; margin-top: 90px;">Listado de Recetas</h2>
      <div class="container table-responsive col-lg-12 col-sm-12 col-md-12">
        <table class="table table-striped table-sm mt-4">
          <thead>
            <tr>
              <th class="text-center" scope="col">Id</th>
              <th class="text-center" scope="col">Nombre</th>
              <th class="text-center" scope="col">Tiempo</th>
              <th class="text-center" scope="col">Porciones</th>
              <th class="text-center" scope="col">Ingredientes</th>
              <th class="text-center" scope="col">Preparación</th>
              <th class="text-center" scope="col">Modificar</th>
              <th class="text-center" scope="col">Eliminar</th>
            </tr>
          </thead>
          <tbody>
            <%
              List<Recetas> resultado=null;
              RecetasDAO receta = new RecetasDAO();
              resultado = receta.listarRecetas();
              
              for(int i=0; i < resultado.size(); i++){
                String ruta ="RecetasController?accion=modificar&id=" +resultado.get(i).getId();
                String rutaE ="RecetasController?accion=eliminar&id=" +resultado.get(i).getId();
            %>
            <tr>
                <td class="text-center"><%=resultado.get(i).getId()%></td>
                <td><%=resultado.get(i).getNombre()%></td>
                <td><%=resultado.get(i).getTiempo()%></td>
                <td><%=resultado.get(i).getPorciones()%></td>
                <td><%=resultado.get(i).getIngredientes()%></td>
                <td><%=resultado.get(i).getPreparacion()%></td>
                <td><a class="text-success d-flex justify-content-center" href="<%= ruta %>"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                    <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                    <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                    </svg></a></td>
                <td><a class="text-danger d-flex justify-content-center" href=<%= rutaE %>><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                </svg>
            </tr>
               <%
             }
            %>
          </tbody>
        </table>
      </div>
  </div>
</div>
</body>
</html>
