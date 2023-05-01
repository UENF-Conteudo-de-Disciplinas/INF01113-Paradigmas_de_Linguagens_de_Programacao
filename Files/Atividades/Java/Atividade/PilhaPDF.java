import java.util.Stack; // Importa definição da classe Stack
class pilha{
  public static void main (String args[]){
    Stack pilha = new java.util.Stack.Stack(); //Instancia pilha
    int el1;
    String el2;
    pilha.push (new Integer (1));                 //Empilha referência de um objeto Integer
    pilha.push (new String ("Java"));             //Empilha referência de um objeto String
    try{
      el2 = (String)  pilha.pop();                //Desempilha String
      el1 = ((Integer) pilha.pop()).intValue();   //Desempilha valor do inteiro
    } catch (EmptyStackException e) {
      System.out.println(e);
    }
  }
}