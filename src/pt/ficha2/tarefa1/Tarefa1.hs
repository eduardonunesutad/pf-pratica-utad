------------------------------------------------------------
-- Ficha 2 - Tarefa 1
-- Tema: Definição de funções com múltiplas cláusulas
-- Autor: Eduardo Nunes
------------------------------------------------------------

module Tarefa1 where

------------------------------------------------------------
-- Exemplo de função com múltiplas cláusulas (pattern matching)
--
-- A função f recebe um triplo (Int, Char, Int) e devolve um Int.
-- Cada cláusula define um comportamento diferente consoante o
-- padrão de entrada. A ordem é importante!
------------------------------------------------------------

f :: (Int, Char, Int) -> Int

-- Caso 1: se o segundo elemento for 'a', soma o primeiro e o terceiro.
f (y, 'a', x) = y + x

-- Caso 2: se o segundo elemento for 'b', multiplica o primeiro e o terceiro.
f (z, 'b', x) = z * x

-- Caso geral: aplica-se quando nenhuma das condições anteriores é satisfeita.
f (x, y, z) = x

------------------------------------------------------------
-- Exemplos práticos de execução:
--
-- > f (3, 'a', 5)
-- 8        -- aplica a 1ª cláusula ('a')
--
-- > f (9, 'B', 0)
-- 9        -- 'B' é diferente de 'b', aplica a cláusula geral
--
-- > f (5, 'b', 4)
-- 20       -- aplica a 2ª cláusula ('b')
------------------------------------------------------------

------------------------------------------------------------
-- Explicação teórica
------------------------------------
