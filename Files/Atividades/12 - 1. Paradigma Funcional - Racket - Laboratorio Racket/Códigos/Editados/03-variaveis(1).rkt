;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Setembro - 2021
;; Aluno: João Vítor Fernandes Dias
;; Escolha a linguagem "Determine language from source"
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2021")                                         (newline)
(display "  Paradigmas de Linguagens de Programação (Prof. Ausberto Castro)") (newline)
(display "  Aluno:  João Vítor Fernandes Dias ")                    (newline) (newline)
;; Variáveis e Expressoes LET
;; ---------------------------------------------------
(define x 3)                     ; para x=3
(define m 7)
(define z (+ m 6))               ; para z = m+ 6
(define Pi 3.141516)
(define k (+ z (- m x)))

(display "m: ") (display m)
(display "z: ") (display z)
(display "k: ") (display k)

#|
  m=7
  z=m+6=7+6=13
  k=z+(m-x)=13+(7-3)=13+4=17

  m=7     z=13    k=17
|#

; (define   (nomeFuncao   parametro)  definicao  )
  (define   (quadrado             x)  (* x x)    )
  (define   (entre5e20?           n)  (and (< 5 n) (< n 20) ))  ; AND logico
 ;; ---------------------------------------------------
(display "O numero 8 esta entre 5 e 20? ")    (entre5e20? 8)                        (newline)
(display "O numero 37 esta entre 5 e 20? ")   (entre5e20? 37)                       (newline)
(display "Escreva qualquer variavel definida acima ... <var> <ENTER>   x m z Pi")   (newline)(newline)
;; ---------------------------------------------------
; Expressao let:   
; (let ((var1 valor) ..       ) expr1  expr2 .....)

(let ((x      24 )          ) (+ x 6)           )
#|
  Permite que o X tenha o valor 24
  dentro da expressão "+ x 6",
  assim retornando o valor 24+6=30
|#

  (let ((a 5) (b 8)           ) (+ 3 (* a b))     );
#|
  Permite que o a tenha o valor 5 e que b tenha o valor 8
  dentro da expressão "+ 3 (* a b)",
  assim retornando o valor 3+5*8=43
|#

  (let ((op1 +) (op2 *) (x 5) ) (op1 3 (op2 4 x)) )
#|
  Permite que o op1 tenha o valor "+", op2 tenha o valor "*" e x tenha o valor 5
  dentro da expressão "(op1 3 (op2 4 x)",
  obtendo então a expressão "+ 3 (* 4 5)",
  assim retornando o valor 3+4*5 = 23
|#

(display "O quadrado de 12 : ")(quadrado 12)

(let ((a 1) (b 2)) (+ a b))
#|
  Define o valor de a como sendo 1 e o valor de b como sendo 2
  Então faz a soma de a com b
  Retornando o valor a+b=1+2=3
|#

(let ((b 6) (c 8)) (- c b))
#|
  Define o valor de b como sendo 6 e o valor de c como sendo 8
  Então faz a subtração de b em c
  Retornando o valor c-b=8-6=2
|#


#| ;Tentativa de Bhaskara
  (let ((a 1) (b 3) (c 5))
    (
      (let ((vezes *) (mais +) (divide /) (subtrai -)  (quatro 4) (dois 2))
        (
          (let ( (delta (subtrai (vezes b b) (vezes quatro a c ) ))) 
            (
              ( let ((raizDelta (sqrt delta)) (menosB (- 0 b)) (doisA (vezes dois a)))
                (
                  (let  ((menosBsobredoisA (divide menosB doisA)) (raizDeltasobredoisA (divide raizDelta doisA)))
                    (
                      (let ((X1 (mais menosBsobredoisA raizDeltasobredoisA)) (X2 (subtrai menosBsobredoisA raizDeltasobredoisA))) 
                        (
                          (let ((teste1 0))
                            (
                              + X1 0
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      )
    )
  )

|#

#|
  (let ((teste2 0))
    (
      + X2 0
    )
  )
|#

#|
  (newline)
  (display "Resolvendo Bhaskara da equação: (") (display a) (display ")X²+(") (display b)
  (display ")+(") (display c) (display ")") (newline) (newline)

  (display "X1 = ")  X1
  (display "X2 = ")  X2 (newline) (newline)
|#