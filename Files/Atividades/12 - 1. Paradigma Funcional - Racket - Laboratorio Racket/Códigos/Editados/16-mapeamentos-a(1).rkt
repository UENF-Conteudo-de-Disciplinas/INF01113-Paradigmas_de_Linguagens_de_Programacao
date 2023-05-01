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
(define dobro     (lambda (x) (* 2 x) ) )
(define proximo   (lambda (x) (+ 1 x) ) )
(define quadrado  (lambda (x) (* x x) ) )
(define Lista     (list  1 4 9 16 25))
(define dados    '(2 5 6 23))         
;;
(display "Lista:  ")                    Lista
(display "Raiz Lista:  ")     (map sqrt Lista) (newline)
;;
(display "Dados:  ") dados (newline)
;;mapeamentos
(display "Mapeamentos: Dados-Dobro    ") (newline) (map dobro    dados )
(display "Mapeamentos: Dados-Proximo  ") (newline) (map proximo  dados )
(display "Mapeamentos: Dados-Quadrado ") (newline) (map quadrado dados )