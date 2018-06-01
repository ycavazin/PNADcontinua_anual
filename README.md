# PNADcontinua_anual
Study based on PNADcontinua anual from IBGE with MySQL

TXT files from IBGE can be found at:
https://downloads.ibge.gov.br/downloads_estatisticas.htm?caminho=Trabalho_e_Rendimento/Pesquisa_Nacional_por_Amostra_de_Domicilios_continua/Anual/Microdados/Dados

#Objectives

1. Load all TXT files from IBGE into a regular MySQL server;
2. Perform data cleansing;
3. Create variables:
  - Chave de Domicílio
  - Renda Domicílio Trabalho
  - Classe de Renda
  - Região
4. Provide the data with semantics on a PowerBI dashboard;
5. Provide the data as maps (to be discussed);

#Server-side modifications
Most of the modifications were done at my.ini file at:
C:\ProgramData\MySQL\MySQL Server 8.0

Error_Code: 1206
Changed buffer_pool_size to 256M on my.ini file

