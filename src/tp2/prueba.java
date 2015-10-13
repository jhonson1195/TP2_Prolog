/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tp2;


import java.awt.Desktop;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author carlosr
 */
public class prueba {
 
public void abrir(){
    if(java.awt.Desktop.isDesktopSupported()){
 try{
      Desktop dk = Desktop.getDesktop();
      dk.browse(new URI("http://earthquake.usgs.gov/fdsnws/event/1/query?format=xml&starttime=2004/12/26&minmagnitude=9"));
 }catch(URISyntaxException | IOException e){
     System.out.println("Error al abrir URL: "+e.getMessage());
 }
}  
}
 public void goToURL(String URL){
           if (java.awt.Desktop.isDesktopSupported()) {
            java.awt.Desktop desktop = java.awt.Desktop.getDesktop();
 
            if (desktop.isSupported(java.awt.Desktop.Action.BROWSE)) {
                try {
                    java.net.URI uri = new java.net.URI(URL);
                    desktop.browse(uri);
                } catch (URISyntaxException | IOException ex) {
                    Logger.getLogger(Acerca.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    private static class Acerca {

        public Acerca() {
        }
    }


public static void main(String[] args){
    prueba prueba1 = new prueba();
    prueba1.abrir();
} 
}


