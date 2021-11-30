
package config;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Basededatos {
    public String driver = "com.mysql.cj.jdbc.Driver";
    public Connection getConection() throws SQLException{
        Connection conexion=null;
        try{
            Class.forName(driver);
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/comision1109", "cacejercicio","111222");
        }catch(SQLException e){
            System.out.println(e.toString());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Basededatos.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conexion;
    }
    public static void main(String [] argms) throws SQLException{
        Basededatos con = new Basededatos();
        
        Connection conexion =null;
        conexion = con.getConection();
        
        PreparedStatement ps;
        ResultSet rs;
        
        ps = conexion.prepareStatement("SELECT * FROM participantes");
        rs = ps.executeQuery();
        
        while(rs.next()){
            int id = rs.getInt("id");
            String nombres = rs.getString("nombres");
            String apellidos = rs.getString("apellidos");
            String email = rs.getString("email");
            String telefono = rs.getString("telefono");
            System.out.println("id: "+ id + " Nombres: "+ nombres + 
                    ". Apellidos: " + apellidos + ". Email: " + email + 
                    ". Telefono: " + telefono );
        }
        
    }
}
