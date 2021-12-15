package modelo;

import config.Conexion;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RecetasDAO {
    Connection conexion;
    public RecetasDAO(){
        Conexion con = new Conexion();
        conexion = con.getConection();
    }
    public List<Recetas> listarRecetas(){
       PreparedStatement ps;
       ResultSet rs; 
       List<Recetas> lista = new ArrayList<>();
       /*List clase abstracta*/
       try{
           ps = conexion.prepareStatement("SELECT * FROM lista");
           rs = ps.executeQuery();
           
           while(rs.next()){
            int id = rs.getInt("id");
            String nombre = rs.getString("nombre");
            String tiempo = rs.getString("tiempo");
            String porciones = rs.getString("porciones");
            String ingredientes = rs.getString("ingredientes");
            String preparacion = rs.getString("preparacion");
            Recetas recetas = new Recetas(id, nombre, tiempo, porciones, ingredientes, preparacion);
            lista.add(recetas);
           }
           return lista;
       }catch(SQLException e){
           System.out.println(e.toString());
           return null;
       }
    }
    
    public Recetas mostrarReceta(int _id) {
        PreparedStatement ps;
        ResultSet rs;
        Recetas receta = null;
        
        try{
           ps = conexion.prepareStatement("SELECT id,nombre,tiempo,porciones,ingredientes,preparacion FROM lista Where id = ?");
           ps.setInt(1, _id);
           rs = ps.executeQuery();
           
            while(rs.next()){
                int id = rs.getInt("id");
                String nombre = rs.getString("nombre");
                String tiempo = rs.getString("tiempo");
                String porciones = rs.getString("porciones");
                String ingredientes = rs.getString("ingredientes");
                String preparacion = rs.getString("preparacion");
                receta = new Recetas(id,nombre,tiempo,porciones,ingredientes,preparacion);
            }
           return receta;
           
        }catch(SQLException e){
            System.out.println(e.toString());
            return null;
        }
    }
    public boolean insertarReceta(Recetas receta){
        PreparedStatement ps;
        try{
            ps = conexion.prepareStatement(
            "INSERT INTO lista(nombre,tiempo,porciones,ingredientes,preparacion)VALUES(?,?,?,?,?)");
            ps.setString(1,receta.getNombre());
            ps.setString(2,receta.getTiempo());
            ps.setString(3,receta.getPorciones());
            ps.setString(4,receta.getIngredientes());
            ps.setString(5,receta.getPreparacion());
            ps.execute();
            return true;
        }catch(SQLException e){
            System.out.println(e.toString());
            return false;
        }
    }
    public boolean actualizarReceta(Recetas receta){
        PreparedStatement ps;
        try{
            ps = conexion.prepareStatement(
    "UPDATE lista SET nombre=?, tiempo=?, porciones=?, ingredientes=?, preparacion=? WHERE id=?");
            ps.setString(1,receta.getNombre());
            ps.setString(2,receta.getTiempo());
            ps.setString(3,receta.getPorciones());
            ps.setString(4,receta.getIngredientes());
            ps.setString(5,receta.getPreparacion());
            ps.setInt(6,receta.getId());
            ps.execute();
            return true;
        }catch(SQLException e){
            System.out.println(e.toString());
            return false;
        }
    }
    public boolean eliminarReceta(int _id){
        PreparedStatement ps;
        try{
            ps = conexion.prepareStatement("DELETE FROM lista WHERE id=?");
            ps.setInt(1, _id);
            ps.execute(); 
            return true;
        }catch(SQLException e){
            System.out.println(e.toString());
            return false;
        }
    }
}
