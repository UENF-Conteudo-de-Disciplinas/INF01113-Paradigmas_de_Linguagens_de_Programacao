;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Setembro - 2021
;; Aluno: João Vítor Fernandes Dias
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2021")                                         (newline)
(display "  Paradigmas de Linguagens de Programação (Prof. Ausberto Castro)") (newline)
(display "  Aluno:  João Vítor Fernandes Dias ")                              (newline)
;; Condicionais    (if  (condicao) (alternativa1) (alternativa2 ) )
;; ---------------------------------------------------

(define (media v1 v2 v3) (/ (+ v1 v2 v3) 3))
(define (aprovacao v1 v2 v3) (if (>= (media v1 v2 v3) 6) "aprovado" "Reprovado"))
(aprovacao 5 5 5)
(aprovacao 5 6 7)
(aprovacao 7 7 7)