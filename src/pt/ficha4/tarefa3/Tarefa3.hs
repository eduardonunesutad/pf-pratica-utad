------------------------------------------------------------
-- Ficha 4 - Tarefa 3
-- Tema: Atualização de dados e filtragem de alunos
-- Autor: Eduardo Nunes
------------------------------------------------------------

module Tarefa3 where
import Tarefa2 (Numero, Nome, Nota, Aluno, Turma)

------------------------------------------------------------
-- (1) Função para alterar a nota de um aluno
------------------------------------------------------------
-- A função 'alterarNota' recebe:
--   - o número do aluno a alterar
--   - a nova nota
--   - a lista (turma)
--
-- Se o aluno for encontrado, a nota é atualizada;
-- caso contrário, o programa informa que o aluno
-- não existe.
--
-- Exemplo:
--   > let turma = [(1,"João",14.0),(2,"Maria",18.5)]
--   > alterarNota 1 16.0 turma
--   [(1,"João",16.0),(2,"Maria",18.5)]
------------------------------------------------------------

alterarNota :: Numero -> Nota -> Turma -> IO Turma
alterarNota n novaNota turma =
  if any (\(num,_,_) -> num == n) turma
    then do
      putStrLn "Nota atualizada com sucesso."
      let turmaNova = map (\(num,nome,nota) ->
                            if num == n then (num,nome,novaNota)
                            else (num,nome,nota)) turma
      return turmaNova
    else do
      putStrLn "Aluno não encontrado."
      return turma

------------------------------------------------------------
-- (2) Funções para gerar listas de aprovados e reprovados
------------------------------------------------------------
-- Considera-se:
--   - Aprovado se nota >= 10.0
--   - Reprovado caso contrário
--
-- Exemplo:
--   > let turma = [(1,"João",14.0),(2,"Maria",8.5),(3,"Ana",17.0)]
--   > aprovados turma
--   [(1,"João",14.0),(3,"Ana",17.0)]
--
--   > reprovados turma
--   [(2,"Maria",8.5)]
------------------------------------------------------------

aprovados :: Turma -> Turma
aprovados = filter (\(_,_,nota) -> nota >= 10.0)

reprovados :: Turma -> Turma
reprovados = filter (\(_,_,nota) -> nota < 10.0)

------------------------------------------------------------
-- (3) Funcionalidade adicional
------------------------------------------------------------
-- A função 'melhorAluno' devolve o aluno com maior nota
-- da turma. Se a turma estiver vazia, devolve 'Nothing'.
--
-- Exemplo:
--   > melhorAluno [(1,"João",14.0),(2,"Maria",18.5),(3,"Ana",17.0)]
--   Just (2,"Maria",18.5)
------------------------------------------------------------

melhorAluno :: Turma -> Maybe Aluno
melhorAluno [] = Nothing
melhorAluno turma = Just (foldl1 comparar turma)
  where
    comparar a1@(_,_,nota1) a2@(_,_,nota2)
      | nota1 >= nota2 = a1
      | otherwise      = a2

------------------------------------------------------------
-- Explicação Didática
------------------------------------------------------------
-- Nesta tarefa consolidamos a manipulação de listas e
-- aplicamos funções de ordem superior como:
--   - 'map' para atualizar elementos específicos;
--   - 'filter' para gerar subconjuntos;
--   - 'foldl1' para calcular o máximo.
--
-- O tipo 'IO Turma' permite atualizar a lista de forma
-- interativa, exibindo mensagens ao utilizador.
--
-- Estas funções podem ser facilmente integradas num menu
-- principal (gestão de alunos) com opções para:
--   1. Ver pauta completa
--   2. Procurar aluno
--   3. Alterar nota
--   4. Ver aprovados/reprovados
--   5. Mostrar melhor aluno
--
-- Exemplo de teste no GHCi:
--   let turma = [(1,"João",14.0),(2,"Maria",8.5),(3,"Ana",17.0)]
--   nova <- alterarNota 2 12.5 turma
--   print (aprovados nova)
--   print (melhorAluno nova)
------------------------------------------------------------
