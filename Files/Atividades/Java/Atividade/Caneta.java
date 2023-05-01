class Caneta {
  int carga;
  int codigoDeCor;
  String cor;

  Caneta () {
    this.carga = 3;
    this.codigoDeCor = 1;
    this.cor = "Preto";
  }

  void trocaCor() {
    System.out.println("Trocando de cor");
    switch (codigoDeCor) {
      case 1:
        codigoDeCor = 2;
        cor = "Azul";
        break;
      case 2:
        codigoDeCor = 3;
        cor = "Vermelho";
        break;
      case 3:
        codigoDeCor = 1;
        cor = "Preto";
        break;
    }
  }

  void escreve() {
    if (carga < 1) {
      System.out.println("sem Carga\t" + "Carga (" + carga + "/3)");
    } else {
      carga --;
      System.out.println("Escrevendo " + cor + "...\t" + "Carga (" + carga + "/3)");
    }
  }

  void recarrega() {
    if (carga>2) {
      System.out.println("Completa\t" + "Carga (" + carga + "/3)");
    } else {
      carga++;
      System.out.println("Carregando\t" + "Carga (" + carga + "/3)");
    }
  }
}

class Main {
  public static void main(String[] args) {
    Caneta canetinha = new Caneta();
    canetinha.escreve();
    canetinha.escreve();
    canetinha.escreve();
    canetinha.recarrega();
    canetinha.recarrega();
    canetinha.recarrega();
    canetinha.recarrega();
    canetinha.escreve();
    canetinha.trocaCor();
    canetinha.trocaCor();
    canetinha.escreve();
  }
}