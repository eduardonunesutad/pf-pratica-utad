------------------------------------------------------------
-- Ficha 2 - Tarefa 2
-- Tema: Pattern Matching e Guards (condições em funções)
-- Autor: Eduardo Nunes
------------------------------------------------------------

module Tarefa2 where

------------------------------------------------------------
-- (1) Versão original da função opp (usando if-then-else)
------------------------------------------------------------

-- A função recebe um tuplo (Int, (Int, Int)) e devolve um Int.
-- O primeiro elemento do tuplo exterior determina a operação:
--   • Se for 1 → soma os dois inteiros internos
--   • Se for 2 → subtrai os dois inteiros internos
--   • Caso contrário → devolve 0

opp :: (Int, (Int, Int)) -> Int
opp z =
  if (fst z == 1)
    then (fst (snd z)) + (snd (snd z))
    else
      if (fst z == 2)
        then (fst (snd z)) - (snd (snd z))
        else 0

------------------------------------------------------------
-- (2) Avaliação do exemplo f (1, (2, 3))
------------------------------------------------------------
-- > opp (1, (2, 3))
-- = (fst (snd (1, (2, 3)))) + (snd (snd (1, (2, 3))))
-- = (fst (2, 3)) + (snd (2, 3))
-- = 2 + 3
-- = 5
--
-- Logo, o valor é 5.
------------------------------------------------------------

------------------------------------------------------------
-- (3) Versão alternativa com Pattern Matching
------------------------------------------------------------

-- Nesta versão usamos padrões diretamente na definição
-- da função em vez de if-then-else.

oppPM :: (Int, (Int, Int)) -> Int
oppPM (1, (x, y)) = x + y
oppPM (2, (x, y)) = x - y
oppPM (_, _) = 0

-- Exemplos:
-- > oppPM (1, (2, 3)) → 5
-- > oppPM (2, (5, 1)) → 4
-- > oppPM (7, (5, 1)) → 0
------------------------------------------------------------

------------------------------------------------------------
-- (4) Versão alternativa com Guards (condições)
------------------------------------------------------------

-- Guards permitem escrever as condições de forma mais legível.
oppGuards :: (Int, (Int, Int)) -> Int
oppGuards (n, (x, y))
  | n == 1 = x + y
  | n == 2 = x - y
  | otherwise = 0

-- Exemplos:
-- > oppGuards (1, (2, 3)) → 5
-- > oppGuards (2, (5, 1)) → 4
-- > oppGuards (9, (5, 1)) → 0
------------------------------------------------------------

------------------------------------------------------------
-- Explicação teórica (resumo)
------------------------------------------------------------
-- Pattern Matching:
--   - O Haskell compara o argumento com o padrão definido.
--   - Quando o padrão corresponde, executa a expressão associada.
--
-- Guards:
--   - São expressões booleanas após o símbolo '|'.
--   - A primeira guarda verdadeira é usada.
--   - A guarda "otherwise" é equivalente a True (caso por omissão).
--
-- Exemplo clássico (função de sinal):
-- sig x y
--   | x > y = 1
--   | x < y = -1
--   | otherwise = 0
------------------------------------------------------------
