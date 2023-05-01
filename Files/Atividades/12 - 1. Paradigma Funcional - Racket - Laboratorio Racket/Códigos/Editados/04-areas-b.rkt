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

;; ---------------AREAS-----------------------------
(define (AreaQuadrado lado)                       (* lado lado))
(define (AreaTrapezio BaseMaior BaseMenor Altura) (* (+ BaseMaior BaseMenor) (/ Altura 2))) ;(a+b)*(h/2)
(define (AreaPoligono Base Altura)                (* Base Altura))

(display "Area quadrado de lado 3: ") (AreaQuadrado 3)
(display "trapézio B=4, b=5, H=6 : ") (AreaTrapezio 4 5 6)
(display "Area Poligono b=7, H=8 : ") (AreaPoligono 7 8)
