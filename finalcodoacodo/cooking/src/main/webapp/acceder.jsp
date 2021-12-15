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
    <script src="https://kit.fontawesome.com/0056e3c616.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Itim&family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,700;0,800;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800&display=swap" rel="stylesheet">
    <link rel="icon" href="img/logo/logo_small_icon_only.png">
    <title>Acceder</title>
</head>
<body style="background-color: #fc403d;">
<div class="container col-lg-5 justify-content-md-center acceder">
    <form class="form-signin" action="checkuser" method="post" style="text-align: center;">
        <img class="mb-4 col-12" src="img/logo/logo_small.png" alt="">
        <h1 class="h3 mb-3 font-weight-normal">Ingresar</h1>
        <label for="inputEmail" class="sr-only">Usuario</label>
        <input type="email" id="inputEmail" name="inputEmail" class="form-control" placeholder="Email" value="email@gmail.com" required autofocus>
        <label for="inputPassword" class="sr-only">Clave</label>
        <input type="password" id="inputPassword" name="inputPassword" class="form-control" placeholder="Contraseña" value="miclave" required>
        <div class="checkbox mb-3">
  
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Ingresar</button>
        <p class="mt-5 mb-3 text-white">&copy; 2021-2022</p>
    </form>
</div>
</body>
</html>