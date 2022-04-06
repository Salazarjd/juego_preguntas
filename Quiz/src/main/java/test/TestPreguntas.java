package test;

import datos.*;
import domain.*;
import java.util.*;

//Clase Main, desde donde se crea la persona y se lleva el registro de los jugadores
public class TestPreguntas {
    public static void main(String[] args) {
        
        System.out.println("Bienvenido al concurso");
        System.out.println("Por cada ronda que avances irás ganando puntos");
        
        Scanner sc = new Scanner(System.in);        
        System.out.println("Ingresa tu cédula: ");
        String cedula = sc.next();
        System.out.println("Ingresa tu nombre: ");
        String nombre = sc.next();
        int puntaje = Menu.menu();
        
        Persona persona = new Persona(cedula,nombre,puntaje);
        PersonaDAO personaDao = new PersonaDAO();
        personaDao.insertar(persona);
    }
}
