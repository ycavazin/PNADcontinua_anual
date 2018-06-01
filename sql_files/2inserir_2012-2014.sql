------------------------------------------------
-- Inserir variaveis na tabela
------------------------------------------------

-- 2012
------------------------------------------------
LOAD DATA INFILE 'PNADC_2012_entr1_20180504.txt' 
INTO TABLE pnad_continua_anual LINES TERMINATED BY '\r\n' (@row) 
SET 
Edicao =  '2012',
Ano =       TRIM(SUBSTR(@ROW,1,4)),
Trimestre = TRIM(SUBSTR(@ROW,5,1)),
UF =        TRIM(SUBSTR(@ROW,6,2)),
Capital =   TRIM(SUBSTR(@ROW,8,2)),
RM_RIDE =   TRIM(SUBSTR(@ROW,10,2)),
UPA =       TRIM(SUBSTR(@ROW,12,9)),
Estrato =   TRIM(SUBSTR(@ROW,21,7)),
V1008 =   TRIM(SUBSTR(@ROW,28,2)),
V1014 =   TRIM(SUBSTR(@ROW,30,2)),
V1022 =   TRIM(SUBSTR(@ROW,32,1)),
V1023 =   TRIM(SUBSTR(@ROW,33,1)),
V1030 =   TRIM(SUBSTR(@ROW,34,9)),
V1031 =   TRIM(SUBSTR(@ROW,43,15)),
V1032 =   TRIM(SUBSTR(@ROW,58,15)),
posest =  TRIM(SUBSTR(@ROW,73,3)),
V2001 =   TRIM(SUBSTR(@ROW,76,2)),
V2003 =   TRIM(SUBSTR(@ROW,78,2)),
V2005 =   TRIM(SUBSTR(@ROW,80,2)),
V2007 =   TRIM(SUBSTR(@ROW,82,1)),
V2008 =   TRIM(SUBSTR(@ROW,83,2)),
V20081 =  TRIM(SUBSTR(@ROW,85,2)),
V20082 =  TRIM(SUBSTR(@ROW,87,4)),
V2009 =   TRIM(SUBSTR(@ROW,91,3)),
V2010 =   TRIM(SUBSTR(@ROW,94,1)),
V3001 =   TRIM(SUBSTR(@ROW,95,1)),
V3002 =   TRIM(SUBSTR(@ROW,96,1)),
V3002A =  ' ',
V3003 =   TRIM(SUBSTR(@ROW,97,2)),
V3003A =  ' ',
V3004 =   TRIM(SUBSTR(@ROW,99,1)),
V3005 =   TRIM(SUBSTR(@ROW,100,1)),
V3005A =  ' ',
V3006 =   TRIM(SUBSTR(@ROW,101,2)),
V3007 =   TRIM(SUBSTR(@ROW,103,1)),
V3008 =   TRIM(SUBSTR(@ROW,104,1)),
V3009 =   TRIM(SUBSTR(@ROW,105,2)),
V3009A =  ' ',
V3010 =   TRIM(SUBSTR(@ROW,107,1)),
V3011 =   TRIM(SUBSTR(@ROW,108,1)),
V3011A =  ' ',
V3012 =   TRIM(SUBSTR(@ROW,109,1)),
V3013 =   TRIM(SUBSTR(@ROW,110,2)),
V3014 =   TRIM(SUBSTR(@ROW,112,1)),
V4001 =   TRIM(SUBSTR(@ROW,113,1)),
V4002 =   TRIM(SUBSTR(@ROW,114,1)),
V4003 =   TRIM(SUBSTR(@ROW,115,1)),
V4004 =   TRIM(SUBSTR(@ROW,116,1)),
V4005 =   TRIM(SUBSTR(@ROW,117,1)),
V4006 =   TRIM(SUBSTR(@ROW,118,1)),
V4006A =  ' ',
V4007 =   TRIM(SUBSTR(@ROW,119,1)),
V4008 =   TRIM(SUBSTR(@ROW,120,1)),
V40081 =  TRIM(SUBSTR(@ROW,121,2)),
V40082 =  TRIM(SUBSTR(@ROW,123,2)),
V40083 =  TRIM(SUBSTR(@ROW,125,2)),
V4009 =   TRIM(SUBSTR(@ROW,127,1)),
V4010 =   TRIM(SUBSTR(@ROW,128,4)),
V4012 =   TRIM(SUBSTR(@ROW,132,1)),
V40121 =  TRIM(SUBSTR(@ROW,133,1)),
V4013 =   TRIM(SUBSTR(@ROW,134,5)),
V40132 =  TRIM(SUBSTR(@ROW,139,1)),
V40132A = ' ',
V4014 =   TRIM(SUBSTR(@ROW,140,1)),
V4015 =   TRIM(SUBSTR(@ROW,141,1)),
V40151 =  TRIM(SUBSTR(@ROW,142,1)),
V401511 = TRIM(SUBSTR(@ROW,143,1)),
V401512 = TRIM(SUBSTR(@ROW,144,2)),
V4016 =   TRIM(SUBSTR(@ROW,146,1)),
V40161 =  TRIM(SUBSTR(@ROW,147,1)),
V40162 =  TRIM(SUBSTR(@ROW,148,2)),
V40163 =  TRIM(SUBSTR(@ROW,150,2)),
V4017 =   TRIM(SUBSTR(@ROW,152,1)),
V40171 =  TRIM(SUBSTR(@ROW,153,1)),
V401711 = TRIM(SUBSTR(@ROW,154,1)),
V4018 =   TRIM(SUBSTR(@ROW,155,1)),
V40181 =  TRIM(SUBSTR(@ROW,156,1)),
V40182 =  TRIM(SUBSTR(@ROW,157,2)),
V40183 =  TRIM(SUBSTR(@ROW,159,2)),
V4019 =   TRIM(SUBSTR(@ROW,161,1)),
V4020 =   TRIM(SUBSTR(@ROW,162,1)),
V4021 =   TRIM(SUBSTR(@ROW,163,1)),
V4022 =   TRIM(SUBSTR(@ROW,164,1)),
V4024 =   TRIM(SUBSTR(@ROW,165,1)),
V4025 =   TRIM(SUBSTR(@ROW,166,1)),
V4026 =   TRIM(SUBSTR(@ROW,167,1)),
V4027 =   TRIM(SUBSTR(@ROW,168,1)),
V4028 =   TRIM(SUBSTR(@ROW,169,1)),
V4029 =   TRIM(SUBSTR(@ROW,170,1)),
V4030 =   TRIM(SUBSTR(@ROW,171,1)),
V4031 =   TRIM(SUBSTR(@ROW,172,1)),
V4032 =   TRIM(SUBSTR(@ROW,173,1)),
V4033 =   TRIM(SUBSTR(@ROW,174,1)),
V40331 =  TRIM(SUBSTR(@ROW,175,1)),
V403311 = TRIM(SUBSTR(@ROW,176,1)),
V403312 = TRIM(SUBSTR(@ROW,177,8)),
V40332 =  TRIM(SUBSTR(@ROW,185,1)),
V403321 = TRIM(SUBSTR(@ROW,186,1)),
V403322 = TRIM(SUBSTR(@ROW,187,8)),
V40333 =  TRIM(SUBSTR(@ROW,195,1)),
V403331 = ' ',
V4034 =   TRIM(SUBSTR(@ROW,196,1)),
V40341 =  TRIM(SUBSTR(@ROW,197,1)),
V403411 = TRIM(SUBSTR(@ROW,198,1)),
V403412 = TRIM(SUBSTR(@ROW,199,8)),
V40342 =  TRIM(SUBSTR(@ROW,207,1)),
V403421 = TRIM(SUBSTR(@ROW,208,1)),
V403422 = TRIM(SUBSTR(@ROW,209,8)),
V4035 =   TRIM(SUBSTR(@ROW,217,1)),
V4036 =   TRIM(SUBSTR(@ROW,218,1)),
V4039 =   TRIM(SUBSTR(@ROW,219,3)),
V4039C =  ' ',
V4040 =   TRIM(SUBSTR(@ROW,222,1)),
V40401 =  TRIM(SUBSTR(@ROW,223,2)),
V40402 =  TRIM(SUBSTR(@ROW,225,2)),
V40403 =  TRIM(SUBSTR(@ROW,227,2)),
V4041 =   TRIM(SUBSTR(@ROW,229,4)),
V4043 =   TRIM(SUBSTR(@ROW,233,1)),
V40431 =  TRIM(SUBSTR(@ROW,234,1)),
V4044 =   TRIM(SUBSTR(@ROW,235,5)),
V4045 =   TRIM(SUBSTR(@ROW,240,1)),
V4046 =   TRIM(SUBSTR(@ROW,241,1)),
V4047 =   TRIM(SUBSTR(@ROW,242,1)),
V4048 =   TRIM(SUBSTR(@ROW,243,1)),
V4049 =   TRIM(SUBSTR(@ROW,244,1)),
V4050 =   TRIM(SUBSTR(@ROW,245,1)),
V40501 =  TRIM(SUBSTR(@ROW,246,1)),
V405011 = TRIM(SUBSTR(@ROW,247,1)),
V405012 = TRIM(SUBSTR(@ROW,248,8)),
V40502 =  TRIM(SUBSTR(@ROW,256,1)),
V405021 = TRIM(SUBSTR(@ROW,257,1)),
V405022 = TRIM(SUBSTR(@ROW,258,8)),
V40503 =  TRIM(SUBSTR(@ROW,266,1)),
V405031 = ' ',
V4051 =   TRIM(SUBSTR(@ROW,267,1)),
V40511 =  TRIM(SUBSTR(@ROW,268,1)),
V405111 = TRIM(SUBSTR(@ROW,269,1)),
V405112 = TRIM(SUBSTR(@ROW,270,8)),
V40512 =  TRIM(SUBSTR(@ROW,278,1)),
V405121 = TRIM(SUBSTR(@ROW,279,1)),
V405122 = TRIM(SUBSTR(@ROW,280,8)),
V4052 =   TRIM(SUBSTR(@ROW,288,1)),
V4053 =   TRIM(SUBSTR(@ROW,289,1)),
V4056 =   TRIM(SUBSTR(@ROW,290,3)),
V4056C =  ' ',
V4057 =   TRIM(SUBSTR(@ROW,293,1)),
V4058 =   TRIM(SUBSTR(@ROW,294,1)),
V40581 =  TRIM(SUBSTR(@ROW,295,1)),
V405811 = TRIM(SUBSTR(@ROW,296,1)),
V405812 = TRIM(SUBSTR(@ROW,297,8)),
V40582 =  TRIM(SUBSTR(@ROW,305,1)),
V405821 = TRIM(SUBSTR(@ROW,306,1)),
V405822 = TRIM(SUBSTR(@ROW,307,8)),
V40583 =  TRIM(SUBSTR(@ROW,315,1)),
V405831 = ' ',
V40584 =  TRIM(SUBSTR(@ROW,316,1)),
V4059 =   TRIM(SUBSTR(@ROW,317,1)),
V40591 =  TRIM(SUBSTR(@ROW,318,1)),
V405911 = TRIM(SUBSTR(@ROW,319,1)),
V405912 = TRIM(SUBSTR(@ROW,320,8)),
V40592 =  TRIM(SUBSTR(@ROW,328,1)),
V405921 = TRIM(SUBSTR(@ROW,329,1)),
V405922 = TRIM(SUBSTR(@ROW,330,8)),
V4062 =   TRIM(SUBSTR(@ROW,338,3)),
V4062C =  ' ',
V4063 =   TRIM(SUBSTR(@ROW,341,1)),
V4064 =   TRIM(SUBSTR(@ROW,342,1)),
V4064 =   TRIM(SUBSTR(@ROW,342,1)),
V4064A =  ' ',
V4071 =   TRIM(SUBSTR(@ROW,343,1)),
V4072 =   TRIM(SUBSTR(@ROW,344,2)),
V4072A =  ' ',
V4073 =   TRIM(SUBSTR(@ROW,346,1)),
V4074 =   TRIM(SUBSTR(@ROW,347,1)),
V4074A =  ' ',
V4075A =  ' ',
V4075A1 = ' ',
V4076 =   TRIM(SUBSTR(@ROW,348,1)),
V40761 =  TRIM(SUBSTR(@ROW,349,2)),
V40762 =  TRIM(SUBSTR(@ROW,351,2)),
V40763 =  TRIM(SUBSTR(@ROW,353,2)),
V4077 =   TRIM(SUBSTR(@ROW,355,1)),
V4078 =   TRIM(SUBSTR(@ROW,356,1)),
V4078A =  ' ',
V4082 =   TRIM(SUBSTR(@ROW,357,1)),
V4097 =   TRIM(SUBSTR(@ROW,358,1)),
V4099 =    ' ',
V4100 =    ' ',
V4101 =    ' ',
V4102 =    ' ',
V4103 =    ' ',
V4104 =    ' ',
V4105 =    ' ',
V4106 =    ' ',
V4107 =    ' ',
V4108 =    ' ',
V4109 =    ' ',
V4110 =    ' ',
V4111 =    ' ',
V41111 =   ' ',
V41112 =   ' ',
V41113 =   ' ',
V41114 =   ' ',
V41115 =   ' ',
V41116 =   ' ',
V41117 =   ' ',
V4111A =   ' ',
V4112 =    ' ',
V4113 =    ' ',
V4114 =    ' ',
V4115 =    ' ',
V4117A =   ' ',
V4117A1 =  ' ',
V4117A2 =  ' ',
V4117A3 =  ' ',
V4117A4 =  ' ',
V4117A5 =  ' ',
V4117A6 =  ' ',
V4119 =    ' ',
V4120 =    ' ',
V41201 =   ' ',
V41202 =   ' ',
V41203 =   ' ',
V41204 =   ' ',
V41205 =   ' ',
V41206 =   ' ',
V41207 =   ' ',
V41208 =   ' ',
V4121A =   ' ',
V4121B =   ' ',
V5001A =   ' ',
V5001A2 =  ' ',
V5002A =   ' ',
V5002A2 =  ' ',
V5003A =   ' ',
V5003A2 =  ' ',
V5004A =   ' ',
V5004A2 =  ' ',
V5006A =   ' ',
V5006A2 =  ' ',
V5007A =   ' ',
V5007A2 =  ' ',
S01001 =   ' ',
S01002 =   ' ',
S01003 =   ' ',
S01004 =   ' ',
S01005 =   ' ',
S01006 =   ' ',
S01007 =   ' ',
S01008 =   ' ',
S01009 =   ' ',
S01010 =   ' ',
S01011 =   ' ',
S01011A =  ' ',
S01011B =  ' ',
S01011C =  ' ',
S01012 =   ' ',
S01013 =   ' ',
S01014 =   ' ',
S010141 =  ' ',
S010142 =  ' ',
S01015 =   ' ',
S01016 =   ' ',
S010161 =  ' ',
S010162 =  ' ',
S010163 =  ' ',
S010164 =  ' ',
S01017 =   ' ',
S01018 =   ' ',
S01019 =   ' ',
S01020 =   ' ',
S01021 =   ' ',
S01022 =   ' ',
S01023 =   ' ',
S01024 =   ' ',
S01025 =   ' ',
S01026 =   ' ',
S01027 =   ' ',
S01028 =   ' ',
S01029 =   ' ',
S01030 =   ' ',
S010301 =  ' ',
S010302 =  ' ',
S010303 =  ' ',
S010304 =  ' ',
S010305 =  ' ',
S01031 =   ' ',
S010311 =  ' ',
S010312 =  ' ',
S06001 =   ' ',
S06002 =   ' ',
S06003 =   ' ',
S06004 =   ' ',
S06005 =   ' ',
S06006 =   ' ',
S060061 =  ' ',
S06007 =   ' ',
S06009 =   ' ',
S060091 =  ' ',
S06010 =   ' ',
S06012 =   ' ',
S060121 =  ' ',
S0601212 = ' ',
S060122 =  ' ',
S0601222 = ' ',
S060123 =  ' ',
S06013 =   ' ',
S06014 =   ' ',
S06015 =   ' ',
S06016 =   ' ',
S06017 =   ' ',
S06018 =   ' ',
S06019 =   ' ',
S06020 =   ' ',
S06021 =   ' ',
S06022 =   ' ',
S06023 =   ' ',
S06024 =   ' ',
S06025 =   ' ',
S06026 =   ' ',
S060261 =   ' ',
S060262 =   ' ',
S060263 =   ' ',
S060264 =   ' ',
S060265 =   ' ',
S060266 =   ' ',
S06027 =    ' ',
S06028 =    ' ',
S060281 =   ' ',
S060282 =   ' ',
S060283 =   ' ',
S060284 =   ' ',
S060285 =   ' ',
S060286 =   ' ',
S060287 =   ' ',
S060288 =   ' ',
S06029 =    ' ',
S06030 =    ' ',
VD2002 =  TRIM(SUBSTR(@ROW,359,2)),
VD2003 =  TRIM(SUBSTR(@ROW,361,2)),
VD2004 =  TRIM(SUBSTR(@ROW,363,1)),
VD3001 =  TRIM(SUBSTR(@ROW,364,1)),
VD3002 =  TRIM(SUBSTR(@ROW,365,2)),
VD4001 =  TRIM(SUBSTR(@ROW,367,1)),
VD4002 =  TRIM(SUBSTR(@ROW,368,1)),
VD4003 =  TRIM(SUBSTR(@ROW,369,1)),
VD4004 =  TRIM(SUBSTR(@ROW,370,1)),
VD4005 =  TRIM(SUBSTR(@ROW,371,1)),
VD4007 =  TRIM(SUBSTR(@ROW,372,1)),
VD4008 =  TRIM(SUBSTR(@ROW,373,1)),
VD4009 =  TRIM(SUBSTR(@ROW,374,2)),
VD4010 =  TRIM(SUBSTR(@ROW,376,2)),
VD4011 =  TRIM(SUBSTR(@ROW,378,2)),
VD4012 =  TRIM(SUBSTR(@ROW,380,1)),
VD4013 =  TRIM(SUBSTR(@ROW,381,1)),
VD4014 =  TRIM(SUBSTR(@ROW,382,1)),
VD4015 =  TRIM(SUBSTR(@ROW,383,1)),
VD4016 =  TRIM(SUBSTR(@ROW,384,8)),
VD4017 =  TRIM(SUBSTR(@ROW,392,8)),
VD4018 =  TRIM(SUBSTR(@ROW,400,1)),
VD4019 =  TRIM(SUBSTR(@ROW,401,8)),
VD4020 =  TRIM(SUBSTR(@ROW,409,8)),
VD4022 =  ' ',
VD4023 =  TRIM(SUBSTR(@ROW,417,1)),
VD4030 =  ' ',
VD4031 =  TRIM(SUBSTR(@ROW,418,3)),
VD4032 =  TRIM(SUBSTR(@ROW,421,3)),
VD4033 =  TRIM(SUBSTR(@ROW,424,3)),
VD4034 =  TRIM(SUBSTR(@ROW,427,3)),
VD4035 =  TRIM(SUBSTR(@ROW,430,3)),
VD4036 =  TRIM(SUBSTR(@ROW,433,1)),
VD4037 =  TRIM(SUBSTR(@ROW,434,1)),
VD4039 =  ' ',
VD4040 =  ' ',
VD4041 =  ' ',
VD4042 =  ' ',
VD4043 =  ' ',
VD4047 =  ' ',
VD4048 =  ' ',
VD4049 =  ' ',
VD5001 =  ' ',
VD5002 = '  ',
VD5003 =  ' ',
VD5004 =  ' ',
VD5005 =  ' ',
VD5006 =  ' ',
SD06001 = ' ',
SD06002 = ' ',
SD06003 = ' ';


