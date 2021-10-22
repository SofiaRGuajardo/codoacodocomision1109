// alert('estamos en el archivo externo')
// const nombres=["Luis", "Tomas", "Lilian", "Cecilia"]
// nombres.push("Regulo")
// console.log(nombres)
// const manejoNombres=(a)=>{
//     nombres.push(a)
//     console.log(nombres)
// };
// let nombre={
//     nombre:nombre
// }
// objetos
// const agregarNombres=()=>{
//     nombre={
//         nombre:"Luis",
//         apellido:"Navas"
//     };
//     nombres.push(nombre)
//     console.log(nombres)
// }
// const nomb=()=>{
//     nombres ={
//         nombre: "Regulo",
//         apellido: "Luna"
//     }
//     console.log(nombre);
// }
// nomb()
// agregarNombre()

class Persona{
    constructor(nombre,apellido){
        this.nombre=nombre;
        this.apellido=apellido;
    }
    mostrarNombre(){
        return this.nombre;

    }
}
let nombre = prompt("Escribe tu nombre")
let persona1 = new Persona(nombre, "Navas")
let persona2 = new Persona("Regulo", "Luna")
let persona3={
    nombre:"Pedro",
    apellido:"Mansilla"
}
console.log(persona1.mostrarNombre())
console.log(persona2.mostrarNombre())

class Vehiculo{
    encender(){
        return "el auto está encendido"
    }
}
let auto=new Vehiculo();
auto.velocidad=150;
let moto={
    encender:()=>{
        return "Está encendida la moto"
    }
}
console.log(auto.encender())
console.log(auto.velocidad)
console.log(moto.encender())