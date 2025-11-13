------------------------------------------------------------
-- Ficha 3 - Tarefa 1
-- Tema: Mapeamento (map) sobre listas
-- Autor: Eduardo Nunes
------------------------------------------------------------

module Tarefa1 where

------------------------------------------------------------
-- Nesta tarefa vamos implementar manualmente algumas
-- funções de mapeamento. O objetivo é aplicar uma
-- transformação a todos os elementos de uma lista.
--
-- Importante:
--   - mapeamento percorre toda a lista
--   - devolve uma lista com a MESMA dimensão
--   - a ordem dos elementos mantém-se
------------------------------------------------------------



------------------------------------------------------------
-- (1) dobrarLista :: [Int] -> [Int]
------------------------------------------------------------
-- Recebe uma lista de inteiros e duplica cada elemento.
--
-- Exemplo:
--   > dobrarLista [1,2,3]
--   [2,4,6]
------------------------------------------------------------

dobrarLista :: [Int] -> [Int]
dobrarLista []     = []                     -- lista vazia → resultado vazio
dobrarLista (x:xs) = (2 * x) : dobrarLista xs
-- Explicação:
--   - "x" é o primeiro elemento
--   - "xs" é o resto da lista
--   - devolvemos (2*x) seguido do mapeamento sobre xs



------------------------------------------------------------
-- (2) tamanhoStrings :: [String] -> [Int]
------------------------------------------------------------
-- Recebe uma lista de strings e devolve uma lista com os 
-- respetivos tamanhos.
--
-- Exemplo:
--   > tamanhoStrings ["ola","abc","UTAD"]
--   [3,3,4]
------------------------------------------------------------

tamanhoStrings :: [String] -> [Int]
tamanhoStrings []     = []
tamanhoStrings (s:ss) = length s : tamanhoStrings ss
-- length devolve o número de caracteres da string



------------------------------------------------------------
-- (3) booleanosImpar :: [Int] -> [Bool]
------------------------------------------------------------
-- Recebe uma lista de inteiros e devolve uma lista de
-- booleanos, onde cada valor indica se o número é ímpar.
--
-- Exemplo:
--   > booleanosImpar [1,2,3,4]
--   [True, False, True, False]
------------------------------------------------------------

booleanosImpar :: [Int] -> [Bool]
booleanosImpar []     = []
booleanosImpar (x:xs) = odd x : booleanosImpar xs
-- odd verifica se um número é ímpar



------------------------------------------------------------
-- (4) primeirasLetras :: [String] -> [Char]
------------------------------------------------------------
-- Recebe uma lista de palavras e devolve a primeira letra
-- de cada uma.
--
-- Exemplo:
--   > primeirasLetras ["gato","sol","lua"]
--   "gsl"
--
-- OBS: Em Haskell, uma String é uma lista de Char,
--      portanto "gsl" é equivalente a ['g','s','l'].
------------------------------------------------------------

primeirasLetras :: [String] -> [Char]
primeirasLetras [] = []
primeirasLetras (p:ps)
  | null p    = primeirasLetras ps    -- ignora strings vazias
  | otherwise = head p : primeirasLetras ps



------------------------------------------------------------
-- Resumo:
--  - Todas as funções seguem o mesmo padrão de mapeamento.
--  - A ideia é SEMPRE aplicar uma transformação ao primeiro
--    elemento e continuar recursivamente com o resto.
------------------------------------------------------------
