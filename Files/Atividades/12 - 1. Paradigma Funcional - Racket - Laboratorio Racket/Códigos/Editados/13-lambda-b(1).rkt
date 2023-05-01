;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Setembro - 2021 
;; Aluno: João Vítor Fernandes Dias
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2021") (newline)
(display "  Paradigmas de Linguagens de Programação (Prof. Ausberto Castro)") (newline)
(display "  Aluno:  João Vítor Fernandes Dias ") (newline)
;; ---------------------------------------------------
;;  Expressoes LAMBDA e Recursão
;; ---------------------------------------------------
;; Expressoes LAMBDA sao utilizados para criar novos procedimentos
;;    (lambda (var ....) expr1  expr2 ....)
;; ------------- Calcular prestação atrasada ----------------
#|
Crie um procedimento para
realizar o cálculo de uma prestação em atraso,
utilizando a fórmula
Prest = valor + (valor*(taxa/100) *tempo).
Dar exemplos.
|#
(define prestacaoAtrasada
  (lambda (valor taxa tempo)
    (
      + valor (* valor tempo (/ taxa 100))
    )
  )
)
;--------------------------------------
;--------  Executando ... -------------
;--------------------------------------
(display "Valor 1000,     Taxa  5, Tempo  4: ")     (prestacaoAtrasada 1000    5  4)
(display "Valor 1000,     Taxa  5, Tempo  8: ")     (prestacaoAtrasada 1000    5  8)
(display "Valor 1000,     Taxa  5, Tempo 12: ")     (prestacaoAtrasada 1000    5 12)
(display "Valor 1000,     Taxa 10, Tempo  4: ")     (prestacaoAtrasada 1000   10  4)
(display "Valor 1000,     Taxa 10, Tempo  8: ")     (prestacaoAtrasada 1000   10  8)
(display "Valor 1000,     Taxa 10, Tempo 12: ")     (prestacaoAtrasada 1000   10 12)
(display "Valor 1000,     Taxa 15, Tempo  4: ")     (prestacaoAtrasada 1000   15  4)
(display "Valor 1000,     Taxa 15, Tempo  8: ")     (prestacaoAtrasada 1000   15  8)
(display "Valor 1000,     Taxa 15, Tempo 12: ")     (prestacaoAtrasada 1000   15 12)
(newline)
(newline)
(display "Valor 10000,    Taxa  5, Tempo  4: ")     (prestacaoAtrasada 10000   5  4)
(display "Valor 10000,    Taxa  5, Tempo  8: ")     (prestacaoAtrasada 10000   5  8)
(display "Valor 10000,    Taxa  5, Tempo 12: ")     (prestacaoAtrasada 10000   5 12)
(display "Valor 10000,    Taxa 10, Tempo  4: ")     (prestacaoAtrasada 10000  10  4)
(display "Valor 10000,    Taxa 10, Tempo  8: ")     (prestacaoAtrasada 10000  10  8)
(display "Valor 10000,    Taxa 10, Tempo 12: ")     (prestacaoAtrasada 10000  10 12)
(display "Valor 10000,    Taxa 15, Tempo  4: ")     (prestacaoAtrasada 10000  15  4)
(display "Valor 10000,    Taxa 15, Tempo  8: ")     (prestacaoAtrasada 10000  15  8)
(display "Valor 10000,    Taxa 15, Tempo 12: ")     (prestacaoAtrasada 10000  15 12)
(newline)
(newline)
(display "Valor 100000,   Taxa  5, Tempo  4: ")     (prestacaoAtrasada 100000  5  4)
(display "Valor 100000,   Taxa  5, Tempo  8: ")     (prestacaoAtrasada 100000  5  8)
(display "Valor 100000,   Taxa  5, Tempo 12: ")     (prestacaoAtrasada 100000  5 12)
(display "Valor 100000,   Taxa 10, Tempo  4: ")     (prestacaoAtrasada 100000 10  4)
(display "Valor 100000,   Taxa 10, Tempo  8: ")     (prestacaoAtrasada 100000 10  8)
(display "Valor 100000,   Taxa 10, Tempo 12: ")     (prestacaoAtrasada 100000 10 12)
(display "Valor 100000,   Taxa 15, Tempo  4: ")     (prestacaoAtrasada 100000 15  4)
(display "Valor 100000,   Taxa 15, Tempo  8: ")     (prestacaoAtrasada 100000 15  8)
(display "Valor 100000,   Taxa 15, Tempo 12: ")     (prestacaoAtrasada 100000 15 12)
