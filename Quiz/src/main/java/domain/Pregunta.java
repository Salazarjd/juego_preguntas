package domain;

//Plantilla para las preguntas disponibles en cada ronda y poderlas recuperar de la base de datos
public class Pregunta {
    private int id;
    private String enunciado;
    private String respuesta1;
    private String respuesta2;
    private String respuesta3;
    private String respuesta4;
    private int correcta;

    public Pregunta() {
    }

    public Pregunta(int id, String pregunta, String respuesta1, String respuesta2, String respuesta3, String respuesta4, int correcta) {
        this.id = id;
        this.enunciado = pregunta;
        this.respuesta1 = respuesta1;
        this.respuesta2 = respuesta2;
        this.respuesta3 = respuesta3;
        this.respuesta4 = respuesta4;
        this.correcta = correcta;
    }
    
    public int getId() {
        return id;
    }

    public String getPregunta() {
        return enunciado;
    }

    public String getRespuesta1() {
        return respuesta1;
    }

    public String getRespuesta2() {
        return respuesta2;
    }

    public int getCorrecta() {
        return correcta;
    }

    @Override
    public String toString() {
        return enunciado + "\n1. " + respuesta1 + "\n2. " + respuesta2 + "\n3. " + respuesta3 + "\n4. " + respuesta4;
    }
    
    
}
