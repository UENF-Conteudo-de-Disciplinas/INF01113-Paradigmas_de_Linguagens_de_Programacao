;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Setembro - 2021
;; Aluno: João Vítor Fernandes Dias
;;   Escolha a linguagem R5RS
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2021")                                         (newline)
(display "  Paradigmas de Linguagens de Programação (Prof. Ausberto Castro)") (newline)
(display "  Aluno:  João Vítor Fernandes Dias ")                              (newline)
;; DEFINICAO DE FUNCOES-procedimentos  usando lambda
;;  (define  NomeFuncao  (lambda  ( parametros )  (definicao) ) )
;;---------------------------------------------------
;Execute o programa e explique o que faz:
#|
  A Função "ADICIONA" recebe o valor de duas variáveis x e y,
  imprime na tela a soma dos dois valores.
|#
(define ADICIONA (lambda  (a  b) (+ a b ) ) )
;;---------------------------------------------
#|
  A Função "soma" recebe o valor de duas variáveis x e y,
  imprime na tela a soma dos dois valores (porém, com alguns textos demonstrativos extras).
|#
(define soma
  (lambda (x y) 
    (begin
      (newline)
      (display "A soma de ")
      (display x)
      (display " e ")
      (display y)
      (display " = ")
      (+ x y)
    )
  )
)

;;---------------------------------------------
#|
  A Função "produto" recebe o valor de duas variáveis x e y,
  imprime na tela a soma dos dois valores (embora o nome da função indique uma operação
  diferente (Não sei se eu deveria alterar a operação para que ela faça o que diz de fato))
|#
(define produto
  (lambda (x y)
    (begin
      (newline)
      (display "O produto de ") (display x) (display " e ") (display y)
      (display " = ")
      (+ x y)
    )
  )
)
;;---------------------------------------------
(define divisao
  (lambda (x y) 
    (begin
      (newline)
      (display "A divisao =  ")
      (+ x y)
    )
  )
)
#|
  A Função "divisao" recebe o valor de duas variáveis x e y,
  imprime na tela a soma dos dois valores (embora o nome da função indique uma operação
  diferente (Não sei se eu deveria alterar a operação para que ela faça o que diz de fato))
|#

;;---------------------------------------------
#|
  A Função "diferenca" recebe o valor de duas variáveis x e y,
  imprime na tela a soma dos dois valores (embora o nome da função indique uma operação
  diferente (Não sei se eu deveria alterar a operação para que ela faça o que diz de fato))
|#
(define diferenca
  (lambda (x y) 
    (begin
      (newline)
      (display "A diferenca =  ")
      (+ x y)
    )
  )
)
;;---------------------------------------------
#|
  A Função "quadrado" recebe o valor de uma variável a,
  imprime na tela o produto de a com a, ou seja, eleva a ao quadrado.
|#
(define quadrado
  (lambda ( a )
    (newline)
    (display "O quadrado =  ")
    ( * a a)
  )
)
;;---------------------------------------------

;;----------- Executando funcoes --------------
#|
  Nessa seção são feitos alguns testes de valores nas funções
|#

(ADICIONA   25  15)
(ADICIONA   30  40)

(soma       45  32)
(produto    21  15)
(divisao    420  7)
(diferenca  89  35)
(quadrado   09)