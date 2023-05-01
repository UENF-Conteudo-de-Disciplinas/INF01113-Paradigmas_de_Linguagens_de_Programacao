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
#|
  24.	O que faz o seguinte procedimento abcd
  (
    define abcd
    (lambda (n)
    (let f ((i 2))
    (cond
    ((>= i n) '())
    ((integer? (/ n i))
    (cons i (f (+ i 1))))
    (else (f (+ i 1))))))
  )
|#
;; ------------- Indentando e comentando a operação ----------------

(define abcd
  (lambda (n)                     ;recebe um valor n
    (let f ((i 2))                ;dentro desse escopo torna o valor i igual a 2 
                                  ;Porém não sei qual a função do f nesse contexto
                                  ;(
                                  ;  Após rodar o código, entendi que o é uma função que está 
                                  ;  sendo definida e está sendo utilizada na recursão, 
                                  ;  utilizando o i como contador que vai de 2 a n, porém, 
                                  ;  ainda não entendi de que forma este f está sendo definido
                                  ;)
      (cond                       ;ocorre uma condicional
        ((>= i n) '())            ;caso i (que equivale a 2) seja maior ou igual ao valor
                                  ;recebido, retorna uma lista vazia
        ((integer? (/ n i))       ;caso n/i seja inteiro,
          (cons i (f (+ i 1)))    ;cria um par contendo i e o resultado de uma função f
        )                         ;que envia como parâmetro o valor i+1
        (else (f (+ i 1)))        ;caso não seja nenhuma  das situações acima, chama a função f
      )                           ;que envia como parâmetro o valor i+1
    )
  )
)

#|  ;Aprenas indentando
(define abcd
  (lambda (n)
    (let f ((i 2))
      (cond
        ((>= i n) '())
        ((integer? (/ n i)) (cons i (f (+ i 1))))
        (else (f (+ i 1)))
      )
    )
  )
)
|#
#|
 recebe um valor n
 dentro desse escopo torna o valor i igual a 2 
 Porém não sei qual a função do f nesse contexto
 (
   Após rodar o código, entendi que o é uma função que está 
   sendo definida e está sendo utilizada na recursão, utilizando
   o i como contador que vai de 2 a n, porém, ainda não entendi
   de que forma este f está sendo definido
 )
 ocorre uma condicional
 caso i (que equivale a 2) seja maior ou igual ao valor
 recebido, retorna uma lista vazia
 caso n/i seja inteiro,
 cria um par contendo i e o resultado de uma função f
 que envia como parâmetro o valor i+1
 caso não seja nenhuma  das situações acima, chama a função f
 que envia como parâmetro o valor i+1

|#
;--------------------------------------
;--------  Executando ... -------------
;--------------------------------------
(display "n=1: ")     (abcd 1)
(display "n=2: ")     (abcd 2)
(display "n=3: ")     (abcd 3)
(display "n=4: ")     (abcd 4)
(display "n=5: ")     (abcd 5)
(display "n=6: ")     (abcd 6)
(display "n=7: ")     (abcd 7)
(display "n=8: ")     (abcd 8)
(display "n=9: ")     (abcd 9)
(display "n=10: ")     (abcd 10)