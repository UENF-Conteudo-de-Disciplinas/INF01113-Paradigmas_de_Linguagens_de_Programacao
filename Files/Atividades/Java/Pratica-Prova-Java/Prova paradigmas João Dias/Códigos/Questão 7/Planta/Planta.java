/*  Questao 7
  Para cada caso da questão 2,
  escrever um programa JAVA,
  mostrando
    as classes,
    as operações (métodos),
    a criação de objetos e
    outras características da Programação Orientada a Objetos.
*/

class Desenho {
  String  cores;
  String  tipoDoPapel;

  void rabiscar() {
    String mensagem1 = "Rabiscando";
    System.out.println(mensagem1);
  }
  void apagar() {
    String mensagem2 = "Apagando";
    System.out.println(mensagem2);
  }
}

class DesenhoTecnico extends Desenho {
  int     escala;
  String  coordenadas;

  void desenhar() {
    String mensagem3 = "Desenhando";
    System.out.println(mensagem3);
  }
  void humanizar() {
    String mensagem4 = "Humanizando";
    System.out.println(mensagem4);
  }
}

class PlantaBaixa extends DesenhoTecnico {
  int  quantidadeDeCotas;
  int  numeroDeComodos;

  void corrigir() {
    String mensagem5 = "Corrigindo";
    System.out.println(mensagem5);
  }
  void imprimir() {
    String mensagem6 = "Imprimindo";
    System.out.println(mensagem6);
  }
}

class Planta {
  public static void main(String[] args) {
    PlantaBaixa plantaBaixaEletrica = new PlantaBaixa();
    plantaBaixaEletrica.rabiscar();
    plantaBaixaEletrica.apagar();
    plantaBaixaEletrica.desenhar();
    plantaBaixaEletrica.humanizar();
    plantaBaixaEletrica.corrigir();
    plantaBaixaEletrica.imprimir();
  }
}