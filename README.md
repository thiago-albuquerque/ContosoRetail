# ContosoRetail

## Visão geral
Este projeto teve como objetivo aprofundar a compreensão do desempenho de vendas da empresa ContosoRetail entre os anos de 2007 e 2009.
<br/>
Através de uma análise exploratória detalhada e da construção de um dashboard interativo, foram obtidos insights valiosos sobre os principais drivers de receita e tendências do mercado.
<br/><br/>
Uma análise inicial utilizando linguagem SQL permitiu identificar as tabelas mais relevantes para a pesquisa, como vendas, produtos, clientes e datas.
<br/>
Posteriormente o dashboard foi construído utilizando Power BI e apresenta uma variedade de visualizações (gráficos de barras, linhas, pizza e mapas) para facilitar a compreensão dos dados.
<br/>

### Metodologias utilizadas:
* Análise Exploratória
* Modelagem de Dados
* Criação de Dashboard

## Análise Exploratória
Os scripts SQL apresentados realizam uma análise exploratória inicial de um conjunto de dados de vendas, com foco em métricas chave como:

<img align='right' width='60%' src='https://github.com/thiago-albuquerque/ContosoRetail/blob/main/SQL/images/exp1.PNG'/>
<br/>
- <strong>VENDAS:</strong>
Fornece uma visão geral do desempenho financeiro das vendas, permitindo identificar o lucro total e a quantidade de produtos comercializados.
<br/>
- <strong>PROMOÇÕES:</strong>
Ao agrupar as vendas por tipo e nome da promoção, é possível identificar quais promoções são mais eficazes em gerar receita e qual o tipo de promoção tem melhor desempenho.
Essa análise permite otimizar as estratégias de marketing e promoções futuras.
<br/>
- <strong>CANAL:</strong>
Permite comparar o volume de vendas gerado por cada canal, identificando quais são os mais rentáveis e quais necessitam de maior atenção.
Essa informação é crucial para otimizar a alocação de recursos e definir estratégias de marketing específicas para cada canal.
<br/><br/><br/>

<img align='left' width='60%' src='https://github.com/thiago-albuquerque/ContosoRetail/blob/main/SQL/images/exp2.PNG'/>
- <strong>CATEGORIA:</strong>
Essa consulta identifica as 5 categorias de produtos que geraram a maior receita.
<br/>
- <strong>CLASSE:</strong>
Essa consulta agrupa as vendas por classe de produto, permitindo identificar quais classes contribuem mais para o faturamento total.
<br/>
- <strong>MÊS:</strong>
Filtrada pelo ano de 2008, mostra a evolução das vendas mês a mês, permitindo identificar sazonalidades ou tendências.
<br/><br/><br/><br/><br/><br/><br/>

<img align='right' width='60%' src='https://github.com/thiago-albuquerque/ContosoRetail/blob/main/SQL/images/exp3.PNG'/>
- <strong>TERRITÓRIO:</strong>
Essa consulta busca identificar quais regiões geográficas estão gerando o maior volume de vendas.
Ao identificar as regiões de maior e menor desempenho, as empresas podem tomar decisões mais assertivas para otimizar suas operações e aumentar seus lucros.
<br/><br/><br/>

## Modelo de Dados
<img align='left' width='60%' src='https://github.com/thiago-albuquerque/ContosoRetail/blob/main/Power%20BI/Design/Images/dataModel.png'/>
Foi criada do zero uma tabela personalizada, a DimCalendario.
<br/>
Com ela foi possível analisar as métricas de forma mais acertiva.
<br/>
Também foram criados relacionamentos que à princípio não foram reconhecidos pelo POWER BI no momento da importação do banco de dados.
<br/>
Resolvi manter as tabelas FactIntenetSales e a tabela DimDate do próprio banco de dados, no intuito de, se fosse preciso utlizá-las para análises futuras.

<br/><br/>

## Dashboard
O dashboard de vendas apresentado oferece uma visão abrangente do desempenho da empresa ao longo dos anos de 2007 a 2009. 
Através de uma série de visualizações, é possível identificar tendências, comparar resultados e tomar decisões estratégicas mais assertivas.
<br/>

