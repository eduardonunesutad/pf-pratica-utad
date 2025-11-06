------------------------------------------------------------
-- Ficha 2 - Tarefa 3
-- Tema: Definições com Guards e funções recursivas
-- Autor: Eduardo Nunes
------------------------------------------------------------

module Tarefa3 where

------------------------------------------------------------
-- (1) Versão da função opp com guards
------------------------------------------------------------
-- Reutilizamos a função da tarefa anterior, mas agora
-- escrita de forma mais clara com guards.

oppGuards :: (Int, (Int, Int)) -> Int
oppGuards (n, (x, y))
  | n == 1 = x + y
  | n == 2 = x - y
  | otherwise = 0

-- Exemplos:
-- > oppGuards (1, (2, 3)) → 5
-- > oppGuards (2, (5, 1)) → 4
-- > oppGuards (7, (5, 1)) → 0
------------------------------------------------------------

------------------------------------------------------------
-- (2) Definição da função fact (versão com if)
------------------------------------------------------------

-- Esta é a forma tradicional com if-then-else:
factIf :: Int -> Int
factIf n =
    if n == 0
        then 1
    else n * factIf (n - 1)

------------------------------------------------------------
-- (3) Definição equivalente com múltiplas cláusulas
------------------------------------------------------------

factPM :: Int -> Int
factPM 0 = 1
factPM n = n * factPM (n - 1)

------------------------------------------------------------
-- (4) Comportamento da função fact
------------------------------------------------------------
-- A função fact só está bem definida para n ≥ 0.
-- Se aplicarmos um número negativo, a recursão nunca termina:
--
-- > factPM (-1)
-- chamará factPM (-2), factPM (-3), e assim sucessivamente,
-- entrando num ciclo infinito (stack overflow).
------------------------------------------------------------

------------------------------------------------------------
-- (5) Versão completa da função fact com guards
------------------------------------------------------------

-- Esta versão garante que a função é "completa":
--  - Define o caso base (n == 0)
--  - Define o caso recursivo (n > 0)
--  - Define o comportamento para negativos
------------------------------------------------------------

factGuards :: Int -> Int
factGuards n
  | n < 0 = error "Erro: o fatorial não está definido para números negativos."
  | n == 0 = 1
  | otherwise = n * factGuards (n - 1)

------------------------------------------------------------
-- Exemplos de execução:
------------------------------------------------------------
-- > factGuards 0     → 1
-- > factGuards 5     → 120
-- > factGuards (-3)  → Erro
------------------------------------------------------------

------------------------------------------------------------
-- Explicação teórica:
------------------------------------------------------------
-- 1. O caso base (n == 0) impede a recursão infinita.
-- 2. O caso recursivo (n > 0) multiplica n pelo fatorial de (n-1).
-- 3. O caso negativo é tratado explicitamente com um erro controlado.
--
-- As guards (|) permitem definir condições de forma mais clara e
-- substituir estruturas if-then-else.
------------------------------------------------------------
