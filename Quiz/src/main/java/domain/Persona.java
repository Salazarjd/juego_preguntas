package domain;

//Plantilla para crear las personas y guardar el historico de participantes
public class Persona {
    private String cedula;
    private String nombre;
    private int puntaje;

    public Persona() {
    }

    public Persona(String cedula, String nombre, int puntaje) {
        this.cedula = cedula;
        this.nombre = nombre;
        this.puntaje = puntaje;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getPuntaje() {
        return puntaje;
    }

    public void setPuntaje(int puntaje) {
        this.puntaje = puntaje;
    }
    
    
}
