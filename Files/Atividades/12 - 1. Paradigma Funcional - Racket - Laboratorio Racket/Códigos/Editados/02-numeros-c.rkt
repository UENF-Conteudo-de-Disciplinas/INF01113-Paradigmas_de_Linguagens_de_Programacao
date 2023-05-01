;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 02-numeros-c) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; Introdução à Linguagem Racket (Scheme)
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2021
;; Aluno: João Vítor Fernandes Dias
;; Escolha a linguagem "Determine language from source"
; ------------------------------------------------
(display "    UENF-CCT-LCMAT-CC, 2021")                                         (newline)
(display "    Paradigmas de Linguagens de Programação (Prof. Ausberto Castro)") (newline)
(display "    Aluno:  João Vítor Fernandes Dias ")                    (newline) (newline)
;; -----------Numeros e aritmetica--------------------
(display "Cálculo 4.2") (newline)

(display "Direto: ")
(/ (sqrt (+ (expt 7 2) 5 (sin (- 18 7)) (cos (+ 20 2)))) (* (+ 5 3) (expt (- 4 8) 2)))

(display "Com display: ")
(display (/ (sqrt (+ (expt 7 2) 5 (sin (- 18 7)) (cos (+ 20 2)))) (* (+ 5 3) (expt (- 4 8) 2))))
(newline)

(display "Definindo o H previamente: ")
(define H (/ (sqrt (+ (expt 7 2) 5 (sin (- 18 7)) (cos (+ 20 2)))) (* (+ 5 3) (expt (- 4 8) 2))))
(display H)
  