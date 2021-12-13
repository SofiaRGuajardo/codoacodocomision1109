package modelo;

public class Recetas {
    private int id;
    private String nombre;
    private String tiempo;
    private String porciones;
    private String ingredientes;
    private String preparacion;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTiempo() {
        return tiempo;
    }

    public void setTiempo(String tiempo) {
        this.tiempo = tiempo;
    }

    public String getPorciones() {
        return porciones;
    }

    public void setPorciones(String porciones) {
        this.porciones = porciones;
    }

    public String getIngredientes() {
        return ingredientes;
    }

    public void setIngredientes(String ingredientes) {
        this.ingredientes = ingredientes;
    }

    public String getPreparacion() {
        return preparacion;
    }

    public void setPreparacion(String preparacion) {
        this.preparacion = preparacion;
    }
    
    public Recetas(int id, String nombre, String tiempo,
            String porciones, String ingredientes, String preparacion){
        this.id=id;
        this.nombre=nombre;
        this.tiempo=tiempo;
        this.porciones=porciones;
        this.ingredientes=ingredientes;
        this.preparacion=preparacion;
    }
}
