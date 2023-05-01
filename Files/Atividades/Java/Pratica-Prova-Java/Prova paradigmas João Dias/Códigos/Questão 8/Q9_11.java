/*  Questao 8.2

  Design a class named LinearEquation for a
  2 X 2 system of linear equations:

  ax+by=e    x=(ed-bf)/(ad-bc)
  cx+dy=f    y=(af-ec)/(ad-bc)

  The class contains:
  •  Private data fields a, b, c, d, e, and f.
  •  A constructor with the arguments for a, b, c, d, e, and f.
  •  Six getter methods for a, b, c, d, e, and f.
  •  A method named isSolvable() that returns true if ad-bc is not 0.
  •  Methods getX() and getY() that return the solution for the equation.
  Draw the UML diagram for the class and then implement the class.
  
  Write a test program that prompts the user to enter a, b, c, d, e, and f and displays the result.
  If ad — bc is 0, report that "The equation has no solution."
  See Programming Exercise 3.3 for sample runs.


*/

import java.util.Scanner;

class LinearEquation {
  private float a;
  private float b;
  private float c;
  private float d;
  private float e;
  private float f;

  LinearEquation(float constructA, float constructB, float constructC, float constructD, float constructE, float constructF) {
    this.a = constructA;
    this.b = constructB;
    this.c = constructC;
    this.d = constructD;
    this.e = constructE;
    this.f = constructF;
  }

  float getA(){
    return a;
  }
  float getB(){
    return b;
  }
  float getC(){
    return c;
  }
  float getD(){
    return d;
  }
  float getE(){
    return e;
  }
  float getF(){
    return f;
  }

  boolean isSolvable() {
    return (a*d-b*c != 0);
  }

  float getX() {
    return (e*d-b*f)/(a*d-b*c);
  }
  
  float getY() {
    return (a*f-e*c)/(a*d-b*c);
  }
}

class Q9_11 {
  public static void main(String[] args) {

    Scanner input = new Scanner(System.in);
    System.out.print("a:");
    float a = input.nextFloat();
    System.out.print("b:");
    float b = input.nextFloat();
    System.out.print("c:");
    float c = input.nextFloat();
    System.out.print("d:");
    float d = input.nextFloat();
    System.out.print("e:");
    float e = input.nextFloat();
    System.out.print("f:");
    float f = input.nextFloat();
    
    LinearEquation calculadoraLinear = new LinearEquation(a, b, c, d, e, f);
    float X = calculadoraLinear.getX();
    float Y = calculadoraLinear.getY();
    boolean solvable = calculadoraLinear.isSolvable();

    System.out.println("Eq1: ("+a+")*X + ("+b+")*Y = ("+e+");");
    System.out.println("Eq2: ("+c+")*X + ("+d+")*Y = ("+f+");");

    if (!solvable) {
      System.out.println("The equation has no solution.");
    } else {
      System.out.println("X="+X+"; Y="+Y+";");
    }
    
    input.close();
  }
}