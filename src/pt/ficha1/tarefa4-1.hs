------------------------------------------------------------
-- Ficha 1 - Tarefa 4
-- Tema: Manipulação de tuplos, comparação e strings
-- Baseado na resolução oficial fornecida pelo docente responsável
-- Autor: Eduardo Nunes
------------------------------------------------------------

module Ficha1 where

------------------------------------------------------------
-- (1) Soma e produto de dois pares
------------------------------------------------------------

-- A função pares recebe dois pares de inteiros (a,b) e (c,d)
-- e devolve um novo par:
--   • o primeiro elemento é a soma dos primeiros elementos (a+c)
--   • o segundo elemento é o produto dos segundos elementos (b*d)
pares :: (Int, Int) -> (Int, Int) -> (Int, Int)
pares (a, b) (c, d) = (a + c, b * d)

-- Exemplo:
-- pares (2,3) (4,5)
-- Resultado: (6,15)

------------------------------------------------------------
-- (2) Maior e segundo maior de três números
------------------------------------------------------------

-- A função maior devolve o maior de dois valores
maior :: (Int, Int) -> Int
maior (x, y) =
  if x > y then x else y

-- Função auxiliar menor devolve o menor de dois valores
menor :: (Int, Int) -> Int
menor (x, y) =
  if x < y then x else y

-- Maior de três números
maiorde3 :: Int -> Int -> Int -> Int
maiorde3 x y z = maior (maior (x, y), z)

-- Menor de três números
menorde3 :: Int -> Int -> Int -> Int
menorde3 x y z = menor (menor (x, y), z)

-- Segundo maior de três números
segundomaior :: Int -> Int -> Int -> Int
segundomaior a b c =
  if maior (a, b) == a
    then
      if maior (b, c) == b
        then b
        else menor (a, c)
    else
      if maior (c, a) == a
        then a
        else menor (b, c)

-- Exemplo:
-- segundomaior 8 5 3  → 5

------------------------------------------------------------
-- (3) Ordenar um triplo por ordem decrescente
------------------------------------------------------------

-- Usa as funções maiorde3, segundomaior e menorde3
ordenaDecrescente :: (Int, Int, Int) -> (Int, Int, Int)
ordenaDecrescente (a, b, c) =
  (maiorde3 a b c, segundomaior a b c, menorde3 a b c)

-- Exemplo:
-- ordenaDecrescente (3,8,5)
-- Resultado: (8,5,3)

------------------------------------------------------------
-- (4) Verificar se três lados formam um triângulo
------------------------------------------------------------

-- Um triângulo é válido se a soma de quaisquer dois lados
-- for sempre maior que o terceiro.
ladosTriangulo :: Float -> Float -> Float -> Bool
ladosTriangulo a b c =
  if (a + b > c) && (a + c > b) && (b + c > a)
    then True
    else False

-- Exemplo:
-- ladosTriangulo 3 4 5   → True
-- ladosTriangulo 2 2 5   → False

------------------------------------------------------------
-- (5) Abreviar nome: primeiro nome + apelido
------------------------------------------------------------

-- A função abrev recebe uma String com o nome completo
-- e devolve uma String com o primeiro e o último nome.
--
-- Usa as funções words e unwords:
--   words   :: String -> [String]   -- separa o texto em palavras
--   unwords :: [String] -> String   -- junta as palavras com espaços
--
-- A função separa devolve uma lista com o primeiro e último nome.
abrev :: String -> String
abrev nomeCompleto = unwords (separa (words nomeCompleto))

-- Função auxiliar que devolve [primeiro, último]
separa :: [String] -> [String]
separa nome = [head nome, nome !! (length nome - 1)]

-- Exemplo:
-- abrev "Joao Carlos Martins Sarmento"
-- Resultado: "Joao Sarmento"

------------------------------------------------------------
-- Conclusão
------------------------------------------------------------

-- Este módulo cobre:
-- • Manipulação de tuplos (pares e triplos)
-- • Comparações condicionais com if/then/else
-- • Composição de funções auxiliares
-- • Utilização de listas de palavras (words/unwords)
------------------------------------------------------------
