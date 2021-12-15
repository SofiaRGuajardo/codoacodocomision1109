<%-- 
    Document   : index
    Created on : 13 dic. 2021, 06:47:35
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="/cooking/css/stylo.css">
    <script src="https://kit.fontawesome.com/0056e3c616.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Itim&family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,700;0,800;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800&display=swap" rel="stylesheet">
    <link rel="icon" href="img/logo/logo_small_icon_only.png">
    <title>cooking</title>
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
            <a class="nav-link active" aria-current="page" href="#">Inicio</a>
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
  <div class="container-fluid col-lg-12 col-md-12 col-12 col-12"> 
    <div class="row align-items-center hero-image">
      <div class="col-lg-12">
        <h2 style="text-align: center; color:white; font-size: 40px;">RECETAS</h2>
      </div>
    </div>
  </div>

<!-- TARJETAS -->
<article class="col-md-12">
  <div class="cards-2 section-gray">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 col-sm-12 col-md-6">
          <div class="card card-blog">
            <div class="card-image">
              <a href="#"> <img class="img img-raised" src="http://adamthemes.com/demo/code/cards/images/blog01.jpeg"> </a>
                <div class="ripple-cont"></div>
            </div>
              <div class="table">
                <h6 class="category text-info">Sin Tacc</h6>
                <h4 class="card-caption">
                  <a href="#" data-bs-toggle="modal" data-bs-target="#alfajor">Alfajores de Maicena</a>
                </h4>
                <p class="card-description"> Tiempo total: 60 min. <br> Porciones: 22 alfajores</p> 
              </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-12 col-md-6">
          <div class="card card-blog">
            <div class="card-image">
              <a href="#"> <img class="img img-raised" src="http://adamthemes.com/demo/code/cards/images/blog01.jpeg"> </a>
            </div>
            <div class="table">
              <h6 class="category text-danger">Navidad</h6>
              <h4 class="card-caption">
                <a href="#" data-bs-toggle="modal" data-bs-target="#viteltone">Vitel Toné</a>
              </h4>
              <p class="card-description"> Tiempo total: 130 min. <br> Porciones: 10</p> 
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-12 col-md-6">
          <div class="card card-blog">
            <div class="card-image">
              <a href="#"> <img class="img img-raised" src="http://adamthemes.com/demo/code/cards/images/blog01.jpeg"> </a>
            </div>
            <div class="table">
              <h6 class="category text-success">Consectetur</h6>
              <h4 class="card-caption">
                <a href="#" data-bs-toggle="modal" data-bs-target="#">Quisque id elit maximus, pretium diam at mollis elit</a>
              </h4>
              <p class="card-description"> Tiempo total: 130 min. <br> Porciones: 10</p> 
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</article>

<!--MODAL-->
<div class="modal" tabindex="-1" id="alfajor">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header" style="background-color: #E5E5E5;">
        <h5 class="modal-title">Alfajores de Maicena</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <h3 class="fuentemodal">Ingredientes</h3>
          <div class="row">
            <div class="col-6">
              <ul>
                <li>Manteca: 150 gr.</li>
                <li>Azúcar: 150 gr.</li>
                <li>Huevos: 2</li>
                <li>Miel: 1 cucharada</li>
              </ul>
            </div>
            <div class="col-6">
              <ul>
                <li>Esencia de vainilla: c/n</li>
                <li>Premezcla: 300 gr.</li>
                <li>Fécula de maíz o maicena: 300 gr.</li>
                <li>Polvo para hornear: 1 cucharada</li>
              </ul>
            </div>
          </div>
        <h3 class="fuentemodal">Preparación</h3>
        <div class="row">
          <div class="col-6">
            <p>1. Mezclar la manteca con el azúcar hasta integrar.</p>
            <p>2. A la preparación anterior, agregar de a poco los huevos, la miel y la esencia de vainilla.</p>
            <p>3. Por otro lado, tamizar la premezcla con el polvo de hornear y a fécula de maíz. Una vez hecho esto, incorporar a la preparación anterior, de a poco, hasta lograr una masa suave y lisa.</p>
            <p>4. Dejar descansar la masa en la heladera por 20 minutos.</p>
          </div>
          <div class="col-6">
            <p>5. Una vez transcurrido este tiempo, sacar de la heladera y estirar la masa con rodillo.</p>
            <p>6. Cortar las tapitas del tamaño que lo deseen y llevar al horno medio por 30 minutos aproximadamente.</p>
            <p>7. Cuando las tapitas estén cocidas, sacarlas del horno y dejarlas enfriar. Luego, unir las tapitas con dulce de leche sin gluten y pasar por coco rallado.</p>
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>
</div>

<div class="modal" tabindex="-1" id="viteltone">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header" style="background-color: #E5E5E5;">
        <h5 class="modal-title">Vitel Toné</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <h3 class="fuentemodal">Ingredientes</h3>
          <div class="row">
            <div class="col-6">
              <ul>
                <li>Peceto: 1kg.</li>
                <li>Atún: 6 latas</li>
                <li>Anchoas: 8 filets</li>
                <li>Zanahoria: 1</li>
                <li>Mayonesa: 150gr.</li>
                <li>Caldo: 2 cucharadas</li>
                <li>Vino blanco: 1/2 vaso</li>
              </ul>
            </div>
            <div class="col-6">
              <ul>
                <li>Perejil: 1 puñado</li>
                <li>Romero: 1 puñado</li>
                <li>Sal a gusto</li>
                <li>Pimienta a gusto</li>
                <li>Aceite de oliva: 2 cucharadas</li>
                <li>Laurel: 1 0 2 hojas</li>
                <li>Alcaparras en conserva: 1/2 vaso</li>
              </ul>
            </div>
          </div>
        <h3 class="fuentemodal">Preparación</h3>
        <div class="row">
          <div class="col-6">
            <p>1. Cocinar la carne entera en una olla con agua, la zanahoria y el apio cortados y las hierbas. Agregarle un chorro de aceite de oliva y el vino blanco al agua de la cocción y también la sal y la pimienta. Poner todo junto en agua fría y cocina a fuego medio durante una hora y media aproximadamente, hasta que la carne esté tierna.</p>
            <p>2. Cuando la carne de ternera esté cocida, sacarla y cuando entibia llevar a la heladera para que se enfríe. El caldo se cuela y se guarda en un recipiente para utilizar en otros platos y más adelante en otro paso de la receta del vitel toné tradicional.</p>
          </div>
          <div class="col-6">
            <p>3. Preparar la salsa para el vitel toné: en la licuadora poner la mayonesa, las anchoas, el atún, 1 cucharada de caldo (si es necesario agregarle otra después) y las alcaparras. Licuar todo hasta lograr una salsa homogénea, suave y sin grumos (hay que probar con una cucharadita).</p>
            <p>4. Cuando la carne está bien fría es el momento de cortarla en rodajas finas (el grosor va a gusto personal o de acuerdo a la cantidad de porciones que se necesite) y disponerlas una al lado de la otra dentro de una fuente (o el plato en el que se va a servir).</p>
            <p>5. Regar con la mayonesa de atún las rodajas de vitel toné hasta cubrirlas parcialmente o por completo. Decorar con alcaparras y servir.</p>
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
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
