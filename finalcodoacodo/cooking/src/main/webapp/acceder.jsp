<%-- 
    Document   : acceder
    Created on : 15 dic. 2021, 06:06:22
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="/cooking/css/stylo.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Itim&family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,700;0,800;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800&display=swap" rel="stylesheet">
    <link rel="icon" href="img/logo/logo_small_icon_only.png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <title>Acceder</title>
</head>
<body style="background-color: #fc403d;">
    <div class="container mt-3">
        <a href="index.jsp" class="btn btn-lg btn-outline-light" style="font-family: 'Montserrat', sans-serif;"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-chevron-left" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"/>
</svg> Inicio</a>
    </div>
<div class="container col-lg-5 justify-content-md-center acceder">
    <form class="form-signin" action="RecetasController?accion=ingresar" method="POST" style="text-align: center;">
        <img class="mb-4 col-12" src="img/logo/logo_small.png" alt="">
        <label for="email" class="sr-only"></label>
        <input type="email" id="email" name="email" class="form-control" placeholder="Email" value="Usuario" required autofocus>
        <label for="password" class="sr-only"></label>
        <input type="password" id="password" name="password" class="form-control" placeholder="Contraseña" value="Contraseña" required>
        <div class="checkbox mb-3">
  
        </div>
        <button class="btn btn-lg btn-light btn-block" type="submit">Ingresar</button>
        <p class="mt-5 mb-3 text-white">&copy; 2021-2022</p>
    </form>
</div>
</body>
</html>