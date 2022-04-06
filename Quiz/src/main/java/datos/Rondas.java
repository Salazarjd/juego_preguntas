package datos;

import domain.Pregunta;
import java.util.*;

//clase generada para seleccionar la ronda a jugar y asignar el puntaje en caso de que la respuesta sea correcta
public class Rondas {
    
    public static int realizarPregunta(String ronda){
        Scanner sc = new Scanner(System.in);
        int puntaje = 0;
        Random aleatorio = new Random();
        PreguntaDAO preguntaDao = new PreguntaDAO();
        List<Pregunta> preguntas = preguntaDao.seleccionar(ronda);
        int numeroAleatorio = aleatorio.nextInt(preguntas.size());
        System.out.println(preguntas.get(numeroAleatorio));
        int op = sc.nextInt();
        if(op == preguntas.get(numeroAleatorio).getCorrecta() && ronda == "Ronda1"){
            puntaje += 50;
            System.out.println("Correcto!");
        }else if(op == preguntas.get(numeroAleatorio).getCorrecta() && ronda == "Ronda2"){
            puntaje += 100;
            System.out.println("Correcto!");
        }else if(op == preguntas.get(numeroAleatorio).getCorrecta() && ronda == "Ronda3"){
            puntaje += 200;
            System.out.println("Correcto!");
        }else if(op == preguntas.get(numeroAleatorio).getCorrecta() && ronda == "Ronda4"){
            puntaje += 400;
            System.out.println("Correcto!");
        }else if(op == preguntas.get(numeroAleatorio).getCorrecta() && ronda == "Ronda5"){
            puntaje += 800;
            System.out.println("Correcto!");
        }else{
            System.out.println("Error - respuesta incorrecta" );
        }
        return puntaje;
    }
}
