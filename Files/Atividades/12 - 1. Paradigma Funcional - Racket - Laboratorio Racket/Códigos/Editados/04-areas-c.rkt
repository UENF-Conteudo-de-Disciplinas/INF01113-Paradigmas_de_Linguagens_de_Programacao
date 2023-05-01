;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Setembro - 2021
;; Aluno: João Vítor Fernandes Dias
;;   Escolha a linguagem "Determine language from source"
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2021")                                         (newline)
(display "  Paradigmas de Linguagens de Programação (Prof. Ausberto Castro)") (newline)
(display "  Aluno:  João Vítor Fernandes Dias ")                    (newline) (newline)

#|
  Escreva um programa NOVO completo para calcular o volume de um galão de óleo
  utilizando a fórmula V = pi*R²*A, onde as variáveis V, R e A representam,
  respectivamente, o volume, o raio e a altura
|#

(define (VolumeOleo  R A)  (* pi R R A )  )
(display "Volume do barril de óleo de raio 2 e altura 4: ")
(define V (VolumeOleo 2 4))
(display V)
