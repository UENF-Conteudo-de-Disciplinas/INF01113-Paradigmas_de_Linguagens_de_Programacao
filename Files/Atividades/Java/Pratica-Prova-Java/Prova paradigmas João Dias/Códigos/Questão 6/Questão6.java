//Escreva um programa JAVA que
//calcule a soma dos inteiros
//maiores ou iguais a um número inteiro A e
//menores ou iguais a um inteiro B.

class SomarInteiros {

  void intervalo(int A, int B) {
    int soma = 0;
    for (; A <= B; soma += A, A++);
    System.out.println(soma);
  }
}

class Main {
  public static void main(String[] args) {
    SomarInteiros somaDeIntervalo = new SomarInteiros();
    somaDeIntervalo.intervalo(1,3);
    somaDeIntervalo.intervalo(9,11);
  }
}