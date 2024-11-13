<!-- Sobre este projeto -->
## Sobre este projeto

Aplicar os conceitos de modelagem de dados aprendidos nos capítulos 7, 8, 9 e 10 para criar um modelo de banco de dados que armazene e analise informações sobre a produção agrícola no Brasil, utilizando dados de órgãos como CONAB. A tabela escolhida foi a Série histórica de graos.

### Ferramentas utilizadas

As ferramentas utilizadas para este engajamento foram:
* Visual Studio Code
* Banco de Dados Oracle
* Oracle Modeler
* ChatGPT




<!-- Visão Geral -->
## Visão Geral

### Requisitos

* Desenvolver uma banco de dados otimizando as colunas da tabela inicialmente baixada do site do orgão.

* A tabela original continha as seguintes colunas:
  * area_plantada_mil_ha,
  * ano_agricola,uf,
  * id_produto,
  * producao_mil_t,
  * nm_produtividade_mil_ha_mil_t

Esta tabela foi criada no Data Modeler apenas para efeito de informação:

<img width="206" alt="image" src="https://github.com/user-attachments/assets/c240c020-efa7-4960-90e7-0087601781d0">

Através das metodologias de normalização de dados (1FN, 2FN e 3FN) definimos as tabelas de uma forma diferente e mais adequada, como vemos abaixo o resultado final:

Estrutura Lógica das tabelas:

<img width="542" alt="image" src="https://github.com/user-attachments/assets/88151c08-72a8-4ed8-a38d-2688e92a2636">

Estrutura Física das tabelas:

<img width="524" alt="image" src="https://github.com/user-attachments/assets/f6c9e8ae-eb74-4674-b0f1-6763c12c79f6">

Será possivel importar esta configuração no Oracle Data Modeler através do arquivo e diretório abaixos:
* Modulo 3 - Cap 10.dmd
* Modulo 3 - Cap 10

### Bases de Dados

* A modelagem das bases de dados foi feita através do Data Modeler da Oracle


### Manuseio das informações:

O manuseio das informações na base de dados é feito através de scripts SQL. Foram criadas três consultas:

* 1 - Producao por area para cada ano e estado
* 2 - Media de produtividade
* 3 - Lista as principais culturas por ano

Quanto a base de dados, foi desenvolvido o script para a criação das tabelas:
* Modul0 3 - Cap10 - script de geracao das tabelas
  
<!-- Dicionário de Dados -->
## Dicionário de Dados.
**Tabela: tb_uf_cap10**
**Descrição**: 
Contém informações sobre as Unidades da Federação (UF) do Brasil.

•	Colunas:

sigla_uf (CHAR(2)): Sigla da Unidade Federativa (ex: "SP" para São Paulo).

nm_uf (CHAR(30)): Nome da Unidade Federativa (ex: "São Paulo").

________________________________________
**Tabela: tb_produto_cap10**

**Descrição**: Contém informações sobre os produtos agrícolas.

•	Colunas:


o	id_produto (NUMBER(4)): Código único do produto (ex: "4586" para Algodão em Pluma).

o	nm_produto (VARCHAR2(50)): Nome do produto (ex: "Algodão em Pluma").

________________________________________
**Tabela: tb_ano_agricola_cap10**

Descrição: Contém os anos agrícolas.

•	Colunas:

o	dt_ano_agricola (CHAR(10)): Ano agrícola no formato "AAAA/AA" ou apenas "AAAA" (ex: "2023/24").
________________________________________
**Tabela: tb_serie_historica_graos_cap10**

Descrição: Contém os dados históricos sobre a produção e produtividade de grãos.


•	Colunas:

nm_area_plantada_mil_ha (CHAR(20)): Nome da área plantada em mil hectares.

TB_ANO_AGR (CHAR(10)): Ano agrícola (relacionado à tabela tb_ano_agricola_cap10).

TB_UF_sigla_UF (CHAR(2)): Sigla da UF (relacionada à tabela tb_uf_cap10).

TB_PRODUTO_id_produto (NUMBER(4)): Código do produto (relacionado à tabela tb_produto_cap10).

nm_producao_mil_t (CHAR(20)): Produção em mil toneladas.

nm_produtividade_mil_ha_mil_t (FLOAT(8)): Produtividade em mil toneladas por mil hectares.


<!-- ROADMAP -->
## Roadmap
* Desenvolver outros tipos de relatórios.

<!-- CRIATION -->
## Criação:


Deniz Feital Armanhe (RM559439)- <img width="35" alt="image" src="https://github.com/user-attachments/assets/96a043d2-fe26-459e-96aa-577c929759be">
