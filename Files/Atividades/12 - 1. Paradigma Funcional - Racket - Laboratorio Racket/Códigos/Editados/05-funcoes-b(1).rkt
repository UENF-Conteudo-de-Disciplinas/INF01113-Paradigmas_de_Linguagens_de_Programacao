;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Setembro - 2021
;; Aluno: João Vítor Fernandes Dias
;;   Escolha a linguagem R5RS
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2021")                                         (newline)
(display "  Paradigmas de Linguagens de Programação (Prof. Ausberto Castro)") (newline)
(display "  Aluno:  João Vítor Fernandes Dias ")                              (newline)
;;---------------------------------------------------
;Escreva um programa onde são definidas duas funções
;;---------------------------------------------
#|
  As funções em conjunto calculam os pontos de intercessão da parábola com o eixo x.
|#
(define (menosBsobredoisA a b c) (/ (- 0 b) (* 2 a)))
(define (Delta a b c) (- (* b b) (* 4 a c)))
(define (raizDeltasobredoisA a b c) (/ (sqrt (Delta a b c)) (* 2 a)))

(define (BhaskaraX1 a b c) (+ (menosBsobredoisA a b c) (raizDeltasobredoisA a b c)))
(define (BhaskaraX2 a b c) (- (menosBsobredoisA a b c) (raizDeltasobredoisA a b c)))

(define printVar
  (lambda (a b c)
    (begin 
      (display "A:") a (newline)
      (display "B:") b (newline)
      (display "C:") c (newline)
     )
   )
)
;;---------------------------------------------
;;----------- Executando funcoes --------------
#|
  Nessa seção são feitos alguns testes de valores nas funções
|#
(define a 1)
(define b -1)
(define c -6)
;(printVar a b c)
(display "A:") a (display "B:") b (display "C:") c (display "")
;(display "-b/2a: ")(menosBsobredoisA a b c)
;(display "b²-4ac: ")(Delta a b c)
;(display "raiz(delta)/2a: ")(raizDeltasobredoisA a b c)
(display "X1: ")(BhaskaraX1    a b c)
(display "X2: ")(BhaskaraX2    a b c)
(newline)(newline)
(define i 3)
(define j -15)
(define k 12)

;(printVar i j k)
(display "A:") i (display "B:") j (display "C:") k (display "")
;(display "-b/2a: ")(menosBsobredoisA a b c)
;(display "b2-4ac: ")(Delta a b c)
;(display "raiz(delta)/2a: ")(raizDeltasobredoisA a b c)
(display "X1: ")(BhaskaraX1    i j k)
(display "X2: ")(BhaskaraX2    i j k)