# Ficha 1 - Tarefa 5  
## Tema: Importação de módulos e utilização do módulo Char

Esta tarefa mostra como criar e importar módulos em Haskell.

### Estrutura
- `Conv1.hs`: exemplo simples que importa `Char` e define funções básicas.  
- `Conv2.hs`: define uma função `upperandlower` que devolve a versão minúscula e maiúscula de um carácter.  
- `Exemp.hs`: módulo principal que importa `Conv2` e `Char` e usa `upperandlower` dentro da função `conv`.

### Testes no GHCi
```bash
:l Exemp.hs
conv 'a'
conv '?'
upperandlower 'B'
:b Char
