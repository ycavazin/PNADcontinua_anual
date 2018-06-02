# PNADcontinua_anual
Study based on PNADcontinua anual from IBGE with MySQL

TXT files from IBGE can be found [here](https://downloads.ibge.gov.br/downloads_estatisticas.htm?caminho=Trabalho_e_Rendimento/Pesquisa_Nacional_por_Amostra_de_Domicilios_continua/Anual/Microdados/Dados)

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

* *Error_Code: 1206 => The total number of locks exceeds the lock table size*

First show current variable size:

mysql> `SHOW VARIABLES LIKE '%innodb_buffer_pool_size%'`;

Changed innodb_buffer_pool_size to 402653184 directly at SQL

mysql> `SET GLOBAL innodb_buffer_pool_size=402653184;`

* *Error_Code: 1290 => The MySQL server is running with the --secure-file-priv option so it cannot execute this statement* 

First show current variable path:

mysql> `SHOW VARIABLES LIKE "secure_file_priv";`

Then, execute the Insert with the variable value in the beggining of the file path:

mysql> `LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PNADC_2012_entr1_20180504.txt'`

## Creating the Schema
`CREATE SCHEMA 'microdados_mb';`

## Creating the Table
Use .sql file #1

*Note: In order to have a better view of each publication made by IBGE, a column named "edicao" was created*

