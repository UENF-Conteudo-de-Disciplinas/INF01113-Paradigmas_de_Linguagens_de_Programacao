;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Setembro - 2021
;; Aluno: João Vítor Fernandes Dias
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2021")                                         (newline)
(display "  Paradigmas de Linguagens de Programação (Prof. Ausberto Castro)") (newline)
(display "  Aluno:  João Vítor Fernandes Dias ")                              (newline) (newline)
; ----------------Descrição do problema---------------------
;Escreva um NOVO programa para
;construir uma lista
;e determinar seu primeiro e último elemento,
;seu comprimento,
;e uma nova lista com dois elementos a mais que a anterior.
;Incluir os códigos fonte
; ----------------Definição da lista---------------------
(define Lista1 (list 0 1 2 3 4 5 6 7))
; ----------------Funções---------------------
(define (primeiroElemento X)  (car          X))
(define (  ultimoElemento X)  (car (reverse X)))
(define (    tamanhoLista X)  (length       X))
(define (         insere2 X)  (append X (list (ultimoElemento X) (ultimoElemento X))))
; ----------------Testes---------------------
(newline) (display "Primeiro elemento: ") (primeiroElemento Lista1)
(newline) (display "Ultimo elemento: ")   (  ultimoElemento Lista1)
(newline) (display "TamanhoLista: ")      (    tamanhoLista Lista1)
(newline) (display "Insere2: ")           (         insere2 Lista1)