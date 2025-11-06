------------------------------------------------------------
-- Ficha 1 - Tarefa 2
-- Tema: Inferência e verificação de tipos
-- Objetivo: compreender como o GHCi infere automaticamente
--           o tipo de uma expressão e como o sistema de tipos
--           evita erros de execução.
-- Autor: Eduardo Nunes
------------------------------------------------------------

-- Introdução:
-- O Haskell possui um sistema de tipos forte e estático.
-- Forte: não permite aplicar operações a tipos incompatíveis.
-- Estático: todos os tipos são verificados antes da execução.
--
-- A inferência de tipos permite que o compilador deduza automaticamente
-- o tipo de uma expressão sem necessidade de o programador o indicar.
--
-- Podemos usar o comando :t no GHCi para consultar o tipo de qualquer expressão.

------------------------------------------------------------
-- Exemplos de inferência de tipos
------------------------------------------------------------

-- Para testar no GHCi, ativa a opção de mostrar tipos:
-- :set +t

ex1 = 3
-- :t ex1
-- ex1 :: Num a => a
-- O Haskell infere que é um número genérico (classe Num), não necessariamente Int.

ex2 = 3.5
-- :t ex2
-- ex2 :: Fractional a => a
-- Neste caso, é um número fracionário (pode ser Float ou Double).

ex3 = True
-- :t ex3
-- ex3 :: Bool

ex4 = 'a'
-- :t ex4
-- ex4 :: Char

ex5 = "Haskell"
-- :t ex5
-- ex5 :: [Char]
-- Equivalente ao tipo String (definido como sinónimo de [Char]).

ex6 = [1, 2, 3, 4]
-- :t ex6
-- ex6 :: Num a => [a]

ex7 = (3, "ola", True)
-- :t ex7
-- ex7 :: Num a => (a, [Char], Bool)
-- Note-se que o primeiro elemento é numérico genérico (Num a).

------------------------------------------------------------
-- Exercício prático
------------------------------------------------------------

-- No GHCi, execute e observe:
-- :t (4, 'a')
-- :t [1,2,3,4]
-- :t ('a','b','c')
-- :t ["ola","mundo"]
-- :t (fst (3,5))
-- :t (snd (3,5))

-- Depois, tente criar expressões inválidas para ver os erros:
-- [1,2,'a']          -- ERRO: lista com tipos mistos (Int e Char)
-- (3,4,5) + (2,3,1)  -- ERRO: (+) não está definido para tuplos
-- "abc" - "a"        -- ERRO: (-) não é aplicável a Strings

------------------------------------------------------------
-- Conclusão
------------------------------------------------------------

-- O Haskell infere automaticamente o tipo mais genérico possível.
-- As classes de tipos (Num, Fractional, Ord, Eq, etc.) agrupam comportamentos.
-- O sistema de tipos ajuda a detetar erros antes da execução.
-- É fundamental utilizar o comando :t para compreender e testar expressões.

-- Exercício final para reflexão:
-- Por que razão o GHCi indica “Num a => a” e não “Int” em ex1?
-- Resposta: porque o compilador apenas sabe que ‘3’ é numérico,
-- mas não precisa fixar o tipo concreto (Int, Float, Double, etc.)
-- até ser necessário em contexto.
