<%-- 
    Document   : nueva
    Created on : 13 dic. 2021, 03:18:40
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
        <title>Agregar Receta</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="/cooking/css/stylo.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Itim&family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,700;0,800;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800&display=swap" rel="stylesheet">
        <link rel="icon" href="img/logo/logo_small_icon_only.png">
    </head>
    <body>
        <h2 class="text-center mt-4">Agregar Receta</h2>
            <div class="container">
            <div class="row d-flex justify-content-center">
                <form class="p-3" action="RecetasController?accion=insert" method="POST">
                    <div class="mb-3">
                        <label for="nombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" />
                    </div>
                    <div class="mb-3">
                        <label for="tiempo" class="form-label">Tiempo</label>
                        <input type="text" class="form-control" id="tiempo" name="tiempo" />
                    </div>
                    <div class="mb-3">
                        <label for="porciones" class="form-label">Porciones</label>
                        <input type="text" class="form-control" id="porciones" name="porciones" />
                    </div>
                    <div class="mb-3">
                        <label for="ingredientes" class="form-label">Ingredientes</label>
                        <input class="form-control" id="ingredientes" name="ingredientes"/>
                    </div>
                    <div class="mb-3">
                        <label for="preparacion" class="form-label">Preparación</label>
                        <input class="form-control" id="preparacion" name="preparacion"/>
                    </div>
                    <button type="submit" class="btn btn-success">Agregar</button>
                </form>
                
            </div>
        </div>
    </body>
</html>
