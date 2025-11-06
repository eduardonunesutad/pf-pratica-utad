------------------------------------------------------------
-- Ficha 2 - Tarefa 9
-- Tema: Funções recursivas eficientes sobre listas
-- Autor: Eduardo Nunes
------------------------------------------------------------

module Tarefa9 where

------------------------------------------------------------
-- (1) somaComp :: [Int] -> (Int, Int)
------------------------------------------------------------
-- Calcula simultaneamente:
--   - o comprimento da lista
--   - a soma dos seus elementos
-- percorrendo a lista apenas uma vez.
--
-- Exemplo:
--   > somaComp [2,4,6]
--   (3,12)
------------------------------------------------------------

somaComp :: [Int] -> (Int, Int)
somaComp [] = (0, 0)
somaComp (x:xs) =
  let (n, s) = somaComp xs
   in (n + 1, s + x)

------------------------------------------------------------
-- (2) médiaLista :: [Int] -> Float
------------------------------------------------------------
-- Calcula a média dos elementos de uma lista utilizando
-- a função somaComp definida acima.
--
-- Exemplo:
--   > mediaLista [2,4,6]
--   4.0
------------------------------------------------------------

mediaLista :: [Int] -> Float
mediaLista [] = 0
mediaLista xs =
  let (n, s) = somaComp xs
   in fromIntegral s / fromIntegral n

------------------------------------------------------------
-- Observação:
-- - Ambas as funções percorrem a lista uma única vez.
-- - Evita a ineficiência de calcular sum e length separadamente.
------------------------------------------------------------
