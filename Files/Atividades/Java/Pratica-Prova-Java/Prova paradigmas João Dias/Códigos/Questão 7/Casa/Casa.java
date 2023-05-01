/*  Questao 7
  Para cada caso da questão 2,
  escrever um programa JAVA,
  mostrando
    as classes,
    as operações (métodos),
    a criação de objetos e
    outras características da Programação Orientada a Objetos.
*/

class Construcao {
  int  quantidadeDeTijolos;
  int  porcentagemDeConclusao;

  void reformar() {
    String mensagem1 = "Reformando";
    System.out.println(mensagem1);
  }
  void vender() {
    String mensagem2 = "Vendendo";
    System.out.println(mensagem2);
  }
}

class Moradia extends Construcao {
  int     quantidadeDeComodos;
  String  endereco;

  void desligarLuzes() {
    String mensagem3 = "Desligando Luzes";
    System.out.println(mensagem3);
  }
  void pagarIPTU() {
    String mensagem4 = "pagar IPTU";
    System.out.println(mensagem4);
  }
}

class Iglu extends Moradia {
  int     quantidadeDeGelo;
  String  nomeDoConstrutor;

  void derreter() {
    String mensagem5 = "Derretendo";
    System.out.println(mensagem5);
  }
  void entrar() {
    String mensagem6 = "Entrando";
    System.out.println(mensagem6);
  }
}

class Casa {
  public static void main(String[] args) {
    Iglu nome_do_objeto = new Iglu();
    nome_do_objeto.reformar();
    nome_do_objeto.vender();
    nome_do_objeto.desligarLuzes();
    nome_do_objeto.pagarIPTU();
    nome_do_objeto.derreter();
    nome_do_objeto.entrar();
  }
}