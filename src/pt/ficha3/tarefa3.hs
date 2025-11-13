------------------------------------------------------------
-- Ficha 3 - Tarefa 3
-- Tema: Reescrita de funções usando map e filter
-- Autor: Eduardo Nunes
------------------------------------------------------------

module Tarefa3 where

------------------------------------------------------------
-- Nesta tarefa vamos reescrever as funções da Secção 1,
-- agora usando apenas map e filter.
--
-- Vantagem:
--   Código mais conciso, mais legível e mais funcional.
------------------------------------------------------------


------------------------------------------------------------
-- (1) dobros :: [Int] -> [Int]
-- Versão original: recursiva
-- Versão nova: usando map
------------------------------------------------------------

dobros_v2 :: [Int] -> [Int]
dobros_v2 xs = map (\x -> 2 * x) xs
-- ou: map (*2) xs



------------------------------------------------------------
-- (2) impares :: [Int] -> [Bool]
-- Versão original: recursiva
-- Versão nova: usando map
------------------------------------------------------------

impares_v2 :: [Int] -> [Bool]
impares_v2 xs = map odd xs
-- odd devolve True para números ímpares



------------------------------------------------------------
-- (3) umaouduasletras :: [String] -> [String]
-- Mantém as strings com tamanho <= 2
-- Versão nova: usando filter
------------------------------------------------------------

umaouduasletras_v2 :: [String] -> [String]
umaouduasletras_v2 xs = filter (\s -> length s <= 2) xs



------------------------------------------------------------
-- (4) filtra_impares :: [Int] -> [Int]
-- Mantém apenas os números ímpares
-- Versão nova: usando filter
------------------------------------------------------------

filtra_impares_v2 :: [Int] -> [Int]
filtra_impares_v2 xs = filter odd xs



------------------------------------------------------------
-- Exemplos de uso no GHCi:
--
-- > dobros_v2 [1,2,3]
-- [2,4,6]
--
-- > impares_v2 [1,2,3,4]
-- [True,False,True,False]
--
-- > umaouduasletras_v2 ["a","ola","eu","ok","porto"]
-- ["a","eu","ok"]
--
-- > filtra_impares_v2 [1,2,3,4,5]
-- [1,3,5]
------------------------------------------------------------
