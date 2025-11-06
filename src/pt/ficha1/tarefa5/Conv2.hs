------------------------------------------------------------
-- Ficha 1 - Tarefa 5 (Parte 2)
-- Tema: Módulo complementar Conv2
-- Objetivo: definir uma função que devolve o mesmo carácter
--           em minúscula e maiúscula.
-- Autor: Eduardo Nunes
------------------------------------------------------------

module Conv2 where

import Char

-- A função upperandlower recebe um carácter
-- e devolve uma lista com duas versões: minúscula e maiúscula.
upperandlower :: Char -> [Char]
upperandlower c = [toLower c, toUpper c]

-- Exemplo:
-- upperandlower 'a'  → "aA"
-- upperandlower 'X'  → "xX"
