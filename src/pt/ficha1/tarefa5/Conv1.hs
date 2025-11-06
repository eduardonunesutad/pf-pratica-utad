------------------------------------------------------------
-- Ficha 1 - Tarefa 5 (Parte 1)
-- Tema: Importação de módulos
-- Objetivo: aprender a importar funções de outros módulos,
--           neste caso do módulo Char.
-- Autor: Eduardo Nunes
------------------------------------------------------------

module Conv1 where

-- Importa o módulo Char para poder usar as funções toLower e toUpper
import Char

-- Define uma constante convertida para minúscula
con :: Char
con = toLower 'A'

-- Define uma função que converte um carácter em maiúscula
fun :: Char -> Char
fun x = toUpper x

-- Exemplo:
-- con        → 'a'
-- fun 'z'    → 'Z'
