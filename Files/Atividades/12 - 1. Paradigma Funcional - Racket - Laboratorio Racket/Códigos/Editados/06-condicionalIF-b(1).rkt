;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Setembro - 2021
;; Aluno: João Vítor Fernandes Dias
;; Escolha a linguagem R5RS
;; Ajuda:  http://docs.racket-lang.org/guide/syntax-overview.html#(part._.Conditionals_with_if__and__or__and_cond)
#lang racket      ;; define a linguagem default
; -----------Condicionais---------------------
(display "  UENF-CCT-LCMAT-CC, 2021") (newline)
(display "  Paradigmas de Linguagens de Programação (Prof. Ausberto Castro)") (newline)
(display "  Aluno:  João Vítor Fernandes Dias ") (newline)

(define (menosBsobredoisA a b c) (/ (- 0 b) (* 2 a)))
(define (delta a b c) (- (* b b) (* 4 a c)))
(define (raizDeltasobredoisA a b c) (/ (sqrt (delta a b c)) (* 2 a)))

(define (bhaskaraX1 a b c) (+ (menosBsobredoisA a b c) (raizDeltasobredoisA a b c)))
(define (bhaskaraX2 a b c) (- (menosBsobredoisA a b c) (raizDeltasobredoisA a b c)))

(define (analiseDelta a b c) 
  (if (< (delta a b c) 0) 
    "Sem raiz real"
    (if(> (delta a b c) 0)
      "2 raizes reais"
      "1 raiz real")))

(define (execucao a b c) (newline)    
  (display "A:") (display a) (display " B:") (display b) (display " C:") (display c)
  (display "    ")
  (display (analiseDelta a b c)) (newline)
  (display "X1: ")   (display (bhaskaraX1    a b c)) 
  (display "  X2: ") (display (bhaskaraX2    a b c)) (newline) )
;;----------- Executando funcoes --------------
;  Nessa seção são feitos alguns testes de valores nas funções
(execucao 1 -1 -6)
(execucao 3 -15 12)
(execucao 1 2 3)