-- 2013
------------------------------------------------
LOAD DATA INFILE 'PNADC_2013_entr1_20180504.txt' 
INTO TABLE pnad_continua_anual LINES TERMINATED BY '\r\n' (@row) 
SET 
Edicao =  '2013',
Ano =       TRIM(SUBSTR(@ROW,1,4)),
Trimestre = TRIM(SUBSTR(@ROW,5,1)),
UF =        TRIM(SUBSTR(@ROW,6,2)),
Capital =   TRIM(SUBSTR(@ROW,8,2)),
RM_RIDE =   TRIM(SUBSTR(@ROW,10,2)),
UPA =       TRIM(SUBSTR(@ROW,12,9)),
Estrato =   TRIM(SUBSTR(@ROW,21,7)),
V1008 =   TRIM(SUBSTR(@ROW,28,2)),
V1014 =   TRIM(SUBSTR(@ROW,30,2)),
V1022 =   TRIM(SUBSTR(@ROW,32,1)),
V1023 =   TRIM(SUBSTR(@ROW,33,1)),
V1030 =   TRIM(SUBSTR(@ROW,34,9)),
V1031 =   TRIM(SUBSTR(@ROW,43,15)),
V1032 =   TRIM(SUBSTR(@ROW,58,15)),
posest =  TRIM(SUBSTR(@ROW,73,3)),
V2001 =   TRIM(SUBSTR(@ROW,76,2)),
V2003 =   TRIM(SUBSTR(@ROW,78,2)),
V2005 =   TRIM(SUBSTR(@ROW,80,2)),
V2007 =   TRIM(SUBSTR(@ROW,82,1)),
V2008 =   TRIM(SUBSTR(@ROW,83,2)),
V20081 =  TRIM(SUBSTR(@ROW,85,2)),
V20082 =  TRIM(SUBSTR(@ROW,87,4)),
V2009 =   TRIM(SUBSTR(@ROW,91,3)),
V2010 =   TRIM(SUBSTR(@ROW,94,1)),
V3001 =   TRIM(SUBSTR(@ROW,95,1)),
V3002 =   TRIM(SUBSTR(@ROW,96,1)),
V3002A =  ' ',
V3003 =   TRIM(SUBSTR(@ROW,97,2)),
V3003A =  ' ',
V3004 =   TRIM(SUBSTR(@ROW,99,1)),
V3005 =   TRIM(SUBSTR(@ROW,100,1)),
V3005A =  ' ',
V3006 =   TRIM(SUBSTR(@ROW,101,2)),
V3007 =   TRIM(SUBSTR(@ROW,103,1)),
V3008 =   TRIM(SUBSTR(@ROW,104,1)),
V3009 =   TRIM(SUBSTR(@ROW,105,2)),
V3009A =  ' ',
V3010 =   TRIM(SUBSTR(@ROW,107,1)),
V3011 =   TRIM(SUBSTR(@ROW,108,1)),
V3011A =  ' ',
V3012 =   TRIM(SUBSTR(@ROW,109,1)),
V3013 =   TRIM(SUBSTR(@ROW,110,2)),
V3014 =   TRIM(SUBSTR(@ROW,112,1)),
V4001 =   TRIM(SUBSTR(@ROW,113,1)),
V4002 =   TRIM(SUBSTR(@ROW,114,1)),
V4003 =   TRIM(SUBSTR(@ROW,115,1)),
V4004 =   TRIM(SUBSTR(@ROW,116,1)),
V4005 =   TRIM(SUBSTR(@ROW,117,1)),
V4006 =   TRIM(SUBSTR(@ROW,118,1)),
V4006A =  ' ',
V4007 =   TRIM(SUBSTR(@ROW,119,1)),
V4008 =   TRIM(SUBSTR(@ROW,120,1)),
V40081 =  TRIM(SUBSTR(@ROW,121,2)),
V40082 =  TRIM(SUBSTR(@ROW,123,2)),
V40083 =  TRIM(SUBSTR(@ROW,125,2)),
V4009 =   TRIM(SUBSTR(@ROW,127,1)),
V4010 =   TRIM(SUBSTR(@ROW,128,4)),
V4012 =   TRIM(SUBSTR(@ROW,132,1)),
V40121 =  TRIM(SUBSTR(@ROW,133,1)),
V4013 =   TRIM(SUBSTR(@ROW,134,5)),
V40132 =  TRIM(SUBSTR(@ROW,139,1)),
V40132A = ' ',
V4014 =   TRIM(SUBSTR(@ROW,140,1)),
V4015 =   TRIM(SUBSTR(@ROW,141,1)),
V40151 =  TRIM(SUBSTR(@ROW,142,1)),
V401511 = TRIM(SUBSTR(@ROW,143,1)),
V401512 = TRIM(SUBSTR(@ROW,144,2)),
V4016 =   TRIM(SUBSTR(@ROW,146,1)),
V40161 =  TRIM(SUBSTR(@ROW,147,1)),
V40162 =  TRIM(SUBSTR(@ROW,148,2)),
V40163 =  TRIM(SUBSTR(@ROW,150,2)),
V4017 =   TRIM(SUBSTR(@ROW,152,1)),
V40171 =  TRIM(SUBSTR(@ROW,153,1)),
V401711 = TRIM(SUBSTR(@ROW,154,1)),
V4018 =   TRIM(SUBSTR(@ROW,155,1)),
V40181 =  TRIM(SUBSTR(@ROW,156,1)),
V40182 =  TRIM(SUBSTR(@ROW,157,2)),
V40183 =  TRIM(SUBSTR(@ROW,159,2)),
V4019 =   TRIM(SUBSTR(@ROW,161,1)),
V4020 =   TRIM(SUBSTR(@ROW,162,1)),
V4021 =   TRIM(SUBSTR(@ROW,163,1)),
V4022 =   TRIM(SUBSTR(@ROW,164,1)),
V4024 =   TRIM(SUBSTR(@ROW,165,1)),
V4025 =   TRIM(SUBSTR(@ROW,166,1)),
V4026 =   TRIM(SUBSTR(@ROW,167,1)),
V4027 =   TRIM(SUBSTR(@ROW,168,1)),
V4028 =   TRIM(SUBSTR(@ROW,169,1)),
V4029 =   TRIM(SUBSTR(@ROW,170,1)),
V4030 =   TRIM(SUBSTR(@ROW,171,1)),
V4031 =   TRIM(SUBSTR(@ROW,172,1)),
V4032 =   TRIM(SUBSTR(@ROW,173,1)),
V4033 =   TRIM(SUBSTR(@ROW,174,1)),
V40331 =  TRIM(SUBSTR(@ROW,175,1)),
V403311 = TRIM(SUBSTR(@ROW,176,1)),
V403312 = TRIM(SUBSTR(@ROW,177,8)),
V40332 =  TRIM(SUBSTR(@ROW,185,1)),
V403321 = TRIM(SUBSTR(@ROW,186,1)),
V403322 = TRIM(SUBSTR(@ROW,187,8)),
V40333 =  TRIM(SUBSTR(@ROW,195,1)),
V403331 = ' ',
V4034 =   TRIM(SUBSTR(@ROW,196,1)),
V40341 =  TRIM(SUBSTR(@ROW,197,1)),
V403411 = TRIM(SUBSTR(@ROW,198,1)),
V403412 = TRIM(SUBSTR(@ROW,199,8)),
V40342 =  TRIM(SUBSTR(@ROW,207,1)),
V403421 = TRIM(SUBSTR(@ROW,208,1)),
V403422 = TRIM(SUBSTR(@ROW,209,8)),
V4035 =   TRIM(SUBSTR(@ROW,217,1)),
V4036 =   TRIM(SUBSTR(@ROW,218,1)),
V4039 =   TRIM(SUBSTR(@ROW,219,3)),
V4039C =  ' ',
V4040 =   TRIM(SUBSTR(@ROW,222,1)),
V40401 =  TRIM(SUBSTR(@ROW,223,2)),
V40402 =  TRIM(SUBSTR(@ROW,225,2)),
V40403 =  TRIM(SUBSTR(@ROW,227,2)),
V4041 =   TRIM(SUBSTR(@ROW,229,4)),
V4043 =   TRIM(SUBSTR(@ROW,233,1)),
V40431 =  TRIM(SUBSTR(@ROW,234,1)),
V4044 =   TRIM(SUBSTR(@ROW,235,5)),
V4045 =   TRIM(SUBSTR(@ROW,240,1)),
V4046 =   TRIM(SUBSTR(@ROW,241,1)),
V4047 =   TRIM(SUBSTR(@ROW,242,1)),
V4048 =   TRIM(SUBSTR(@ROW,243,1)),
V4049 =   TRIM(SUBSTR(@ROW,244,1)),
V4050 =   TRIM(SUBSTR(@ROW,245,1)),
V40501 =  TRIM(SUBSTR(@ROW,246,1)),
V405011 = TRIM(SUBSTR(@ROW,247,1)),
V405012 = TRIM(SUBSTR(@ROW,248,8)),
V40502 =  TRIM(SUBSTR(@ROW,256,1)),
V405021 = TRIM(SUBSTR(@ROW,257,1)),
V405022 = TRIM(SUBSTR(@ROW,258,8)),
V40503 =  TRIM(SUBSTR(@ROW,266,1)),
V405031 = ' ',
V4051 =   TRIM(SUBSTR(@ROW,267,1)),
V40511 =  TRIM(SUBSTR(@ROW,268,1)),
V405111 = TRIM(SUBSTR(@ROW,269,1)),
V405112 = TRIM(SUBSTR(@ROW,270,8)),
V40512 =  TRIM(SUBSTR(@ROW,278,1)),
V405121 = TRIM(SUBSTR(@ROW,279,1)),
V405122 = TRIM(SUBSTR(@ROW,280,8)),
V4052 =   TRIM(SUBSTR(@ROW,288,1)),
V4053 =   TRIM(SUBSTR(@ROW,289,1)),
V4056 =   TRIM(SUBSTR(@ROW,290,3)),
V4056C =  ' ',
V4057 =   TRIM(SUBSTR(@ROW,293,1)),
V4058 =   TRIM(SUBSTR(@ROW,294,1)),
V40581 =  TRIM(SUBSTR(@ROW,295,1)),
V405811 = TRIM(SUBSTR(@ROW,296,1)),
V405812 = TRIM(SUBSTR(@ROW,297,8)),
V40582 =  TRIM(SUBSTR(@ROW,305,1)),
V405821 = TRIM(SUBSTR(@ROW,306,1)),
V405822 = TRIM(SUBSTR(@ROW,307,8)),
V40583 =  TRIM(SUBSTR(@ROW,315,1)),
V405831 = ' ',
V40584 =  TRIM(SUBSTR(@ROW,316,1)),
V4059 =   TRIM(SUBSTR(@ROW,317,1)),
V40591 =  TRIM(SUBSTR(@ROW,318,1)),
V405911 = TRIM(SUBSTR(@ROW,319,1)),
V405912 = TRIM(SUBSTR(@ROW,320,8)),
V40592 =  TRIM(SUBSTR(@ROW,328,1)),
V405921 = TRIM(SUBSTR(@ROW,329,1)),
V405922 = TRIM(SUBSTR(@ROW,330,8)),
V4062 =   TRIM(SUBSTR(@ROW,338,3)),
V4062C =  ' ',
V4063 =   TRIM(SUBSTR(@ROW,341,1)),
V4064 =   TRIM(SUBSTR(@ROW,342,1)),
V4064 =   TRIM(SUBSTR(@ROW,342,1)),
V4064A =  ' ',
V4071 =   TRIM(SUBSTR(@ROW,343,1)),
V4072 =   TRIM(SUBSTR(@ROW,344,2)),
V4072A =  ' ',
V4073 =   TRIM(SUBSTR(@ROW,346,1)),
V4074 =   TRIM(SUBSTR(@ROW,347,1)),
V4074A =  ' ',
V4075A =  ' ',
V4075A1 = ' ',
V4076 =   TRIM(SUBSTR(@ROW,348,1)),
V40761 =  TRIM(SUBSTR(@ROW,349,2)),
V40762 =  TRIM(SUBSTR(@ROW,351,2)),
V40763 =  TRIM(SUBSTR(@ROW,353,2)),
V4077 =   TRIM(SUBSTR(@ROW,355,1)),
V4078 =   TRIM(SUBSTR(@ROW,356,1)),
V4078A =  ' ',
V4082 =   TRIM(SUBSTR(@ROW,357,1)),
V4097 =   TRIM(SUBSTR(@ROW,358,1)),
V4099 =    ' ',
V4100 =    ' ',
V4101 =    ' ',
V4102 =    ' ',
V4103 =    ' ',
V4104 =    ' ',
V4105 =    ' ',
V4106 =    ' ',
V4107 =    ' ',
V4108 =    ' ',
V4109 =    ' ',
V4110 =    ' ',
V4111 =    ' ',
V41111 =   ' ',
V41112 =   ' ',
V41113 =   ' ',
V41114 =   ' ',
V41115 =   ' ',
V41116 =   ' ',
V41117 =   ' ',
V4111A =   ' ',
V4112 =    ' ',
V4113 =    ' ',
V4114 =    ' ',
V4115 =    ' ',
V4117A =   ' ',
V4117A1 =  ' ',
V4117A2 =  ' ',
V4117A3 =  ' ',
V4117A4 =  ' ',
V4117A5 =  ' ',
V4117A6 =  ' ',
V4119 =    ' ',
V4120 =    ' ',
V41201 =   ' ',
V41202 =   ' ',
V41203 =   ' ',
V41204 =   ' ',
V41205 =   ' ',
V41206 =   ' ',
V41207 =   ' ',
V41208 =   ' ',
V4121A =   ' ',
V4121B =   ' ',
V5001A =   ' ',
V5001A2 =  ' ',
V5002A =   ' ',
V5002A2 =  ' ',
V5003A =   ' ',
V5003A2 =  ' ',
V5004A =   ' ',
V5004A2 =  ' ',
V5006A =   ' ',
V5006A2 =  ' ',
V5007A =   ' ',
V5007A2 =  ' ',
S01001 =   ' ',
S01002 =   ' ',
S01003 =   ' ',
S01004 =   ' ',
S01005 =   ' ',
S01006 =   ' ',
S01007 =   ' ',
S01008 =   ' ',
S01009 =   ' ',
S01010 =   ' ',
S01011 =   ' ',
S01011A =  ' ',
S01011B =  ' ',
S01011C =  ' ',
S01012 =   ' ',
S01013 =   ' ',
S01014 =   ' ',
S010141 =  ' ',
S010142 =  ' ',
S01015 =   ' ',
S01016 =   ' ',
S010161 =  ' ',
S010162 =  ' ',
S010163 =  ' ',
S010164 =  ' ',
S01017 =   ' ',
S01018 =   ' ',
S01019 =   ' ',
S01020 =   ' ',
S01021 =   ' ',
S01022 =   ' ',
S01023 =   ' ',
S01024 =   ' ',
S01025 =   ' ',
S01026 =   ' ',
S01027 =   ' ',
S01028 =   ' ',
S01029 =   ' ',
S01030 =   ' ',
S010301 =  ' ',
S010302 =  ' ',
S010303 =  ' ',
S010304 =  ' ',
S010305 =  ' ',
S01031 =   ' ',
S010311 =  ' ',
S010312 =  ' ',
S06001 =   ' ',
S06002 =   ' ',
S06003 =   ' ',
S06004 =   ' ',
S06005 =   ' ',
S06006 =   ' ',
S060061 =  ' ',
S06007 =   ' ',
S06009 =   ' ',
S060091 =  ' ',
S06010 =   ' ',
S06012 =   ' ',
S060121 =  ' ',
S0601212 = ' ',
S060122 =  ' ',
S0601222 = ' ',
S060123 =  ' ',
S06013 =   ' ',
S06014 =   ' ',
S06015 =   ' ',
S06016 =   ' ',
S06017 =   ' ',
S06018 =   ' ',
S06019 =   ' ',
S06020 =   ' ',
S06021 =   ' ',
S06022 =   ' ',
S06023 =   ' ',
S06024 =   ' ',
S06025 =   ' ',
S06026 =   ' ',
S060261 =   ' ',
S060262 =   ' ',
S060263 =   ' ',
S060264 =   ' ',
S060265 =   ' ',
S060266 =   ' ',
S06027 =    ' ',
S06028 =    ' ',
S060281 =   ' ',
S060282 =   ' ',
S060283 =   ' ',
S060284 =   ' ',
S060285 =   ' ',
S060286 =   ' ',
S060287 =   ' ',
S060288 =   ' ',
S06029 =    ' ',
S06030 =    ' ',
VD2002 =  TRIM(SUBSTR(@ROW,359,2)),
VD2003 =  TRIM(SUBSTR(@ROW,361,2)),
VD2004 =  TRIM(SUBSTR(@ROW,363,1)),
VD3001 =  TRIM(SUBSTR(@ROW,364,1)),
VD3002 =  TRIM(SUBSTR(@ROW,365,2)),
VD4001 =  TRIM(SUBSTR(@ROW,367,1)),
VD4002 =  TRIM(SUBSTR(@ROW,368,1)),
VD4003 =  TRIM(SUBSTR(@ROW,369,1)),
VD4004 =  TRIM(SUBSTR(@ROW,370,1)),
VD4005 =  TRIM(SUBSTR(@ROW,371,1)),
VD4007 =  TRIM(SUBSTR(@ROW,372,1)),
VD4008 =  TRIM(SUBSTR(@ROW,373,1)),
VD4009 =  TRIM(SUBSTR(@ROW,374,2)),
VD4010 =  TRIM(SUBSTR(@ROW,376,2)),
VD4011 =  TRIM(SUBSTR(@ROW,378,2)),
VD4012 =  TRIM(SUBSTR(@ROW,380,1)),
VD4013 =  TRIM(SUBSTR(@ROW,381,1)),
VD4014 =  TRIM(SUBSTR(@ROW,382,1)),
VD4015 =  TRIM(SUBSTR(@ROW,383,1)),
VD4016 =  TRIM(SUBSTR(@ROW,384,8)),
VD4017 =  TRIM(SUBSTR(@ROW,392,8)),
VD4018 =  TRIM(SUBSTR(@ROW,400,1)),
VD4019 =  TRIM(SUBSTR(@ROW,401,8)),
VD4020 =  TRIM(SUBSTR(@ROW,409,8)),
VD4022 =  ' ',
VD4023 =  TRIM(SUBSTR(@ROW,417,1)),
VD4030 =  ' ',
VD4031 =  TRIM(SUBSTR(@ROW,418,3)),
VD4032 =  TRIM(SUBSTR(@ROW,421,3)),
VD4033 =  TRIM(SUBSTR(@ROW,424,3)),
VD4034 =  TRIM(SUBSTR(@ROW,427,3)),
VD4035 =  TRIM(SUBSTR(@ROW,430,3)),
VD4036 =  TRIM(SUBSTR(@ROW,433,1)),
VD4037 =  TRIM(SUBSTR(@ROW,434,1)),
VD4039 =  ' ',
VD4040 =  ' ',
VD4041 =  ' ',
VD4042 =  ' ',
VD4043 =  ' ',
VD4047 =  ' ',
VD4048 =  ' ',
VD4049 =  ' ',
VD5001 =  ' ',
VD5002 =  ' ',
VD5003 =  ' ',
VD5004 =  ' ',
VD5005 =  ' ',
VD5006 =  ' ',
SD06001 = ' ',
SD06002 = ' ',
SD06003 = ' ';