<img align='right' width='60%' src='https://github.com/thiago-albuquerque/ContosoRetail/blob/main/Power%20BI/Design/Images/dashOverviewImg.PNG'/>
- <strong>MÉTRICAS PRINCIPAIS:</strong>
As métricas-chave apresentadas no topo do dashboard incluem o valor total de vendas, custo, margem de lucro e quantidade de produtos vendidos, tanto no ano atual quanto no ano anterior.
- inclusão de uma comparação ano a ano permite identificar tendências de crescimento ou declínio nas vendas.
<br/>
- <strong>SEGMENTAÇÃO POR CATEGORIA:</strong>
A visualização em barras horizontais detalha o valor de vendas por categoria de produto, permitindo identificar quais produtos geram a maior receita.
<br/><br/>
- <strong>SEGMENTAÇÃO POR CANAL DE VENDAS:</strong>
Outra visualização em barras mostra a distribuição das vendas por canal, como lojas físicas, online, catálogos, etc.
Essa informação é crucial para avaliar a eficácia de cada canal de distribuição.
<br/>
- <strong>SEGMENTAÇÃO GEOGRÁFICA:</strong>
O mapa mundial apresenta a distribuição geográfica das vendas, com marcadores de tamanho proporcional ao valor das vendas em cada região.
Essa visualização é útil para identificar os mercados mais promissores e aqueles que requerem maior atenção.
<br/>
- <strong>ANÁLISE TEMPORAL:</strong>
O gráfico de linha mostra a evolução das vendas ao longo dos meses, permitindo identificar sazonalidades e tendências de curto prazo.
<br/>
- <strong>ANÁLISE POR CLASSE:</strong>
O gráfico de pizza detalha a composição das vendas por classe de produto, permitindo avaliar a popularidade de cada classe.

<br/><br/>

## Medidas
<img align='left' width='60%' src='https://github.com/thiago-albuquerque/ContosoRetail/blob/main/Power%20BI/Design/Images/dashMeasureImg.png'/>
As medidas são um componente fundamental do Power BI, permitindo que os usuários transformem dados brutos em informações valiosas.
<br/>
Ao entender os princípios básicos das medidas e as funções DAX, podemos criar dashboards mais sofisticados e personalizados para atender às suas necessidades de análise de negócios.
<br/>
As medidas nesse dashboard foram criadas para fornecer uma visão abrangente das vendas ao longo do tempo e por diferentes dimensões (canal, categoria, território, etc.).


<br/><br/>

## Conclusão
Este projeto demonstrou a importância da análise de dados para a tomada de decisões estratégicas. 
Os insights obtidos podem ser utilizados para otimizar as operações de vendas, identificar novas oportunidades de negócios e melhorar a experiência do cliente.

* <strong>TEMPO:</strong> As vendas apresentaram um crescimento significativo de 2007 para 2009, com a margem também aumentando no mesmo período.

* <strong>PRODUTO:</strong> A categoria de produtos e a classe de produtos são importantes drivers de receita, sendo possível identificar os produtos mais vendidos e suas respectivas margens.

* <strong>CANAL:</strong> A análise por canal de vendas revela quais canais são mais eficazes em gerar receita.

* <strong>GEOGRAFIA:</strong> O mapa permite visualizar as vendas por região geográfica, identificando os mercados mais promissores e aqueles que precisam de maior atenção.

* <strong>COMPARATIVOS:</strong> A comparação ano a ano (Year-over-Year, YoY) permite identificar tendências e variações nas métricas de vendas.

<br/>

## Ferramentas e linguagens utilizadas
<div style="display: inline_block">
    <img align="center" alt="SQL" height="40" width="40" src="https://github.com/BruceFonseca/ferramentas/blob/main/logo.png?raw=true">
    <img align="center" alt="Power BI" height="40" width="40" src="https://github.com/BruceFonseca/ferramentas/blob/main/1200px-New_Power_BI_Logo.svg.png?raw=true">
</div>
