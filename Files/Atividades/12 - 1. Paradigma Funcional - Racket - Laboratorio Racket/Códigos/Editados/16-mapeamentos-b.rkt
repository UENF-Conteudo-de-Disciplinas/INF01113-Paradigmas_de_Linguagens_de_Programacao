;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Setembro - 2021
;; Aluno: João Vítor Fernandes Dias
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2021")                                           (newline)
(display "  Paradigmas de Linguagens de Programação (Prof. Ausberto Castro)")   (newline)
(display "  Aluno:  João Vítor Fernandes Dias ")                      (newline) (newline) 
; ------------Mapeamentos---------------
(define aplicarQuadratica   (lambda (x) (+ (* x x) (* 3 x) -9) ) )
(define lista     (list -6 -5 -4 -3 -2 -1.5 -1 0 1 2 3))
;;mapeamentos
(display "Mapeamentos: TesteQuadratica: ") (newline) (map aplicarQuadratica lista )
