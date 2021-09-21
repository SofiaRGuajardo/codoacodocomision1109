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
elemento.documentWrite("<h1 class='text-center bg-info'>"+ saludar + "</h1>");