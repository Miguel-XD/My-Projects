package projeto;

public class Projeto {

    public static void main(String[] args) {
        Produto p;
        
        p = new Produto();
        
        p.setId(1);
        p.setNome("O Senhor dos Aneis");
        p.setDesc("Mais clássico da literatura de fantasia.");
        
        System.out.println("ID      :     " + p.getId() );
        System.out.println("Nome    :   " + p.getNome() );
        System.out.println("Desc.   :  " + p.getDesc() );
        
        Produto p2;
        
        p2 = new Produto();
        
        p2.setId(2);
        p2.setNome("Cirula");
        p2.setDesc("Roupa íntima");
        
        System.out.println("ID      :   " + p2.getId() );
        System.out.println("Nome    :   " + p2.getNome() );
        System.out.println("Desc.   :   " + p2.getDesc() );
                
    }
    
}
