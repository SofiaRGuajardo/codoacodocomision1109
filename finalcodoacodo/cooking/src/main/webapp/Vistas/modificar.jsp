<%-- 
    Document   : modificar
    Created on : 13 dic. 2021, 03:18:22
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Receta</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <h1 style="text-align: center">Modificar Receta</h1>
             <div class="container">
            <div class="row d-flex justify-content-center">
                <form class="p-5" action="RecetasController?accion=insert"
                      method="POST">
                    <div class="mb-3">
                        <label for="nombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" value="<%=resultado.getNombre()%>"/>
                    </div>
                    <div class="mb-3">
                        <label for="tiempo" class="form-label">Tiempo</label>
                        <input type="text" class="form-control" id="tiempo" name="tiempo" value="<%=resultado.getTiempo()%>"/>
                    </div>
                    <div class="mb-3">
                        <label for="porciones" class="form-label">Porciones</label>
                        <input type="text" class="form-control" id="porciones" name="porciones" value="<%=resultado.getPorciones()%>"/>
                    </div>
                    <div class="mb-3">
                        <label for="ingredientes" class="form-label">Ingredientes</label>
                        <textarea class="form-control" id="ingredientes" name="ingredientes" rows="3" value="<%=resultado.getIngredientes()%>"></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="preparacion" class="form-label">Preparación</label>
                        <textarea class="form-control" id="preparacion" name="preparacion" rows="5" value="<%=resultado.getPreparacion()%>"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Modificar</button>
                </form>
                
            </div>
        </div>
    </body>
</html>
