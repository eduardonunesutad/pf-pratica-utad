------------------------------------------------------------
-- Ficha 2 - Tarefa 6
-- Tema: Listas e Padrões sobre Listas
-- Autor: Eduardo Nunes
------------------------------------------------------------

module Tarefa6 where

------------------------------------------------------------
-- Introdução: Listas em Haskell
------------------------------------------------------------
-- O tipo [a] representa uma lista cujos elementos são do tipo a.
--   []        → lista vazia
--   (x:xs)    → lista cujo primeiro elemento é x e o restante é xs
--
-- Exemplo:
--   [1,2,3]  ≡  1 : (2 : (3 : []))
------------------------------------------------------------

------------------------------------------------------------
-- (1) Função que testa se uma lista é vazia
------------------------------------------------------------

vazia :: [a] -> Bool
vazia [] = True
vazia (_:_) = False

------------------------------------------------------------
-- Versão alternativa usando funções pré-definidas
------------------------------------------------------------
-- Podemos usar a função null, que já existe no Prelude:
--   null :: [a] -> Bool
--   null [] = True
--   null (_:_) = False
------------------------------------------------------------

vaziaAlt :: [a] -> Bool
vaziaAlt xs = null xs

------------------------------------------------------------
-- (2) Função que soma os elementos de uma lista até à 3ª posição
------------------------------------------------------------

soma3 :: [Integer] -> Integer
soma3 [] = 0
soma3 (x:y:z:_) = x + y + z
soma3 (x:y:_) = x + y
soma3 (x:_) = x

------------------------------------------------------------
-- Explicação:
-- A ordem das equações é importante:
-- - O padrão mais específico (3 elementos) vem primeiro.
-- - Caso contrário, Haskell corresponderia primeiro aos padrões
--   mais gerais (como (x:_)), impedindo que os seguintes fossem
--   avaliados.
------------------------------------------------------------

------------------------------------------------------------
-- Versão equivalente usando funções pré-definidas
------------------------------------------------------------
-- take :: Int -> [a] -> [a]   → devolve os primeiros n elementos
-- sum  :: Num a => [a] -> a   → soma todos os elementos da lista
------------------------------------------------------------

soma3Alt :: [Integer] -> Integer
soma3Alt xs = sum (take 3 xs)

------------------------------------------------------------
-- Exemplos de execução:
------------------------------------------------------------
-- > vazia []
-- True
--
-- > vazia [1,2]
-- False
--
-- > soma3 [1,2,3,4,5]
-- 6
--
-- > soma3 [4,9]
-- 13
--
-- > soma3Alt [10,20,30,40]
-- 60
------------------------------------------------------------

------------------------------------------------------------
-- Explicação teórica:
------------------------------------------------------------
-- A função soma3 demonstra o uso de *pattern matching* sobre listas.
-- Em Haskell, os padrões são verificados de cima para baixo.
-- Assim, a ordem das cláusulas determina a prioridade de correspondência.
-- A versão com take e sum mostra como reutilizar funções padrão
-- para simplificar a definição.
------------------------------------------------------------
