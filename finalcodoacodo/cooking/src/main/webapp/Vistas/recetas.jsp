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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de Recetas</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/0056e3c616.js" crossorigin="anonymous"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Itim&family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,700;0,800;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800&display=swap" rel="stylesheet">
    </head>
<body>
<!-- TABLA -->
<h2 style="text-align: center; margin-top: 67px;">Listado de Recetas</h2>
      <div class="container table-responsive">
          <a class="btn btn-primary col-md-4 m-4" 
                   href="RecetasController?accion=nueva">Agregar Receta</a>
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th scope="col">Id</th>
              <th scope="col">Nombre</th>
              <th scope="col">Tiempo</th>
              <th scope="col">Porciones</th>
              <th scope="col">Ingredientes</th>
              <th scope="col">Preparación</th>
              <th scope="col">Modificar</th>
              <th scope="col">Eliminar</th>
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
                <td><%=resultado.get(i).getId()%></td>
                <td><%=resultado.get(i).getNombre()%></td>
                <td><%=resultado.get(i).getTiempo()%></td>
                <td><%=resultado.get(i).getPorciones()%></td>
                <td><%=resultado.get(i).getIngredientes()%></td>
                <td><%=resultado.get(i).getPreparacion()%></td>
                <td><a class="text-success" href="<%= ruta %>">X</a></td>
                <td><a class="text-danger" href=<%= rutaE %>>X</a></td>
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
