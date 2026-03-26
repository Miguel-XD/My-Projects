package numeros;
import java.util.Scanner;

public class Numeros {

    public static void main(String[] args) {
        int leituras, num, menor, maior;
        Scanner keyboard = new Scanner(System.in);
        
        System.out.print("Digite o número de leituras: ");
        leituras = keyboard.nextInt();
        
        menor = Integer.MAX_VALUE;
        maior = Integer.MIN_VALUE;
        
        for (int i = 0; i < leituras; i++) {
            System.out.print("Digite um número: ");
            num = keyboard.nextInt();
            
            if (num > maior) {
                maior = num;                
            }
            if (num < menor) {
                menor = num;                
            }
        }
        
        System.out.println("Maior: " + maior);
        System.out.println("Menor: " + menor);
    }
    
}
