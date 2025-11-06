------------------------------------------------------------
-- Ficha 2 - Tarefa 8
-- Tema: Definição de Funções Recursivas sobre Listas
-- Autor: Eduardo Nunes
------------------------------------------------------------

module Tarefa8 where

------------------------------------------------------------
-- Introdução:
------------------------------------------------------------
-- As listas em Haskell são estruturas recursivas definidas por:
--
--   []      → lista vazia
--   (x:xs)  → lista cujo primeiro elemento é x e a cauda é xs
--
-- Assim, a maioria das funções sobre listas pode ser definida
-- de forma recursiva, considerando dois casos:
--   1. Caso base (lista vazia)
--   2. Caso recursivo (lista não vazia)
------------------------------------------------------------


------------------------------------------------------------
-- (1a) Produto de todos os elementos de uma lista
------------------------------------------------------------
-- Exemplo:
--   > produto [2,3,4]
--   24
------------------------------------------------------------

produto :: Num a => [a] -> a
produto [] = 1
produto (x:xs) = x * produto xs


------------------------------------------------------------
-- (1b) Inserir um elemento no fim da lista
------------------------------------------------------------
-- Exemplo:
--   > inserirFim [1,2,3] 4
--   [1,2,3,4]
------------------------------------------------------------

inserirFim :: [a] -> a -> [a]
inserirFim [] y = [y]
inserirFim (x:xs) y = x : inserirFim xs y


------------------------------------------------------------
-- (1c) Concatenar duas listas
------------------------------------------------------------
-- Exemplo:
--   > concatListas [1,2] [3,4,5]
--   [1,2,3,4,5]
------------------------------------------------------------

concatListas :: [a] -> [a] -> [a]
concatListas [] ys = ys
concatListas (x:xs) ys = x : concatListas xs ys


------------------------------------------------------------
-- (1d) Média dos elementos de uma lista
------------------------------------------------------------
-- Exemplo:
--   > media [1,2,3,4]
--   2.5
------------------------------------------------------------

media :: [Int] -> Float
media [] = 0
media l =
  let s = soma l
      c = comprimento l
   in fromIntegral s / fromIntegral c

-- Funções auxiliares definidas recursivamente:
soma :: [Int] -> Int
soma [] = 0
soma (h:t) = h + soma t

comprimento :: [a] -> Int
comprimento [] = 0
comprimento (_:t) = 1 + comprimento t


------------------------------------------------------------
-- Explicação:
------------------------------------------------------------
-- A função 'media' percorre a lista duas vezes — uma para somar,
-- outra para contar. Isso é ineficiente mas suficiente didaticamente.
-- Em aulas seguintes pode-se otimizar usando foldr ou acumulação.
------------------------------------------------------------


------------------------------------------------------------
-- Exemplos de execução:
------------------------------------------------------------
-- > produto [2,3,4]
-- 24
--
-- > inserirFim [10,20,30] 40
-- [10,20,30,40]
--
-- > concatListas [1,2,3] [4,5]
-- [1,2,3,4,5]
--
-- > media [5,10,15]
-- 10.0
------------------------------------------------------------
