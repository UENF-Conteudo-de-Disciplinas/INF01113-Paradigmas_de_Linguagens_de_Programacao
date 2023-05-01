/*  Questao 8.1

  Design a class named QuadraticEquation for a quadratic equation ax² + bx + x = 0. The class contains:
  •  Private data fields a, b, and c that represent three coefficients.
  •  A constructor for the arguments for a, b, and c.
  •  Three getter methods for a, b, and c.
  •  A method named getDiscriminant() that returns the discriminant, which is b² — 4ac.
  •  The methods named getRoot() and getRoot2 () for returning two roots of the equation

      r1 = (-b + √(b²-4ac))/(2a)    and r2 = (-b - √(b²-4ac))/(2a)

  These methods are useful only if the discriminant is nonnegative.
  Let these methods return 0 if the discriminant is negative.
  Draw the UML diagram for the class and then implement the class.
  Write a test program that prompts the user to enter values for
  a, b, and c and displays the result based on the discriminant.
  If the discriminant is positive, display the two roots.
  If the discriminant is 0, display the one root.
  Otherwise, display "The equation has no roots."
  See Programming Exercise 3.1 for sample runs.

*/

import java.util.Scanner;

class QuadraticEquation {
  private float a;
  private float b;
  private float c;

  QuadraticEquation(float constructA, float constructB, float constructC) {
    this.a = constructA;
    this.b = constructB;
    this.c = constructC;
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

  float getDiscriminant() {
    return b*b-4*a*c;
  }

  float getRoot() {
    if(getDiscriminant()<0) {
      return 0;
    }
    return (-b + (float)Math.sqrt(b*b-4*a*c))/(2*a);
  }
  
  float getRoot2() {
    if(getDiscriminant()<0) {
      return 0;
    }
    return (-b - (float)Math.sqrt(b*b-4*a*c))/(2*a);
  }
}

class Q9_10 {
  public static void main(String[] args) {

    Scanner input = new Scanner(System.in);
    System.out.print("A:");
    float a = input.nextFloat();
    System.out.print("B:");
    float b = input.nextFloat();
    System.out.print("C:");
    float c = input.nextFloat();
    
    QuadraticEquation calculadoraQuadratica = new QuadraticEquation(a, b, c);
    float r1 = calculadoraQuadratica.getRoot();
    float r2 = calculadoraQuadratica.getRoot2();
    float discriminant = calculadoraQuadratica.getDiscriminant();
    if (discriminant > 0) {
      System.out.println("r1="+r1+"; r2="+r2+";");
    } else if (discriminant == 0) {
      System.out.println("r1="+r1+";");
    } else {
      System.out.println("The equation has no roots.");
    }
    
    input.close();
  }
}