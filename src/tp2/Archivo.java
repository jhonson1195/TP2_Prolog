/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tp2;


//Se importan las librerias necesarias  
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
/**
 *
 * @author carlosr
 */
public class Archivo {
    File archivo;
    FileReader fr;
    BufferedReader br;
    FileReader fr1;
    BufferedReader br1;
    String DireccionTXT="/tmp/archivo.txt";
    ArrayList <Sismos> Lista1 = new ArrayList();
    
    
    // Constructor Vacio
    public Archivo (){
        archivo = null;
        fr = null;
        br = null;
        fr1 = null;
        br1 = null;
    }
    
    //Metodo para abrir el archivo, recibe la direccion del archivo
    public void abrirArchivo(String Direccion) throws FileNotFoundException{
        archivo = new File (DireccionTXT);
        fr = new FileReader (archivo);
        br = new BufferedReader(fr);
        fr1 = new FileReader (archivo);
        br1 = new BufferedReader(fr1);
    }
    
    //Metodo para recorrer el archivo, crear una lista con los sismos y devolverla
    @SuppressWarnings("empty-statement")
    public ArrayList<Sismos> allTerremotos() throws FileNotFoundException, IOException{
        abrirArchivo(DireccionTXT);
        String nombre="";
        String linea="";
        String lugar;
        String fechah;
        String hora= "";
        String ciudad="";
        String arreglo [];
        String arreglo_hora [];
        String arreglo_hora1 [];
        String arreglo2 [];
        String arreglo3 [];
        int lineas=0;
        int maximo=retornarTam();
        while(lineas<maximo){
            lineas++;
            if((linea=br.readLine()).equals("#EventID|Time|Latitude|Longitude|Depth/km|Author|Catalog|Contributor|ContributorID|MagType|Magnitude|MagAuthor|EventLocationName")){      
            }
            else{
            arreglo=linea.split("\\|");
            Sismos objeto = new Sismos();
            
            //***Manejo del campo hora y fecha****
            fechah=arreglo[1];
            arreglo_hora=fechah.split(" ");
            hora=arreglo_hora[1];
            arreglo_hora1=hora.split("\\.");
            objeto.Hora=arreglo_hora1[0];
            System.out.println("Hora: " + objeto.Hora);
            objeto.Fecha=arreglo_hora[0];
            System.out.println("Fecha: " + objeto.Fecha);
            
            //***Manejo del pais y la ciudad***
            lugar=arreglo[12];
            arreglo2=lugar.split(",");
            if (arreglo2.length==1){
                ciudad ="Pais Completo";
                objeto.Ciudad=ciudad;
                System.out.println("Ciudad: " + objeto.Ciudad );
                objeto.Pais=arreglo2[0];
                objeto.Pais=objeto.Pais.replace(" ","");
                System.out.println("Pais: " + objeto.Pais );
                objeto.Magnitud=arreglo[10];
                System.out.println("Magnitud: " + objeto.Magnitud);
                nombre=objeto.Pais + " "+ objeto.Magnitud;
                objeto.Nombre=nombre;
                System.out.println("Nombre: " + objeto.Nombre);
            }else{
                ciudad=arreglo2[0];
                objeto.Pais=arreglo2[1];
                objeto.Pais=objeto.Pais.replace(" ","");
                System.out.println("Pais: " + objeto.Pais );
                arreglo3= ciudad.split("of");
                if (arreglo3.length==1){
                    objeto.Ciudad=arreglo3[0];
                    objeto.Ciudad=objeto.Ciudad.replace(" ","");
                    System.out.println("Ciudad: " + objeto.Ciudad );
                    objeto.Magnitud=arreglo[10];
                    System.out.println("Magnitud: " + objeto.Magnitud);
                    nombre=objeto.Pais +" "+ objeto.Ciudad +" "+ objeto.Magnitud;
                    objeto.Nombre=nombre;
                    System.out.println("Nombre: " + objeto.Nombre);
                }else{
                    objeto.Ciudad=arreglo3[1];
                    objeto.Ciudad=objeto.Ciudad.replace(" ","");
                    System.out.println("Ciudad: " + objeto.Ciudad );
                    objeto.Magnitud=arreglo[10];
                    System.out.println("Magnitud: " + objeto.Magnitud);
                    nombre=objeto.Pais +" "+ objeto.Ciudad +" "+ objeto.Magnitud;
                    objeto.Nombre=nombre;
                    System.out.println("Nombre: " + objeto.Nombre);
                }
            }
            // *** Manejo de los demas datos magnitud ***
            objeto.profundidad=arreglo[4];
            System.out.println("Profundidad: " + objeto.profundidad);
            objeto.longitud=arreglo[3];
            System.out.println("Longuitud: " + objeto.longitud);
            objeto.latitud=arreglo[2];
            System.out.println("Latitud: " + objeto.latitud);
            System.out.println("*******Nuevo terremoto*******");
            Lista1.add(objeto);
            }
        }
        return Lista1;
    }
    
    //Metodo para contar las lineas del archivo txt
    public int retornarTam() throws FileNotFoundException, IOException{
        abrirArchivo(DireccionTXT);
        String tam1="";
        int tam=0;
        while((tam1=br1.readLine())!=null){
            tam++;   
        }
        return tam;
    }
    
    //Metodo para probar el archivo por separado
        public static void main(String[] args) throws IOException{
            Archivo prueba = new Archivo();
            prueba.allTerremotos();
        }
}