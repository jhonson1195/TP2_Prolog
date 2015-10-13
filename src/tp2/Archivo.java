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
    static Stacks <Terremoto> terremotos = new Stacks();
    String DireccionTXT="C:\\archivo.txt";
    
    
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
    
    public Stacks allTerremotos() throws FileNotFoundException, IOException{
        abrirArchivo(DireccionTXT);
        String linea="";
        String lugar;
        String fechah;
        String arreglo [];
        String arreglo1 [];
        String arreglo2 [] = new String[3];
        String arreglo3 [] = new String[3];
        int lineas=0;
        int maximo=retornarTam();
        while(lineas<=maximo){
            lineas++;
            if((linea=br.readLine()).equals("#EventID|Time|Latitude|Longitude|Depth/km|Author|Catalog|Contributor|ContributorID|MagType|Magnitude|MagAuthor|EventLocationName")){
                
            }else{
            //System.out.println(linea);
            arreglo=linea.split("\\|");
            
            Terremoto objeto = new Terremoto();
            objeto.nombre=arreglo[5];
            System.out.println("Nombre: " + objeto.nombre);
            fechah=arreglo[1];
            arreglo1=fechah.split(" ");
            objeto.hora=arreglo1[1];
            System.out.println("Hora: " + objeto.hora);
            objeto.fecha=arreglo1[0];
            System.out.println("Fecha: " + objeto.fecha);
            lugar=arreglo[12];
            arreglo2=lugar.split(",");
            if (arreglo2[1]==""){
                arreglo3[0]=arreglo2[0];
                arreglo3[1]="";
            }else{
                arreglo3[0]=arreglo2[1];
            }
            arreglo3[1]=arreglo2[0];
            objeto.pais=arreglo3[0];
            System.out.println("Pais: " + objeto.pais );
            objeto.ciudad=arreglo3[1];
            System.out.println("Ciudad: " + objeto.ciudad );
            objeto.magnitud=arreglo[10];
            System.out.println("Magnitud: " + objeto.magnitud);
            objeto.profundidad=arreglo[4];
            System.out.println("Profundidad: " + objeto.profundidad);
            objeto.longuitud=arreglo[3];
            System.out.println("Longuitud: " + objeto.longuitud);
            objeto.latitud=arreglo[2];
            System.out.println("Latitud: " + objeto.latitud);
            System.out.println("Nuevo terremoto");
            terremotos.push(objeto);
        
            }
        }
        return terremotos;
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
    
        public void RecorrerPilaTerremtos() throws IOException{
        int maximo = retornarTam();

        for(int i=0;i<maximo;i++){
            Terremoto referencia;
            referencia = terremotos.pop();
        }
    }
        public static void main(String[] args) throws IOException{
            Archivo prueba = new Archivo();
            prueba.allTerremotos();
            
        }
}


