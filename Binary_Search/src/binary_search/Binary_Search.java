package binary_search;

import java.util.Random;

public class Binary_Search {

    public static void main(String[] args) {
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
}
