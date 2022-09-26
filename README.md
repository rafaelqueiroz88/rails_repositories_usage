# Como criar e utilizar Repositórios no Ruby on Rails

Logo de cara, precisamos diferenciar repositórios de código (Github, Bitbucket, Gitlab e etc.) da camada repositório.
Neste documento não consta uma explicação detalhada desta camada, mas você encontrará em resumo como utilizar, e para que servem os repositórios.


Para pesquisar mais sobre este assunto no Google, utilize as palavras chave: repository pattern

Resumo:

Repositórios são uma camada de código onde agrupamos comportamentos que farão contato com o seu banco de dados. Regras de negócio continuam sendo aplicadas a esta camada.

A melhor forma de ver os repositórios, são como se fossem classes alternativas ao seu Model, onde você alocar comportamentos que farão consultas ao seu banco.

<br />

## Uso mais comum dos Repositórios

Quando uma requisição necessita de consultas compostas para gerar um dado (seja antes, depois ou durante um processo), um repositório é uma excelente alternativa. Para alguns, se você não pode resolver a requisição somente com métodos simples como:

<ul>
  <li>find</li>
  <li>find_by</li>
  <li>where</li>
  <li>create</li>
  <li>save</li>
  <li>update</li>
</ul>

Um Repositório já passa a ser a melhor alternativa. Mas isso não reflete a realidade, ou boas práticas.

Na verdade, repositórios são de longe a camada de maior complexidade, embora simples de se usar.

A forma como esta camada será utilizada depende muito do concentimento da equipe que gerencia o código, do seu dono, ou de seus líderes. Mas não existe certo ou errado dentro deste assunto.

Por este motivo esta camada acaba gerando um pouco de discussão, sendo parte dessa baseado em duvidas e/ou usabilidade.

Em caso de duvidas, considere utilizar repositórios como uma alternativa a _Models_ quando sobrecarregados, ou seja, se houver muitos comportamentos e/ou validações. Neste caso, crie um repositório que deverá dividir responsabilidades com o _Model_ em questão.

Obs. neste caso, se vocẽ está criando um repositório para dividir responsabilidade com o _Model_, entenda que o repositório deve ser responsável apenas por dividir comportamentos, e não validações, _Callbacks_, etc.

Se necessário criar consultas compostas ou blocos de consultas, considere também utilizar um repositório para se encarregar dessa tarefa.

<br />

## Considerações Finais

Repositórios são uma camada de código que pode ser facilmente implementada em um projeto. Apesar de ser muito confundido com Concerns, Services e etc. Os repositórios podem ser implementados com a mesma facilidade de quaisquer uma dessas camadas. A diferença está na necessidade do desenvolvedor. Considere utilizar repositórios para lidar somente com consultas no banco.

<br />

## Documentação sobre a camada de Repositório

O _Ruby on Rails_ não tras uma estrutura previamente preparada para o uso de repositórios, porém é muito fácil criar esta camada. A _Framework_ apesar de não trazer previamente esta camada em um diretório, abre espaço para que você possa criar suas proprias camadas.

Em teoria, você pode criar uma camada qualquer, com qualquer nome e qualquer responsabilidade. O que faz com que um repositório seja um repositório, nada mais é do que uma questão de boas praticas e conhecimento de _Design Patterns_.

Como não se trata de um recurso do Ruby, ou do Ruby on Rails, e sim de uma pratica, podemos simplesmente implementar em nosso código e apenas nos reservarmos ao que se considera hoje boas praticas.

<br />

## Como testar este Projeto e ver os Repositories na pratica?

Este projeto não possui nenhuma dependência extra ordinária. Provavelmente os procedimentos básicos serão o suficiente para inicializar.

Você só precisa realizar os seguintes passos:

<ul>
  <li>Instalar as dependencias</li>
  <li>Criar, migrar e preencher o banco de dados</li>
  <li>Iniciar o servidor</li>
</ul>

<br />

### Instalando as dependências

Execute o _bundler_ para instalar as dependencias em sua máquina caso você perceba que não possui algumas dessas instaladas.


```
bundle install
```

<br />

### Criando e preenchendo o Banco de Dados

Talvez seja necessário instalar uma biblioteca externa, uma dependência de máquina, pois o projeto faz uso do SQlite.

Basta executar **rails** ou **rake** _tasks_ para seguir com a instalação do banco.

```
rails db:create db:migrate db:seed
```

<br />

### Iniciando o servidor

Por fim, chegou a hora de ver o projeto funcionando. Para isto basta abrir um navegador após a inicialização do servidor.

```
rails server
```

ou

```
rails s
```

Feito isso, em seu navegador, digite:

```
http://localhost:3000/
```

