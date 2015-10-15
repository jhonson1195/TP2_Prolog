/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tp2;


//Se importan las librerias necesarias para ejecutar el codigo
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author carlos
 */

// Clase para consultar  y guardadar el archivo txt  
public class  cargar implements RecuperarSismo{
    String direccion1 ="http://earthquake.usgs.gov/fdsnws/event/1/query?format=text&starttime=";
    String direccion2 = "&minmagnitude=";
    String direccion3="&endtime=";
    String fecha_Inicial;
    String fecha_Final;
    String dia;
    String mes;
    String year;
    String dia_F;
    String mes_F;
    String year_F;
    String magnitud;
    static String ruta="/tmp/archivo.txt";
    Archivo pruebas = new Archivo();
    
    
    // Constructor para crear un objeto vacio
    public cargar(){
    }
    
    // Constructor para crear un objeto y formar la fecha
    public cargar(String year,String mes, String dia, String C,String year_F,String mes_F, String dia_F){
        this.dia =dia;
        this.mes=mes;
        this.year=year;
        this.dia_F =dia_F;
        this.mes_F=mes_F;
        this.year_F=year_F;
        fecha_Inicial= year +"/"+mes + "/"+ dia;
        fecha_Final= year_F +"/"+mes_F + "/"+ dia_F;
        magnitud=C;
    }
    
    // Metodo para imprimir la direccion consultada
    public String imprimir(){
        String direccion;
        fecha_Inicial=year +"/"+mes + "/"+ dia;
        direccion = direccion1+fecha_Inicial+direccion3+fecha_Final+direccion2+magnitud;
        System.out.println(direccion);
        return direccion;
     }

    
    // Metodo para extraer los datos
    @Override
    public ArrayList<Sismos> ExtraerDatos(String Fecha_Inicial,String Fecha_Final, String magnitud) {
        ArrayList <Sismos> Lista= new ArrayList();
    try {
        Lista = pruebas.allTerremotos();
    } catch (IOException ex) {
        Logger.getLogger(cargar.class.getName()).log(Level.SEVERE, null, ex);
    }
       
        return Lista;
    }
    
    // Metodo para descargar el archivo txt 
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
}
