--------------------------------------------------------
-- Criar Chave de Domicílio
--------------------------------------------------------

-- Selecionando para conferencia
select *
from pnad_continua_anual
where Ano like '2017' and V1014 like '05';

select concat(UPA,V1008,V1014) as chave_dom
from pnad_continua_anual
where Ano like '2017' and V1014 like '05' and concat(UPA,V1008,V1014) like '2700263041205';

select UPA,V1008,V1014
from pnad_continua_anual
where Ano like '2017' and V1014 like '05' and V1008 like '12';

-- Criar a Coluna da Variável
ALTER TABLE `microdados_mb`.`pnad_continua_anual` 
ADD COLUMN `chave_dom` VARCHAR(20) NULL DEFAULT NULL AFTER `V1014`;

-- Imputar os dados






--------------------------------------------------------
-- Criar Renda Total do Trabalho Domicilar
--------------------------------------------------------
-- renda total do trabalho = VD4020
select chave_dom, VD4020, Ano
from pnad_continua_anual
Gen Renda_dom_trab == Colapse sum (VD4020) by chave_dom and Ano;

-- Válida entre 2012 a 2015
-- Depois, vira VD5001


--------------------------------------------------------
-- Criar Classes de Renda
--------------------------------------------------------

-- Selecionando para conferencia
select classe_renda, VD4016, Ano
from pnad_continua_anual
where Ano like '2017' and VD5001 >= 14055;

-- Criar a Coluna da Variável
ALTER TABLE `microdados_mb`.`pnad_continua_anual` 
ADD COLUMN `classe_renda` VARCHAR(45) NULL DEFAULT NULL AFTER `SD06003`;

-- Imputar os dados

-- 2012
update pnad_continua_anual
set classe_renda = 1
where Ano like '2012' and Renda_dom_trab >= 10299
set classe_renda = 2
where Ano like '2012' and Renda_dom_trab >= 5493 and Renda_dom_trab < 10299
set classe_renda = 3
where Ano like '2012' and Renda_dom_trab >= 2060 and Renda_dom_trab < 5493
set classe_renda = 4
where Ano like '2012' and Renda_dom_trab >= 687 and Renda_dom_trab < 2060
set classe_renda = 5
where Ano like '2012' and Renda_dom_trab < 687

-- 2013
update pnad_continua_anual
set classe_renda = 1
where Ano like '2013' and Renda_dom_trab >= 10907
set classe_renda = 2
where Ano like '2013' and Renda_dom_trab >= 5817 and Renda_dom_trab < 10907
set classe_renda = 3
where Ano like '2013' and Renda_dom_trab >= 2181 and Renda_dom_trab < 5817
set classe_renda = 4
where Ano like '2013' and Renda_dom_trab >= 727 and Renda_dom_trab < 2181
set classe_renda = 5
where Ano like '2013' and Renda_dom_trab < 727

-- 2014
update pnad_continua_anual
set classe_renda = 1
where Ano like '2014' and Renda_dom_trab >= 11606
set classe_renda = 2
where Ano like '2014' and Renda_dom_trab >= 6190 and Renda_dom_trab < 11606
set classe_renda = 3
where Ano like '2014' and Renda_dom_trab >= 2321 and Renda_dom_trab < 6190
set classe_renda = 4
where Ano like '2014' and Renda_dom_trab >= 774 and Renda_dom_trab < 2321
set classe_renda = 5
where Ano like '2014' and Renda_dom_trab < 774

-- 2015
update pnad_continua_anual
set classe_renda = 1
where Ano like '2015' and Renda_dom_trab >= 12845
set classe_renda = 2
where Ano like '2015' and Renda_dom_trab >= 6851 and Renda_dom_trab < 12845
set classe_renda = 3
where Ano like '2015' and Renda_dom_trab >= 2569 and Renda_dom_trab < 6851
set classe_renda = 4
where Ano like '2015' and Renda_dom_trab >= 856 and Renda_dom_trab < 2569
set classe_renda = 5
where Ano like '2015' and Renda_dom_trab < 856

-- 2016
update pnad_continua_anual
set classe_renda = 1
where Ano like '2016' and VD5001 >= 13653
set classe_renda = 2
where Ano like '2016' and VD5001 >= 7281 and VD5001 < 13653
set classe_renda = 3
where Ano like '2016' and VD5001 >= 2731 and VD5001 < 7281
set classe_renda = 4
where Ano like '2016' and VD5001 >= 910 and VD5001 < 2731
set classe_renda = 5
where Ano like '2016' and VD5001 < 910

-- 2017
update pnad_continua_anual
set classe_renda = 1
where Ano like '2017' and VD5001 >= 14055
set classe_renda = 2
where Ano like '2017' and VD5001 >= 7496 and VD5001 < 14055
set classe_renda = 3
where Ano like '2017' and VD5001 >= 2811 and VD5001 < 7496
set classe_renda = 4
where Ano like '2017' and VD5001 >= 937 and VD5001 < 2811
set classe_renda = 5
where Ano like '2017' and VD5001 < 937


--------------------------------------------------------
-- Criar Variável de Região
--------------------------------------------------------

-- Criar a Coluna da Variável
ALTER TABLE `microdados_mb`.`pnad_continua_anual` 
ADD COLUMN `regiao` VARCHAR(2) NULL DEFAULT NULL AFTER `UF`;

-- Imputar os dados

-- Norte
update pnad_continua_anual
set regiao = 1
where UF = 11 OR UF = 12 OR UF = 13 OR UF = 14 OR UF = 15 OR UF = 16 OR UF = 17
set regiao = 2
where UF = 21 OR UF = 22 OR UF = 23 OR UF = 24 OR UF = 25 OR UF = 26 OR UF = 27 OR UF = 28 OR UF = 29
set regiao = 3
where UF = 31 OR UF = 32 OR UF = 33 OR UF = 35
set regiao = 4
where UF = 41 OR UF = 42 OR UF = 43
set regiao = 5
where UF = 50 OR UF = 51 OR UF = 52 OR UF = 53
