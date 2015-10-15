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

import java.awt.Desktop;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
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

public class crearDireccion {
    String direccion1 ="http://earthquake.usgs.gov/fdsnws/event/1/query?format=text&starttime=";
    String direccion2 = "&minmagnitude=";
    String fecha;
    String dia;
    String mes;
    String year;
    static String ruta="/tmp/archivo.txt";
    //static String ruta="C://archivo.txt";

    String magnitud;
    
    public crearDireccion(){
        fecha="";
        magnitud="";
        dia="";
        mes="";
        year="";
        
    }
    
    public crearDireccion(String year,String mes, String dia, String C){
        this.dia =dia;
        this.mes=mes;
        this.year=year;
        fecha = year +"/"+mes + "/"+ dia;
        magnitud=C;
    }
     public String imprimir(){
        String direccion;
        fecha=year +"/"+mes + "/"+ dia;
        direccion = direccion1+fecha+direccion2+magnitud;
        System.out.println(direccion);
        return direccion;
     }

     public static void descargar(String url, String ficheroDestino) throws Exception {
 
   URL ficheroUrl = new URL(url);
   OutputStream outputStream;			
        try (InputStream inputStream = ficheroUrl.openStream()) {
            outputStream = new FileOutputStream(ficheroDestino); // path y nombre del nuevo fichero creado
            byte[] b = new byte[2048];
            int longitud;
            while ((longitud = inputStream.read(b)) != -1) {
                outputStream.write(b, 0, longitud);
            }
            
            inputStream.close();  // Cerramos la conexión entrada
        } // path y nombre del nuevo fichero creado
   outputStream.close(); // Cerramos la conexión salida
}

    
    public static void main(String[] args) throws Exception{
        crearDireccion direccionA= new crearDireccion("2000","05","29","6");
        crearDireccion.descargar(direccionA.imprimir(),ruta);
    }   
}
