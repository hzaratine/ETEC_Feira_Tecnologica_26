<div align="center">

# Feira Tecnológica 26

Plataforma web desenvolvida para a Feira Tecnológica, com sistema de login, publicações, curtidas e comentários.

<br>

<img src="https://skillicons.dev/icons?i=html,css,js,nodejs,php,mysql,figma,vscode,git&perline=10" alt="Tecnologias utilizadas" />

<br><br>

![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)
![Node.js](https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=nodedotjs&logoColor=white)
![PHP](https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![XAMPP](https://img.shields.io/badge/XAMPP-FB7A24?style=for-the-badge&logo=xampp&logoColor=white)
![Figma](https://img.shields.io/badge/Figma-F24E1E?style=for-the-badge&logo=figma&logoColor=white)

</div>

---

## Sumário

1. [Sobre o projeto](#sobre-o-projeto)
2. [Tecnologias](#tecnologias)
3. [Equipe](#equipe)
4. [Requisitos](#requisitos)
5. [Como iniciar o projeto](#como-iniciar-o-projeto)
6. [Resumo rápido](#resumo-rápido)
7. [Problemas comuns](#problemas-comuns)

---

## Sobre o projeto

A Feira Tecnológica 26 é uma plataforma web criada para reunir empresas e usuários em um só lugar. O sistema permite cadastro e login de usuários, criação de publicações, curtidas e comentários, tudo conectado a um banco de dados MySQL.

---

## Tecnologias

| Tecnologia | Uso no projeto |
| --- | --- |
| ![HTML5](https://img.shields.io/badge/-HTML5-E34F26?logo=html5&logoColor=white) | Estrutura das páginas |
| ![CSS3](https://img.shields.io/badge/-CSS3-1572B6?logo=css3&logoColor=white) | Estilização e identidade visual |
| ![JavaScript](https://img.shields.io/badge/-JavaScript-F7DF1E?logo=javascript&logoColor=black) | Interações do site |
| ![Node.js](https://img.shields.io/badge/-Node.js-339933?logo=nodedotjs&logoColor=white) | API e backend |
| ![PHP](https://img.shields.io/badge/-PHP-777BB4?logo=php&logoColor=white) | Estrutura base inicial |
| ![MySQL](https://img.shields.io/badge/-MySQL-4479A1?logo=mysql&logoColor=white) | Banco de dados |
| ![XAMPP](https://img.shields.io/badge/-XAMPP-FB7A24?logo=xampp&logoColor=white) | Servidor local (Apache e MySQL) |
| ![Figma](https://img.shields.io/badge/-Figma-F24E1E?logo=figma&logoColor=white) | Design e protótipo |

---

## Equipe

Todos os integrantes colaboraram na criação do design do projeto.

| Integrante | Responsabilidades |
| --- | --- |
| **Henrique Zaratine** <br> ![Node.js](https://img.shields.io/badge/-API-339933?logo=nodedotjs&logoColor=white) | Criação da API do site, sistema de login, interações e demais funcionalidades |
| **Alexandro** <br> ![PHP](https://img.shields.io/badge/-PHP-777BB4?logo=php&logoColor=white) | Estrutura base inicial em PHP |
| **Arthur** <br> ![Organização](https://img.shields.io/badge/-Organiza%C3%A7%C3%A3o-0A66C2) | Ideias, organização geral, banner da feira e organização dos materiais da feira |
| **Vireira** <br> ![Dados](https://img.shields.io/badge/-Dados-4479A1?logo=mysql&logoColor=white) | Ideias, organização e estruturação dos dados do site |
| **Davi** <br> ![Figma](https://img.shields.io/badge/-Figma-F24E1E?logo=figma&logoColor=white) | Criação do projeto no Figma e direção do design |

---

## Requisitos

Antes de começar, confirme que estes programas estão instalados:

| Programa | Para que serve |
| --- | --- |
| XAMPP | Fornece o Apache e o MySQL |
| Node.js | Executa o backend do projeto |
| Visual Studio Code | Editor e terminal para rodar o projeto |

---

## Como iniciar o projeto

### 1. Colocar o projeto no XAMPP

Copie a pasta do projeto para dentro do diretório `htdocs` do XAMPP:

```text
C:\xampp\htdocs\
```

Exemplo de como deve ficar:

```text
C:\xampp\htdocs\Feira-Tecnologica-26
```

### 2. Iniciar o XAMPP

Abra o **XAMPP Control Panel** e clique em **Start** nos dois módulos:

- Apache
- MySQL

Os dois devem ficar com o fundo verde. Se algum não iniciar, veja a seção [Problemas comuns](#problemas-comuns).

### 3. Importar o banco de dados

1. Abra o navegador e acesse:

   ```text
   http://localhost/phpmyadmin
   ```

2. Clique na aba **Importar**.
3. Em **Escolher arquivo**, selecione:

   ```text
   feira_tecnologica.sql
   ```

4. Role até o final da página e clique em **Importar**.

Informações do banco:

| Item | Valor |
| --- | --- |
| Nome do banco | `feira_tecnologica` |

Tabelas criadas pela importação:

- `empresas`
- `usuarios`
- `posts`
- `likes`
- `comentarios`

### 4. Abrir o projeto no VS Code

1. Abra o Visual Studio Code.
2. Clique em **Arquivo → Abrir Pasta** e selecione a pasta do projeto.
3. Abra o terminal em **Terminal → Novo Terminal**.

### 5. Iniciar o backend

No terminal do VS Code, execute os comandos abaixo, um de cada vez.

Entre na pasta do backend:

```text
cd backend
```

Instale as dependências (necessário apenas na primeira vez):

```text
npm install
```

Inicie o servidor:

```text
npm start
```

Deixe o terminal aberto enquanto estiver usando o sistema. Para parar o servidor, pressione `Ctrl + C`.

### 6. Acessar o sistema

Com o Apache, o MySQL e o backend em execução, abra o navegador e acesse o endereço exibido no terminal após o `npm start`.

Normalmente ele aparece em um formato parecido com este:

```text
http://localhost:3000
```

---

## Resumo rápido

Para quem já configurou tudo uma vez, o dia a dia fica assim:

1. Abrir o XAMPP e iniciar **Apache** e **MySQL**.
2. Abrir o projeto no VS Code.
3. No terminal, executar:

   ```text
   cd backend
   npm start
   ```

4. Abrir o endereço do sistema no navegador.

---

## Problemas comuns

**O Apache não inicia**
Outro programa pode estar usando a porta 80 ou 443. Feche programas como Skype ou outros servidores web e tente novamente.

**O MySQL não inicia**
Verifique se já existe outro MySQL rodando no computador. Encerre-o ou altere a porta no XAMPP.

**Erro ao importar o arquivo .sql**
Confirme que o MySQL está iniciado no XAMPP e que o arquivo `feira_tecnologica.sql` é o correto, sem ter sido alterado.

**O comando `npm` não é reconhecido**
O Node.js não está instalado ou o terminal foi aberto antes da instalação. Instale o Node.js e reinicie o VS Code.

**O backend não conecta ao banco**
Verifique se o MySQL está ativo no XAMPP, se o banco `feira_tecnologica` foi importado e se as credenciais no arquivo de configuração do backend estão corretas. No XAMPP, o usuário padrão é `root` e a senha fica em branco.

**A porta do backend já está em uso**
Feche outros terminais que estejam executando o projeto ou encerre o processo que ocupa a porta e rode `npm start` novamente.

---

<div align="center">

Feira Tecnológica 26

</div>