;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Setembro - 2021
;; Aluno: João Vítor Fernandes Dias
;;
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2021") (newline)
(display "  Paradigmas de Linguagens de Programação (Prof. Ausberto Castro)") (newline)
(display "  Aluno:  João Vítor Fernandes Dias ") (newline)(newline)
;;Algumas formulas conhecidas


;;------------------------------------
;; Formula de Pitagoras
(define (pitagoras a b) (+ (* a a) (* b b)) )

;;------------------------------------
;; Aproximacao do numero Pi
(define (aprox-pi N)
  (if (zero? N)
    4
    (+ (* 4 (/ (expt -1 N) (+ (* 2 N) 1))) (aprox-pi (- N 1)))
    ;  4*(-1^N) /(2*N+1) + aprox-pi(N-1)
  )
)
;;----------------------------------------
;; factorial de um numero inteiro N
(define (factorial N)
  (if (zero? N)
    1
    (* N (factorial (- N 1)))
  )
)
;;----------------------------------------
;; fatorial de um numero inteiro N
(define (fatorialR cont N)
  (if (<= cont N)
    (* cont (fatorialR (+ cont 1) N))
    1
  )
)

(define (fatorial N)
  (fatorialR 1 N)
)
 
(display "Pitagoras de 3 e 4 = ")     (pitagoras 3 4) (newline)
(display "Aproximando Pi com 4 = ")   (aprox-pi 4)    (newline)
(display "Aproximando Pi com 10 = ")  (aprox-pi 10)   (newline)
(display "Factorial de 5 = ")         (factorial 5)   (newline)
(display " Fazer outro teste sobre Pitagoras e outro sobre Fatorial") (newline)
(display "Pitagoras de 6 e 8 = ")     (pitagoras 6 8)
(display "Factorial de 6 = ")         (factorial 6)   (newline)
(newline)(newline)

(display "Fatorial JV 5 = ")         (fatorial 5)   (newline)
(display "Fatorial JV 6 = ")         (fatorial 6)   (newline)