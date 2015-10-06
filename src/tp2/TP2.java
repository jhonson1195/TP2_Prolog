/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tp2;
import java.util.Arrays;
import java.util.Map;
import org.jpl7.Query;
import org.jpl7.Term;


/**
 *
 * @author jhonson
 */
public class TP2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
    //Descargar de la tienda de ubuntu: Bidirectional interface between SWI-Prolog and Java
    //despues van a propiedades del proyecto y buscan la opcion RUN y agregan el VM options que seria: 
    // -Djava.library.path=/usr/lib/swi-prolog/lib/amd64/ lo final depende de la arquitectura cualquier vara
    //busquen el archivo jpl.so y copian la ruta y la pegan despeus del igual=.
    //Ejemplo de prolog
    /*String t1 = "consult('family.pl')";
    Query q1 = new Query(t1);
    System.out.println( t1 + " " + (q1.hasSolution() ? "Cargado" : "Fallo la carga del archivo") );
    //--------------------------------------------------
    String t2 = "asserta(hola(jhonson,_))";
    Query q2 = new Query(t2);
    System.out.println( t2 + " is " + (q2.hasSolution() ? "Si" : "No") );
    //--------------------------------------------------
    String t3 = "hola(jhonson,tt)";
    Query q3 = new Query(t3);
    System.out.println( t3 + " is " +(q3.hasSolution() ? "Verdadero" : "Falso") );
    String t4 = "child_of(X, Y)";
    //--------------------------------------------------
    Query q4 = new Query(t4);
    System.out.println( "first solution of " + t4 + ": X = " + q4.oneSolution().get("X"));
    
    //--------------------------------------------------
    Map<String, Term>[] ss4 = q4.allSolutions();
    System.out.println(ss4[0].get("X"));
    System.out.println(ss4[1].get("X"));
    System.out.println(Arrays.toString(ss4));
    
    */
    InterfazGrafica Interfaz =new InterfazGrafica();
    Interfaz.setVisible(true);
    }
    

}
