/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tp2;

import java.util.ArrayList;

/**
 *
 * @author carlos
 */
public class  cargar implements RecuperarSismo{


    @Override
    public ArrayList<Sismos> ExtraerDatos(String Fecha, int magnitud) {
        ArrayList <Sismos> Lista = new ArrayList();
    
        Sismos S = new Sismos();
        S.Nombre="sismo";
        S.Fecha="01-01-2015";
        S.Hora="10:00";
        S.Pais="Chile";
        S.Ciudad="Illapel";
        S.Magnitud= "4.3";
        S.latitud="56";
        S.longitud="78";
        S.profundidad="34";
        Lista.add(S);
        
        
        Sismos S2 = new Sismos();
        S2.Nombre="sismo";
        S2.Fecha="01-01-2015";
        S2.Hora="10:00";
        S2.Pais="Panama";
        S2.Ciudad="Pais Completo";
        S2.Magnitud= "9";
        S2.latitud="56";
        S2.longitud="78";
        S2.profundidad="34";
        Lista.add(S2);
        return Lista;
    }
    
}
