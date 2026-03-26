package com.mycompany.tabuada;
import java.util.Scanner;

public class Tabuada {

    public static void main(String[] args) {
        int tabuada, resultado, mult, limite, erros = 0, acertos = 0;
        
        Scanner keyboard = new Scanner(System.in);
        
        System.out.print("Digite a tabuada que deseja: ");
        tabuada = keyboard.nextInt();    
        
        for (int i = 0; i <= 10; i++){
            
            System.out.print(tabuada + " x " + i + " = ");
            resultado = keyboard.nextInt();
            
            mult = tabuada * i;
            
            if (resultado == mult) {
                System.out.println("\nVocê acertou!\n");
                acertos++;
            }
            else {
                System.out.println("\nVocê errou!\n");
                erros++;
            }
            
        }
        
        System.out.print("Parabéns você terminou! Você acertou: " + acertos + ", e errou: " + erros);
    }
}
