------------------------------------------------------------
-- Ficha 4 - Tarefa 2
-- Tema: Tipos sinónimos e integridade de dados
-- Autor: Eduardo Nunes
------------------------------------------------------------

module Tarefa2 where
import Tarefa1 (printPauta, findAluno)

------------------------------------------------------------
-- (1) Definição de tipos sinónimos
------------------------------------------------------------
-- Nesta versão, representamos a informação dos alunos
-- utilizando sinónimos de tipos, de forma mais simples.
--
-- Cada entrada da pauta contém:
--   - o número de aluno (Int)
--   - o nome (String)
--   - a nota (Float)
--
-- Assim, podemos definir:
------------------------------------------------------------

type Numero = Int
type Nome   = String
type Nota   = Float
type Aluno  = (Numero, Nome, Nota)
type Turma  = [Aluno]

------------------------------------------------------------
-- (2) Atualização das funções anteriores
------------------------------------------------------------
-- Vamos adaptar as funções para usar estes novos sinónimos.
------------------------------------------------------------

printPauta' :: Turma -> IO ()
printPauta' [] = putStrLn "Pauta vazia."
printPauta' alunos = do
  putStrLn "--- Pauta de Alunos ---"
  mapM_ imprimir alunos
  where
    imprimir (num, nome, nota) =
      putStrLn (show num ++ " | " ++ nome ++ " | Nota: " ++ show nota)

findAluno' :: Numero -> Turma -> IO ()
findAluno' n alunos = do
  let resultado = filter (\(num, _, _) -> num == n) alunos
  if null resultado
    then putStrLn "Aluno não encontrado."
    else do
      let (_, nome, nota) = head resultado
      putStrLn ("Aluno: " ++ nome ++ " | Nota: " ++ show nota)

------------------------------------------------------------
-- (3) Verificação de unicidade do número de aluno
------------------------------------------------------------
-- A função 'inserirAluno' adiciona um novo aluno à lista,
-- mas verifica primeiro se já existe um aluno com o mesmo número.
------------------------------------------------------------

inserirAluno :: Aluno -> Turma -> IO Turma
inserirAluno novo turma =
  if any (\(num, _, _) -> num == fst3 novo) turma
    then do
      putStrLn "Erro: já existe um aluno com este número."
      return turma
    else do
      putStrLn "Aluno inserido com sucesso."
      return (turma ++ [novo])
  where
    fst3 (a,_,_) = a

------------------------------------------------------------
-- Explicação Didática
------------------------------------------------------------
-- O uso de tipos sinónimos ('type') simplifica o código e
-- torna-o mais expressivo, sem introduzir um novo tipo real.
--
-- 'Turma' é apenas uma lista de tuplos, mas com semântica
-- clara: [(Numero, Nome, Nota)].
--
-- A vantagem é que estas definições melhoram a legibilidade
-- sem alterar a forma como os dados são manipulados.
--
-- Este modelo é adequado enquanto a informação está apenas
-- em memória (sem ficheiros nem estruturas complexas).
--
-- Exemplo prático:
--   let turma = [(1,"João",14.0),(2,"Maria",18.5)]
--   printPauta' turma
--   findAluno' 2 turma
--   novaTurma <- inserirAluno (3,"Ana",10.0) turma
------------------------------------------------------------
