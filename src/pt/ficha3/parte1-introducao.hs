------------------------------------------------------------
-- Ficha 3 - Parte 1
-- Introdução a: Mapeamento, Filtragem e Folding sobre Listas
-- Autor: Eduardo Nunes
-- Este ficheiro contém apenas explicações e exemplos simples.
------------------------------------------------------------

------------------------------------------------------------
-- MAPEAMENTO (map)
------------------------------------------------------------
-- O mapeamento consiste em aplicar uma função a TODOS os 
-- elementos de uma lista, devolvendo outra lista com a
-- mesma dimensão.
--
-- Ou seja: transforma cada elemento individualmente.
--
-- Exemplo conceptual:
--   [1,2,3]  -- lista original
--   aplicar (*)2  → [2,4,6]
--
-- Equivalente ao que 'map' faz:
--   map (*2) [1,2,3] → [2,4,6]
------------------------------------------------------------

-- Exemplo implementado manualmente (sem usar map):
dobros :: [Int] -> [Int]
dobros []     = []
dobros (x:xs) = (2 * x) : dobros xs


------------------------------------------------------------
-- FILTRAGEM (filter)
------------------------------------------------------------
-- A filtragem selecciona apenas os elementos que satisfazem 
-- uma certa condição (predicado).
--
-- Exemplo conceptual:
--   Filtrar apenas os números ímpares:
--     [1,2,3,4,5] → [1,3,5]
--
-- Equivalente ao que 'filter' faz:
--   filter odd [1,2,3,4,5] → [1,3,5]
------------------------------------------------------------

-- Exemplo implementado manualmente (sem usar filter):
filtraImpares :: [Int] -> [Int]
filtraImpares [] = []
filtraImpares (x:xs)
  | odd x     = x : filtraImpares xs
  | otherwise = filtraImpares xs


------------------------------------------------------------
-- FOLDING (foldr, foldl)
------------------------------------------------------------
-- O "folding" reduz uma lista a um ÚNICO valor.
--
-- A ideia é aplicar uma operação repetidamente acumulando 
-- um resultado.
--
-- Exemplos típicos:
--   Somar todos os elementos da lista
--   Multiplicar todos os elementos
--   Contar elementos
--   Concatenar strings
--
-- É um padrão muito poderoso em programação funcional.
--
-- Comportamento conceptual:
--   fold → pega na lista e "dobra-a" num acumulador.
--
-- Exemplo:
--   foldr (+) 0 [1,2,3,4]
--   ((((0 + 4) + 3) + 2) + 1) = 10
------------------------------------------------------------

-- Implementação manual de soma (sem usar fold):
somaLista :: [Int] -> Int
somaLista []     = 0
somaLista (x:xs) = x + somaLista xs

-- Implementação manual de produto (sem usar fold):
produtoLista :: [Int] -> Int
produtoLista []     = 1
produtoLista (x:xs) = x * produtoLista xs


------------------------------------------------------------
-- RESUMO RÁPIDO DOS CONCEITOS
------------------------------------------------------------
-- MAPEAMENTO:
--   - transforma cada elemento da lista individualmente
--   - mantém o mesmo tamanho
--   - função típica: map
--
-- FILTRAGEM:
--   - selecciona apenas alguns elementos
--   - pode reduzir o tamanho da lista
--   - função típica: filter
--
-- FOLDING:
--   - reduz toda a lista a um único valor
--   - função típica: foldr, foldl
--
-- Estes três padrões aparecem em quase todos os programas
-- funcionais e são essenciais para escrever código limpo
-- e expressivo em Haskell.
------------------------------------------------------------
