class Ponto2D {
  int x;
  int y;
  
  public:
    Ponto2D(){
      x = y = 0;
    }
    Ponto2D (const int xx , const int yy){
      x = xx;
      y = yy;
    }
    ~Ponto2D(){}  // nada a fazer

    void modificaX (int valx);
    void modificaY (int valY);
    int obterX ();
    int obterY ();
  } meuponto, teuponto;

class Ponto3D: public Ponto2D { // atributo adicional para 3D
  int z;
  public:    // construtores
    Ponto3D(){
      atualizaX (0);
      atualizaY (0);
      z = 0;
    }
    Ponto3D(const int xx, const int yy , const int zz) {
      atualizaX (xx);
      atualizaY (yy);
      z = zz;
    } // destrutor
    ~Ponto3D(){}
      // métodos somente para 3D
    int obterZ (){return z;}
    void atualizaZ (const int valZ) {z = valZ;} 
};

class circulo : public Ponto2D {
  // atributo adicional para circulo
  float raio;
  public:
    //construtores
    circulo(){
      atualizaX(0);
      atualizaY(0);
      raio = 0.0;
    }
    circulo (const int xx, const int yy, const float r){
      atualizaX(xx);
      atualizaY(yy);
      z = r;
    }
    ~circulo(){  }  //  destrutor

    //  métodos somente para 3D
    float obterRaio(){return raio;}
    void atualizaRaio(const float valR) {raio=valR;}
};
    