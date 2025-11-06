------------------------------------------------------------
-- Ficha 1 - Tarefa 6
-- Tema: Exploração do módulo Char
-- Objetivo: compreender como consultar e utilizar funções
--           fornecidas por módulos predefinidos do Haskell.
-- Autor: Eduardo Nunes
------------------------------------------------------------

module ExploracaoChar where

-- O módulo Char faz parte da biblioteca padrão do Haskell
-- e fornece várias funções úteis para trabalhar com caracteres.
import Char

------------------------------------------------------------
-- Exemplos de utilização das funções do módulo Char
------------------------------------------------------------

-- Converte uma letra minúscula em maiúscula
exemplo1 :: Char
exemplo1 = toUpper 'a'    -- Resultado: 'A'

-- Converte uma letra maiúscula em minúscula
exemplo2 :: Char
exemplo2 = toLower 'Z'    -- Resultado: 'z'

-- Verifica se um carácter é uma letra
exemplo3 :: Bool
exemplo3 = isAlpha 'C'    -- Resultado: True

-- Verifica se um carácter é um dígito
exemplo4 :: Bool
exemplo4 = isDigit '7'    -- Resultado: True

-- Verifica se um carácter é uma letra minúscula
exemplo5 :: Bool
exemplo5 = isLower 'a'    -- Resultado: True

-- Verifica se um carácter é uma letra maiúscula
exemplo6 :: Bool
exemplo6 = isUpper 'x'    -- Resultado: False

------------------------------------------------------------
-- Explicação prática no GHCi
-----------------------------------------------------------
