package datos;

import static datos.Rondas.realizarPregunta;
import java.util.Scanner;

//Clase para ir acanzando en las rodas a medida que se acierta en las preguntas

public class Menu {
    
    public static int menu(){
        int ronda = 1;
        int puntaje = 0;
        boolean salir = true;
        int respuesta = 0;
        Scanner sc = new Scanner(System.in);
        
        do{
            System.out.println("Puntaje acumulado = " + puntaje);
            switch(ronda){
            case 1:
                System.out.println("\nRonda 1");
                respuesta = realizarPregunta("Ronda1");
                if(respuesta > 0){
                    puntaje += respuesta;
                    ronda++;
                    System.out.println("\nDesear irte con tu pintaje acumulado de = " + puntaje + "?\n1. Irse\n2. Continuar jugando" );
                    int op = sc.nextInt();
                    if(op == 1){
                        System.out.println("Felicidades, te llevas = " + puntaje);
                        salir = false;
                    }
                    break;
                }else{
                    puntaje = 0;
                    salir = false;
                    break;
                }
            case 2:
                System.out.println("\nRonda2");
                respuesta = realizarPregunta("Ronda2");
                if(respuesta > 0){
                    puntaje += respuesta;
                    ronda++;
                    System.out.println("\nDesear irte con tu pintaje acumulado de = " + puntaje + "?\n1. Irse\n2. Continuar jugando" );
                    int op = sc.nextInt();
                    if(op == 1){
                        System.out.println("Felicidades, te llevas = " + puntaje);
                        salir = false;
                    }
                    break;
                }else{
                    puntaje = 0;
                    salir = false;
                    break;
                }
            case 3:
                System.out.println("\nRonda 3");
                respuesta = realizarPregunta("Ronda3");
                if(respuesta > 0){
                    puntaje += respuesta;
                    ronda++;
                    System.out.println("\nDesear irte con tu pintaje acumulado de = " + puntaje + "?\n1. Irse\n2. Continuar jugando" );
                    int op = sc.nextInt();
                    if(op == 1){
                        System.out.println("Felicidades, te llevas = " + puntaje);
                        salir = false;
                    }
                    break;
                }else{
                    puntaje = 0;
                    salir = false;
                    break;
                }
            case 4:
                System.out.println("\nRonda 4");
                respuesta = realizarPregunta("Ronda4");
                if(respuesta > 0){
                    puntaje += respuesta;
                    ronda++;
                    System.out.println("\nDesear irte con tu pintaje acumulado de = " + puntaje + "?\n1. Irse\n2. Continuar jugando" );
                    int op = sc.nextInt();
                    if(op == 1){
                        System.out.println("Felicidades, te llevas = " + puntaje);
                        salir = false;
                    }
                    break;
                }else{
                    puntaje = 0;
                    salir = false;
                    break;
                }
            case 5:
                System.out.println("\nRonda 5");
                respuesta = realizarPregunta("Ronda5");
                if(respuesta > 0){
                    puntaje += respuesta;
                    ronda++;
                    System.out.println("Haz ganado!");
                    System.out.println("Tu puntaje final es de = " + puntaje);
                    salir = false;
                    break;
                }else{
                    puntaje = 0;
                    salir = false;
                    break;
                }
            }
        }while(salir);
        
        return puntaje;
    }
}
