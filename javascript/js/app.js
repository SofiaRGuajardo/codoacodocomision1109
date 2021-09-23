alert ("Hola Mundo") /*Ventana emergente*/
    console.log ("Estamos en la consola")

let nombre = "Sofia"; /*tipo string*/
var numero = 10; /*Tipo numerica*/
const PI=3.1416;
let hayClases=true;
console.log((numero+25)+" "+nombre) /*+ concatenar "agrega espacio"*/
console.log(hayClases)
console.log (5 > 3)/*Condicionales*/
let esFeriado=false;
if(8 >= 8){/*si es verdadera se ejecuta*/
console.log("es correcto!")
}else{ /*si es falso*/
    console.log('No es correcto!')
}
console.log((5 > 3) ? "Correcto": "Incorrecto"); /*Ternario*/
if((hayClases == true) && esFeriado !== true){ /*para que sea true se tienen que cumplir ambas condiciones*/
    console.log('Me conecto a la videollamada')
}else{
    console.log('No me conecto a la videollamada!')
}
if(25 < 32 || 12 > 20){ /*se cumple una de las 2 condiciones */
    console.log('Se cumplió la condición')
}
let saludo = "Hola, como estas? "
let saludar = saludo + nombre;

let elemento = document.getElementById("principal");
// console.log(elemento)
elemento.innerHTML="<h1 class='text-center bg-info'>"+ saludar + "</h1>";
document.write("<div class='container'><div class='row' id='principal'><h1 class='text-center bg-info'>"+ saludar + "</h1></div></div>");

document.write(`
    <div class="container"><div class="row" id="principal">
    <h1 class='text-center bg-info'> ${saludar}</h1></div></div>
`);

// let mensaje = prompt("Menú \n 1. Papas Fritas \n 2. Milanesas con fritas \n 3. Milanesa napolitana");
/*console.log(mensaje)
if(mensaje === "1"){
    elemento.innerHTML="<p>Disfrutá de tus papas!</p>";
}else if(mensaje === "2"){
    elemento.innerHTML="<p>Disfrutá de tus milanesas con papas!</p>";
}else if(mensaje === "3"){
    elemento.innerHTML="<p>Disfrute de su milanesa napolitana!</p>";
}else{
    elemento.innerHTML="No es una opción";
}

switch (mensaje) {
    case "1":
        elemento.innerHTML="<p>Disfrutá de tus papas!</p>";
        break; //deja el switch
    case "2":
        elemento.innerHTML="<p>Disfrutá de tus milanesas con papas!</p>";
        break;
    case "3":
        elemento.innerHTML="<p>Disfrute de su milanesa napolitana!</p>";
        break;
    default:
        elemento.innerHTML="No es una opción"
        let mensaje = prompt("Menú \n 1. Papas Fritas \n 2. Milanesas con fritas \n 3. Milanesa napolitana");
}

let num = parseInt(prompt("Ingresa el primer número"));
let num2 = parseInt(prompt("Ingresa el segundo número"));

let resultado = "<p>El resultado de: " + num + " y " + num2 + " es: " + (num + num2) + "</p>";
elemento.innerHTML=resultado;
*/