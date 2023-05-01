/*  Questao 7
  Para cada caso da questão 2,
  escrever um programa JAVA,
  mostrando
    as classes,
    as operações (métodos),
    a criação de objetos e
    outras características da Programação Orientada a Objetos.
*/

class ConjuntoDeAtomos {
  int quantidadeDeAtomos;
  String tiposDeAtomos;

  void mostrarEstruturaAtomica3d() {
    String mensagem1 = "Mostrando estrutura atômica 3D";
    System.out.println(mensagem1);
  }
  void listarMoleculas() {
    String mensagem2 = "Listando moléculas";
    System.out.println(mensagem2);
  }
}

class SerNaoVivo extends ConjuntoDeAtomos{
  String dataDeOrigem;
  String nome;

  void destruir() {
    String mensagem3 = "Destruindo";
    System.out.println(mensagem3);
  }
  void manipular() {
    String mensagem4 = "Manipulando";
    System.out.println(mensagem4);
  }
}

class Radio extends SerNaoVivo{
  int estacao;
  int volume;

  void sintonizar() {
    String mensagem5 = "Sintonizando";
    System.out.println(mensagem5);
  }
  void aumentarVolume() {
    String mensagem6 = "Aumentando volume";
    System.out.println(mensagem6);
  }
}

class AparelhoEletronico {
  public static void main(String[] args) {
    Radio nomeDoObjeto = new Radio();
    nomeDoObjeto.mostrarEstruturaAtomica3d();
    nomeDoObjeto.listarMoleculas();
    nomeDoObjeto.destruir();
    nomeDoObjeto.manipular();
    nomeDoObjeto.sintonizar();
    nomeDoObjeto.aumentarVolume();
  }
}