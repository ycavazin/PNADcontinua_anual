# PNADcontinua_anual
Study based on PNADcontinua anual from IBGE with MySQL

TXT files from IBGE can be found at:
https://downloads.ibge.gov.br/downloads_estatisticas.htm?caminho=Trabalho_e_Rendimento/Pesquisa_Nacional_por_Amostra_de_Domicilios_continua/Anual/Microdados/Dados

## Objectives

1. Load all TXT files from IBGE into a regular MySQL server;
2. Perform data cleansing;
3. Create variables:
* *Chave de Domicílio*
* *Renda Domicílio Trabalho*
* *Classe de Renda*
* *Região*
4. Provide the data with semantics on a PowerBI dashboard;
5. Provide the data as maps (to be discussed);

## Server-side modifications

### Modifications at my.ini file
`C:\ProgramData\MySQL\MySQL Server 8.0\my.ini`

### Modifications on live mysql

* *Error_Code: 1206*

First show current variable size:

mysql> `SHOW VARIABLES LIKE '%innodb_buffer_pool_size%'`;

Changed innodb_buffer_pool_size to 402653184 directly at SQL

mysql> `SET GLOBAL innodb_buffer_pool_size=402653184;`

* *Error_Code:* 
