------------------------------------------------------------
-- Ficha 5 - Tarefa 1
-- Tema: Leitura e escrita de ficheiros em Haskell (IO)
-- Autor: Eduardo Nunes
------------------------------------------------------------

module Tarefa1 where
import System.IO
import Data.List (isInfixOf)

------------------------------------------------------------
-- (1) Função que lê o nome do utilizador e responde
------------------------------------------------------------
-- Esta função pede ao utilizador que insira o seu nome,
-- lê o texto do teclado e imprime uma saudação.
--
-- Exemplo:
--   > olaNome
--   Introduza o seu nome:
--   João
--   Olá João
------------------------------------------------------------

olaNome :: IO ()
olaNome = do
  putStrLn "Introduza o seu nome:"
  nome <- getLine
  putStrLn ("Olá " ++ nome)

------------------------------------------------------------
-- (2) Função que lê e imprime o conteúdo do ficheiro
--     "nomes.txt"
------------------------------------------------------------
-- A função readFile devolve o conteúdo de um ficheiro
-- como uma String.  Depois, usamos putStrLn para o
-- imprimir no terminal.
------------------------------------------------------------

mostrarFicheiro :: IO ()
mostrarFicheiro = do
  conteudo <- readFile "nomes.txt"
  putStrLn "--- Conteúdo do ficheiro nomes.txt ---"
  putStrLn conteudo

------------------------------------------------------------
-- (3) Procurar e imprimir o nome completo a partir do
--     primeiro nome indicado pelo utilizador
------------------------------------------------------------
-- Lê o nome a procurar e percorre o ficheiro procurando
-- linhas que o contenham. Imprime todas as correspondências.
------------------------------------------------------------

procurarNomeCompleto :: IO ()
procurarNomeCompleto = do
  putStrLn "Introduza o primeiro nome a procurar:"
  nome <- getLine
  conteudo <- readFile "nomes.txt"
  let linhas = lines conteudo
      encontrados = filter (isInfixOf nome) linhas
  if null encontrados
    then putStrLn "Nome não encontrado."
    else do
      putStrLn "Nome(s) encontrado(s):"
      mapM_ putStrLn encontrados

------------------------------------------------------------
-- (4) Imprimir apenas o último nome da pessoa encontrada
------------------------------------------------------------
-- Divide o nome completo em palavras e devolve a última.
------------------------------------------------------------

mostrarUltimoNome :: IO ()
mostrarUltimoNome = do
  putStrLn "Introduza o primeiro nome a procurar:"
  nome <- getLine
  conteudo <- readFile "nomes.txt"
  let linhas = lines conteudo
      encontrados = filter (isInfixOf nome) linhas
  if null encontrados
    then putStrLn "Nome não encontrado."
    else do
      let ultimo = last (words (head encontrados))
      putStrLn ("Último nome: " ++ ultimo)

------------------------------------------------------------
-- (5) Imprimir apenas o segundo nome da pessoa encontrada
------------------------------------------------------------
-- Se o nome completo tiver pelo menos dois nomes,
-- devolve o segundo; caso contrário, indica que não existe.
------------------------------------------------------------

mostrarSegundoNome :: IO ()
mostrarSegundoNome = do
  putStrLn "Introduza o primeiro nome a procurar:"
  nome <- getLine
  conteudo <- readFile "nomes.txt"
  let linhas = lines conteudo
      encontrados = filter (isInfixOf nome) linhas
  if null encontrados
    then putStrLn "Nome não encontrado."
    else do
      let partes = words (head encontrados)
      if length partes >= 2
        then putStrLn ("Segundo nome: " ++ partes !! 1)
        else putStrLn "Apenas um nome disponível."

------------------------------------------------------------
-- (6) Criar um novo ficheiro com os nomes no formato
--     "Último, Primeiro"
------------------------------------------------------------
-- Lê o ficheiro original, transforma cada linha e guarda
-- num novo ficheiro chamado "nomesreversos.txt".
------------------------------------------------------------

criarNomesReversos :: IO ()
criarNomesReversos = do
  conteudo <- readFile "nomes.txt"
  let linhas = lines conteudo
      invertidos = map inverterNome linhas
  writeFile "nomesreversos.txt" (unlines invertidos)
  putStrLn "Ficheiro nomesreversos.txt criado com sucesso!"
  where
    inverterNome linha =
      case words linha of
        [] -> ""
        [x] -> x
        xs -> last xs ++ ", " ++ head xs

------------------------------------------------------------
-- (7) Função principal (main)
------------------------------------------------------------
-- Apresenta um pequeno menu interativo ao utilizador.
-- Permite executar qualquer uma das funções anteriores.
------------------------------------------------------------

main :: IO ()
main = do
  putStrLn "\n=== Menu de Opções ==="
  putStrLn "1. Dizer olá"
  putStrLn "2. Mostrar conteúdo do ficheiro"
  putStrLn "3. Procurar nome completo"
  putStrLn "4. Mostrar último nome"
  putStrLn "5. Mostrar segundo nome"
  putStrLn "6. Criar ficheiro com nomes invertidos"
  putStrLn "7. Sair"
  putStr "Escolha uma opção: "
  opcao <- getLine
  case opcao of
    "1" -> olaNome
    "2" -> mostrarFicheiro
    "3" -> procurarNomeCompleto
    "4" -> mostrarUltimoNome
    "5" -> mostrarSegundoNome
    "6" -> criarNomesReversos
    "7" -> putStrLn "A terminar o programa..."
    _   -> putStrLn "Opção inválida."
  if opcao /= "7" then main else return ()

------------------------------------------------------------
-- Explicação Didática
------------------------------------------------------------
-- Nesta ficha, os alunos aprendem:
--   - Leitura e escrita de ficheiros (readFile, writeFile)
--   - Efeitos de IO e interação via terminal
--   - Processamento de texto com 'lines' e 'words'
--   - Uso de funções de ordem superior (map, filter)
--
-- Exemplo de ficheiro "nomes.txt":
--   João Silva
--   Maria Santos
--   Ana Costa
--
-- Testes:
--   > olaNome
--   > mostrarFicheiro
--   > procurarNomeCompleto
--   > criarNomesReversos
------------------------------------------------------------
