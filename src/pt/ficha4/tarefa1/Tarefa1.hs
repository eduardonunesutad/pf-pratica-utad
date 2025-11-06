------------------------------------------------------------
-- Ficha 4 - Tarefa 1
-- Tema: Entrada / Saída (IO) e manipulação de ficheiros
-- Autor: Eduardo Nunes
------------------------------------------------------------

module Tarefa1 where

------------------------------------------------------------
-- (1) printPauta :: [(Int, String, Float)] -> IO ()
------------------------------------------------------------
-- A função 'printPauta' tem como objetivo mostrar no ecrã
-- a lista completa de alunos de uma turma, de forma legível.
--
-- Cada aluno é representado por um tuplo com três elementos:
--   (número, nome, nota)
--
-- Quando a lista está vazia, o programa informa o utilizador.
--
-- Exemplo prático no GHCi:
--   > let turma = [(1,"João",14.0),(2,"Maria",18.5),(3,"Ana",9.5)]
--   > printPauta turma
--   --- Pauta de Alunos ---
--   1 | João | Nota: 14.0
--   2 | Maria | Nota: 18.5
--   3 | Ana | Nota: 9.5
--
-- Caso a lista esteja vazia:
--   > printPauta []
--   Pauta vazia.
------------------------------------------------------------

printPauta :: [(Int, String, Float)] -> IO ()
printPauta [] = putStrLn "Pauta vazia."
printPauta alunos = do
  putStrLn "--- Pauta de Alunos ---"
  mapM_ imprimirAluno alunos
  where
    imprimirAluno (num, nome, nota) =
      putStrLn (show num ++ " | " ++ nome ++ " | Nota: " ++ show nota)


------------------------------------------------------------
-- (2) findAluno :: Int -> [(Int, String, Float)] -> IO ()
------------------------------------------------------------
-- A função 'findAluno' tem como finalidade procurar um aluno
-- na pauta através do seu número, e apresentar os seus dados
-- no ecrã.
--
-- Caso o número não exista, a função devolve a mensagem:
--   "Aluno não encontrado."
--
-- Exemplo prático no GHCi:
--   > let turma = [(1,"João",14.0),(2,"Maria",18.5),(3,"Ana",9.5)]
--   > findAluno 2 turma
--   Aluno: Maria | Nota: 18.5
--
--   > findAluno 10 turma
--   Aluno não encontrado.
------------------------------------------------------------

findAluno :: Int -> [(Int, String, Float)] -> IO ()
findAluno n alunos = do
  let resultado = filter (\(num, _, _) -> num == n) alunos
  if null resultado
    then putStrLn "Aluno não encontrado."
    else do
      let (num, nome, nota) = head resultado
      putStrLn ("Aluno: " ++ nome ++ " | Nota: " ++ show nota)


------------------------------------------------------------
-- Explicação Didática
------------------------------------------------------------
-- Estas funções introduzem o conceito de ações de IO em Haskell.
-- O tipo “IO ()” indica que a função executa uma ação com efeitos
-- externos (neste caso, imprimir no ecrã) mas não devolve um valor útil.
--
-- A função 'printPauta' utiliza:
--   - 'mapM_' para aplicar uma ação IO a cada elemento da lista;
--   - 'putStrLn' para imprimir texto no terminal.
--
-- A função 'findAluno' demonstra:
--   - o uso de 'filter' para procurar elementos específicos;
--   - a decisão condicional com 'if ... then ... else';
--   - o padrão (num, nome, nota) para decompor tuplos.
--
-- Este tipo de exercício é o primeiro passo para criar programas
-- interativos com menus, manipulação de ficheiros e persistência
-- de dados, que serão explorados nas tarefas seguintes.
--
-- Dica de utilização:
--   ghci Tarefa1.hs
--   let turma = [(1,"João",14.0),(2,"Maria",18.5),(3,"Ana",9.5)]
--   printPauta turma
--   findAluno 3 turma
------------------------------------------------------------
