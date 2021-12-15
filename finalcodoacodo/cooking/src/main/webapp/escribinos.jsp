<%-- 
    Document   : escribinos
    Created on : 15 dic. 2021, 06:11:28
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
    <script src="https://kit.fontawesome.com/0056e3c616.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Itim&family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,700;0,800;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800&display=swap" rel="stylesheet">
    <link rel="icon" href="img/logo/logo_small_icon_only.png">
    <title>Contacto</title>
</head>
<body>
    <!-- NAVBAR + HERO -->
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
          <li class="nav-item dropdown">
            <a class="nav-link active dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Recetas
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="#">Sin Tacc</a></li>
              <li><a class="dropdown-item" href="#">Veggies</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="#">Navideñas</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="escribinos.jsp">Escribinos</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

<section id="seccion">
  <div class="container-fluid col-lg-12 col-sm-12 col-md-12"> 
    <div class="row align-items-center hero-image">
      <div class="col-lg-12">
        <h2 style="text-align: center; color:white; font-size: 40px;">ESCRIBINOS</h2>
      </div>
    </div>
  </div>

<!-- FORMULARIO -->
<div class="formulario container">
    <div class="form-floating mb-3">
        <input type="text" class="form-control" id="floatingNombre" placeholder="Marta Pérez">
        <label for="floatingNombre">Nombre</label>
    </div>
    <div class="form-floating mb-3">
        <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
        <label for="floatingInput">Email</label>
    </div>
    <div class="form-floating mb-3">
        <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea" style="height: 100px"></textarea>
        <label for="floatingTextarea">Comentario</label>
    </div>
    <div class="d-grid gap-2 d-md-block">
        <button type="button" class="btn btn-success">Enviar</button>
    </div>
</div>

<!-- FOOTER -->
<div class="container footer d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
    <p class="col-md-4 col-4 mb-0 text-white">&copy; Guajardo Sofía</p>
    <a href="/" class="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
      <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
    </a>

    <ul class="nav col-md-4 col-5 justify-content-end">
      <li class="nav-item"><a href="acceder.jsp" class="nav-link px-2 text-white">Acceder</a></li>
      <li class="nav-item"><a href="escribinos.jsp" class="nav-link px-2 text-white">Escribinos</a></li>
      <li class="nav-item"><a href="#" class="nav-link px-2 text-white">Codo a Codo</a></li>
    </ul>
</div>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>