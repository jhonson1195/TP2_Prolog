/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tp2;

import java.util.ArrayList;

/**
 *
 * @author jhonson
 */
public interface RecuperarSismo{
    //Ver punto 3, c
    ArrayList <Sismos> ExtraerDatos(String Fecha_Inicial,String Fecha_Final, String magnitud); 
}
