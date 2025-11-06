------------------------------------------------------------
-- Ficha 2 - Tarefa 7
-- Tema: Transformações e operações sobre listas
-- Autor: Eduardo Nunes
------------------------------------------------------------

module Tarefa7 where

------------------------------------------------------------
-- (1) Função transf :: [a] -> [a]
------------------------------------------------------------
-- Descrição:
--   Recebe uma lista e:
--   - se a lista tiver 4 ou mais elementos:
--       troca o 1º com o 2º
--       troca o último com o penúltimo
--   - caso contrário, devolve a lista inalterada
--
-- Exemplo:
--   > transf [1,2,3,4,5,6,7]
--   [2,1,3,4,5,7,6]
------------------------------------------------------------

transf :: [a] -> [a]
transf xs
  | length xs < 4 = xs
  | otherwise =
      let (h1 : h2 : meio) = xs
          initList = init meio
          last1 = last meio
          penultimo = last initList
          corpo = take (length meio - 2) meio
       in (h2 : h1 : corpo) ++ [last1, penultimo]

------------------------------------------------------------
-- Versão alternativa mais simples com manipulação direta
------------------------------------------------------------
-- Utiliza funções take e drop para fatiar a lista e recompor
------------------------------------------------------------

transfAlt :: [a] -> [a]
transfAlt xs
  | length xs < 4 = xs
  | otherwise =
      let firstTwo = take 2 xs
          middle = take (length xs - 4) (drop 2 xs)
          lastTwo = drop (length xs - 2) xs
       in [xs !! 1, xs !! 0] ++ middle ++ [xs !! (length xs - 1), xs !! (length xs - 2)]

------------------------------------------------------------
-- Exemplos de teste:
------------------------------------------------------------
-- > transf [1,2,3,4,5,6,7]
-- [2,1,3,4,5,7,6]
--
-- > transf [1,2,3]
-- [1,2,3]
------------------------------------------------------------


------------------------------------------------------------
-- (2) Função somaPares24 :: [(Int,Int)] -> (Int,Int)
------------------------------------------------------------
-- Descrição:
--   Recebe uma lista de pares de inteiros e devolve um novo par
--   com a soma do 2º e do 4º par da lista.
--
-- Exemplo:
--   > somaPares24 [(1,2),(3,4),(5,6),(7,8),(9,10)]
--   (10,12)
------------------------------------------------------------

somaPares24 :: [(Int, Int)] -> (Int, Int)
somaPares24 xs
  | length xs < 4 = error "Lista com menos de 4 pares!"
  | otherwise =
      let segundo = xs !! 1
          quarto = xs !! 3
       in (fst segundo + fst quarto, snd segundo + snd quarto)

------------------------------------------------------------
-- Discussão: Funções Totais vs Parciais
------------------------------------------------------------
-- A função somaPares24 é PARCIAL, pois falha se a lista tiver
-- menos de 4 elementos (gera erro).
-- A função transf é TOTAL, pois cobre todos os casos possíveis.
------------------------------------------------------------

------------------------------------------------------------
-- Exemplos de teste:
------------------------------------------------------------
-- > somaPares24 [(1,2),(3,4),(5,6),(7,8)]
-- (10,12)
--
-- > somaPares24 [(1,2),(3,4)]
-- *** Exception: Lista com menos de 4 pares!
------------------------------------------------------------
