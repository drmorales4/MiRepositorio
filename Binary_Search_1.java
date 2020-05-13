/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package binary_search;

import java.util.Random;

/**
 *
 * @author drmorales4
 */
public class Binary_Search {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Random aleatorio = new Random(System.currentTimeMillis());

        int[] values = new int[1000];

        for (int a = 0; a < values.length; a++) {
            values[a] = aleatorio.nextInt(500);
        }

        for (int i = 0; i < 10000000; i++) {
            int index = -1;
            for (int j = 0; j < values.length; j++) {
                if (values[j] == 80) {
                    index = j;
                    System.out.printf("posion de alrreglo(%d) = %d \n", index, values[j]);
                }
            }
            break;
        }
    }

    /*
    public static void metodo(int [] values){
        
        for (int i = 0; i < 10000000; i++) {
            int index = -1;
            for (int j = 0; j < values.length; j++) {
                if (values[j] == 80) {
                    index = j;
                }
            }
            break;
        }
    }
     */
}
