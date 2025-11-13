------------------------------------------------------------
-- Ficha 3 - Parte 2
-- Tema: As funções map e filter
-- Autor: Eduardo Nunes
--
-- Este ficheiro contém explicações teóricas sobre as funções
-- de ordem superior map e filter, com exemplos simples.
------------------------------------------------------------


------------------------------------------------------------
-- 1. O que são funções de ordem superior?
------------------------------------------------------------
-- Em Haskell, uma função de ordem superior é uma função que:
--   - recebe outra função como argumento, e/ou
--   - devolve uma função como resultado.
--
-- As funções map e filter são exemplos clássicos:
--   - map aplica uma função a todos os elementos de uma lista
--   - filter seleciona apenas os elementos que satisfazem um predicado
------------------------------------------------------------


------------------------------------------------------------
-- 2. Definição da função map
------------------------------------------------------------
-- Tipo:
--   map :: (a -> b) -> [a] -> [b]
--
-- Explicação:
--   - Recebe uma função f :: a -> b
--   - Recebe uma lista de valores do tipo [a]
--   - Aplica f a cada elemento e devolve uma lista do tipo [b]
--
-- Implementação recursiva (como existe no Prelude):
------------------------------------------------------------

map' :: (a -> b) -> [a] -> [b]
map' f []     = []
map' f (x:xs) = (f x) : map' f xs

-- Leitura:
--   - Caso base: map' f [] = lista vazia
--   - Caso recursivo: aplica f ao primeiro elemento (x)
--                     e junta ao resultado de map' f xs
--
-- Exemplo:
--   map' (*2) [1,2,3]   -> [2,4,6]
------------------------------------------------------------


------------------------------------------------------------
-- 3. Definição da função filter
------------------------------------------------------------
-- Tipo:
--   filter :: (a -> Bool) -> [a] -> [a]
--
-- Explicação:
--   - Recebe um predicado p :: a -> Bool
--   - Recebe uma lista [a]
--   - Seleciona apenas os elementos para os quais p devolve True
--
-- Implementação recursiva (como existe no Prelude):
------------------------------------------------------------

filter' :: (a -> Bool) -> [a] -> [a]
filter' p [] = []
filter' p (x:xs)
    | p x       = x : filter' p xs   -- mantém x
    | otherwise =     filter' p xs   -- ignora x

-- Exemplo:
--   filter' odd [1,2,3,4,5]  -> [1,3,5]
------------------------------------------------------------


------------------------------------------------------------
-- 4. Explicação prática
------------------------------------------------------------
-- (map f l)
--   Aplica a função f a todos os elementos da lista l.
--   O tamanho da lista resultante é igual ao da lista original.
--
-- Exemplo:
--   map (*3) [2,5,1]  -> [6,15,3]
--
--
-- (filter p l)
--   Filtra os elementos mantendo apenas aqueles para os quais
--   o predicado p devolve True.
--   A lista resultante pode ser mais pequena.
--
-- Exemplo:
--   filter (>2) [1,4,2,7] -> [4,7]
------------------------------------------------------------


------------------------------------------------------------
-- 5. map e filter permitem definir funções de forma simples
------------------------------------------------------------
-- Exemplo: a função dobros (Secção 1 da ficha)
--
-- Forma recursiva (mais longa):
--
--   dobros []     = []
--   dobros (x:xs) = (2*x) : dobros xs
--
-- Forma usando map (mais simples e expressiva):
------------------------------------------------------------

dobros :: [Int] -> [Int]
dobros = map (2*)

-- Leitura:
--   (2*) é uma função que duplica um número.
------------------------------------------------------------


------------------------------------------------------------
-- Resumo Final:
--
-- map    → transforma todos os elementos de uma lista
-- filter → seleciona alguns elementos da lista
--
-- Ambos seguem padrões recursivos muito comuns e permitem
-- escrever código mais curto, mais claro e mais funcional.
------------------------------------------------------------
