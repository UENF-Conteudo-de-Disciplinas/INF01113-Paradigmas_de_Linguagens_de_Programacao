;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 20-estruturas-b) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Setembro - 2021
;; Aluno: João Vítor Fernandes Dias
;; define a linguagem default ===> Habilite Advanced Student
; Ir no Menu: Language -> Choose Language -> How to Design Programs -> Advanced Student
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2021")                                           (newline)
(display "  Paradigmas de Linguagens de Programação (Prof. Ausberto Castro)")   (newline)
(display "  Aluno:  João Vítor Fernandes Dias ")                      (newline) (newline)
;----------------------------------------------------------------------------
(define-struct data     (dia mes ano))
(define-struct endereco (bairro rua numero))

(define-struct cedulas  (duzentos cem cinquenta vinte dez cinco dois um))
(define-struct moedas   (cem cinquenta vinteecinco dez cinco um))
(define-struct caixa    (cedulas moedas))

(define apocalipse      (make-data 12 12 2012))
(define casa            (make-endereco 'bairro1 'rua1 'numero1))
(define trocador        (make-caixa
                          (make-cedulas 200 100 50 20 10 5 2 1)
                          (make-moedas 1 5 10 25 50 100)
                        ))
;(define CedulasDoTrocador (make-cedulas 200 100 50 20 10 5 2 1))
;(define MoedasDoTrocador  (make-moedas 1 5 10 25 50 100))
;(define trocador          (make-caixa CedulasDoTrocador MoedasDoTrocador))
(display "Dia do apocalipse = " ) (data-dia apocalipse)
(display "Mes do apocalipse = " ) (data-mes apocalipse)
(display "Ano do apocalipse = " ) (data-ano apocalipse)

(display "Bairro do endereço = " ) (endereco-bairro casa)
(display "Rua    do endereço = " ) (endereco-rua    casa)
(display "Numero do endereço = " ) (endereco-numero casa)

(display "Cedulas do trocador = " ) (caixa-cedulas trocador)
(display "Moedas  do trocador = " ) (caixa-moedas  trocador)

