# Projeto One For All

## Habilidades Mostradas:

* Normalização de tabelas para as 3 Formas Normais, criação do schema no banco de dados local e população dos dados;

* Manipulação de dados no banco normalizado e populado.

## Requisitos do Projeto:

### Requisito 1:
### Parte 1 - Normalize as tabelas da planilha SpotifyClone
Antes de tudo, você deverá modelar e normalizar essas tabelas para a **3° Forma Normal**. Monte quantas planilhas e tabelas forem necessárias para criar essa versão normalizada desde que você siga as regras de negócio. Não é necessário criar o código SQL neste momento. Seu banco de dados deve seguir as regras de negócio e ser capaz de recuperar:

- Informações sobre quais planos estão disponíveis e seus detalhes;
  - Cada pessoa usuária pode possuir apenas um plano.

- Informações sobre todas as pessoas artistas;
  - Uma pessoa artista pode ter vários álbuns;
  - Uma pessoa artista pode ser seguida por várias pessoas usuárias.

- Informações sobre todos os álbuns de cada artista;
  - Para fins deste projeto, considere que cada álbum possui apenas uma pessoa artista como principal;
  - Cada álbum possui várias canções.

- Informações sobre todas as canções de cada álbum;
  - Para fins deste projeto, considere que cada canção está contida em apenas um álbum.

- Informações sobre todas as pessoas usuárias, seus planos, seu histórico de reprodução e pessoas artistas seguidas.
  - Uma pessoa usuária pode possuir apenas um plano;
  - Cada música do histórico de reprodução pode aparecer uma única vez por pessoa (para simplificar, considere que o objetivo do histórico é saber **quais** canções já foram reproduzidas e **não quantas vezes** foram reproduzidas);
  - Uma pessoa usuária pode seguir várias pessoas artistas, mas cada pessoa artista pode ser seguida apenas uma vez por pessoa usuária.
  
  ### Parte 2 - Após a normalização, crie as tabelas no banco de dados

Agora siga com os passos abaixo:

- Crie um banco com o nome de **`SpotifyClone`**.

- Providencie as queries necessárias para criar tabelas normalizadas que atendam às regras de negócio descritas anteriormente;

- Providencie as queries necessárias para popular as tabelas do banco de dados de acordo com as dados da planilha fornecida anteriormente;

- Ajuste o arquivo de configurações `desafio1.json`, que mapeará em qual tabela e coluna se encontram as informações necessárias para a avaliação automatizada deste desafio.

### Requisito 2

Crie uma `QUERY` que exiba três colunas:

1. A primeira coluna deve exibir a quantidade total de canções. Dê a essa coluna o alias "**cancoes**".

2. A segunda coluna deve exibir a quantidade total de artistas e deverá ter o alias "**artistas**".

3. A terceira coluna deve exibir a quantidade de álbuns e deverá ter o alias "**albuns**".

### Requisito 3

Crie uma `QUERY` que deverá ter apenas três colunas:

1. A primeira coluna deve possuir o alias "**pessoa_usuaria**" e exibir o nome da pessoa usuária.

2. A segunda coluna deve possuir o alias "**musicas_ouvidas**" e exibir a quantidade de músicas ouvida pela pessoa com base no seu histórico de reprodução.

3. A terceira coluna deve possuir o alias "**total_minutos**" e exibir a soma dos minutos ouvidos pela pessoa usuária com base no seu histórico de reprodução.

Os resultados devem estar agrupados pelo nome da pessoa usuária e ordenados em ordem alfabética.

### Requisito 4

Crie uma `QUERY` que deve mostrar as pessoas usuárias que estavam ativas **a partir do ano de 2021**, se baseando na data mais recente no histórico de reprodução.

1. A primeira coluna deve possuir o alias "**pessoa_usuaria**" e exibir o nome da pessoa usuária.

2. A segunda coluna deve ter o alias "**status_pessoa_usuaria**" e exibir se a pessoa usuária está ativa ou inativa.

O resultado deve estar ordenado em ordem alfabética.

### Requisito 5

Estamos fazendo um estudo das músicas mais tocadas e precisamos saber quais são as duas músicas mais tocadas no momento. Crie uma `QUERY` que possua duas colunas:

1. A primeira coluna deve possuir o alias "**cancao**" e exibir o nome da canção.

