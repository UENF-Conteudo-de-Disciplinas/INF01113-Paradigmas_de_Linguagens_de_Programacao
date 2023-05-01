;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Setembro - 2021 
;; Aluno: João Vítor Fernandes Dias
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2021") (newline)
(display "  Paradigmas de Linguagens de Programação (Prof. Ausberto Castro)") (newline)
(display "  Aluno:  João Vítor Fernandes Dias ") (newline) (newline) (newline)

(define media (lambda (x y z) (/ (+ (+ x y) z) 3)))

(display "Escreva tres notas (numeros separados por espaços a  b  c) : ") (newline)
(define a (read))
(define b (read))
(define c (read))

(display "A media = ") (media a b c)

(if (> (media a b c) 5)
  (display "Aprovado")
  (display "Reprovado")
  )
;;--------------------------------------------
;; Defina aqui uma media com notas com pesos diferentes
;
(define (MediaPonderada a b c) (
  let ((p1 1) (p2 2) (p3 3))(
    / (+ (* p1 a) (* p2 b) (* p3 c)) (+ p1 p2 p3)
  ))
) 
 

