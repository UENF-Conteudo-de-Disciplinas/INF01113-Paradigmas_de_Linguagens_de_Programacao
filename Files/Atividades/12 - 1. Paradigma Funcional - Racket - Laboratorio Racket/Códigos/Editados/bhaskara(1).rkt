;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Abril 2019
;; Aluno: João Vítor Fernandes Dias
;;
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2019") (newline)
(display "  Paradigmas de Linguagens de Programação (Prof. Ausberto Castro)") (newline)
(display "  Aluno:  João Vítor Fernandes Dias ") (newline) (newline)
;; CONDICIONAL   ( cond {[ ‹expr-test› ‹expr-eval›* ]}* )
;;---------------------------------------------

#|
Escreva um programa bhaskara.rkt que calcule as raízes de uma equação
25x2 - 55x+10 = 0, utilizando a fórmula de Bhaskara.
Sugestão: Primeiro faça o algoritmo completo
|#




(define (menosBsobredoisA a b c) (/ (- 0 b) (* 2 a)))
(define (delta a b c) (- (* b b) (* 4 a c)))
(define (raizDeltasobredoisA a b c) (/ (sqrt (delta a b c)) (* 2 a)))

(define (bhaskaraX1 a b c) (+ (menosBsobredoisA a b c) (raizDeltasobredoisA a b c)))
(define (bhaskaraX2 a b c) (- (menosBsobredoisA a b c) (raizDeltasobredoisA a b c)))


(define (analiseDelta a b c) 
     (cond 
       ((< (delta a b c) 0)  "Sem raiz real") 
       ((> (delta a b c) 0) "2 raizes reais") 
       (else                 "1 raiz real")  
     )
) 

#|
(define (analiseDelta a b c) 
  (if (< (delta a b c) 0) 
    "Sem raiz real"
    (if(> (delta a b c) 0)
      "2 raizes reais"
      "1 raiz real"
    )
  )
)
|#
;;---------------------------------------------
;;----------- Executando funcoes --------------
#|
Nessa seção são feitos alguns testes de valores nas funções
|#
(define a 25)
(define b -55)
(define c 10)
;(printVar a b c)
(display "A:") a (display "B:") b (display "C:") c
;(display "-b/2a: ")(menosBsobredoisA a b c)
;(display "b²-4ac: ")(Delta a b c)
;(display "raiz(delta)/2a: ")(raizDeltasobredoisA a b c)
(analiseDelta a b c) 
(display "X1: ")(bhaskaraX1    a b c)
(display "X2: ")(bhaskaraX2    a b c)
(newline)(newline)
