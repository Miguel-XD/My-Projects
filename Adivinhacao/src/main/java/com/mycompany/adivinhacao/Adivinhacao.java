package com.mycompany.adivinhacao;
import java.util.Scanner;

public class Adivinhacao {

    public static void main(String[] args) {
        int segredo, numero, tentativas = 0;
        Scanner keyboard = new Scanner(System.in);
        System.out.print("Digite o segredo: ");
        segredo = keyboard.nextInt();
        
        do {
            System.out.print("Adivinhe o número: ");
            numero = keyboard.nextInt();
            tentativas ++;
        } while (numero != segredo);
        System.out.println("Você acertou! Foram " + tentativas + " tenatativas." );
    }
}
