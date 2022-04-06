package datos;

import static datos.Conexion.*;
import domain.Persona;
import java.sql.*;

//conexión con base de datos para el historico de participantes
public class PersonaDAO {
    private static final String SQL_INSERT = "INSERT INTO persona(cedula,nombre,puntaje) VALUES (?,?,?)";
    
    public void insertar(Persona persona){
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = getConnection();
            stmt = conn.prepareStatement(SQL_INSERT);
            stmt.setString(1, persona.getCedula());
            stmt.setString(2, persona.getNombre());
            stmt.setInt(3, persona.getPuntaje());
            stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
        finally{
            try {
                close(stmt);
                close(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        System.out.println("Participante registrado");
    }
}
