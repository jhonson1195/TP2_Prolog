/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tp2;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import static tp2.cargar.Lista;
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
    //static Stacks <Sismos> terremotos = new Stacks();
    String DireccionTXT="/tmp/archivo.txt";
    
    
    
    public Archivo (){
        archivo = null;
        fr = null;
        br = null;
        fr1 = null;
        br1 = null;
    }
    
    public void abrirArchivo(String Direccion) throws FileNotFoundException{
        archivo = new File (DireccionTXT);
        fr = new FileReader (archivo);
        br = new BufferedReader(fr);
        fr1 = new FileReader (archivo);
        br1 = new BufferedReader(fr1);
    }
    
    public void allTerremotos() throws FileNotFoundException, IOException{
        abrirArchivo(DireccionTXT);
        String linea="";
        String lugar;
        String fechah;
        String hora= "";
        String ciudad="";
        String arreglo [];
        String arreglo_hora [];
        String arreglo_hora1 [];
        String arreglo2 [];// = new String[3];v
        String arreglo3 [];// = new String[3];
        int lineas=0;
        int maximo=retornarTam();
        while(lineas<maximo){
            lineas++;
            if((linea=br.readLine()).equals("#EventID|Time|Latitude|Longitude|Depth/km|Author|Catalog|Contributor|ContributorID|MagType|Magnitude|MagAuthor|EventLocationName")){
                
            }else{
            //System.out.println(linea);
            arreglo=linea.split("\\|");
            
            Sismos objeto = new Sismos();
            objeto.Nombre=arreglo[5];
            System.out.println("Nombre: " + objeto.Nombre);
            
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
            ciudad=arreglo2[0];
            arreglo3= ciudad.split("of");
            //if ("".equals(arreglo2[1])){
             //   arreglo3[0]=arreglo2[0];
            //    arreglo3[1]="";
            //}else{
             //   arreglo3[0]=arreglo2[1];
            //}
            //arreglo3[1]=arreglo2[0];
            objeto.Pais=arreglo2[1];
            System.out.println("Pais: " + objeto.Pais );
            objeto.Ciudad=arreglo3[1];
            System.out.println("Ciudad: " + objeto.Ciudad );
            objeto.Magnitud=arreglo[10];
            System.out.println("Magnitud: " + objeto.Magnitud);
            objeto.profundidad=arreglo[4];
            System.out.println("Profundidad: " + objeto.profundidad);
            objeto.longitud=arreglo[3];
            System.out.println("Longuitud: " + objeto.longitud);
            objeto.latitud=arreglo[2];
            System.out.println("Latitud: " + objeto.latitud);
            System.out.println("Nuevo terremoto");
            //terremotos.push(objeto);
            Lista.add(objeto);
        
            }
        }
       // return ListaA;
    }
        
        
        
        
        
        
        
        
        
        
    
    
    public int retornarTam() throws FileNotFoundException, IOException{
        abrirArchivo(DireccionTXT);
        String tam1="";
        int tam=0;
        while((tam1=br1.readLine())!=null){
            tam++;   
        }
       // System.out.println(tam);
        return tam;
    }
    

        public static void main(String[] args) throws IOException{
            Archivo prueba = new Archivo();
            prueba.allTerremotos();
            
        }
}


