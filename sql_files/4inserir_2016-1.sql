------------------------------------------------
-- Inserir variaveis na tabela
------------------------------------------------

-- 2016 - 1ª entrevista
------------------------------------------------
LOAD DATA INFILE 'PNADC_2016_entr1_20180223.txt' 
INTO TABLE pnad_continua_anual LINES TERMINATED BY '\r\n' (@row) 
SET 
Edicao =  '2016_1',
Ano = TRIM(SUBSTR(@ROW,1,4)),
Trimestre = TRIM(SUBSTR(@ROW,5,1)),
UF = TRIM(SUBSTR(@ROW,6,2)),
Capital = TRIM(SUBSTR(@ROW,8,2)),
RM_RIDE = TRIM(SUBSTR(@ROW,10,2)),
UPA = TRIM(SUBSTR(@ROW,12,9)),
Estrato = TRIM(SUBSTR(@ROW,21,7)),
V1008 = TRIM(SUBSTR(@ROW,28,2)),
V1014 = TRIM(SUBSTR(@ROW,30,2)),
V1022 = TRIM(SUBSTR(@ROW,32,1)),
V1023 = TRIM(SUBSTR(@ROW,33,1)),
V1030 = TRIM(SUBSTR(@ROW,34,9)),
V1031 = TRIM(SUBSTR(@ROW,43,15)),
V1032 = TRIM(SUBSTR(@ROW,58,15)),
posest = TRIM(SUBSTR(@ROW,73,3)),
V2001 = TRIM(SUBSTR(@ROW,76,2)),
V2003 = TRIM(SUBSTR(@ROW,78,2)),
V2005 = TRIM(SUBSTR(@ROW,80,2)),
V2007 = TRIM(SUBSTR(@ROW,82,1)),
V2008 = TRIM(SUBSTR(@ROW,83,2)),
V20081 = TRIM(SUBSTR(@ROW,85,2)),
V20082 = TRIM(SUBSTR(@ROW,87,4)),
V2009 = TRIM(SUBSTR(@ROW,91,3)),
V2010 = TRIM(SUBSTR(@ROW,94,1)),
V3001 = TRIM(SUBSTR(@ROW,95,1)),
V3002 = TRIM(SUBSTR(@ROW,96,1)),
V3002A = TRIM(SUBSTR(@ROW,97,1)),
V3003 = ' ',
V3003A = TRIM(SUBSTR(@ROW,98,2)),
V3004 = TRIM(SUBSTR(@ROW,100,1)),
V3005 = ' ',
V3005A = TRIM(SUBSTR(@ROW,101,1)),
V3006 = TRIM(SUBSTR(@ROW,102,2)),
V3007 = TRIM(SUBSTR(@ROW,104,1)),
V3008 = TRIM(SUBSTR(@ROW,105,1)),
V3009 = ' ',
V3009A = TRIM(SUBSTR(@ROW,106,2)),
V3010 = TRIM(SUBSTR(@ROW,108,1)),
V3011 = ' ',
V3011A = TRIM(SUBSTR(@ROW,109,1)),
V3012 = TRIM(SUBSTR(@ROW,110,1)),
V3013 = TRIM(SUBSTR(@ROW,111,2)),
V3014 = TRIM(SUBSTR(@ROW,113,1)),
V4001 = TRIM(SUBSTR(@ROW,114,1)),
V4002 = TRIM(SUBSTR(@ROW,115,1)),
V4003 = TRIM(SUBSTR(@ROW,116,1)),
V4004 = TRIM(SUBSTR(@ROW,117,1)),
V4005 = TRIM(SUBSTR(@ROW,118,1)),
V4006 = ' ',
V4006A = TRIM(SUBSTR(@ROW,119,1)),
V4007 = ' ',
V4008 = TRIM(SUBSTR(@ROW,120,1)),
V40081 = TRIM(SUBSTR(@ROW,121,2)),
V40082 = TRIM(SUBSTR(@ROW,123,2)),
V40083 = TRIM(SUBSTR(@ROW,125,2)),
V4009 = TRIM(SUBSTR(@ROW,127,1)),
V4010 = TRIM(SUBSTR(@ROW,128,4)),
V4012 = TRIM(SUBSTR(@ROW,132,1)),
V40121 = TRIM(SUBSTR(@ROW,133,1)),
V4013 = TRIM(SUBSTR(@ROW,134,5)),
V40132 = ' ',
V40132A = TRIM(SUBSTR(@ROW,139,1)),
V4014 = TRIM(SUBSTR(@ROW,140,1)),
V4015 = TRIM(SUBSTR(@ROW,141,1)),
V40151 = TRIM(SUBSTR(@ROW,142,1)),
V401511 = TRIM(SUBSTR(@ROW,143,1)),
V401512 = TRIM(SUBSTR(@ROW,144,2)),
V4016 = TRIM(SUBSTR(@ROW,146,1)),
V40161 = TRIM(SUBSTR(@ROW,147,1)),
V40162 = TRIM(SUBSTR(@ROW,148,2)),
V40163 = TRIM(SUBSTR(@ROW,150,2)),
V4017 = TRIM(SUBSTR(@ROW,152,1)),
V40171 = TRIM(SUBSTR(@ROW,153,1)),
V401711 = TRIM(SUBSTR(@ROW,154,1)),
V4018 = TRIM(SUBSTR(@ROW,155,1)),
V40181 = TRIM(SUBSTR(@ROW,156,1)),
V40182 = TRIM(SUBSTR(@ROW,157,2)),
V40183 = TRIM(SUBSTR(@ROW,159,2)),
V4019 = TRIM(SUBSTR(@ROW,161,1)),
V4020 = TRIM(SUBSTR(@ROW,162,1)),
V4021 = TRIM(SUBSTR(@ROW,163,1)),
V4022 = TRIM(SUBSTR(@ROW,164,1)),
V4024 = TRIM(SUBSTR(@ROW,165,1)),
V4025 = TRIM(SUBSTR(@ROW,166,1)),
V4026 = TRIM(SUBSTR(@ROW,167,1)),
V4027 = TRIM(SUBSTR(@ROW,168,1)),
V4028 = TRIM(SUBSTR(@ROW,169,1)),
V4029 = TRIM(SUBSTR(@ROW,170,1)),
V4030 = TRIM(SUBSTR(@ROW,171,1)),
V4031 = TRIM(SUBSTR(@ROW,172,1)),
V4032 = TRIM(SUBSTR(@ROW,173,1)),
V4033 = TRIM(SUBSTR(@ROW,174,1)),
V40331 = TRIM(SUBSTR(@ROW,175,1)),
V403311 = TRIM(SUBSTR(@ROW,176,1)),
V403312 = TRIM(SUBSTR(@ROW,177,8)),
V40332 = TRIM(SUBSTR(@ROW,185,1)),
V403321 = TRIM(SUBSTR(@ROW,186,1)),
V403322 = TRIM(SUBSTR(@ROW,187,8)),
V40333 = TRIM(SUBSTR(@ROW,195,1)),
V403331 = TRIM(SUBSTR(@ROW,196,1)),
V4034 = TRIM(SUBSTR(@ROW,197,1)),
V40341 = TRIM(SUBSTR(@ROW,198,1)),
V403411 = TRIM(SUBSTR(@ROW,199,1)),
V403412 = TRIM(SUBSTR(@ROW,200,8)),
V40342 = TRIM(SUBSTR(@ROW,208,1)),
V403421 = TRIM(SUBSTR(@ROW,209,1)),
V403422 = TRIM(SUBSTR(@ROW,210,8)),
V4035 = TRIM(SUBSTR(@ROW,218,1)),
V4036 = TRIM(SUBSTR(@ROW,219,1)),
V4039 = TRIM(SUBSTR(@ROW,220,3)),
V4039C = TRIM(SUBSTR(@ROW,223,3)),
V4040 = TRIM(SUBSTR(@ROW,226,1)),
V40401 = TRIM(SUBSTR(@ROW,227,2)),
V40402 = TRIM(SUBSTR(@ROW,229,2)),
V40403 = TRIM(SUBSTR(@ROW,231,2)),
V4041 = TRIM(SUBSTR(@ROW,233,4)),
V4043 = TRIM(SUBSTR(@ROW,237,1)),
V40431 = TRIM(SUBSTR(@ROW,238,1)),
V4044 = TRIM(SUBSTR(@ROW,239,5)),
V4045 = TRIM(SUBSTR(@ROW,244,1)),
V4046 = TRIM(SUBSTR(@ROW,245,1)),
V4047 = TRIM(SUBSTR(@ROW,246,1)),
V4048 = TRIM(SUBSTR(@ROW,247,1)),
V4049 = TRIM(SUBSTR(@ROW,248,1)),
V4050 = TRIM(SUBSTR(@ROW,249,1)),
V40501 = TRIM(SUBSTR(@ROW,250,1)),
V405011 = TRIM(SUBSTR(@ROW,251,1)),
V405012 = TRIM(SUBSTR(@ROW,252,8)),
V40502 = TRIM(SUBSTR(@ROW,260,1)),
V405021 = TRIM(SUBSTR(@ROW,261,1)),
V405022 = TRIM(SUBSTR(@ROW,262,8)),
V40503 = TRIM(SUBSTR(@ROW,270,1)),
V405031 = TRIM(SUBSTR(@ROW,271,1)),
V4051 = TRIM(SUBSTR(@ROW,272,1)),
V40511 = TRIM(SUBSTR(@ROW,273,1)),
V405111 = TRIM(SUBSTR(@ROW,274,1)),
V405112 = TRIM(SUBSTR(@ROW,275,8)),
V40512 = TRIM(SUBSTR(@ROW,283,1)),
V405121 = TRIM(SUBSTR(@ROW,284,1)),
V405122 = TRIM(SUBSTR(@ROW,285,8)),
V4052 = TRIM(SUBSTR(@ROW,293,1)),
V4053 = TRIM(SUBSTR(@ROW,294,1)),
V4056 = TRIM(SUBSTR(@ROW,295,3)),
V4056C = TRIM(SUBSTR(@ROW,298,3)),
V4057 = TRIM(SUBSTR(@ROW,301,1)),
V4058 = TRIM(SUBSTR(@ROW,302,1)),
V40581 = TRIM(SUBSTR(@ROW,303,1)),
V405811 = TRIM(SUBSTR(@ROW,304,1)),
V405812 = TRIM(SUBSTR(@ROW,305,8)),
V40582 = TRIM(SUBSTR(@ROW,313,1)),
V405821 = TRIM(SUBSTR(@ROW,314,1)),
V405822 = TRIM(SUBSTR(@ROW,315,8)),
V40583 = TRIM(SUBSTR(@ROW,323,1)),
V405831 = TRIM(SUBSTR(@ROW,324,1)),
V40584 = TRIM(SUBSTR(@ROW,325,1)),
V4059 = TRIM(SUBSTR(@ROW,326,1)),
V40591 = TRIM(SUBSTR(@ROW,327,1)),
V405911 = TRIM(SUBSTR(@ROW,328,1)),
V405912 = TRIM(SUBSTR(@ROW,329,8)),
V40592 = TRIM(SUBSTR(@ROW,337,1)),
V405921 = TRIM(SUBSTR(@ROW,338,1)),
V405922 = TRIM(SUBSTR(@ROW,339,8)),
V4062 = TRIM(SUBSTR(@ROW,347,3)),
V4062C = TRIM(SUBSTR(@ROW,350,3)),
V4063 = ' ',
V4064 = ' ',
V4064 = ' ',
V4064A = TRIM(SUBSTR(@ROW,354,1)),
V4071 = TRIM(SUBSTR(@ROW,355,1)),
V4072 = ' ',
V4072A = TRIM(SUBSTR(@ROW,356,1)),
V4073 = TRIM(SUBSTR(@ROW,357,1)),
V4074 = ' ',
V4074A = TRIM(SUBSTR(@ROW,358,2)),
V4075A = TRIM(SUBSTR(@ROW,360,1)),
V4075A1 = TRIM(SUBSTR(@ROW,361,2)),
V4076 = TRIM(SUBSTR(@ROW,363,1)),
V40761 = TRIM(SUBSTR(@ROW,364,2)),
V40762 = TRIM(SUBSTR(@ROW,366,2)),
V40763 = TRIM(SUBSTR(@ROW,368,2)),
V4077 = TRIM(SUBSTR(@ROW,370,1)),
V4078 = ' ',
V4078A = TRIM(SUBSTR(@ROW,371,1)),
V4082 = TRIM(SUBSTR(@ROW,372,1)),
V4097 = TRIM(SUBSTR(@ROW,373,1)),
V4099 = ' ',
V4100 = ' ',
V4101 = ' ',
V4102 = ' ',
V4103 = ' ',
V4104 = ' ',
V4105 = ' ',
V4106 = ' ',
V4107 = ' ',
V4108 = ' ',
V4109 = ' ',
V4110 = ' ',
V4111 = ' ',
V41111 = ' ',
V41112 = ' ',
V41113 = ' ',
V41114 = ' ',
V41115 = ' ',
V41116 = ' ',
V41117 = ' ',
V4111A = ' ',
V4112 = ' ',
V4113 = ' ',
V4114 = ' ',
V4115 = ' ',
V4117A = ' ',
V4117A1 = ' ',
V4117A2 = ' ',
V4117A3 = ' ',
V4117A4 = ' ',
V4117A5 = ' ',
V4117A6 = ' ',
V4119 = ' ',
V4120 = ' ',
V41201 = ' ',
V41202 = ' ',
V41203 = ' ',
V41204 = ' ',
V41205 = ' ',
V41206 = ' ',
V41207 = ' ',
V41208 = ' ',
V4121A = ' ',
V4121B = ' ',
V5001A = TRIM(SUBSTR(@ROW,374,1)),
V5001A2 = TRIM(SUBSTR(@ROW,375,8)),
V5002A = TRIM(SUBSTR(@ROW,383,1)),
V5002A2 = TRIM(SUBSTR(@ROW,384,8)),
V5003A = TRIM(SUBSTR(@ROW,392,1)),
V5003A2 = TRIM(SUBSTR(@ROW,393,8)),
V5004A = TRIM(SUBSTR(@ROW,401,1)),
V5004A2 = TRIM(SUBSTR(@ROW,402,8)),
V5006A = TRIM(SUBSTR(@ROW,410,1)),
V5006A2 = TRIM(SUBSTR(@ROW,411,8)),
V5007A = TRIM(SUBSTR(@ROW,419,1)),
V5007A2 = TRIM(SUBSTR(@ROW,420,8)),
S01001 = TRIM(SUBSTR(@ROW,428,1)),
S01002 = TRIM(SUBSTR(@ROW,429,1)),
S01003 = TRIM(SUBSTR(@ROW,430,1)),
S01004 = TRIM(SUBSTR(@ROW,431,1)),
S01005 = TRIM(SUBSTR(@ROW,432,2)),
S01006 = TRIM(SUBSTR(@ROW,434,2)),
S01007 = TRIM(SUBSTR(@ROW,436,1)),
S01008 = TRIM(SUBSTR(@ROW,437,1)),
S01009 = TRIM(SUBSTR(@ROW,438,1)),
S01010 = TRIM(SUBSTR(@ROW,439,1)),
S01011 = TRIM(SUBSTR(@ROW,440,2)),
S01011A = ' ',
S01011B = ' ',
S01011C = ' ',
S01012 = TRIM(SUBSTR(@ROW,442,1)),
S01013 = TRIM(SUBSTR(@ROW,443,1)),
S01014 = TRIM(SUBSTR(@ROW,444,1)),
S010141 = TRIM(SUBSTR(@ROW,445,1)),
S010142 = TRIM(SUBSTR(@ROW,446,1)),
S01015 = TRIM(SUBSTR(@ROW,447,1)),
S01016 = TRIM(SUBSTR(@ROW,448,1)),
S010161 = TRIM(SUBSTR(@ROW,449,1)),
S010162 = TRIM(SUBSTR(@ROW,450,1)),
S010163 = TRIM(SUBSTR(@ROW,451,1)),
S010164 = TRIM(SUBSTR(@ROW,452,1)),
S01017 = TRIM(SUBSTR(@ROW,453,1)),
S01018 = TRIM(SUBSTR(@ROW,454,8)),
S01019 = TRIM(SUBSTR(@ROW,462,8)),
S01020 = TRIM(SUBSTR(@ROW,470,1)),
S01021 = TRIM(SUBSTR(@ROW,471,2)),
S01022 = TRIM(SUBSTR(@ROW,473,1)),
S01023 = TRIM(SUBSTR(@ROW,474,1)),
S01024 = TRIM(SUBSTR(@ROW,475,1)),
S01025 = TRIM(SUBSTR(@ROW,476,1)),
S01026 = TRIM(SUBSTR(@ROW,477,1)),
S01027 = TRIM(SUBSTR(@ROW,478,1)),
S01028 = TRIM(SUBSTR(@ROW,479,1)),
S01029 = TRIM(SUBSTR(@ROW,480,1)),
S01030 = TRIM(SUBSTR(@ROW,481,1)),
S010301 = TRIM(SUBSTR(@ROW,482,1)),
S010302 = TRIM(SUBSTR(@ROW,483,1)),
S010303 = TRIM(SUBSTR(@ROW,484,1)),
S010304 = TRIM(SUBSTR(@ROW,485,1)),
S010305 = TRIM(SUBSTR(@ROW,486,1)),
S01031 = TRIM(SUBSTR(@ROW,487,1)),
S010311 = TRIM(SUBSTR(@ROW,488,1)),
S010312 = TRIM(SUBSTR(@ROW,489,1)),
S06001 = ' ',
S06002 = ' ',
S06003 = ' ',
S06004 = ' ',
S06005 = ' ',
S06006 = ' ',
S060061 = ' ',
S06007 = ' ',
S06009 = ' ',
S060091 = ' ',
S06010 = ' ',
S06012 = ' ',
S060121 = ' ',
S0601212 = ' ',
S060122 = ' ',
S0601222 = ' ',
S060123 = ' ',
S06013 = ' ',
S06014 = ' ',
S06015 = ' ',
S06016 = ' ',
S06017 = ' ',
S06018 = ' ',
S06019 = ' ',
S06020 = ' ',
S06021 = ' ',
S06022 = ' ',
S06023 = ' ',
S06024 = ' ',
S06025 = ' ',
S06026 = ' ',
S060261 = ' ',
S060262 = ' ',
S060263 = ' ',
S060264 = ' ',
S060265 = ' ',
S060266 = ' ',
S06027 = ' ',
S06028 = ' ',
S060281 = ' ',
S060282 = ' ',
S060283 = ' ',
S060284 = ' ',
S060285 = ' ',
S060286 = ' ',
S060287 = ' ',
S060288 = ' ',
S06029 = ' ',
S06030 = ' ',
VD2002 = TRIM(SUBSTR(@ROW,490,2)),
VD2003 = TRIM(SUBSTR(@ROW,492,2)),
VD2004 = TRIM(SUBSTR(@ROW,494,1)),
VD3001 = TRIM(SUBSTR(@ROW,495,1)),
VD3002 = TRIM(SUBSTR(@ROW,496,2)),
VD4001 = TRIM(SUBSTR(@ROW,498,1)),
VD4002 = TRIM(SUBSTR(@ROW,499,1)),
VD4003 = TRIM(SUBSTR(@ROW,500,1)),
VD4004 = TRIM(SUBSTR(@ROW,501,1)),
VD4005 = TRIM(SUBSTR(@ROW,502,1)),
VD4007 = TRIM(SUBSTR(@ROW,503,1)),
VD4008 = TRIM(SUBSTR(@ROW,504,1)),
VD4009 = TRIM(SUBSTR(@ROW,505,2)),
VD4010 = TRIM(SUBSTR(@ROW,507,2)),
VD4011 = TRIM(SUBSTR(@ROW,509,2)),
VD4012 = TRIM(SUBSTR(@ROW,511,1)),
VD4013 = TRIM(SUBSTR(@ROW,512,1)),
VD4014 = TRIM(SUBSTR(@ROW,513,1)),
VD4015 = TRIM(SUBSTR(@ROW,514,1)),
VD4016 = TRIM(SUBSTR(@ROW,515,8)),
VD4017 = TRIM(SUBSTR(@ROW,523,8)),
VD4018 = TRIM(SUBSTR(@ROW,531,1)),
VD4019 = TRIM(SUBSTR(@ROW,532,8)),
VD4020 = TRIM(SUBSTR(@ROW,540,8)),
VD4022 = TRIM(SUBSTR(@ROW,548,8)),
VD4023 = ' ',
VD4030 = TRIM(SUBSTR(@ROW,556,1)),
VD4031 = TRIM(SUBSTR(@ROW,557,3)),
VD4032 = ' ',
VD4033 = ' ',
VD4034 = ' ',
VD4035 = TRIM(SUBSTR(@ROW,560,3)),
VD4036 = TRIM(SUBSTR(@ROW,563,1)),
VD4037 = TRIM(SUBSTR(@ROW,564,1)),
VD4039 = ' ',
VD4040 = ' ',
VD4041 = ' ',
VD4042 = ' ',
VD4043 = ' ',
VD4047 = TRIM(SUBSTR(@ROW,565,8)),
VD4048 = TRIM(SUBSTR(@ROW,573,8)),
VD4049 = ' ',
VD5001 = TRIM(SUBSTR(@ROW,581,8)),
VD5002 = TRIM(SUBSTR(@ROW,589,8)),
VD5003 = TRIM(SUBSTR(@ROW,597,1)),
VD5004 = TRIM(SUBSTR(@ROW,598,8)),
VD5005 = TRIM(SUBSTR(@ROW,606,8)),
VD5006 = TRIM(SUBSTR(@ROW,614,1)),
SD06001 = ' ',
SD06002 = ' ',
SD06003 = ' ';