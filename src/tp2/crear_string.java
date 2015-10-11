/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tp2;

/**
 *
 * @author carlosr
 */

import java.io.IOException;
import java.net.URISyntaxException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author carlosr
 */
public class crear_string {
    String direccion1 ="http://earthquake.usgs.gov/fdsnws/event/1/query?format=xml&starttime=";
    String direccion2= "&endtime=";
    String direccion3 = "&minmagnitude=";
    String fechaInicial;
    String fechaFinal;
    String magnitud;
    
    public crear_string(){
        fechaInicial="";
        fechaFinal="";
        magnitud="";
    }
    
    public crear_string(String A,String B, String C){
        fechaInicial=A;
        fechaFinal=B;
        magnitud=C;
    }
     public void imprimir(){
         String direccion;
        direccion = direccion1+fechaInicial+direccion3+magnitud;
        System.out.println(direccion);
     }
    
    public static void main(String[] args){
        crear_string direccionA= new crear_string("2004/12/26","2004/12/27","9");
        direccionA.imprimir();
    }
    


 
    
    
}
