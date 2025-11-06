------------------------------------------------------------
-- Ficha 1 - Tarefa 5 (Parte 3)
-- Tema: Módulo principal que importa outros módulos
-- Objetivo: combinar funções e módulos diferentes.
-- Autor: Eduardo Nunes
------------------------------------------------------------

module Exemp where

-- Importa os módulos Conv2 (criado pelo utilizador) e Char (pré-definido)
import Conv2
import Char

-- A função conv recebe um carácter.
-- Se o carácter for alfabético (isAlpha),
-- aplica a função upperandlower (definida no módulo Conv2),
-- caso contrário devolve uma lista vazia.
conv :: Char -> [Char]
conv x =
  if isAlpha x
    then upperandlower x
    else []

-- Exemplo:
-- conv 'a'  → "aA"
-- conv 'Z'  → "zZ"
-- conv '?'  → []
