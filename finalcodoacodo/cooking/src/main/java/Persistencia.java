import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Persistencia {
    private Connection cn;
    private ResultSet rs;
    private PreparedStatement ps;
    
    public String servidor, basededatos, usuario, clave, ejecutar;
    
    public Connection conectarse(){
      try {
            Class.forName("com.mysql.jdbc.Driver");
        
        servidor = "localhost:3306";
        basededatos = "cooking";
        usuario = "cacejercicio";
        clave= "111222";
        
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cooking",
                    "cacejercicio", "111222");
        
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Persistencia.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Persistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    return cn;
    }
    
    public ResultSet consultaSQL(String busqueda){
        try {
            ps= conectarse().prepareStatement(busqueda);
            rs=ps.executeQuery();
            //rsm=rs.getMetaData();
        } catch (SQLException ex) {
            Logger.getLogger(Persistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    return rs;
    }
    
}
