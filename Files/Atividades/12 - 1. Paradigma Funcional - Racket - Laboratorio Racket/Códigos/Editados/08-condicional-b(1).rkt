;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Abril 2019
;; Aluno: João Vítor Fernandes Dias
;;
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2019") (newline)
(display "  Paradigmas de Linguagens de Programação (Prof. Ausberto Castro)") (newline)
(display "  Aluno:  João Vítor Fernandes Dias ") (newline) (newline)
;; CONDICIONAL   ( cond {[ ‹expr-test› ‹expr-eval›* ]}* )
;;---------------------------------------------

#|
Escreva um programa condicional com pelo menos 5 opções
|#
(define (E10 x) (expt 10 x))

(define (ordem x) 
     (cond 
       ((< x 0) "Negativo") 
       ((and (>= x 0)(< x (E10 1))) "Unidade") 
       ((< x (E10 2)) "Dezena") 
       ((< x (E10 3)) "Centena")
       ((< x (E10 4)) "Unidade de milhar")
       ((< x (E10 5)) "Dezena de milhar")
       (else "Maior que Dezena de milhar")  
     )
) 
;;---------------------------------------------


(display "Ordem para o valor -2 = ")      (ordem -2)        (newline)
(display "Ordem para o valor  2 = ")      (ordem  2)        (newline)
(display "Ordem para o valor  20 = ")     (ordem  20)       (newline)
(display "Ordem para o valor  200 = ")    (ordem  200)      (newline)
(display "Ordem para o valor  2000 = ")   (ordem  2000)     (newline)
(display "Ordem para o valor  20000 = ")  (ordem  20000)    (newline)
(display "Ordem para o valor  200000 = ") (ordem  200000)   (newline)
