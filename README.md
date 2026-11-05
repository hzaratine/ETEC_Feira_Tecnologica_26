# Feira Tecnologica 26

Guia completo para colocar o projeto no ar em um computador com Windows, usando XAMPP, MySQL e Node.js.

---

## Sumario

1. [Requisitos](#requisitos)
2. [Colocar o projeto no XAMPP](#1-colocar-o-projeto-no-xampp)
3. [Iniciar o XAMPP](#2-iniciar-o-xampp)
4. [Importar o banco de dados](#3-importar-o-banco-de-dados)
5. [Abrir o projeto no VS Code](#4-abrir-o-projeto-no-vs-code)
6. [Iniciar o backend](#5-iniciar-o-backend)
7. [Acessar o sistema](#6-acessar-o-sistema)
8. [Problemas comuns](#problemas-comuns)

---

## Requisitos

Antes de comecar, confirme que estes programas estao instalados:

| Programa | Para que serve |
| --- | --- |
| XAMPP | Fornece o Apache e o MySQL |
| Node.js | Executa o backend do projeto |
| Visual Studio Code | Editor e terminal para rodar o projeto |

---

## 1. Colocar o projeto no XAMPP

Copie a pasta do projeto para dentro do diretorio `htdocs` do XAMPP:

```text
C:\xampp\htdocs\
```

Exemplo de como deve ficar:

```text
C:\xampp\htdocs\Feira-Tecnologica-26
```

---

## 2. Iniciar o XAMPP

Abra o **XAMPP Control Panel** e clique em **Start** nos dois modulos:

- Apache
- MySQL

Os dois devem ficar com o fundo verde. Se algum nao iniciar, veja a secao [Problemas comuns](#problemas-comuns).

---

## 3. Importar o banco de dados

1. Abra o navegador e acesse:

   ```text
   http://localhost/phpmyadmin
   ```

2. Clique na aba **Importar**.
3. Em **Escolher arquivo**, selecione:

   ```text
   feira_tecnologica.sql
   ```

4. Role ate o final da pagina e clique em **Importar**.

Informacoes do banco:

| Item | Valor |
| --- | --- |
| Nome do banco | `feira_tecnologica` |

Tabelas criadas pela importacao:

- `empresas`
- `usuarios`
- `posts`
- `likes`
- `comentarios`

---

## 4. Abrir o projeto no VS Code

1. Abra o Visual Studio Code.
2. Clique em **Arquivo → Abrir Pasta** e selecione a pasta do projeto.
3. Abra o terminal em **Terminal → Novo Terminal**.

---

## 5. Iniciar o backend

No terminal do VS Code, execute os comandos abaixo, um de cada vez.

Entre na pasta do backend:

```text
cd backend
```

Instale as dependencias (necessario apenas na primeira vez):

```text
npm install
```

Inicie o servidor:

```text
npm start
```

Deixe o terminal aberto enquanto estiver usando o sistema. Para parar o servidor, pressione `Ctrl + C`.

---

## 6. Acessar o sistema

Com o Apache, o MySQL e o backend em execucao, abra o navegador e acesse o endereco exibido no terminal apos o `npm start`.

Normalmente ele aparece em um formato parecido com este:

```text
http://localhost:3000
```

---

## Resumo rapido

Para quem ja configurou tudo uma vez, o dia a dia fica assim:

1. Abrir o XAMPP e iniciar **Apache** e **MySQL**.
2. Abrir o projeto no VS Code.
3. No terminal, executar:

   ```text
   cd backend
   npm start
   ```

4. Abrir o endereco do sistema no navegador.

---

## Problemas comuns

**O Apache nao inicia**
Outro programa pode estar usando a porta 80 ou 443. Feche programas como Skype ou outros servidores web e tente novamente.

**O MySQL nao inicia**
Verifique se ja existe outro MySQL rodando no computador. Encerre-o ou altere a porta no XAMPP.

**Erro ao importar o arquivo .sql**
Confirme que o MySQL esta iniciado no XAMPP e que o arquivo `feira_tecnologica.sql` e o correto, sem ter sido alterado.

**O comando `npm` nao e reconhecido**
O Node.js nao esta instalado ou o terminal foi aberto antes da instalacao. Instale o Node.js e reinicie o VS Code.

**O backend nao conecta ao banco**
Verifique se o MySQL esta ativo no XAMPP, se o banco `feira_tecnologica` foi importado e se as credenciais no arquivo de configuracao do backend estao corretas. No XAMPP, o usuario padrao e `root` e a senha fica em branco.

**A porta do backend ja esta em uso**
Feche outros terminais que estejam executando o projeto ou encerre o processo que ocupa a porta e rode `npm start` novamente.