/*  Questao 7
  Para cada caso da questão 2,
  escrever um programa JAVA,
  mostrando
    as classes,
    as operações (métodos),
    a criação de objetos e
    outras características da Programação Orientada a Objetos.
*/

class Folha {
  String  material;
  String  dimensoes;

  void dobrar() {
    String mensagem1 = "Dobrando";
    System.out.println(mensagem1);
  }
  void cortar() {
    String mensagem2 = "Cortando";
    System.out.println(mensagem2);
  }
}

class ConjuntoDePaginas extends Folha {
  int     quantidadeDePaginas;
  String  corDasPaginas;

  void removerPagina() {
    String mensagem3 = "Romovendo pagina";
    System.out.println(mensagem3);
  }
  void descartar() {
    String mensagem4 = "Descartando";
    System.out.println(mensagem4);
  }
}

class LivroDeFiccao extends ConjuntoDePaginas {
  String temaDeFiccao;
  int    paginaMarcada;

  void marcarPagina() {
    String mensagem5 = "Marcando Pagina";
    System.out.println(mensagem5);
  }
  void ler() {
    String mensagem6 = "Lendo";
    System.out.println(mensagem6);
  }
}

class Livro {
  public static void main(String[] args) {
    LivroDeFiccao duna = new LivroDeFiccao();
    duna.dobrar();
    duna.cortar();
    duna.removerPagina();
    duna.descartar();
    duna.marcarPagina();
    duna.ler();
  }
}