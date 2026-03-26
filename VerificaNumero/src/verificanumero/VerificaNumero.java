package verificanumero;
import java.util.Scanner;

public class VerificaNumero {
    public static void main(String[] args) {
        Scanner keyboard = new Scanner(System.in);

        int dado;
        
        do {
            System.out.print("Digite um número (0 para sair): ");
            dado = keyboard.nextInt();

            if (dado != 0) {

                // Par ou ímpar
                if (dado % 2 == 0) {
                    System.out.print("Par - ");
                } else {
                    System.out.print("Ímpar - ");
                }

                // Primo ou não
                boolean primo = true;

                if (dado <= 1) {
                    primo = false;
                } else {
                    for (int i = 2; i < dado; i++) {
                        if (dado % i == 0) {
                            primo = false;
                            break;
                        }
                    }
                }

                if (primo) {
                    System.out.println("Primo");
                } else {
                    System.out.println("Não primo");
                }
            }

        } while (dado != 0);

        keyboard.close();
    }
}