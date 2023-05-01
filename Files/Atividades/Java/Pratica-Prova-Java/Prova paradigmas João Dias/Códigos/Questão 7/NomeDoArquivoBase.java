//  Para cada caso da questão 2,
//  escrever um programa JAVA,
//  mostrando
//    as classes,
//    as operações (métodos),
//    a criação de objetos e
//    outras características da Programação Orientada a Objetos.

class SuperClasse {
  String  atributo1;
  int     atributo2;

  void metodo1() {
    String mensagem1 = "Texto1";
    System.out.println(mensagem1);
  }
  void metodo2() {
    String mensagem2 = "Texto2";
    System.out.println(mensagem2);
  }
}

class Classe extends SuperClasse {
  String atributo3;
  int    atributo4;

  void metodo3() {
    String mensagem3 = "Texto3";
    System.out.println(mensagem3);
  }
  void metodo4() {
    String mensagem4 = "Texto4";
    System.out.println(mensagem4);
  }
}

class SubClasse extends Classe {
  String atributo5;
  int    atributo6;

  void metodo5() {
    String mensagem5 = "Texto5";
    System.out.println(mensagem5);
  }
  void metodo6() {
    String mensagem6 = "Texto6";
    System.out.println(mensagem6);
  }
}

class NomeDoArquivoBase {
  public static void main(String[] args) {
    SubClasse nome_do_objeto = new SubClasse();
    nome_do_objeto.metodo1();
    nome_do_objeto.metodo2();
    nome_do_objeto.metodo3();
    nome_do_objeto.metodo4();
    nome_do_objeto.metodo5();
    nome_do_objeto.metodo6();
  }
}