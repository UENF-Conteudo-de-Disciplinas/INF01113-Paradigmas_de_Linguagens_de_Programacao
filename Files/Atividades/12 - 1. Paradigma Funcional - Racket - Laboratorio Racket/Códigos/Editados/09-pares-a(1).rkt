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
(define x (cons 1 2))
(define y (cons 'a 3))
(define z (cons x y))    ; (  (1 2) ('a 3) ) 

(define a (cons 1 2))     ;   (1 2)
(define a2 (cons a 3))    ;  ((1 2) 3)
(define a3 (cons a2 4))   ; (((1 2) 3) 4)
(define a4 (cons a3 5))   ;((((1 2) 3) 4) 5)

(define b (cons 2 1))     ;         (2 1)
(define b2 (cons 3 b))    ;      (3 (2 1))
(define b3 (cons 4 b2))   ;   (4 (3 (2 1)))
(define b4 (cons 5 b3))   ;(5 (4 (3 (2 1))))
;; ---------------------------------------------------
(display "O par x = ")          x  (newline)
(display "O par y = ")          y  (newline)
(display "O par z = (x y) = ")  z  (newline) (newline)
(display "O par a4 = ")         a4 (newline)
(display "O par b4 = ")         b4 (newline)
;; ----------------Primeiro e resto ---------------------
(display "O primeiro elemento do par x = ") (car x) (newline) ; primeiro 
(display "O  segundo elemento do par x = ") (cdr x) (newline)  ;; resto