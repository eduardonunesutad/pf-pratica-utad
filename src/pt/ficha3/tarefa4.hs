------------------------------------------------------------
-- Ficha 3 - Tarefa 4
-- Tema: Filtragem de listas com recursividade explícita
-- Autor: Eduardo Nunes
------------------------------------------------------------

module Tarefa4 where

------------------------------------------------------------
-- Objetivo da tarefa:
--   Reescrever a função "indicativo" usando recursividade
--   explícita, SEM usar a função filter.
--
-- A função deve receber:
--   - uma string com o indicativo (por exemplo "253")
--   - uma lista de números de telefone (strings)
--
-- Deve devolver apenas os números que começam com o indicativo.
------------------------------------------------------------


------------------------------------------------------------
-- Função auxiliar "concorda":
-- Verifica se a primeira string é prefixo da segunda.
--
-- Exemplos:
--   concorda "253" "253116787"  -> True
--   concorda "21"  "213448023"  -> True
--   concorda "93"  "253119905"  -> False
------------------------------------------------------------

concorda :: String -> String -> Bool
concorda [] _          = True               -- Indicativo vazio → é sempre prefixo
concorda _ []          = False              -- Indicativo não pode ser maior que o número
concorda (x:xs) (y:ys) = (x == y) && concorda xs ys



------------------------------------------------------------
-- (1) indicativo :: String -> [String] -> [String]
-- Versão pedida na tarefa: recursiva, sem usar filter.
------------------------------------------------------------

indicativo :: String -> [String] -> [String]
indicativo _ [] = []   -- Lista vazia → nada para selecionar

indicativo ind (t:ts)
    | concorda ind t = t : indicativo ind ts   -- Mantém o número
    | otherwise      =     indicativo ind ts   -- Ignora e continua


------------------------------------------------------------
-- Exemplos de utilização:
--
-- > indicativo "253" ["253116787","213448023","253119905"]
-- ["253116787","253119905"]
--
-- > indicativo "21" ["253116787","213448023","253119905"]
-- ["213448023"]
--
-- > indicativo "93" ["932223333","933119900","253119905"]
-- ["932223333","933119900"]
------------------------------------------------------------
