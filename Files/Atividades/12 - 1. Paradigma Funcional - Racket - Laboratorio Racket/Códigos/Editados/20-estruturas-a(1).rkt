;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 20-estruturas) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
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
(define-struct entrada (nome cep fone))
(make-entrada 'PedroSilva '05890-001 '606-7771) (newline)

(display "Nome = " ) (entrada-nome  (make-entrada 'PedroSilva '05890-001 '606-7771))
(display "CEP =  " ) (entrada-cep   (make-entrada 'PedroSilva '05890-001 '606-7771))
(define abc                         (make-entrada 'PedroSilva '05890-001 '606-7771))
(display "Fone = " ) (entrada-fone abc)