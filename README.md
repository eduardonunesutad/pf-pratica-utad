# 🧩 Programação Funcional em Haskell  
### Functional Programming in Haskell  

---

![License](https://img.shields.io/badge/license-Educational-blue.svg)  
![Language](https://img.shields.io/badge/language-Haskell-purple.svg)  
![Status](https://img.shields.io/badge/progress-Fichas%201--2%20Conclu%C3%ADdas-success.svg)

---

## 🇵🇹 Versão em Português  

Este repositório contém as **aulas práticas** da unidade curricular **Programação Funcional**, organizadas em fichas de exercícios resolvidas em **Haskell**.  

Cada ficha inclui as suas tarefas individuais, comentadas de forma **didática, clara e acessível**, com o objetivo de apoiar o estudo autónomo dos alunos.  

---

### 📂 Estrutura do Projeto  

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

Cada **tarefa** corresponde a um ficheiro independente (`tarefaX-Y.hs` ou `taskX-Y.hs`), contendo:
- cabeçalho identificativo (Ficha, Tarefa, Tema, Autor);  
- explicações e exemplos no próprio código;  
- versões alternativas (`_v2`, `_v3`) quando aplicável.  

---

### 🧭 Sumário de Fichas  

| Ficha | Tema principal | Conteúdo abordado | Diretório |
|-------|----------------|-------------------|------------|
| **1** | Fundamentos e tuplos | Definições simples, módulos, pares e triplos, introdução ao GHCi | `src/pt/ficha1/` |
| **2** | Guardas e recursão | Funções com múltiplas cláusulas, guardas, listas e tipos sinónimos | `src/pt/ficha2/` |
| **3** | Map, Filter e Fold | Funções de ordem superior e abstração funcional | `src/pt/ficha3/` |
| **4** | Entrada e Saída (IO) | Leitura de dados, ficheiros e efeitos secundários | `src/pt/ficha4/` |
| **5** | IO Avançado e manipulação de ficheiros | Escrita, leitura e serialização de dados | `src/pt/ficha5/` |

---

### 📘 Objetivos  

- Consolidar os **fundamentos da linguagem Haskell**  
- Promover o **raciocínio funcional** (recursão, listas, guardas, funções de ordem superior)  
- Ajudar os alunos a testar e comparar diferentes soluções  
- Disponibilizar um **recurso aberto e bilingue (Português / Inglês)**  

---

### ⚙️ Como executar  

#### 🔹 Usando GHCi (modo interativo)
```bash
ghci src/pt/ficha2/tarefa2-8.hs
> produto [2,3,4]
24
```

#### 🔹 Compilando e executando
```bash
ghc src/pt/ficha2/tarefa2-8.hs -o tarefa2-8
./tarefa2-8
```

---

### 🧠 Aprendizagem e Prática

Cada ficha foi pensada para desenvolver progressivamente as seguintes competências:

| Competência | Descrição |
|--------------|------------|
| **Abstração** | Analisar e decompor problemas em funções puras |
| **Recursão** | Aplicar raciocínio recursivo em listas e estruturas de dados |
| **Guardas** | Escrever funções com decisões condicionais elegantes |
| **Composição funcional** | Utilizar funções como valores e combiná-las entre si |
| **Leitura de código** | Interpretar e prever o comportamento de expressões Haskell |

---

### 🧩 Licença e Uso Educativo

Este material é de **uso exclusivamente educativo** e pode ser reutilizado para fins académicos, desde que citada a fonte original.  

📚 _© 2025 — Eduardo Nunes, UTAD (Universidade de Trás-os-Montes e Alto Douro)_

---

### 👨‍🏫 Autor

**Eduardo Nunes**  
Professor Assistente Convidado — UTAD  
Repositório criado para fins educativos e partilha de conhecimento.

 ✉️ eduardo.nunes@utad.pt

---

## 🇬🇧 English Version  

This repository contains the **practical exercises** for the course **Functional Programming**, organized into worksheets implemented in **Haskell**.

Each sheet includes individual tasks, written with **clear educational comments** to help students learn by example.

---

### 📂 Project structure  

```
src/
├── pt/                     # Portuguese version
│   ├── ficha1/
│   ├── ficha2/
│   └── ...
│
└── en/                     # English version
    ├── sheet1/
    ├── sheet2/
    └── ...
```

Each **task** is a standalone Haskell file containing:
- a descriptive header (Sheet, Task, Topic, Author);  
- inline documentation and examples;  
- optional alternative implementations (`_v2`, `_v3`).  

---

### 🧭 Sheet Overview

| Sheet | Main Topic | Description | Directory |
|--------|-------------|--------------|-------------|
| **1** | Fundamentals and Tuples | Simple definitions, tuples, and GHCi introduction | `src/en/sheet1/` |
| **2** | Guards and Recursion | Conditional guards, recursive definitions, list processing | `src/en/sheet2/` |
| **3** | Map, Filter, Fold | Higher-order functions and functional abstraction | `src/en/sheet3/` |
| **4** | Input/Output | Reading and writing data | `src/en/sheet4/` |
| **5** | Advanced IO | File manipulation and data serialization | `src/en/sheet5/` |

---

### ⚙️ How to Run

#### Using GHCi (interactive mode)
```bash
ghci src/en/sheet2/task2-8.hs
> product [2,3,4]
24
```

#### Compiling
```bash
ghc src/en/sheet2/task2-8.hs -o task2-8
./task2-8
```

---

### 🧠 Learning Goals

| Skill | Description |
|--------|--------------|
| **Abstraction** | Decompose problems using pure functions |
| **Recursion** | Apply recursive reasoning to lists and data structures |
| **Guards** | Define elegant conditional expressions |
| **Functional Composition** | Combine smaller functions into larger ones |
| **Code Reading** | Predict and reason about program behavior |

---

### 👨‍🏫 Author

**Eduardo Nunes**  
Invited Professor — UTAD (University of Trás-os-Montes and Alto Douro)  
Created for educational and research purposes.

 ✉️ eduardo.nunes@utad.pt