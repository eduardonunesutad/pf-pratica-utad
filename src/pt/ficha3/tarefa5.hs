------------------------------------------------------------
-- Ficha 3 - Tarefa 5
-- Tema: Recursividade explícita (sem map)
-- Autor: Eduardo Nunes
------------------------------------------------------------

module Tarefa5 where

------------------------------------------------------------
-- Objetivo da tarefa:
--   Reescrever a função "abrev" sem usar 'map', ou seja,
--   percorrendo a lista de nomes manualmente com recursão.
--
-- A função deve converter:
--   ["João Silva", "Ana Maria Oliveira"]
-- em:
--   ["J. Silva", "A. Oliveira"]
--
-- Regras:
--   - Se o nome tiver apenas uma palavra → devolve o nome tal como está
--   - Caso tenha mais do que uma palavra:
--         abreviatura = primeira inicial + ". " + último apelido
------------------------------------------------------------


------------------------------------------------------------
-- Função auxiliar conv :: String -> String
-- Recebe um nome completo e devolve a versão abreviada.
------------------------------------------------------------

conv :: String -> String
conv nom =
    let partes = words nom     -- Divide o nome em palavras
    in if length partes > 1
          then head (head partes) : ". " ++ last partes
          else nom             -- Nome com apenas 1 palavra → fica igual



------------------------------------------------------------
-- Função principal abrev :: [String] -> [String]
-- Reescrita com recursividade explícita (sem map).
------------------------------------------------------------

abrev :: [String] -> [String]
abrev []     = []          -- Caso base: lista vazia
abrev (x:xs) = conv x : abrev xs
-- Aplica conv ao primeiro nome e continua recursivamente
-- com o resto da lista.


------------------------------------------------------------
-- Exemplos de utilização:
--
-- > abrev ["João Silva", "Ana Maria Oliveira"]
-- ["J. Silva","A. Oliveira"]
--
-- > abrev ["Lucas"]
-- ["Lucas"]
--
-- > abrev ["Maria João Souza","Rita Costa"]
-- ["M. Souza","R. Costa"]
------------------------------------------------------------
