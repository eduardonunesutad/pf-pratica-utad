# 🧩 Programação Funcional em Haskell 
### Functional Programming in Haskell

---

## 🇵🇹 Versão em Português

Este repositório contém as **aulas práticas** da unidade curricular **Programação Funcional**, organizadas em fichas de exercícios resolvidas em **Haskell**.  

Cada ficha inclui as suas tarefas individuais, comentadas de forma **didática e acessível** para apoio aos alunos.

---

### 📂 Estrutura do projeto

```
src/
├── pt/                     # Versão em português
│   ├── ficha1/
│   │   ├── tarefa1-1.hs
│   │   ├── tarefa1-2.hs
│   │   └── ...
│   ├── ficha2/
│   ├── ficha3/
│   ├── ficha4/
│   └── ficha5/
│
└── en/                     # Versão em inglês
    ├── sheet1/
    │   ├── task1-1.hs
    │   ├── task1-2.hs
    │   └── ...
    ├── sheet2/
    ├── sheet3/
    ├── sheet4/
    └── sheet5/
```

Cada **tarefa** corresponde a um ficheiro independente (`tarefaX-Y.hs` ou `taskX-Y.hs`), com:
- cabeçalho identificativo (Ficha, Tarefa, Tema, Autor);
- explicações e exemplos de utilização no próprio código;
- versões alternativas (_v2, _v3_) quando aplicável.

---

### 📘 Objetivos

- Consolidar os **fundamentos da linguagem Haskell**  
- Promover o **raciocínio funcional** (recursão, listas, guardas, funções de ordem superior)  
- Ajudar os alunos a testar e comparar diferentes soluções  
- Disponibilizar um **recurso aberto** e bilingue (Português / Inglês)

---

### ⚙️ Como executar

#### 🔹 Usando GHCi (modo interativo)
```bash
ghci src/pt/ficha2/tarefa2-8.hs
> produto [2,3,4]
24
```
---

### 🧭 Organização das Fichas

| Ficha | Tema principal | Diretório |
|-------|----------------|------------|
| 1 | Fundamentos, tuplos e funções simples | `src/pt/ficha1/` |
| 2 | Guardas, listas e recursão | `src/pt/ficha2/` |
| 3 | Map, Filter e Fold | `src/pt/ficha3/` |
| 4 | Entrada e Saída (IO) | `src/pt/ficha4/` |
| 5 | IO avançado e manipulação de ficheiros | `src/pt/ficha5/` |

---

### 👨‍🏫 Autor

**Eduardo Nunes**  
Professor Assistente Convidado - UTAD  
Repositório criado para fins educativos.

---

---

## 🇬🇧 English Version

This repository contains the **practical exercises** for the course **Functional Programming**, organized into worksheets (“sheets”) implemented in **Haskell**.

Each sheet includes individual tasks, written with **clear educational comments** for students learning the language.

---

### 📂 Project structure

```
src/
├── pt/                     # Portuguese version
│   ├── ficha1/
│   │   ├── tarefa1-1.hs
│   │   ├── tarefa1-2.hs
│   │   └── ...
│   ├── ficha2/
│   ├── ficha3/
│   ├── ficha4/
│   └── ficha5/
│
└── en/                     # English version
    ├── sheet1/
    │   ├── task1-1.hs
    │   ├── task1-2.hs
    │   └── ...
    ├── sheet2/
    ├── sheet3/
    ├── sheet4/
    └── sheet5/
```

Each **task** is a standalone Haskell file (`taskX-Y.hs` or `tarefaX-Y.hs`) containing:
- a descriptive header (Sheet, Task, Topic, Author);
- comments and usage examples inside the code;
- alternative implementations when relevant (`_v2`, `_v3`).

---

### 📘 Goals

- Strengthen understanding of **Haskell fundamentals**  
- Develop **functional reasoning** (recursion, lists, guards, higher-order functions)  
- Help students test and compare different implementations  
- Provide an **open bilingual resource** (Portuguese / English)

---

### ⚙️ How to run

#### 🔹 Using GHCi (interactive mode)
```bash
ghci src/en/sheet2/task2-8.hs
> product [2,3,4]
24
```

---

### 🧭 Sheet overview

| Sheet | Main topic | Directory |
|-------|-------------|------------|
| 1 | Fundamentals, tuples and simple functions | `src/en/sheet1/` |
| 2 | Guards, lists and recursion | `src/en/sheet2/` |
| 3 | Map, Filter and Fold | `src/en/sheet3/` |
| 4 | Input and Output (IO) | `src/en/sheet4/` |
| 5 | Advanced IO and file handling | `src/en/sheet5/` |

---

### 👨‍🏫 Author

**Eduardo Nunes**  
Invited Professor — UTAD  
Repository created for educational purposes.
