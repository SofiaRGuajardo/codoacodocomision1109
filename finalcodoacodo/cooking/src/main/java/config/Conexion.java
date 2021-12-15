package config;

import java.sql.*;

public class Conexion {
    public String driver = "com.mysql.cj.jdbc.Driver";
    public Connection getConection(){
        Connection conexion = null;
        try{
            Class.forName(driver);
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/cooking",
                    "cacejercicio", "111222");
        }catch(ClassNotFoundException | SQLException e){
            System.out.println(e.toString());
        }
            return conexion;
    }
    /*public static void main (String sofia[]) throws SQLException{
        Connection c = null;
        Conexion con = new Conexion();
        c = con.getConection();
        PreparedStatement ps;
        ResultSet rs;
        
        ps = c.prepareStatement("SELECT * FROM lista");
        rs = ps.executeQuery();
        
        while(rs.next()){
            int id = rs.getInt("id");
            String nombre = rs.getString("nombre");
            String tiempo = rs.getString("tiempo");
            String porciones = rs.getString("porciones");
            String ingredientes = rs.getString("ingredientes");
            String preparacion = rs.getString("preparacion");
            
            System.out.println("id: " + id + "Nombre: " + nombre + "Tiempo: " + tiempo + 
                    "Porciones: " + porciones + "Ingredientes: " + ingredientes +
                    "Preparacion: " + preparacion);
        }
    }

    public Connection getConnection() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }*/
}
