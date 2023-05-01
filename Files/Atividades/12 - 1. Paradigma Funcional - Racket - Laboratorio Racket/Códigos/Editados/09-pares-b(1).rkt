;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Setembro - 2021
;; Aluno: João Vítor Fernandes Dias
;;
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2021") (newline)
(display "  Paradigmas de Linguagens de Programação (Prof. Ausberto Castro), 2021") (newline)
(display "  Aluno:  João Vítor Fernandes Dias ") (newline)(newline)

;; ---------------------------------------------------
;; PARES CONSTANTES
;; ---------------------------------------------------
(define x (cons 'x1 'x2))
(define y (cons 'y1 'y2))
;; ----------------Primeiro e resto ---------------------
(define (primeiroElemento X)      (car X))
;(define ( segundoElemento X) (car (cdr X)))
(define ( segundoElemento X) (cdr X))
;; ----------------Primeiro e resto ---------------------
(display "O primeiro elemento do par x = ") (primeiroElemento x) (newline) ; 1x 
(display "O  segundo elemento do par x = ") ( segundoElemento x) (newline) ; 2x 
(display "O primeiro elemento do par y = ") (primeiroElemento y) (newline) ; 1y 
(display "O  segundo elemento do par y = ") ( segundoElemento y) (newline) ; 2y