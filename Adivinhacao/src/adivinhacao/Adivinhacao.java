package adivinhacao;
import java.util.Scanner;

public class Adivinhacao {

    public static void main(String[] args) {
        int segredo, numero, tentativas = 0;
        Scanner teclado = new Scanner(System.in);
        System.out.print("Digite um segredo(num): ");
        segredo = teclado.nextInt();
        do {
            System.out.print("Adivinhe o número: ");
            numero = teclado.nextInt();
            tentativas = tentativas + 1;
        }
        while(segredo != numero);
        
        System.out.println("Você acertou! O número de tenativas foi de: " + tentativas);
        
                
    }
    
}
