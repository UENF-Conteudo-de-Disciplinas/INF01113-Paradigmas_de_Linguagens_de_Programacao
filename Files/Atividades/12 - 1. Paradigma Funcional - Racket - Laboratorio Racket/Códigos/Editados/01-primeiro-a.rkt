;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 01-primeiro-a) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; Introdução à Linguagem Racket (Scheme)
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2021
;; Aluno: João Vítor Fernandes Dias
;; Liguagem Advanced Student
;; define a linguagem default
;; O primeiro programa Racket
;; ---------------------------------------------------
(begin          ;Inicia o código/ definindo um escopo global/
  (newline)     ;Pula uma linha no texto apresentado
  (display "Bom dia, UENF. Bem vindo à Linguagem Racket-Scheme! 2021") ;<------ mostrar na tela
  (newline))    ;Pula para a linha seguinte ao texto impresso na tela