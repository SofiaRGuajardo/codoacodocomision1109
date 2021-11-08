let container = document.getElementById("seccion");

const ticket = 200;
const descEstudiante = ticket * 0.2;
const descTrainee = ticket * 0.5;
const descJunior = ticket * 0.85;

const comprarTicket=()=>{
    container.innerHTML=`
        <div class="container">
            <div class="row">
                <div class="col col-md-10 offset-md-1 col-lg-8 offset-lg-2 pt-3">
                    <div class="card-group">
                        <div class="card">
                            <div class="card-body border border-primary mr-1">
                                <h5 class="card-title text-center">Estudiantes</h5>
                                <p class="card-text text-center">Tienen un descuento</p>
                                <p class="card-title text-center font-weight-bold">80%</p>
                                <p class="card-text text-center">
                                    <small class="text-muted">
                                        * presentar documentación
                                    </small>
                                </p>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body border border-info mr-1">
                                <h5 class="card-title text-center">Trainee</h5>
                                <p class="card-text text-center">Tienen un descuento</p>
                                <p class="card-title text-center font-weight-bold">50%</p>
                                <p class="card-text text-center">
                                    <small class="text-muted">
                                        * presentar documentación
                                    </small>
                                </p>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body border border-warning mr-1">
                                <h5 class="card-title text-center">Junior</h5>
                                <p class="card-text text-center">Tienen un descuento</p>
                                <p class="card-title text-center font-weight-bold">15%</p>
                                <p class="card-text text-center">
                                    <small class="text-muted">
                                        * presentar documentación
                                    </small>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>            
            </div>
            <div class="row">
                <div class="col text-uppercase text-center">    
                <small>venta</small>
                <h2>Valor de ticket $200</h2>
                </div>
            </div>
            <div class="row">
                <div class="col col-md-10 offset-md-1 col-lg-8 offset-lg-2 pt-2">
                    <form id="miFormulario"> 
                        <div class="form-row">
                            <div class="d-flex">
                                <div class="form-row col-6 col-md-6 m-1">
                                    <input id="nombre" type="text" class="form-control" placeholder="Nombre"/>
                                </div>
                                <div class="form-row col-6 col-md-6 m-1">
                                    <input id="apellido" type="text" class="form-control" placeholder="Apellido"/>
                                </div>
                            </div>
                            <div class="form-group col-md-12 m-1">
                                <input id="email" type="email" class="form-control" placeholder="Correo"/>
                            </div>
                            <div class="d-flex">
                                <div class="form-group col-6 col-md-6 m-1">
                                    <label for="cantidadEntradas">Cantidad</label>
                                    <input id="cantidadEntradas" type="text" class="form-control" placeholder="Cantidad">
                                </div>
                            <div class="form-group col-6 col-md-6 m-1">
                                <label for="categorias">Categoría</label>
                                <select class="form-select" id="categorias">
                                    <option id="estudiante" value="estudiante">Estudiantes</option>
                                    <option id="trainee" value="trainee">Trainee</option>
                                    <option id="junior" value="junior">Junior</option>
                                </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-row col-md-12 m-1">
                            <div class="alert alert-primary" role="alert" id="totalaPagar">
                            Total a Pagar: $
                        </div>
                        </div>
                        <div class="form-row d-flex">
                            <button type="reset" onclick="fun()" class="btn btn-lg btn-light text-light col-6 m-1" style="background-color: #95BF3B">Borrar</button>
                            <button class="btn btn-lg btn-light text-light col-6 m-1" style="background-color: #95BF3B" onclick="resumen()" type="button">Resumen</button>
                        </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    `;
};

const resumen=()=>{
    let cantidad = document.getElementById("cantidadEntradas").value;
    let descuento = document.getElementById("categorias").value;
    let totalaPagar = document.getElementById("totalaPagar");
    if (descuento === "estudiante"){
        totalaPagar.innerHTML += descEstudiante * parseInt(cantidad);
    }else if (descuento === "trainee"){
        totalaPagar.innerHTML += descTrainee * parseInt(cantidad);
    }else{
        totalaPagar.innerHTML += descJunior * parseInt(cantidad);
    }
};