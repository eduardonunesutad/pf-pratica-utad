------------------------------------------------------------
-- Ficha 2 - Tarefa 11
-- Tema: Tipos Sinónimos
-- Autor: Eduardo Nunes
------------------------------------------------------------

module Tarefa11 where

------------------------------------------------------------
-- Introdução
------------------------------------------------------------
-- Em Haskell, podemos criar sinónimos de tipos para tornar
-- o código mais legível e expressivo.
--
-- Exemplo:
--   type String = [Char]
--
-- Aqui, String é apenas uma abreviatura de [Char].
------------------------------------------------------------


------------------------------------------------------------
-- (1) Definição de tipos sinónimos
------------------------------------------------------------
-- Cada entrada da lista telefónica contém:
--   - Nome (String)
--   - Número de telefone (String)
--   - Endereço de e-mail (String)
------------------------------------------------------------

type Entrada = (String, String, String)
type LTelef  = [Entrada]

------------------------------------------------------------
-- Função: emails
------------------------------------------------------------
-- Objetivo:
--   Extrair todos os endereços de e-mail de uma lista telefónica.
--
-- Exemplo:
--   > emails [("Ana","234","ana@x.pt"),("Bruno","289","bruno@x.pt")]
--   ["ana@x.pt","bruno@x.pt"]
------------------------------------------------------------

emails :: LTelef -> [String]
emails [] = []
emails ((_,_,em):t) = em : emails t


------------------------------------------------------------
-- (2) Função: emailsFixos
------------------------------------------------------------
-- Objetivo:
--   Devolver os endereços de e-mail das entradas cujo
--   número de telefone é da rede fixa (prefixo '2').
--
-- Exemplo:
--   > emailsFixos [("Ana","234","ana@x.pt"),("Pedro","912","pedro@x.pt")]
--   ["ana@x.pt"]
------------------------------------------------------------

emailsFixos :: LTelef -> [String]
emailsFixos [] = []
emailsFixos ((_,tel,em):t)
  | head tel == '2' = em : emailsFixos t
  | otherwise       = emailsFixos t


------------------------------------------------------------
-- (3) Função: procura
------------------------------------------------------------
-- Objetivo:
--   Dado um nome e uma lista telefónica, devolver o número
--   de telefone e o e-mail correspondentes, se existirem.
--
-- Exemplo:
--   > procura "Ana" [("Ana","234","ana@x.pt"),("Bruno","289","bruno@x.pt")]
--   ("234","ana@x.pt")
------------------------------------------------------------

procura :: String -> LTelef -> (String, String)
procura _ [] = ("","")
procura nome ((n,tel,em):t)
  | nome == n  = (tel, em)
  | otherwise  = procura nome t


------------------------------------------------------------
-- Discussão Didática
------------------------------------------------------------
-- 1. Uso de 'type' melhora a clareza sem criar novos tipos reais.
-- 2. As três funções usam recursão simples e pattern matching.
-- 3. As guardas permitem decisões condicionais legíveis.
------------------------------------------------------------


------------------------------------------------------------
-- Exemplos de teste
------------------------------------------------------------
-- > let lista = [("Ana","234","ana@x.pt"),("Pedro","912","pedro@x.pt"),("Bruno","289","bruno@x.pt")]
--
-- > emails lista
-- ["ana@x.pt","pedro@x.pt","bruno@x.pt"]
--
-- > emailsFixos lista
-- ["ana@x.pt","bruno@x.pt"]
--
-- > procura "Pedro" lista
-- ("912","pedro@x.pt")
------------------------------------------------------------
