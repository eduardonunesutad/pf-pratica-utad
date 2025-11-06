------------------------------------------------------------
-- Ficha 1 - Tarefa 3
-- Tema: Criação de um módulo simples
-- Objetivo: compreender como definir funções num módulo,
--           carregar o módulo no GHCi e avaliar expressões.
-- Autor: Eduardo Nunes
------------------------------------------------------------

-- Definição do módulo
-- A palavra-chave "module" define o nome do módulo (Teste)
-- A palavra "where" indica o início das definições que pertencem ao módulo
module Teste where

------------------------------------------------------------
-- Função funcao1
------------------------------------------------------------

-- A função funcao1 recebe dois números (x e y)
-- e devolve o resultado da expressão: x + (70 * y)
--
-- Tipo: Int -> Int -> Int
-- Leitura: recebe dois inteiros e devolve um inteiro
funcao1 :: Int -> Int -> Int
funcao1 x y = x + (70 * y)

-- Exemplo:
-- funcao1 3 2
-- Resultado: 3 + (70 * 2) = 143

------------------------------------------------------------
-- Função ex
------------------------------------------------------------

-- A função ex recebe um número inteiro (a)
-- e devolve o resultado de 50 * a
--
-- Tipo: Int -> Int
-- Leitura: recebe um inteiro e devolve um inteiro
ex :: Int -> Int
ex a = 50 * a

-- Exemplo:
-- ex 10
-- Resultado: 500

------------------------------------------------------------
-- Avaliação composta
------------------------------------------------------------

-- Podemos agora avaliar a expressão composta:
-- funcao1 (ex 10) 1
--
-- Passo 1: calcula-se primeiro ex 10 = 50 * 10 = 500
-- Passo 2: a expressão torna-se funcao1 500 1
-- Passo 3: funcao1 500 1 = 500 + (70 * 1) = 570
-- Resultado final: 570

------------------------------------------------------------
-- Testes no GHCi
------------------------------------------------------------

-- :l Teste.hs      -- carrega o módulo
-- :t funcao1       -- mostra o tipo da função funcao1
-- :t ex            -- mostra o tipo da função ex
-- funcao1 (ex 10) 1
-- Resultado esperado: 570

------------------------------------------------------------
-- Conclusão
------------------------------------------------------------

-- Este exercício demonstra:
-- - como declarar um módulo simples em Haskell
-- - como definir múltiplas funções dentro do mesmo módulo
-- - e como compor funções numa única expressão.
--
-- O GHCi verifica automaticamente os tipos das funções e
-- avalia as expressões passo a passo.
------------------------------------------------------------
