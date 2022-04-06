package datos;

import static datos.Conexion.*;
import domain.Pregunta;
import java.sql.*;
import java.util.*;

//Selección de ronda y conexión con base de datos para recuperar las preguntas
public class PreguntaDAO {
    private String sqlSelect = "SELECT id,enunciado,respuesta1,respuesta2,respuesta3,respuesta4,correcta FROM ";
    
    public List<Pregunta> seleccionar(String ronda){
        sqlSelect = sqlSelect + ronda;
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Pregunta pregunta = null;
        List<Pregunta> preguntas = new ArrayList<>();
        
        try {
            conn = getConnection();
            stmt = conn.prepareStatement(sqlSelect);
            rs = stmt.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                String enunciado = rs.getString("enunciado");
                String respuesta1 = rs.getString("respuesta1");
                String respuesta2 = rs.getString("respuesta2");
                String respuesta3 = rs.getString("respuesta3");
                String respuesta4 = rs.getString("respuesta4");
                int correcta = rs.getInt("correcta");
                pregunta = new Pregunta(id,enunciado,respuesta1,respuesta2,respuesta3,respuesta4,correcta);
                
                preguntas.add(pregunta);
            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
        finally{
            try {
                close(rs);
                close(stmt);
                close(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        
        return preguntas;
    }
}
