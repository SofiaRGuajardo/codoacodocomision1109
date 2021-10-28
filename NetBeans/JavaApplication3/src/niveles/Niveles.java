/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package niveles;

/**
 *
 * @author Usuario
 */
public class Niveles {
    private String dificultad;
    public String experiencia;
    public String checkPoint;
    public Niveles(String experiencia,String checkPoint){
        this.experiencia=experiencia;
        this.checkPoint=checkPoint;
    }
    public String reiniciar(){
        return "Estamos en el nivel: " + this.checkPoint;
    }

    public String getDificultad() {
        return dificultad;
    }

    public void setDificultad(String dificultad) {
        this.dificultad = dificultad;
    }
    
    
}
