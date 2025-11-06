------------------------------------------------------------
-- Ficha 2 - Tarefa 5
-- Tema: Definições locais (let...in / where)
-- Autor: Eduardo Nunes
------------------------------------------------------------

module Tarefa5 where

------------------------------------------------------------
-- Introdução: Definições Locais
------------------------------------------------------------
-- Em Haskell, podemos definir variáveis locais dentro de uma função
-- usando:
--
--   let ... in ...    (escopo limitado à expressão após "in")
--   where ...         (escopo visível apenas dentro da função)
--
-- Ambas as abordagens servem para tornar o código mais legível e
-- evitar repetições de expressões.
------------------------------------------------------------

------------------------------------------------------------
-- Exemplos equivalentes de divisão com resto:
------------------------------------------------------------

-- (1) Definição simples
dividir1 :: Int -> Int -> (Int, Int)
dividir1 x y = (div x y, mod x y)

-- (2) Usando let ... in
dividir2 :: Int -> Int -> (Int, Int)
dividir2 x y =
  let q = div x y
      r = mod x y
   in (q, r)

-- (3) Usando where
dividir3 :: Int -> Int -> (Int, Int)
dividir3 x y = (quociente, resto)
  where
    quociente = x `div` y
    resto = mod x y

------------------------------------------------------------
-- Tarefa 5.1 — Análise e teste da função exemplo
------------------------------------------------------------
-- A função exemplo demonstra o uso combinado de let e where.
------------------------------------------------------------

exemplo :: Int -> (Int, Int, Int)
exemplo y =
  let k = 100
      g (1, w, z) = w + z
      g (2, w, z) = w - z
      g (_, _, _) = k
   in ((f y) + (f a) + (f b), g (y, k, c))
  where
    c = 10
    (a, b) = (3 * c, f 2)
    f x = x + 7 * c

------------------------------------------------------------
-- Explicação da função exemplo:
------------------------------------------------------------
-- - Define constantes e funções locais (k, g, a, b, c, f)
-- - "let" cria variáveis visíveis apenas até ao "in"
-- - "where" define variáveis associadas à função principal
--
-- Exemplo de execução:
-- > exemplo 2
-- ((f 2) + (f a) + (f b), g (2, 100, 10))
------------------------------------------------------------

------------------------------------------------------------
-- Tarefa 5.2 — Função das raízes de um polinómio
------------------------------------------------------------
-- Calcula as raízes reais da equação ax² + bx + c = 0
-- usando a fórmula de Bhaskara.
------------------------------------------------------------

raizes :: (Double, Double, Double) -> (Double, Double)
raizes (a, b, c) = (r1, r2)
  where
    d = b ^ 2 - 4 * a * c        -- discriminante
    r
      | d >= 0 = sqrt d
      | otherwise = error "Raízes imaginárias"
    r1 = (-b + r) / (2 * a)
    r2 = (-b - r) / (2 * a)

------------------------------------------------------------
-- Explicação:
-- - "where" é usado para declarar variáveis auxiliares:
--   discriminante (d), raiz (r), r1 e r2.
-- - A função error devolve uma mensagem se d < 0.
------------------------------------------------------------

------------------------------------------------------------
-- Exemplo de execução:
------------------------------------------------------------
-- > raizes (1, -3, 2)
-- (2.0, 1.0)
--
-- > raizes (1, 2, 5)
-- *** Exception: Raízes imaginárias
------------------------------------------------------------
