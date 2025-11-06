------------------------------------------------------------
-- Ficha 1 — Tarefa 1
-- Tema: Valores, expressões e tipos
-- Objetivo: compreender o uso das funções fst, snd, head e tail,
--           e o mecanismo de inferência de tipos em Haskell.
-- Autor: Eduardo Nunes
------------------------------------------------------------

-- Nesta tarefa o aluno deve:
-- 1 -Executar no GHCi os exemplos abaixo
-- 2 -Observar o tipo de cada expressão
-- 3-Identificar o comportamento polimórfico das funções fst e tail

-- A função fst devolve o primeiro elemento de um par (tuplo)
-- > fst (4, 'a')
-- Resultado: 4
--
-- A função snd devolve o segundo elemento de um par
-- > snd (4, 'a')
-- Resultado: 'a'
--
-- Ambas são funções polimórficas, com tipo:
-- fst :: (a, b) -> a
-- snd :: (a, b) -> b
--
-- Isto significa que podem ser aplicadas a pares de QUALQUER tipo
-- (Int, Char), (Float, String), etc.

-- Exemplos adicionais:
ex1 = fst (5.6, 3)       -- devolve 5.6
ex2 = snd (5.6, 3)       -- devolve 3
ex3 = fst ("UTAD", True) -- devolve "UTAD"

-- O comando :t no GHCi mostra o tipo de qualquer expressão:
-- > :t fst
-- fst :: (a, b) -> a
--
-- > :t snd
-- snd :: (a, b) -> b

-- A função tail devolve todos os elementos de uma lista, exceto o primeiro.
-- Também é polimórfica:
-- tail :: [a] -> [a]
--
-- Exemplo:
ex4 = tail [6,7,3,9]   -- devolve [7,3,9]
ex5 = tail "sdferta"   -- devolve "dferta"

-- Podemos testar no GHCi:
-- > :t tail
-- tail :: [a] -> [a]

-- Exercício proposto:
-- Execute as seguintes instruções no GHCi e observe os tipos e resultados:
--
-- :set +t        -- mostra o tipo após cada resultado
-- fst (4, 'a')
-- snd (4, 'a')
-- fst (5.6, 3)
-- :i fst
-- :i tail
-- tail [6,7,3,9]
-- tail "sdferta"
--
-- Discuta o que significa "polimorfismo" em Haskell:
-- Uma função é polimórfica quando funciona sobre diferentes tipos de dados.
-- fst, snd e tail são exemplos de funções polimórficas.
