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
; O procedimento CONS constroi listas e tem DOIS parametros
(cons 'a '(x y w u))
(define lista1 (cons 'a '(x y w u)))
(define lista2a (cons 'x (cons 'a (cons 'm '(3 7)))))
(define lista2b (cons 'x (cons 'a (cons 'm (cons 3 7))))) 
(display "Lista2a:") lista2a (newline)
(display "Lista2b:") lista2b (newline)
;-----------------------------------------------------------
(display "O ponto, antes do ultimo elemento,  numa lista, significa LISTA IMPROPRIA...!") (newline)
(cons 'a 'b)
(cdr '(a . b))                    ; lista UM elelemento
(cons 'a '(b . c))    (newline)   ; lista 2 elementos   
;----------------------------------------------------------
(list 'a 'b 'c)       ; lista 3 elementos
(list 'x)             ; lista unitaria
(list)                ; lista vazia