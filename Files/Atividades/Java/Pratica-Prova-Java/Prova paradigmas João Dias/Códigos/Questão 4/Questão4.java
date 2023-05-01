//Escreva um programa em Java que execute as quatro operações aritméticas de números reais

class Calculadora {
  void soma(double x, double y) {
    System.out.println(x+y);
  }

  void subtrai(double x, double y) {
    System.out.println(x-y);
  }

  void multiplica(double x, double y) {
    System.out.println(x*y);
  }

  void divide(double x, double y) {
    System.out.println(x/y);
  }
}

class Main {
  public static void main(String[] args) {
    Calculadora calculadoraJAVA = new Calculadora();
    calculadoraJAVA.soma(1.1,2.2);
    calculadoraJAVA.subtrai(2.2,3.3);
    calculadoraJAVA.multiplica(3.3,4.4);
    calculadoraJAVA.divide(4.4,5.5);
  }
}