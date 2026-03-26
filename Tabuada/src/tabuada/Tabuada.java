package tabuada;
import java.util.Scanner;

public class Tabuada {

    public static void main(String[] args) {
        int tabuada, resultado, mult = 0, acertos = 0, erros = 0;
        
        Scanner teclado = new Scanner(System.in);
        System.out.print("Digite a tabuada que deseja: ");
        tabuada = teclado.nextInt();
        
        for (int i = 1; i <= 10; i = i + 1) {
            System.out.print(tabuada + " x " + i + " = ");
            resultado = teclado.nextInt();
            mult = tabuada * i;
            
            if (resultado == mult) {
                System.out.println("Você acertou!");
                acertos = acertos + 1;
            }
            else {
                System.out.println("Você errou.");
                erros = erros + 1;
            }
        }
        System.out.println("Você acertou: " + acertos + ", e errou: " + erros); 
    }
    
}
