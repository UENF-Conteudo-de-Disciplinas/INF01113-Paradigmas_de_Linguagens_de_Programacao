//Escreva um programa JAVA que calcule a média de quatro notas.
//O programa deve mostrar o valor da média e indicar se foi aprovado ou reprovado

class CalculoDeMedia {
  double mediaAceitavel;
  CalculoDeMedia(double mediaInserida) {
    mediaAceitavel = mediaInserida;
  }

  void calcularMedia(double n1, double n2, double n3, double n4) {
    double valorMedia = (n1+n2+n3+n4)/4;
    this.aprovacao(valorMedia);
  }

  void aprovacao(double valorMediaCalculado) {
    String msg = "";
    if (valorMediaCalculado>=mediaAceitavel) {
      msg = "a";
    } else {
      msg = "re";
    }
    System.out.println("O aluno está " + msg + "provado, porque sua média foi: " + valorMediaCalculado);
  }
}

class Main {
  public static void main(String[] args) {
    CalculoDeMedia calcularMediaJAVA = new CalculoDeMedia(6.0);
    calcularMediaJAVA.calcularMedia(1.1,2.2,8.8,9.9);
    calcularMediaJAVA.calcularMedia(2.2,3.3,8.8,9.9);
  }
}