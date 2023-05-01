;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 17-raizes-poly) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Setembro - 2021 
;; Aluno: João Vítor Fernandes Dias
;; define a linguagem default ===> Habilite Advanced Student
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2021")                                         (newline)
(display "  Paradigmas de Linguagens de Programação (Prof. Ausberto Castro)") (newline)
(display "  Aluno:  João Vítor Fernandes Dias ")                    (newline) (newline)
;; -----Aplicações:  raizes do polinomio Ax^2 + Bx + C = 0-------
(define (poly2grau a b c)
  (cond 
    [(= a 0)                      'degenerada]
    [(< (* b b) (* 4 a c)) 'NenhumaOuComplexa]
    [(= (* b b) (* 4 a c))  (/ (- b) (* 2 a))]
    [(> (* b b) (* 4 a c))  (list
                             (/ (+ (- b) (sqrt (- (* b b) (* 4 a c)))) (* 2 a))
                             (/ (- (- b) (sqrt (- (* b b) (* 4 a c)))) (* 2 a))
                            )]
    )
  ) 
;;------------ PrintTexto -----------------
(define (printText a b c) (begin
   (newline)(newline)
   (display a) (display "*X^2 + ")
   (display b) (display "*X + ")
   (display c) (display " = 0, Raízes = ")
   (poly2grau a b c)
))
;;------------EXEMPLOS -----------------
(printText 1 2  1)  (display "deveria ser -1")
(printText 3 4  1)  (display "deveria ser -1/3 -1")
(printText 2 4  3)  (display "deveria ser Nenhuma")
(printText 1 0 -1)  (display "deveria ser 1 e -1")
(printText 2 4  2)  (display "deveria ser -1")
(printText 0 1  1)  (display "deveria ser: Degenerada")
