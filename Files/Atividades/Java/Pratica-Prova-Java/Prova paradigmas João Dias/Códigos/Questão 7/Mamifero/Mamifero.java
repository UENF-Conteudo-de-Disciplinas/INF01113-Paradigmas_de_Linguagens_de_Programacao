/*  Questao 7
  Para cada caso da questão 2,
  escrever um programa JAVA,
  mostrando
    as classes,
    as operações (métodos),
    a criação de objetos e
    outras características da Programação Orientada a Objetos.
*/

class Animal {
  String  expectativaDeVida;
  String  dataDeNascimento;

  void reproduzir() {
    String mensagem1 = "Reproduzindo";
    System.out.println(mensagem1);
  }
  void alimentar() {
    String mensagem2 = "Alimentando";
    System.out.println(mensagem2);
  }
}

class AnimalVertebrado extends Animal {
  int     quantidadeDeVertebras;
  String  composicaoDasVertebras;

  void fazerBarulho() {
    String mensagem3 = "Fazendo Barulho";
    System.out.println(mensagem3);
  }
  void mover() {
    String mensagem4 = "Movendo";
    System.out.println(mensagem4);
  }
}

class Cachorro extends AnimalVertebrado {
  String  corDoPelo;
  String  nomeDaRaca;

  void pegarGraveto() {
    String mensagem5 = "Pegando Graveto";
    System.out.println(mensagem5);
  }
  void lamber() {
    String mensagem6 = "Lambendo";
    System.out.println(mensagem6);
  }
}

class Mamifero {
  public static void main(String[] args) {
    Cachorro poodle = new Cachorro();
    poodle.reproduzir();
    poodle.alimentar();
    poodle.fazerBarulho();
    poodle.mover();
    poodle.pegarGraveto();
    poodle.lamber();
  }
}