-- 2014
------------------------------------------------
LOAD DATA INFILE 'PNADC_2014_entr1_20180504.txt' 
INTO TABLE pnad_continua_anual LINES TERMINATED BY '\r\n' (@row) 
SET 
Edicao =  '2014',
Ano =       TRIM(SUBSTR(@ROW,1,4)),
Trimestre = TRIM(SUBSTR(@ROW,5,1)),
UF =        TRIM(SUBSTR(@ROW,6,2)),
Capital =   TRIM(SUBSTR(@ROW,8,2)),
RM_RIDE =   TRIM(SUBSTR(@ROW,10,2)),
UPA =       TRIM(SUBSTR(@ROW,12,9)),
Estrato =   TRIM(SUBSTR(@ROW,21,7)),
V1008 =   TRIM(SUBSTR(@ROW,28,2)),
V1014 =   TRIM(SUBSTR(@ROW,30,2)),
V1022 =   TRIM(SUBSTR(@ROW,32,1)),
V1023 =   TRIM(SUBSTR(@ROW,33,1)),
V1030 =   TRIM(SUBSTR(@ROW,34,9)),
V1031 =   TRIM(SUBSTR(@ROW,43,15)),
V1032 =   TRIM(SUBSTR(@ROW,58,15)),
posest =  TRIM(SUBSTR(@ROW,73,3)),
V2001 =   TRIM(SUBSTR(@ROW,76,2)),
V2003 =   TRIM(SUBSTR(@ROW,78,2)),
V2005 =   TRIM(SUBSTR(@ROW,80,2)),
V2007 =   TRIM(SUBSTR(@ROW,82,1)),
V2008 =   TRIM(SUBSTR(@ROW,83,2)),
V20081 =  TRIM(SUBSTR(@ROW,85,2)),
V20082 =  TRIM(SUBSTR(@ROW,87,4)),
V2009 =   TRIM(SUBSTR(@ROW,91,3)),
V2010 =   TRIM(SUBSTR(@ROW,94,1)),
V3001 =   TRIM(SUBSTR(@ROW,95,1)),
V3002 =   TRIM(SUBSTR(@ROW,96,1)),
V3002A =  ' ',
V3003 =   TRIM(SUBSTR(@ROW,97,2)),
V3003A =  ' ',
V3004 =   TRIM(SUBSTR(@ROW,99,1)),
V3005 =   TRIM(SUBSTR(@ROW,100,1)),
V3005A =  ' ',
V3006 =   TRIM(SUBSTR(@ROW,101,2)),
V3007 =   TRIM(SUBSTR(@ROW,103,1)),
V3008 =   TRIM(SUBSTR(@ROW,104,1)),
V3009 =   TRIM(SUBSTR(@ROW,105,2)),
V3009A =  ' ',
V3010 =   TRIM(SUBSTR(@ROW,107,1)),
V3011 =   TRIM(SUBSTR(@ROW,108,1)),
V3011A =  ' ',
V3012 =   TRIM(SUBSTR(@ROW,109,1)),
V3013 =   TRIM(SUBSTR(@ROW,110,2)),
V3014 =   TRIM(SUBSTR(@ROW,112,1)),
V4001 =   TRIM(SUBSTR(@ROW,113,1)),
V4002 =   TRIM(SUBSTR(@ROW,114,1)),
V4003 =   TRIM(SUBSTR(@ROW,115,1)),
V4004 =   TRIM(SUBSTR(@ROW,116,1)),
V4005 =   TRIM(SUBSTR(@ROW,117,1)),
V4006 =   TRIM(SUBSTR(@ROW,118,1)),
V4006A =  ' ',
V4007 =   TRIM(SUBSTR(@ROW,119,1)),
V4008 =   TRIM(SUBSTR(@ROW,120,1)),
V40081 =  TRIM(SUBSTR(@ROW,121,2)),
V40082 =  TRIM(SUBSTR(@ROW,123,2)),
V40083 =  TRIM(SUBSTR(@ROW,125,2)),
V4009 =   TRIM(SUBSTR(@ROW,127,1)),
V4010 =   TRIM(SUBSTR(@ROW,128,4)),
V4012 =   TRIM(SUBSTR(@ROW,132,1)),
V40121 =  TRIM(SUBSTR(@ROW,133,1)),
V4013 =   TRIM(SUBSTR(@ROW,134,5)),
V40132 =  TRIM(SUBSTR(@ROW,139,1)),
V40132A = ' ',
V4014 =   TRIM(SUBSTR(@ROW,140,1)),
V4015 =   TRIM(SUBSTR(@ROW,141,1)),
V40151 =  TRIM(SUBSTR(@ROW,142,1)),
V401511 = TRIM(SUBSTR(@ROW,143,1)),
V401512 = TRIM(SUBSTR(@ROW,144,2)),
V4016 =   TRIM(SUBSTR(@ROW,146,1)),
V40161 =  TRIM(SUBSTR(@ROW,147,1)),
V40162 =  TRIM(SUBSTR(@ROW,148,2)),
V40163 =  TRIM(SUBSTR(@ROW,150,2)),
V4017 =   TRIM(SUBSTR(@ROW,152,1)),
V40171 =  TRIM(SUBSTR(@ROW,153,1)),
V401711 = TRIM(SUBSTR(@ROW,154,1)),
V4018 =   TRIM(SUBSTR(@ROW,155,1)),
V40181 =  TRIM(SUBSTR(@ROW,156,1)),
V40182 =  TRIM(SUBSTR(@ROW,157,2)),
V40183 =  TRIM(SUBSTR(@ROW,159,2)),
V4019 =   TRIM(SUBSTR(@ROW,161,1)),
V4020 =   TRIM(SUBSTR(@ROW,162,1)),
V4021 =   TRIM(SUBSTR(@ROW,163,1)),
V4022 =   TRIM(SUBSTR(@ROW,164,1)),
V4024 =   TRIM(SUBSTR(@ROW,165,1)),
V4025 =   TRIM(SUBSTR(@ROW,166,1)),
V4026 =   TRIM(SUBSTR(@ROW,167,1)),
V4027 =   TRIM(SUBSTR(@ROW,168,1)),
V4028 =   TRIM(SUBSTR(@ROW,169,1)),
V4029 =   TRIM(SUBSTR(@ROW,170,1)),
V4030 =   TRIM(SUBSTR(@ROW,171,1)),
V4031 =   TRIM(SUBSTR(@ROW,172,1)),
V4032 =   TRIM(SUBSTR(@ROW,173,1)),
V4033 =   TRIM(SUBSTR(@ROW,174,1)),
V40331 =  TRIM(SUBSTR(@ROW,175,1)),
V403311 = TRIM(SUBSTR(@ROW,176,1)),
V403312 = TRIM(SUBSTR(@ROW,177,8)),
V40332 =  TRIM(SUBSTR(@ROW,185,1)),
V403321 = TRIM(SUBSTR(@ROW,186,1)),
V403322 = TRIM(SUBSTR(@ROW,187,8)),
V40333 =  TRIM(SUBSTR(@ROW,195,1)),
V403331 = ' ',
V4034 =   TRIM(SUBSTR(@ROW,196,1)),
V40341 =  TRIM(SUBSTR(@ROW,197,1)),
V403411 = TRIM(SUBSTR(@ROW,198,1)),
V403412 = TRIM(SUBSTR(@ROW,199,8)),
V40342 =  TRIM(SUBSTR(@ROW,207,1)),
V403421 = TRIM(SUBSTR(@ROW,208,1)),
V403422 = TRIM(SUBSTR(@ROW,209,8)),
V4035 =   TRIM(SUBSTR(@ROW,217,1)),
V4036 =   TRIM(SUBSTR(@ROW,218,1)),
V4039 =   TRIM(SUBSTR(@ROW,219,3)),
V4039C =  ' ',
V4040 =   TRIM(SUBSTR(@ROW,222,1)),
V40401 =  TRIM(SUBSTR(@ROW,223,2)),
V40402 =  TRIM(SUBSTR(@ROW,225,2)),
V40403 =  TRIM(SUBSTR(@ROW,227,2)),
V4041 =   TRIM(SUBSTR(@ROW,229,4)),
V4043 =   TRIM(SUBSTR(@ROW,233,1)),
V40431 =  TRIM(SUBSTR(@ROW,234,1)),
V4044 =   TRIM(SUBSTR(@ROW,235,5)),
V4045 =   TRIM(SUBSTR(@ROW,240,1)),
V4046 =   TRIM(SUBSTR(@ROW,241,1)),
V4047 =   TRIM(SUBSTR(@ROW,242,1)),
V4048 =   TRIM(SUBSTR(@ROW,243,1)),
V4049 =   TRIM(SUBSTR(@ROW,244,1)),
V4050 =   TRIM(SUBSTR(@ROW,245,1)),
V40501 =  TRIM(SUBSTR(@ROW,246,1)),
V405011 = TRIM(SUBSTR(@ROW,247,1)),
V405012 = TRIM(SUBSTR(@ROW,248,8)),
V40502 =  TRIM(SUBSTR(@ROW,256,1)),
V405021 = TRIM(SUBSTR(@ROW,257,1)),
V405022 = TRIM(SUBSTR(@ROW,258,8)),
V40503 =  TRIM(SUBSTR(@ROW,266,1)),
V405031 = ' ',
V4051 =   TRIM(SUBSTR(@ROW,267,1)),
V40511 =  TRIM(SUBSTR(@ROW,268,1)),
V405111 = TRIM(SUBSTR(@ROW,269,1)),
V405112 = TRIM(SUBSTR(@ROW,270,8)),
V40512 =  TRIM(SUBSTR(@ROW,278,1)),
V405121 = TRIM(SUBSTR(@ROW,279,1)),
V405122 = TRIM(SUBSTR(@ROW,280,8)),
V4052 =   TRIM(SUBSTR(@ROW,288,1)),
V4053 =   TRIM(SUBSTR(@ROW,289,1)),
V4056 =   TRIM(SUBSTR(@ROW,290,3)),
V4056C =  ' ',
V4057 =   TRIM(SUBSTR(@ROW,293,1)),
V4058 =   TRIM(SUBSTR(@ROW,294,1)),
V40581 =  TRIM(SUBSTR(@ROW,295,1)),
V405811 = TRIM(SUBSTR(@ROW,296,1)),
V405812 = TRIM(SUBSTR(@ROW,297,8)),
V40582 =  TRIM(SUBSTR(@ROW,305,1)),
V405821 = TRIM(SUBSTR(@ROW,306,1)),
V405822 = TRIM(SUBSTR(@ROW,307,8)),
V40583 =  TRIM(SUBSTR(@ROW,315,1)),
V405831 = ' ',
V40584 =  TRIM(SUBSTR(@ROW,316,1)),
V4059 =   TRIM(SUBSTR(@ROW,317,1)),
V40591 =  TRIM(SUBSTR(@ROW,318,1)),
V405911 = TRIM(SUBSTR(@ROW,319,1)),
V405912 = TRIM(SUBSTR(@ROW,320,8)),
V40592 =  TRIM(SUBSTR(@ROW,328,1)),
V405921 = TRIM(SUBSTR(@ROW,329,1)),
V405922 = TRIM(SUBSTR(@ROW,330,8)),
V4062 =   TRIM(SUBSTR(@ROW,338,3)),
V4062C =  ' ',
V4063 =   TRIM(SUBSTR(@ROW,341,1)),
V4064 =   TRIM(SUBSTR(@ROW,342,1)),
V4064 =   TRIM(SUBSTR(@ROW,342,1)),
V4064A =  ' ',
V4071 =   TRIM(SUBSTR(@ROW,343,1)),
V4072 =   TRIM(SUBSTR(@ROW,344,2)),
V4072A =  ' ',
V4073 =   TRIM(SUBSTR(@ROW,346,1)),
V4074 =   TRIM(SUBSTR(@ROW,347,1)),
V4074A =  ' ',
V4075A =  ' ',
V4075A1 = ' ',
V4076 =   TRIM(SUBSTR(@ROW,348,1)),
V40761 =  TRIM(SUBSTR(@ROW,349,2)),
V40762 =  TRIM(SUBSTR(@ROW,351,2)),
V40763 =  TRIM(SUBSTR(@ROW,353,2)),
V4077 =   TRIM(SUBSTR(@ROW,355,1)),
V4078 =   TRIM(SUBSTR(@ROW,356,1)),
V4078A =  ' ',
V4082 =   TRIM(SUBSTR(@ROW,357,1)),
V4097 =   TRIM(SUBSTR(@ROW,358,1)),
V4099 =    ' ',
V4100 =    ' ',
V4101 =    ' ',
V4102 =    ' ',
V4103 =    ' ',
V4104 =    ' ',
V4105 =    ' ',
V4106 =    ' ',
V4107 =    ' ',
V4108 =    ' ',
V4109 =    ' ',
V4110 =    ' ',
V4111 =    ' ',
V41111 =   ' ',
V41112 =   ' ',
V41113 =   ' ',
V41114 =   ' ',
V41115 =   ' ',
V41116 =   ' ',
V41117 =   ' ',
V4111A =   ' ',
V4112 =    ' ',
V4113 =    ' ',
V4114 =    ' ',
V4115 =    ' ',
V4117A =   ' ',
V4117A1 =  ' ',
V4117A2 =  ' ',
V4117A3 =  ' ',
V4117A4 =  ' ',
V4117A5 =  ' ',
V4117A6 =  ' ',
V4119 =    ' ',
V4120 =    ' ',
V41201 =   ' ',
V41202 =   ' ',
V41203 =   ' ',
V41204 =   ' ',
V41205 =   ' ',
V41206 =   ' ',
V41207 =   ' ',
V41208 =   ' ',
V4121A =   ' ',
V4121B =   ' ',
V5001A =   ' ',
V5001A2 =  ' ',
V5002A =   ' ',
V5002A2 =  ' ',
V5003A =   ' ',
V5003A2 =  ' ',
V5004A =   ' ',
V5004A2 =  ' ',
V5006A =   ' ',
V5006A2 =  ' ',
V5007A =   ' ',
V5007A2 =  ' ',
S01001 =   ' ',
S01002 =   ' ',
S01003 =   ' ',
S01004 =   ' ',
S01005 =   ' ',
S01006 =   ' ',
S01007 =   ' ',
S01008 =   ' ',
S01009 =   ' ',
S01010 =   ' ',
S01011 =   ' ',
S01011A =  ' ',
S01011B =  ' ',
S01011C =  ' ',
S01012 =   ' ',
S01013 =   ' ',
S01014 =   ' ',
S010141 =  ' ',
S010142 =  ' ',
S01015 =   ' ',
S01016 =   ' ',
S010161 =  ' ',
S010162 =  ' ',
S010163 =  ' ',
S010164 =  ' ',
S01017 =   ' ',
S01018 =   ' ',
S01019 =   ' ',
S01020 =   ' ',
S01021 =   ' ',
S01022 =   ' ',
S01023 =   ' ',
S01024 =   ' ',
S01025 =   ' ',
S01026 =   ' ',
S01027 =   ' ',
S01028 =   ' ',
S01029 =   ' ',
S01030 =   ' ',
S010301 =  ' ',
S010302 =  ' ',
S010303 =  ' ',
S010304 =  ' ',
S010305 =  ' ',
S01031 =   ' ',
S010311 =  ' ',
S010312 =  ' ',
S06001 =   ' ',
S06002 =   ' ',
S06003 =   ' ',
S06004 =   ' ',
S06005 =   ' ',
S06006 =   ' ',
S060061 =  ' ',
S06007 =   ' ',
S06009 =   ' ',
S060091 =  ' ',
S06010 =   ' ',
S06012 =   ' ',
S060121 =  ' ',
S0601212 = ' ',
S060122 =  ' ',
S0601222 = ' ',
S060123 =  ' ',
S06013 =   ' ',
S06014 =   ' ',
S06015 =   ' ',
S06016 =   ' ',
S06017 =   ' ',
S06018 =   ' ',
S06019 =   ' ',
S06020 =   ' ',
S06021 =   ' ',
S06022 =   ' ',
S06023 =   ' ',
S06024 =   ' ',
S06025 =   ' ',
S06026 =   ' ',
S060261 =   ' ',
S060262 =   ' ',
S060263 =   ' ',
S060264 =   ' ',
S060265 =   ' ',
S060266 =   ' ',
S06027 =    ' ',
S06028 =    ' ',
S060281 =   ' ',
S060282 =   ' ',
S060283 =   ' ',
S060284 =   ' ',
S060285 =   ' ',
S060286 =   ' ',
S060287 =   ' ',
S060288 =   ' ',
S06029 =    ' ',
S06030 =    ' ',
VD2002 =  TRIM(SUBSTR(@ROW,359,2)),
VD2003 =  TRIM(SUBSTR(@ROW,361,2)),
VD2004 =  TRIM(SUBSTR(@ROW,363,1)),
VD3001 =  TRIM(SUBSTR(@ROW,364,1)),
VD3002 =  TRIM(SUBSTR(@ROW,365,2)),
VD4001 =  TRIM(SUBSTR(@ROW,367,1)),
VD4002 =  TRIM(SUBSTR(@ROW,368,1)),
VD4003 =  TRIM(SUBSTR(@ROW,369,1)),
VD4004 =  TRIM(SUBSTR(@ROW,370,1)),
VD4005 =  TRIM(SUBSTR(@ROW,371,1)),
VD4007 =  TRIM(SUBSTR(@ROW,372,1)),
VD4008 =  TRIM(SUBSTR(@ROW,373,1)),
VD4009 =  TRIM(SUBSTR(@ROW,374,2)),
VD4010 =  TRIM(SUBSTR(@ROW,376,2)),
VD4011 =  TRIM(SUBSTR(@ROW,378,2)),
VD4012 =  TRIM(SUBSTR(@ROW,380,1)),
VD4013 =  TRIM(SUBSTR(@ROW,381,1)),
VD4014 =  TRIM(SUBSTR(@ROW,382,1)),
VD4015 =  TRIM(SUBSTR(@ROW,383,1)),
VD4016 =  TRIM(SUBSTR(@ROW,384,8)),
VD4017 =  TRIM(SUBSTR(@ROW,392,8)),
VD4018 =  TRIM(SUBSTR(@ROW,400,1)),
VD4019 =  TRIM(SUBSTR(@ROW,401,8)),
VD4020 =  TRIM(SUBSTR(@ROW,409,8)),
VD4022 =  ' ',
VD4023 =  TRIM(SUBSTR(@ROW,417,1)),
VD4030 =  ' ',
VD4031 =  TRIM(SUBSTR(@ROW,418,3)),
VD4032 =  TRIM(SUBSTR(@ROW,421,3)),
VD4033 =  TRIM(SUBSTR(@ROW,424,3)),
VD4034 =  TRIM(SUBSTR(@ROW,427,3)),
VD4035 =  TRIM(SUBSTR(@ROW,430,3)),
VD4036 =  TRIM(SUBSTR(@ROW,433,1)),
VD4037 =  TRIM(SUBSTR(@ROW,434,1)),
VD4039 =  ' ',
VD4040 =  ' ',
VD4041 =  ' ',
VD4042 =  ' ',
VD4043 =  ' ',
VD4047 =  ' ',
VD4048 =  ' ',
VD4049 =  ' ',
VD5001 =  ' ',
VD5002 =  ' ',
VD5003 =  ' ',
VD5004 =  ' ',
VD5005 =  ' ',
VD5006 =  ' ',
SD06001 = ' ',
SD06002 = ' ',
SD06003 = ' ';