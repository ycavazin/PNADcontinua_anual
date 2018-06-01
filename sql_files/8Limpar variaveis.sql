--------------------------------------------------------
-- Substituir Variáveis
--------------------------------------------------------
-- V2008
select V2008
from pnad_continua_anual
where V2008 like '99';

update pnad_continua_anual
set V2008 = ' '
where V2008 like '99';

-- V20081
select V20081
from pnad_continua_anual
where V20081 like '99';

update pnad_continua_anual
set V20081 = ' '
where V20081 like '99';

-- V20082
select V20082
from pnad_continua_anual
where V20082 like '9999';

update pnad_continua_anual
set V20082 = ' '
where V20082 like '9999';

-- S060061
select S060061
from pnad_continua_anual
where S060061 like '99';

update pnad_continua_anual
set S060061 = ' '
where S060061 like '99';


--------------------------------------------------------
-- Limpar Variáveis: Verificar Mínimo e Máximo
--------------------------------------------------------
select 
min(V1008)  ,  max(V1008),
min(V1014)  ,  max(V1014),
min(V2001)  ,  max(V2001),
min(V2003)  ,  max(V2003),
min(V2008)  ,  max(V2008),
min(V20081) ,  max(V20081),
min(V20082) ,  max(V20082),
min(V2009)  ,  max(V2009),
min(V40081) ,  max(V40081),
min(V40082) ,  max(V40082),
min(V40083) ,  max(V40083),
min(V4010)  ,  max(V4010),
min(V4013)  ,  max(V4013),
min(V401511) ,  max(V401511),
min(V401512) ,  max(V401512),
min(V40161)  ,  max(V40161),
min(V40162)  ,  max(V40162),
min(V40163)  ,  max(V40163),
min(V401711) ,  max(V401711),
min(V40181)  ,  max(V40181),
min(V40182)  ,  max(V40182),
min(V40183)  ,  max(V40183),
min(V403312) ,  max(V403312),
min(V403322) ,  max(V403322),
min(V403412) ,  max(V403412),
min(V403422) ,  max(V403422),
min(V4039)   ,  max(V4039),
min(V4039C)  ,  max(V4039C),
min(V40401)  ,  max(V40401),
min(V40402)  ,  max(V40402),
min(V40403)  ,  max(V40403),
min(V4041)   ,  max(V4041),
min(V4044)   ,  max(V4044),
min( V405012) ,  max( V405012),
min(V405022) ,  max(V405022),
min(V405112) ,  max(V405112),
min(V405122) ,  max(V405122),
min(V4056)   ,  max(V4056),
min(V4056C)  ,  max(V4056C),
min(V405812) ,  max(V405812),
min(V405822) ,  max(V405822),
min(V405912) ,  max(V405912),
min(V405922) ,  max(V405922),
min(V4062)   ,  max(V4062),
min(V4062C)  ,  max(V4062C),
min(V4075A1) ,  max(V4075A1),
min(V40761)  ,  max(V40761),
min(V40762)  ,  max(V40762),
min(V40763)  ,  max(V40763),
min(V4100)   ,  max(V4100),
min(V4101)   ,  max(V4101),
min(V4103)   ,  max(V4103),
min(V4104)   ,  max(V4104),
min(V4106)   ,  max(V4106),
min(V4107)   ,  max(V4107),
min(V4109)   ,  max(V4109),
min(V4112)   ,  max(V4112),
min(V4113)   ,  max(V4113),
min(V4115)   ,  max(V4115),
min(V4121B)  ,  max(V4121B),
min(V5001A2) ,  max(V5001A2),
min(V5002A2) ,  max(V5002A2),
min(V5003A2) ,  max(V5003A2),
min(V5004A2) ,  max(V5004A2),
min(V5006A2) ,  max(V5006A2),
min(V5007A2) ,  max(V5007A2),
min(S01005)  ,  max(S01005),
min(S01006)  ,  max(S01006),
min(S01011A) ,  max(S01011A),
min(S01011B) ,  max(S01011B),
min(S01018)  ,  max(S01018),
min(S01019)  ,  max(S01019),
min(S01021)  ,  max(S01021),
min(S060061) ,  max(S060061),
min(S06007)  ,  max(S06007),
min(S06010  ) ,  max(S06010  ),
min(S0601212) ,  max(S0601212),
min(S0601222) ,  max(S0601222),
min(S06013)  ,  max(S06013),
min(S06015)  ,  max(S06015),
min(S06016)  ,  max(S06016),
min(S06018)  ,  max(S06018),
min(S06019)  ,  max(S06019),
min(S06021)  ,  max(S06021),
min(S06022)  ,  max(S06022),
min(S06024)  ,  max(S06024),
min(S06025)  ,  max(S06025),
min(S06030)  ,  max(S06030),
min(VD2003)  ,  max(VD2003),
min(VD4016)  ,  max(VD4016),
min(VD4017)  ,  max(VD4017),
min(VD4019)  ,  max(VD4019),
min(VD4020)  ,  max(VD4020),
min(VD4022)  ,  max(VD4022),
min(VD4031)  ,  max(VD4031),
min(VD4032)  ,  max(VD4032),
min(VD4033)  ,  max(VD4033),
min(VD4034)  ,  max(VD4034),
min(VD4035)  ,  max(VD4035),
min(VD4047)  ,  max(VD4047),
min(VD4048)  ,  max(VD4048),
min(VD5001)  ,  max(VD5001),
min(VD5002)  ,  max(VD5002),
min(VD5004)  ,  max(VD5004),
min(VD5005)  ,  max(VD5005),
min(SD06002) ,  max(SD06002),
min(SD06003) ,  max(SD06003)
from pnad_continua_anual;


--------------------------------------------------------
-- Caso queira ver quantas observações acima de determinado valor
   -- select VD4016 from pnad_continua_anual
   -- where VD4016 >= 100000 and Tabela like '2017 5'
--------------------------------------------------------


















































