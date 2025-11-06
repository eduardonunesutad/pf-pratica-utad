------------------------------------------------------------
-- Ficha 2 - Tarefa 10
-- Tema: Manipulação avançada de listas
-- Autor: Eduardo Nunes
------------------------------------------------------------

module Tarefa10 where
import Tarefa9 (mediaLista)

------------------------------------------------------------
-- (1) divideLista :: [a] -> ([a], [a])
------------------------------------------------------------
-- Divide uma lista em duas partes com o mesmo número
-- de elementos (ou diferença de 1 se ímpar).
--
-- Exemplo:
--   > divideLista [1,2,3,4,5,6]
--   ([1,2,3],[4,5,6])
------------------------------------------------------------

divideLista :: [a] -> ([a], [a])
divideLista xs =
  let metade = length xs `div` 2
   in splitAt metade xs

------------------------------------------------------------
-- (2) separaPorValor :: Ord a => [a] -> a -> ([a], [a])
------------------------------------------------------------
-- Separa os elementos em dois grupos:
--   - os menores ou iguais ao valor
--   - os maiores
--
-- Exemplo:
--   > separaPorValor [2,5,1,7,4] 4
--   ([2,1,4],[5,7])
------------------------------------------------------------

separaPorValor :: Ord a => [a] -> a -> ([a], [a])
separaPorValor [] _ = ([], [])
separaPorValor (x:xs) v =
  let (menores, maiores) = separaPorValor xs v
   in if x <= v then (x:menores, maiores)
                else (menores, x:maiores)

------------------------------------------------------------
-- (3) acimaMedia :: [Int] -> [Int]
------------------------------------------------------------
-- Retorna apenas os elementos que são superiores à média.
--
-- Exemplo:
--   > acimaMedia [1,3,5,7,9]
--   [7,9]
------------------------------------------------------------

acimaMedia :: [Int] -> [Int]
acimaMedia [] = []
acimaMedia xs =
  let m = mediaLista xs
   in [x | x <- xs, fromIntegral x > m]

------------------------------------------------------------
-- Explicação:
--  - divideLista usa splitAt, uma função padrão.
--  - separaPorValor é recursiva e usa pattern matching.
--  - acimaMedia combina compreensão de listas com a média.
------------------------------------------------------------