2. A segunda coluna deve possuir o alias "**reproducoes**" e exibir a quantidade de pessoas que já escutaram a canção em questão.

Seu resultado deve estar ordenado em ordem decrescente, baseando-se no número de reproduções. Em caso de empate, ordene os resultados pelo nome da canção em ordem alfabética. Queremos apenas o top 2 de músicas mais tocadas.

### Requisito 6

Tendo como base o valor dos planos e o plano que cada pessoa usuária cadastrada possui no banco, queremos algumas informações sobre o faturamento da empresa. Crie uma `QUERY` que deve exibir quatro dados:

1. A primeira coluna deve ter o alias "**faturamento_minimo**" e exibir o menor valor de plano existente para uma pessoa usuária.

2. A segunda coluna deve ter o alias "**faturamento_maximo**" e exibir o maior valor de plano existente para uma pessoa usuária.

3. A terceira coluna deve ter o alias "**faturamento_medio**" e exibir o valor médio dos planos possuídos por pessoas usuárias até o momento.

4. Por fim, a quarta coluna deve ter o alias "**faturamento_total**" e exibir o valor total obtido com os planos possuídos por pessoas usuárias.

Para cada um desses dados, por se tratarem de valores monetários, deve-se arredondar o faturamento usando apenas duas casas decimais.

### Requisito 7

Mostre uma relação de todos os álbuns produzidos por cada pessoa artista, ordenada pela quantidade de seguidores que ela possui, de acordo com os detalhes a seguir. Para tal, crie uma `QUERY` com as seguintes colunas:

1. A primeira coluna deve exibir o nome da pessoa artista, com o alias "**artista**".

2. A segunda coluna deve exibir o nome do álbum, com o alias "**album**".

3. A terceira coluna deve exibir a quantidade de pessoas seguidoras que aquela pessoa artista possui e deve possuir o alias "**pessoas_seguidoras**".

Seus resultados devem estar ordenados de forma decrescente, baseando-se no número de pessoas seguidoras. Em caso de empate no número de pessoas, ordene os resultados pelo nome da pessoa artista em ordem alfabética e caso existam artistas com o mesmo nome, ordene os resultados pelo nome do álbum alfabeticamente.

### Requisito 8

Mostre uma relação dos álbuns produzidos por uma pessoa artista específica, neste caso `"Elis Regina"`.
Para isto crie uma `QUERY` que o retorno deve exibir as seguintes colunas:

1. O nome da pessoa artista, com o alias "**artista**".

2. O nome do álbum, com o alias "**album**".

Os resultados devem ser ordenados pelo nome do álbum em ordem alfabética.

### Requisito 9

Crie uma `QUERY` que exibe a quantidade de músicas que estão presentes atualmente no histórico de reprodução de uma pessoa usuária específica. Para este caso queremos saber quantas músicas estão no histórico da usuária `"Barbara Liskov"` e a consulta deve retornar a seguinte coluna:

1. O valor da quantidade, com o alias "**musicas_no_historico**".

### Requisito 10

Você receberá uma planilha não normalizada que complementa o banco de dados do **SpotifyClone**, que é uma tabela de canções favoritas de cada pessoa usuária. O trabalho consistirá de duas partes:

1. Normalizar essa planilha, criar a tabela no seu banco de dados local e populá-lo;

2. Realizar os próximos desafios no seu banco atualizado com a tabela de canções favoritas.

### Parte 1 - Normalize a tabela da planilha SpotifyClone-fav-songs
Você deverá modelar e normalizar essa tabela para a **3° Forma Normal**. Monte quantas planilhas e tabelas forem necessárias para criar essa versão normalizada desde que você siga as regras de negócio. Não é necessário criar o código SQL neste momento. Seu banco de dados deve seguir as regras de negócio e ser capaz de recuperar:

- Informações sobre as canções favoritas das pessoas usuárias.
  - Uma pessoa usuária pode possuir várias canções favoritas;
  - Uma canção pode ser favoritada por várias pessoas usuárias.

### Parte 2 - Após a normalização, crie a tabela no banco de dados

- Providencie as queries necessárias para criar a tabela normalizada que atenda às regras de negócio descritas anteriormente;
- Providencie as queries necessárias para popular a tabela no banco de dados de acordo com as dados da planilha fornecida anteriormente;
