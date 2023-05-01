;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Setembro - 2021
;; Aluno: João Vítor Fernandes Dias
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2021") (newline)
(display "  Paradigmas de Linguagens de Programação (Prof. Ausberto Castro)") (newline)
(display "  Aluno:  João Vítor Fernandes Dias ") (newline) (newline)
; ------------------------------------------------
(display "OPERADORES LÓGICOS") (newline) (newline)

;(display "Testes com o operador lógico AND") (newline)
;(let ((x 3)) (and (> x 2) (< x 4)))
;(let ((y 5)) (and (> y 2) (< y 4)))   

(display "Tabela de valores AND")    (newline)
(display " T and T = ")  (and #t #t) 
(display " T and F = ")  (and #t #f) 
(display " F and F = ")  (and #f #f)  (newline)
;;------------------
;(display "Testes com o operador lógico OR") (newline)
;(let ((x  3)) (or (> x  2) (< x 8)))
;(let ((y 10)) (or (> y 20) (< y 7)))  

(display "Tabela de valores OR")    (newline)
(display " T or T = ")   (or #t #t) 
(display " T or F = ")   (or #t #f) 
(display " F or F = ")   (or #f #f)   (newline)
;;-----------
;(display "Testes com o operador lógico NOT") (newline)
;(display " not( 5 >  3) = ") (not (>  5  3))
;(display " not(10 > 25) = ") (not (> 10 25)) 

(display "Tabela de valores NOT")    (newline)
(display " not T = ")   (not #t)     
(display " not F = ")   (not #f)      (newline)
;;-----------
(display "Tabela de valores ->")    (newline)

(define (-> p q) (or (not p) q))
(display " T -> T = ")   (-> #t #t) 
(display " T -> F = ")   (-> #t #f) 
(display " F -> T = ")   (-> #f #t) 
(display " F -> F = ")   (-> #f #f) (newline)
;;-----------
(display "Tabela de valores <->")    (newline)

(define (<-> p q) (and (-> p q) (-> q p)))
(display " T <-> T = ")   (<-> #t #t) 
(display " T <-> F = ")   (<-> #t #f) 
(display " F <-> T = ")   (<-> #f #t) 
(display " F <-> F = ")   (<-> #f #f)
