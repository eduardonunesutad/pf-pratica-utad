------------------------------------------------------------
-- Ficha 2 - Tarefa 4
-- Tema: Função Fibonacci usando Guards
-- Autor: Eduardo Nunes
------------------------------------------------------------

module Tarefa4 where

------------------------------------------------------------
-- Definição matemática da sequência de Fibonacci:
--   fib(0) = 0
--   fib(1) = 1
--   fib(n) = fib(n-1) + fib(n-2), para n ≥ 2
--
-- Cada número da sequência é a soma dos dois anteriores.
------------------------------------------------------------

------------------------------------------------------------
-- Implementação em Haskell usando guards
------------------------------------------------------------

fib :: Int -> Int
fib n
  | n < 0 = error "Erro: Fibonacci não está definido para números negativos."
  | n == 0 = 0
  | n == 1 = 1
  | otherwise = fib (n - 1) + fib (n - 2)

------------------------------------------------------------
-- Exemplos de execução:
------------------------------------------------------------
-- > fib 0
-- 0
--
-- > fib 1
-- 1
--
-- > fib 5
-- fib 5 = fib 4 + fib 3
--        = (fib 3 + fib 2) + (fib 2 + fib 1)
--        = 5
--
-- > map fib [0..10]
-- [0,1,1,2,3,5,8,13,21,34,55]
------------------------------------------------------------

------------------------------------------------------------
-- Explicação teórica:
------------------------------------------------------------
-- 1. O caso base é definido para n = 0 e n = 1.
-- 2. O caso recursivo soma os dois resultados anteriores.
-- 3. A verificação para n < 0 impede chamadas inválidas.
-- 4. O cálculo é recursivo e tem complexidade exponencial
--    (poderá ser otimizado mais à frente com acumulação).
------------------------------------------------------------
