------------------------------------------------
-- Inserir variaveis na tabela
------------------------------------------------

-- 2017 - 1ª entrevista
------------------------------------------------
LOAD DATA INFILE 'PNADC_2017_entr1_20180426.txt'
INTO TABLE pnad_continua_anual LINES TERMINATED BY '\r\n' (@row) 
SET 
Edicao =  '2017_1',
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
V4020 = ' ',
V4021 = ' ',
V4022 = ' ',
V4024 = TRIM(SUBSTR(@ROW,162,1)),
V4025 = TRIM(SUBSTR(@ROW,163,1)),
V4026 = TRIM(SUBSTR(@ROW,164,1)),
V4027 = TRIM(SUBSTR(@ROW,165,1)),
V4028 = TRIM(SUBSTR(@ROW,166,1)),
V4029 = TRIM(SUBSTR(@ROW,167,1)),
V4030 = ' ',
V4031 = ' ',
V4032 = TRIM(SUBSTR(@ROW,168,1)),
V4033 = TRIM(SUBSTR(@ROW,169,1)),
V40331 = TRIM(SUBSTR(@ROW,170,1)),
V403311 = TRIM(SUBSTR(@ROW,171,1)),
V403312 = TRIM(SUBSTR(@ROW,172,8)),
V40332 = TRIM(SUBSTR(@ROW,180,1)),
V403321 = TRIM(SUBSTR(@ROW,181,1)),
V403322 = TRIM(SUBSTR(@ROW,182,8)),
V40333 = TRIM(SUBSTR(@ROW,190,1)),
V403331 = TRIM(SUBSTR(@ROW,191,1)),
V4034 = TRIM(SUBSTR(@ROW,192,1)),
V40341 = TRIM(SUBSTR(@ROW,193,1)),
V403411 = TRIM(SUBSTR(@ROW,194,1)),
V403412 = TRIM(SUBSTR(@ROW,195,8)),
V40342 = TRIM(SUBSTR(@ROW,203,1)),
V403421 = TRIM(SUBSTR(@ROW,204,1)),
V403422 = TRIM(SUBSTR(@ROW,205,8)),
V4035 = ' ',
V4036 = ' ',
V4039 = TRIM(SUBSTR(@ROW,213,3)),
V4039C = TRIM(SUBSTR(@ROW,216,3)),
V4040 = TRIM(SUBSTR(@ROW,219,1)),
V40401 = TRIM(SUBSTR(@ROW,220,2)),
V40402 = TRIM(SUBSTR(@ROW,222,2)),
V40403 = TRIM(SUBSTR(@ROW,224,2)),
V4041 = TRIM(SUBSTR(@ROW,226,4)),
V4043 = TRIM(SUBSTR(@ROW,230,1)),
V40431 = TRIM(SUBSTR(@ROW,231,1)),
V4044 = TRIM(SUBSTR(@ROW,232,5)),
V4045 = TRIM(SUBSTR(@ROW,237,1)),
V4046 = TRIM(SUBSTR(@ROW,238,1)),
V4047 = TRIM(SUBSTR(@ROW,239,1)),
V4048 = TRIM(SUBSTR(@ROW,240,1)),
V4049 = TRIM(SUBSTR(@ROW,241,1)),
V4050 = TRIM(SUBSTR(@ROW,242,1)),
V40501 = TRIM(SUBSTR(@ROW,243,1)),
V405011 = TRIM(SUBSTR(@ROW,244,1)),
V405012 = TRIM(SUBSTR(@ROW,245,8)),
V40502 = TRIM(SUBSTR(@ROW,253,1)),
V405021 = TRIM(SUBSTR(@ROW,254,1)),
V405022 = TRIM(SUBSTR(@ROW,255,8)),
V40503 = TRIM(SUBSTR(@ROW,263,1)),
V405031 = TRIM(SUBSTR(@ROW,264,1)),
V4051 = TRIM(SUBSTR(@ROW,265,1)),
V40511 = TRIM(SUBSTR(@ROW,266,1)),
V405111 = TRIM(SUBSTR(@ROW,267,1)),
V405112 = TRIM(SUBSTR(@ROW,268,8)),
V40512 = TRIM(SUBSTR(@ROW,276,1)),
V405121 = TRIM(SUBSTR(@ROW,277,1)),
V405122 = TRIM(SUBSTR(@ROW,278,8)),
V4052 = ' ',
V4053 = ' ',
V4056 = TRIM(SUBSTR(@ROW,286,3)),
V4056C = TRIM(SUBSTR(@ROW,289,3)),
V4057 = TRIM(SUBSTR(@ROW,292,1)),
V4058 = TRIM(SUBSTR(@ROW,293,1)),
V40581 = TRIM(SUBSTR(@ROW,294,1)),
V405811 = TRIM(SUBSTR(@ROW,295,1)),
V405812 = TRIM(SUBSTR(@ROW,296,8)),
V40582 = TRIM(SUBSTR(@ROW,304,1)),
V405821 = TRIM(SUBSTR(@ROW,305,1)),
V405822 = TRIM(SUBSTR(@ROW,306,8)),
V40583 = TRIM(SUBSTR(@ROW,314,1)),
V405831 = TRIM(SUBSTR(@ROW,315,1)),
V40584 = TRIM(SUBSTR(@ROW,316,1)),
V4059 = TRIM(SUBSTR(@ROW,317,1)),
V40591 = TRIM(SUBSTR(@ROW,318,1)),
V405911 = TRIM(SUBSTR(@ROW,319,1)),
V405912 = TRIM(SUBSTR(@ROW,320,8)),
V40592 = TRIM(SUBSTR(@ROW,328,1)),
V405921 = TRIM(SUBSTR(@ROW,329,1)),
V405922 = TRIM(SUBSTR(@ROW,330,8)),
V4062 = TRIM(SUBSTR(@ROW,338,3)),
V4062C = TRIM(SUBSTR(@ROW,341,3)),
V4063 = ' ',
V4064 = ' ',
V4064 = ' ',
V4064A = TRIM(SUBSTR(@ROW,345,1)),
V4071 = TRIM(SUBSTR(@ROW,346,1)),
V4072 = ' ',
V4072A = TRIM(SUBSTR(@ROW,347,1)),
V4073 = TRIM(SUBSTR(@ROW,348,1)),
V4074 = ' ',
V4074A = TRIM(SUBSTR(@ROW,349,2)),
V4075A = TRIM(SUBSTR(@ROW,351,1)),
V4075A1 = TRIM(SUBSTR(@ROW,352,2)),
V4076 = TRIM(SUBSTR(@ROW,354,1)),
V40761 = TRIM(SUBSTR(@ROW,355,2)),
V40762 = TRIM(SUBSTR(@ROW,357,2)),
V40763 = TRIM(SUBSTR(@ROW,359,2)),
V4077 = TRIM(SUBSTR(@ROW,361,1)),
V4078 = ' ',
V4078A = TRIM(SUBSTR(@ROW,362,1)),
V4082 = TRIM(SUBSTR(@ROW,363,1)),
V4097 = ' ',
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
V5001A = TRIM(SUBSTR(@ROW,364,1)),
V5001A2 = TRIM(SUBSTR(@ROW,365,8)),
V5002A = TRIM(SUBSTR(@ROW,373,1)),
V5002A2 = TRIM(SUBSTR(@ROW,374,8)),
V5003A = TRIM(SUBSTR(@ROW,382,1)),
V5003A2 = TRIM(SUBSTR(@ROW,383,8)),
V5004A = TRIM(SUBSTR(@ROW,391,1)),
V5004A2 = TRIM(SUBSTR(@ROW,392,8)),
V5006A = TRIM(SUBSTR(@ROW,400,1)),
V5006A2 = TRIM(SUBSTR(@ROW,401,8)),
V5007A = TRIM(SUBSTR(@ROW,409,1)),
V5007A2 = TRIM(SUBSTR(@ROW,410,8)),
S01001 = TRIM(SUBSTR(@ROW,418,1)),
S01002 = TRIM(SUBSTR(@ROW,419,1)),
S01003 = TRIM(SUBSTR(@ROW,420,1)),
S01004 = TRIM(SUBSTR(@ROW,421,1)),
S01005 = TRIM(SUBSTR(@ROW,422,2)),
S01006 = TRIM(SUBSTR(@ROW,424,2)),
S01007 = TRIM(SUBSTR(@ROW,426,1)),
S01008 = TRIM(SUBSTR(@ROW,427,1)),
S01009 = TRIM(SUBSTR(@ROW,428,1)),
S01010 = TRIM(SUBSTR(@ROW,429,1)),
S01011 = ' ',
S01011A = TRIM(SUBSTR(@ROW,430,2)),
S01011B = TRIM(SUBSTR(@ROW,432,2)),
S01011C = TRIM(SUBSTR(@ROW,434,1)),
S01012 = TRIM(SUBSTR(@ROW,435,1)),
S01013 = TRIM(SUBSTR(@ROW,436,1)),
S01014 = TRIM(SUBSTR(@ROW,437,1)),
S010141 = TRIM(SUBSTR(@ROW,438,1)),
S010142 = TRIM(SUBSTR(@ROW,439,1)),
S01015 = TRIM(SUBSTR(@ROW,440,1)),
S01016 = TRIM(SUBSTR(@ROW,441,1)),
S010161 = TRIM(SUBSTR(@ROW,442,1)),
S010162 = TRIM(SUBSTR(@ROW,443,1)),
S010163 = TRIM(SUBSTR(@ROW,444,1)),
S010164 = TRIM(SUBSTR(@ROW,445,1)),
S01017 = TRIM(SUBSTR(@ROW,446,1)),
S01018 = TRIM(SUBSTR(@ROW,447,8)),
S01019 = TRIM(SUBSTR(@ROW,455,8)),
S01020 = TRIM(SUBSTR(@ROW,463,1)),
S01021 = TRIM(SUBSTR(@ROW,464,2)),
S01022 = TRIM(SUBSTR(@ROW,466,1)),
S01023 = TRIM(SUBSTR(@ROW,467,1)),
S01024 = TRIM(SUBSTR(@ROW,468,1)),
S01025 = TRIM(SUBSTR(@ROW,469,1)),
S01026 = TRIM(SUBSTR(@ROW,470,1)),
S01027 = TRIM(SUBSTR(@ROW,471,1)),
S01028 = TRIM(SUBSTR(@ROW,472,1)),
S01029 = TRIM(SUBSTR(@ROW,473,1)),
S01030 = TRIM(SUBSTR(@ROW,474,1)),
S010301 = TRIM(SUBSTR(@ROW,475,1)),
S010302 = TRIM(SUBSTR(@ROW,476,1)),
S010303 = TRIM(SUBSTR(@ROW,477,1)),
S010304 = TRIM(SUBSTR(@ROW,478,1)),
S010305 = TRIM(SUBSTR(@ROW,479,1)),
S01031 = TRIM(SUBSTR(@ROW,480,1)),
S010311 = TRIM(SUBSTR(@ROW,481,1)),
S010312 = TRIM(SUBSTR(@ROW,482,1)),
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
VD2002 = TRIM(SUBSTR(@ROW,483,2)),
VD2003 = TRIM(SUBSTR(@ROW,485,2)),
VD2004 = TRIM(SUBSTR(@ROW,487,1)),
VD3001 = TRIM(SUBSTR(@ROW,488,1)),
VD3002 = TRIM(SUBSTR(@ROW,489,2)),
VD4001 = TRIM(SUBSTR(@ROW,491,1)),
VD4002 = TRIM(SUBSTR(@ROW,492,1)),
VD4003 = TRIM(SUBSTR(@ROW,493,1)),
VD4004 = TRIM(SUBSTR(@ROW,494,1)),
VD4005 = TRIM(SUBSTR(@ROW,495,1)),
VD4007 = TRIM(SUBSTR(@ROW,496,1)),
VD4008 = TRIM(SUBSTR(@ROW,497,1)),
VD4009 = TRIM(SUBSTR(@ROW,498,2)),
VD4010 = TRIM(SUBSTR(@ROW,500,2)),
VD4011 = TRIM(SUBSTR(@ROW,502,2)),
VD4012 = TRIM(SUBSTR(@ROW,504,1)),
VD4013 = TRIM(SUBSTR(@ROW,505,1)),
VD4014 = TRIM(SUBSTR(@ROW,506,1)),
VD4015 = TRIM(SUBSTR(@ROW,507,1)),
VD4016 = TRIM(SUBSTR(@ROW,508,8)),
VD4017 = TRIM(SUBSTR(@ROW,516,8)),
VD4018 = TRIM(SUBSTR(@ROW,524,1)),
VD4019 = TRIM(SUBSTR(@ROW,525,8)),
VD4020 = TRIM(SUBSTR(@ROW,533,8)),
VD4022 = ' ',
VD4023 = ' ',
VD4030 = TRIM(SUBSTR(@ROW,541,1)),
VD4031 = TRIM(SUBSTR(@ROW,542,3)),
VD4032 = ' ',
VD4033 = ' ',
VD4034 = ' ',
VD4035 = TRIM(SUBSTR(@ROW,545,3)),
VD4036 = TRIM(SUBSTR(@ROW,548,1)),
VD4037 = TRIM(SUBSTR(@ROW,549,1)),
VD4039 = ' ',
VD4040 = ' ',
VD4041 = ' ',
VD4042 = ' ',
VD4043 = ' ',
VD4047 = TRIM(SUBSTR(@ROW,550,8)),
VD4048 = TRIM(SUBSTR(@ROW,558,8)),
VD4049 = ' ',
VD5001 = TRIM(SUBSTR(@ROW,566,8)),
VD5002 = TRIM(SUBSTR(@ROW,574,8)),
VD5003 = TRIM(SUBSTR(@ROW,582,1)),
VD5004 = TRIM(SUBSTR(@ROW,583,8)),
VD5005 = TRIM(SUBSTR(@ROW,591,8)),
VD5006 = TRIM(SUBSTR(@ROW,599,1)),
SD06001 = ' ',
SD06002 = ' ',
SD06003 = ' ';