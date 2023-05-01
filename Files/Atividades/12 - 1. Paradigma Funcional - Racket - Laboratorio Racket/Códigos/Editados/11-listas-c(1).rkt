;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Setembro - 2021
;; Aluno: João Vítor Fernandes Dias
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2021")                                         (newline)
(display "  Paradigmas de Linguagens de Programação (Prof. Ausberto Castro)") (newline)
(display "  Aluno:  João Vítor Fernandes Dias ")                              (newline) (newline)
; ----------------Descrição do problema---------------------
#|
Utilizando uma ÚNICA linha de comandos,
escreva um NOVO programa Racket para
construir a lista (4 7 2 9 8 7 1 6 2 3 4)
a partir das listas
A= (1 2 3 4) e
B= (5 6 7 8 9) 
|#
; ----------------Definição da lista---------------------
#|
;Descartado por não ter apenas elementos unitários
(define construirLista1 (let ((A (list 1 2 3 4)) (B (list 5 6 7 8 9)))(list(car (reverse A))(car (cdr (cdr B)))(car (cdr A))(reverse (cdr (cdr B)))(car A)(car (cdr B))(cdr A))))
|#
#|
;Comentada por conter comentários
(define construirLista2
  (let ((A (list 1 2 3 4)) (B (list 5 6 7 8 9))) 
    (list
      (car (reverse A))          ;4
      (car (cdr (cdr B)))        ;7
      (car (cdr A))              ;2
      (car (reverse B))          ;9
      (car (cdr (reverse B)))    ;8
      (car (cdr (cdr B)))        ;7
      (car A)                    ;1
      (car (cdr B))              ;6
      (car (cdr A))              ;2
      (car (cdr (reverse A)))    ;3
      (car (reverse A))          ;4
    )
  )
)
|#


(define construirLista3 (let ((A (list 1 2 3 4)) (B (list 5 6 7 8 9)))
    (list
      (car (reverse A))          
      (car (cdr (cdr B)))        
      (car (cdr A))              
      (car (reverse B))          
      (car (cdr (reverse B)))    
      (car (cdr (cdr B)))        
      (car A)                    
      (car (cdr B))              
      (car (cdr A))              
      (car (cdr (reverse A)))    
      (car (reverse A))          
    )
  )
)
; ----------------Testes---------------------
(newline) (display "Lista Objetivo:  ") '(4 7 2 9 8 7 1 6 2 3 4)
 (display "Construir Lista: ") #|construirLista1 construirLista2|#construirLista3