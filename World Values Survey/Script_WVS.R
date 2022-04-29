
## WVS Party Matching and Ethnic Voting

WVS <- WVS_TimeSeries_1981_2022_spss_v3_0

WVS$year <- WVS$S020
WVS$proximity <- NA


WVS$numparties <- NA
WVS$numgroup <- NA
WVS$groupsize1 <- NA
WVS$groupsize2 <- NA
WVS$groupsize3 <- NA
WVS$groupsize4 <- NA
WVS$groupsize5 <- NA
WVS$groupsize6 <- NA
WVS$VF <- NA
WVS$VP <- NA
WVS$PVF <- NA
WVS$PVP <- NA

WVS$to <- NA
WVS$ethnic_id <- NA

WVS$v2paid <- NA 

  #Vote intention
WVS$winner <- 0
WVS$winner[WVS$E179WVS == -2] <- NA

WVS$didnt_vote <- 0
WVS$didnt_vote[WVS$E179WVS == -2] <- NA
WVS$didnt_vote[WVS$E179WVS == 2] <- 1 #Wouldn't vote
WVS$didnt_vote[WVS$E179WVS == 3] <- 1 #White vote
WVS$didnt_vote[WVS$E179WVS == 4] <- 1 #None 
WVS$didnt_vote[WVS$E179WVS == 7] <- 1 #Null vote
WVS$didnt_vote[WVS$E179WVS == -5] <- NA #Missing
WVS$didnt_vote[WVS$E179WVS == -4] <- NA #Not Asked
WVS$didnt_vote[WVS$E179WVS == -3] <- NA #NA
WVS$didnt_vote[WVS$E179WVS == -1] <- NA #Don't Know

## Ethnic Group Code:
#ALGERIA  2010-2014

WVS$numparties[WVS$S025 == 122014] <-  8
WVS$numgroup[WVS$S025 == 122014] <- 2
WVS$groupsize1[WVS$S025 == 122014] <- .6351852
WVS$groupsize2[WVS$S025 == 122014] <- .3648148
#WVS$groupsize3[WVS$S025 == 122014] <- 
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 122014] <- .062743
WVS$VP[WVS$S025 == 122014] <- .125486
WVS$PVF[WVS$S025 == 122014] <- .1286145
WVS$PVP[WVS$S025 == 122014] <- .0831384

WVS$to[WVS$S025 == 122014] <- 2002
WVS$ethnic_id[WVS$S025 == 122014 & WVS$X051 == 12001] <- 61501000
WVS$ethnic_id[WVS$S025 == 122014 & WVS$X051 == 12002] <- 61502000
WVS$ethnic_id[WVS$S025 == 122014 & WVS$X051 == 12003] <- 61502000
WVS$ethnic_id[WVS$S025 == 122014 & WVS$X051 == 12990] <- 61502000

WVS$to[WVS$S025 == 122014] <- 2021
  
WVS$winner[WVS$S025 == 122014 & WVS$E179WVS== 12001] <- 1 #NLF

WVS$proximity[WVS$S025 == 122014] <- 0 #2014-2014
WVS$winning_party_share[WVS$S025 == 122014] <- .8153 
WVS$second_party_share[WVS$S025 == 122014] <- .1218 #https://web.archive.org/web/20140422013426/http://www.interieur.gov.dz/Dynamics/frmItem.aspx?html=140&s=23

WVS$v2paid[WVS$E179WVS == 12001] <- 4111 #NLF
WVS$v2paid[WVS$E179WVS == 12002] <- NA #RCD
WVS$v2paid[WVS$E179WVS == 12003] <- 5221 #MSPP
WVS$v2paid[WVS$E179WVS == 12004] <- 6219 #MRI
WVS$v2paid[WVS$E179WVS == 12005] <- 4114 #SFF
WVS$v2paid[WVS$E179WVS == 12006] <- 4113 #RND
WVS$v2paid[WVS$E179WVS == 12008] <- 5622 #WORKERS
WVS$v2paid[WVS$E179WVS == 12009] <- 5222 #MPRN
WVS$v2paid[WVS$E179WVS == 12010] <- 4111 #NLF
WVS$v2paid[WVS$E179WVS == 12011] <- NA #54
WVS$v2paid[WVS$E179WVS == 12012] <- NA #NPSP

WVS$vparty_year[WVS$S025 == 122014] <- 2012 

#Azerbaijan  1997

WVS$numparties[WVS$S025 == 311997] <-  4
WVS$numgroup[WVS$S025 == 311997] <- 2
WVS$groupsize1[WVS$S025 == 311997] <- .96474361
WVS$groupsize2[WVS$S025 == 311997] <- .03525641
#WVS$groupsize3[WVS$S025 == 122014] <- 
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 311997] <- .0041901
WVS$VP[WVS$S025 == 311997] <- .0083803
WVS$PVF[WVS$S025 == 311997] <- .0082434
WVS$PVP[WVS$S025 == 311997] <- .0136326

WVS$to[WVS$S025 == 311997] <- 2002
WVS$ethnic_id[WVS$S025 == 311997 & WVS$X051 == 31002] <- 37301000
WVS$ethnic_id[WVS$S025 == 311997 & WVS$X051 == 31006] <- 37302000

WVS$to[WVS$S025 == 311997] <- 2021

WVS$winner[WVS$S025 == 311997 & WVS$E179WVS== 31001] <- 1 #YAP

WVS$proximity[WVS$S025 == 311997] <- 1 #2014-2014
WVS$winning_party_share[WVS$S025 == 311997] <- .989 
WVS$second_party_share[WVS$S025 == 311997] <- .0101 #https://web.archive.org/web/20140422013426/http://www.interieur.gov.dz/Dynamics/frmItem.aspx?html=140&s=23

WVS$v2paid[WVS$E179WVS == 31001] <- 1995 #NAP
WVS$v2paid[WVS$E179WVS == 31004] <- NA #NSPA
WVS$v2paid[WVS$E179WVS == 31006] <- NA #AEP
WVS$v2paid[WVS$E179WVS == 31007] <- NA #ALP
WVS$v2paid[WVS$E179WVS == 31008] <- 7050 #Musvat
WVS$v2paid[WVS$E179WVS == 31015] <- NA #AforA
WVS$v2paid[WVS$E179WVS == 31017] <- 1993 #ACP
WVS$v2paid[WVS$E179WVS == 31019] <- NA #ADP
WVS$v2paid[WVS$E179WVS == 31025] <- 1992 #APF
WVS$v2paid[WVS$E179WVS == 31030] <- 1991 #ANIP

WVS$vparty_year[WVS$S025 == 311997] <- 1995 

#Australia  1995

WVS$numparties[WVS$S025 == 361995] <- 6
WVS$numgroup[WVS$S025 == 361995] <- 2
WVS$groupsize1[WVS$S025 == 361995] <- .9611598
WVS$groupsize2[WVS$S025 == 361995] <- .0388403
#WVS$groupsize3[WVS$S025 == 122014] <- 
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 361995] <- .0136413
WVS$VP[WVS$S025 == 361995] <- .0272825
WVS$PVF[WVS$S025 == 361995] <- .0189557
WVS$PVP[WVS$S025 == 361995] <- .0207607

WVS$ethnic_id[WVS$S025 == 361995 & WVS$X051 == 36001] <- 90003000
WVS$ethnic_id[WVS$S025 == 361995 & WVS$X051 == 36002] <- 90003000
WVS$ethnic_id[WVS$S025 == 361995 & WVS$X051 == 36003] <- 90002000
WVS$ethnic_id[WVS$S025 == 361995 & WVS$X051 == 36004] <- 90002000
WVS$ethnic_id[WVS$S025 == 361995 & WVS$X051 == 36005] <- 90002000
WVS$ethnic_id[WVS$S025 == 361995 & WVS$X051 == 36007] <- 90001000


WVS$to[WVS$S025 == 361995] <- 2021

WVS$winner[WVS$S025 == 361995 & WVS$E179WVS== 36001] <- 1 #Labor

WVS$proximity[WVS$S025 == 361995] <- 1 #1996-1995
WVS$winning_party_share[WVS$S025 == 361995] <- .5144 
WVS$second_party_share[WVS$S025 == 361995] <- .4856 #https://en.wikipedia.org/wiki/1993_Australian_federal_election

#Australia 2005

WVS$numparties[WVS$S025 == 362005] <- 6
WVS$numgroup[WVS$S025 == 362005] <- 2
WVS$groupsize1[WVS$S025 == 362005] <- .9474522
WVS$groupsize2[WVS$S025 == 362005] <- .0525478
#WVS$groupsize3[WVS$S025 == 122014] <- 
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 362005] <- .0036678
WVS$VP[WVS$S025 == 362005] <- .0073356
WVS$PVF[WVS$S025 == 362005] <- .0073456
WVS$PVP[WVS$S025 == 362005] <- .0076888

WVS$ethnic_id[WVS$S025 == 362005 & WVS$X051 == 36001] <- 90003000
WVS$ethnic_id[WVS$S025 == 362005 & WVS$X051 == 36002] <- 90003000
WVS$ethnic_id[WVS$S025 == 362005 & WVS$X051 == 36003] <- 90002000
WVS$ethnic_id[WVS$S025 == 362005 & WVS$X051 == 36004] <- 90002000
WVS$ethnic_id[WVS$S025 == 362005 & WVS$X051 == 36005] <- 90002000
WVS$ethnic_id[WVS$S025 == 362005 & WVS$X051 == 36007] <- 90001000


WVS$to[WVS$S025 == 362005] <- 2021

WVS$winner[WVS$S025 == 362005 & WVS$E179WVS== 36002] <- 1 #Liberal
WVS$winner[WVS$S025 == 362005 & WVS$E179WVS== 36003] <- 1 #NPA


WVS$proximity[WVS$S025 == 362005] <- 1 #2005-2004
WVS$winning_party_share[WVS$S025 == 362005] <- .4671 
WVS$second_party_share[WVS$S025 == 362005] <- .3763 #https://en.wikipedia.org/wiki/1993_Australian_federal_election

#Australia 2012

WVS$numparties[WVS$S025 == 362012] <- 4
WVS$numgroup[WVS$S025 == 362012] <- 2
WVS$groupsize1[WVS$S025 == 362012] <- .9312977
WVS$groupsize2[WVS$S025 == 362012] <- .0687023
#WVS$groupsize3[WVS$S025 == 122014] <- 
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 362012] <- .0090034
WVS$VP[WVS$S025 == 362012] <- .0180068
WVS$PVF[WVS$S025 == 362012] <- .0139223
WVS$PVP[WVS$S025 == 362012] <- .0174247

WVS$ethnic_id[WVS$S025 == 362012 & WVS$X051 == 36001] <- 90003000
WVS$ethnic_id[WVS$S025 == 362012 & WVS$X051 == 36002] <- 90003000
WVS$ethnic_id[WVS$S025 == 362012 & WVS$X051 == 36003] <- 90002000
WVS$ethnic_id[WVS$S025 == 362012 & WVS$X051 == 36004] <- 90002000
WVS$ethnic_id[WVS$S025 == 362012 & WVS$X051 == 36005] <- 90002000
WVS$ethnic_id[WVS$S025 == 362012 & WVS$X051 == 36006] <- 90002000
WVS$ethnic_id[WVS$S025 == 362012 & WVS$X051 == 36007] <- 90001000


WVS$to[WVS$S025 == 362012] <- 2021

WVS$winner[WVS$S025 == 362012 & WVS$E179WVS== 36001] <- 1 #Labor

WVS$proximity[WVS$S025 == 362012] <- 1 #2013-2012
WVS$winning_party_share[WVS$S025 == 362012] <- .4332 
WVS$second_party_share[WVS$S025 == 362012] <- .3799 #https://en.wikipedia.org/wiki/2010_Australian_federal_election

#Australia 2018

WVS$numparties[WVS$S025 == 362018] <- 6
WVS$numgroup[WVS$S025 == 362018] <- 2
WVS$groupsize1[WVS$S025 == 362018] <- .8994271
WVS$groupsize2[WVS$S025 == 362018] <- .1005729
#WVS$groupsize3[WVS$S025 == 122014] <- 
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 362018] <- .0125069
WVS$VP[WVS$S025 == 362018] <- .0250138
WVS$PVF[WVS$S025 == 362018] <- .0214818
WVS$PVP[WVS$S025 == 362018] <- .0235622

WVS$ethnic_id[WVS$S025 == 362018 & WVS$X051 == 36001] <- 90003000
WVS$ethnic_id[WVS$S025 == 362018 & WVS$X051 == 36002] <- 90003000
WVS$ethnic_id[WVS$S025 == 362018 & WVS$X051 == 36003] <- 90002000
WVS$ethnic_id[WVS$S025 == 362018 & WVS$X051 == 36004] <- 90002000
WVS$ethnic_id[WVS$S025 == 362018 & WVS$X051 == 36005] <- 90002000
WVS$ethnic_id[WVS$S025 == 362018 & WVS$X051 == 36006] <- 90002000
WVS$ethnic_id[WVS$S025 == 362018 & WVS$X051 == 36007] <- 90001000


WVS$to[WVS$S025 == 362018] <- 2021

WVS$winner[WVS$S025 == 362018 & WVS$E179WVS== 36002] <- 1 #Liberal
WVS$winner[WVS$S025 == 362018 & WVS$E179WVS== 36006] <- 1 #Country Liberal

WVS$proximity[WVS$S025 == 362018] <- 1 #2019-2018
WVS$winning_party_share[WVS$S025 == 362018] <- .4204 
WVS$second_party_share[WVS$S025 == 362018] <- .3473 #https://en.wikipedia.org/wiki/2010_Australian_federal_election


WVS$v2paid[WVS$E179WVS == 36001] <- 424 #labor
WVS$v2paid[WVS$E179WVS == 36002] <- 486 #Liberal Party 
WVS$v2paid[WVS$E179WVS == 36003] <- 338 #NPA
WVS$v2paid[WVS$E179WVS == 36004] <- 1209 #Greens
WVS$v2paid[WVS$E179WVS == 36005] <- 990 #A Demo
WVS$v2paid[WVS$E179WVS == 36006] <- 1743 #CLP
WVS$v2paid[WVS$E179WVS == 36008] <- 1162 #ONP
WVS$v2paid[WVS$E179WVS == 36009] <- NA #FFP
WVS$v2paid[WVS$E179WVS == 36010] <- NA #CDP
WVS$v2paid[WVS$E179WVS == 36011] <- NA #SFF

WVS$vparty_year[WVS$S025 == 361995] <- 1995 #Adjust Country-Year
WVS$vparty_year[WVS$S025 == 362005] <- 2004 #Adjust Country-Year
WVS$vparty_year[WVS$S025 == 362012] <- 2010 #Adjust Country-Year
WVS$vparty_year[WVS$S025 == 362018] <- 2016 #Adjust Country-Year

#Australia 2012

WVS$numparties[WVS$S025 == 362012] <- 4
WVS$numgroup[WVS$S025 == 362012] <- 2
WVS$groupsize1[WVS$S025 == 362012] <- .9312977
WVS$groupsize2[WVS$S025 == 362012] <- .0687023
#WVS$groupsize3[WVS$S025 == 122014] <- 
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 362012] <- .0090034
WVS$VP[WVS$S025 == 362012] <- .0180068
WVS$PVF[WVS$S025 == 362012] <- .0139223
WVS$PVP[WVS$S025 == 362012] <- .0174247

WVS$ethnic_id[WVS$S025 == 362012 & WVS$X051 == 36001] <- 90003000
WVS$ethnic_id[WVS$S025 == 362012 & WVS$X051 == 36002] <- 90003000
WVS$ethnic_id[WVS$S025 == 362012 & WVS$X051 == 36003] <- 90002000
WVS$ethnic_id[WVS$S025 == 362012 & WVS$X051 == 36004] <- 90002000
WVS$ethnic_id[WVS$S025 == 362012 & WVS$X051 == 36005] <- 90002000
WVS$ethnic_id[WVS$S025 == 362012 & WVS$X051 == 36006] <- 90002000
WVS$ethnic_id[WVS$S025 == 362012 & WVS$X051 == 36007] <- 90001000


WVS$to[WVS$S025 == 362012] <- 2021

WVS$winner[WVS$S025 == 362012 & WVS$E179WVS== 36001] <- 1 #Labor

WVS$proximity[WVS$S025 == 362012] <- 1 #2013-2012
WVS$winning_party_share[WVS$S025 == 362012] <- .4332 
WVS$second_party_share[WVS$S025 == 362012] <- .3799 #https://en.wikipedia.org/wiki/2010_Australian_federal_election

#Bangladesh 1996

WVS$numparties[WVS$S025 == 501996] <- 4
WVS$numgroup[WVS$S025 == 501996] <- 2
WVS$groupsize1[WVS$S025 == 501996] <- .9249271
WVS$groupsize2[WVS$S025 == 501996] <- .0750729
#WVS$groupsize3[WVS$S025 == 122014] <- 
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 501996] <- .0438312
WVS$VP[WVS$S025 == 501996] <- .0876624
WVS$PVF[WVS$S025 == 501996] <- .0516866
WVS$PVP[WVS$S025 == 501996] <- .0823422

WVS$ethnic_id[WVS$S025 == 501996 & WVS$X051 == 50002] <- 77102000
WVS$ethnic_id[WVS$S025 == 501996 & WVS$X051 == 50003] <- 77101000

WVS$to[WVS$S025 == 501996] <- 2021

WVS$winner[WVS$S025 == 501996 & WVS$E179WVS== 50001] <- 1 #Awami

WVS$proximity[WVS$S025 == 501996] <- 0 #1996-1996
WVS$winning_party_share[WVS$S025 == 501996] <- .374 
WVS$second_party_share[WVS$S025 == 501996] <- .336 #https://en.wikipedia.org/wiki/June_1996_Bangladeshi_general_election

#Bangladesh 2002
WVS$numparties[WVS$S025 == 502002] <- 4
WVS$numgroup[WVS$S025 == 502002] <- 2
WVS$groupsize1[WVS$S025 == 502002] <- .9262069
WVS$groupsize2[WVS$S025 == 502002] <- .0737931
#WVS$groupsize3[WVS$S025 == 122014] <- 
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 502002] <- .0501387
WVS$VP[WVS$S025 == 502002] <- .1002774
WVS$PVF[WVS$S025 == 502002] <- .0587206
WVS$PVP[WVS$S025 == 502002] <- .0859503

WVS$ethnic_id[WVS$S025 == 502002 & WVS$F025 == 5] <- 77102000
WVS$ethnic_id[WVS$S025 == 502002 & WVS$F025 == 6] <- 77102000

WVS$to[WVS$S025 == 502002] <- 2021

WVS$winner[WVS$S025 == 502002 & WVS$E179WVS== 50002] <- 1 #BNP

WVS$proximity[WVS$S025 == 502002] <- 1 #2002-2001
WVS$winning_party_share[WVS$S025 == 502002] <- .414 
WVS$second_party_share[WVS$S025 == 502002] <- .4002 #https://en.wikipedia.org/wiki/2001_Bangladeshi_general_election

#Bangladesh 2018
WVS$numparties[WVS$S025 == 502018] <- 4
WVS$numgroup[WVS$S025 == 502018] <- 2
WVS$groupsize1[WVS$S025 == 502018] <- .89986092
WVS$groupsize2[WVS$S025 == 502018] <- .1001391
#WVS$groupsize3[WVS$S025 == 122014] <- 
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 502018] <- .0481978
WVS$VP[WVS$S025 == 502018] <- .0963957
WVS$PVF[WVS$S025 == 502018] <- .0516635
WVS$PVP[WVS$S025 == 502018] <- .0937214

WVS$ethnic_id[WVS$S025 == 502018 & WVS$F025 == 5] <- 77102000
WVS$ethnic_id[WVS$S025 == 502018 & WVS$F025 == 6] <- 77102000

WVS$to[WVS$S025 == 502018] <- 2021

WVS$winner[WVS$S025 == 502018 & WVS$E179WVS== 50001] <- 1 #Awami

WVS$proximity[WVS$S025 == 502018] <- 0 #2018
WVS$winning_party_share[WVS$S025 == 502018] <- .7914 
WVS$second_party_share[WVS$S025 == 502018] <- .1131 #https://en.wikipedia.org/wiki/2001_Bangladeshi_general_election

#Bangladeshi Parties
WVS$v2paid[WVS$E179WVS == 50001] <- 2299 #Awami BAL
WVS$v2paid[WVS$E179WVS == 50002] <- 3782 #BNP
WVS$v2paid[WVS$E179WVS == 50003] <- 2341 #Jatiya
WVS$v2paid[WVS$E179WVS == 50004] <- NA #Jamaat
WVS$v2paid[WVS$E179WVS == 50009] <- NA #Islamic Unity

WVS$vparty_year[WVS$S025 == 361996] <- 1996 #Adjust Country-Year
WVS$vparty_year[WVS$S025 == 362002] <- 2001 #Adjust Country-Year
WVS$vparty_year[WVS$S025 == 362018] <- 2018 #Adjust Country-Year

#Bosnia Her 1998 

WVS$numparties[WVS$S025 == 701998] <- 9
WVS$numgroup[WVS$S025 == 701998] <- 3
WVS$groupsize1[WVS$S025 == 701998] <- .1853448
WVS$groupsize2[WVS$S025 == 701998] <- .5172414
WVS$groupsize3[WVS$S025 == 701998] <- .2974138
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 701998] <- .3795367
WVS$VP[WVS$S025 == 701998] <- .5378211
WVS$PVF[WVS$S025 == 701998] <- .5734373
WVS$PVP[WVS$S025 == 701998] <- .332967

WVS$ethnic_id[WVS$S025 == 701998 & WVS$X051 == 70001] <- 34603000
WVS$ethnic_id[WVS$S025 == 701998 & WVS$X051 == 70002] <- 34601000
WVS$ethnic_id[WVS$S025 == 701998 & WVS$X051 == 70003] <- 34602000


WVS$to[WVS$S025 == 701998] <- 2021

WVS$winner[WVS$S025 == 701998 & WVS$E179WVS== 70009] <- 1 #PDAction
WVS$winner[WVS$S025 == 701998 & WVS$E179WVS== 70010] <- 1 #PforBH
WVS$winner[WVS$S025 == 701998 & WVS$E179WVS== 70032] <- 1 #Liberal 
WVS$winner[WVS$S025 == 701998 & WVS$E179WVS== 70035] <- 1 #Cvic


WVS$proximity[WVS$S025 == 701998] <- 0 #1998
WVS$winning_party_share[WVS$S025 == 701998] <- .3383 
WVS$second_party_share[WVS$S025 == 701998] <- .1244 #https://en.wikipedia.org/wiki/2001_Bangladeshi_general_election

#Bosnia Her 2001 

WVS$numparties[WVS$S025 == 702001] <- 10
WVS$numgroup[WVS$S025 == 702001] <- 3
WVS$groupsize1[WVS$S025 == 702001] <- .1044547
WVS$groupsize2[WVS$S025 == 702001] <- .6513057
WVS$groupsize3[WVS$S025 == 702001] <- .2442396
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 702001] <- .2472724
WVS$VP[WVS$S025 == 702001] <- .3935342
WVS$PVF[WVS$S025 == 702001] <- .4484303
WVS$PVP[WVS$S025 == 702001] <- .2488574

WVS$ethnic_id[WVS$S025 == 702001 & WVS$X051 == 70001] <- 34603000
WVS$ethnic_id[WVS$S025 == 702001 & WVS$X051 == 70002] <- 34601000
WVS$ethnic_id[WVS$S025 == 702001 & WVS$X051 == 70003] <- 34602000 #


WVS$to[WVS$S025 == 702001] <- 2021

WVS$winner[WVS$S025 == 702001 & WVS$E179WVS== 70015] <- 1 #SDP
WVS$winner[WVS$S025 == 702001 & WVS$E179WVS== 70010] <- 1 #PforBH
WVS$winner[WVS$S025 == 702001 & WVS$E179WVS== 70006] <- 1 #PDP 
#WVS$winner[WVS$S025 == 702001 & WVS$E179WVS== 70035] <- 1 #Cvic


WVS$proximity[WVS$S025 == 702001] <- 1 #2001-2000
WVS$winning_party_share[WVS$S025 == 702001] <- .18 
WVS$second_party_share[WVS$S025 == 702001] <- .1876 #https://en.wikipedia.org/wiki/2000_Bosnian_parliamentary_election


#Boznia Her Parties
WVS$v2paid[WVS$E179WVS == 70001] <- 6619 #SPARL
WVS$v2paid[WVS$E179WVS == 70002] <- 292 #AISD
WVS$v2paid[WVS$E179WVS == 70003] <- 998 #SPRS
WVS$v2paid[WVS$E179WVS == 70004] <- 1166 #SDP
WVS$v2paid[WVS$E179WVS == 70005] <- 1222 #SRPRS
WVS$v2paid[WVS$E179WVS == 70006] <- 1673 #PDP
WVS$v2paid[WVS$E179WVS == 70007] <- NA #DSPNR
WVS$v2paid[WVS$E179WVS == 70008] <- 3170 #DPA
WVS$v2paid[WVS$E179WVS == 70009] <- 1454 #PDA
WVS$v2paid[WVS$E179WVS == 70010] <- 357 #PBH
WVS$v2paid[WVS$E179WVS == 70011] <- NA #DPCBH
WVS$v2paid[WVS$E179WVS == 70012] <- NA #BP
WVS$v2paid[WVS$E179WVS == 70013] <- NA #WP
WVS$v2paid[WVS$E179WVS == 70014] <- NA #PRBH
WVS$v2paid[WVS$E179WVS == 70015] <- 537 #SDPBH
WVS$v2paid[WVS$E179WVS == 70016] <- 1760 #CDUBH
WVS$v2paid[WVS$E179WVS == 70017] <- NA #NCI
WVS$v2paid[WVS$E179WVS == 70018] <- 7801 #peasant party cro
WVS$v2paid[WVS$E179WVS == 70019] <- NA #PPWB
WVS$v2paid[WVS$E179WVS == 70020] <- NA #DPBRS
WVS$v2paid[WVS$E179WVS == 70021] <- NA #SNUB
WVS$v2paid[WVS$E179WVS == 70023] <- NA #SPP
WVS$v2paid[WVS$E179WVS == 70025] <- NA #SUP
WVS$v2paid[WVS$E179WVS == 70029] <- 1340 #CUDBH
WVS$v2paid[WVS$E179WVS == 70031] <- NA #NDU
WVS$v2paid[WVS$E179WVS == 70033] <- NA #PEP
WVS$v2paid[WVS$E179WVS == 70035] <- NA #CDP
WVS$v2paid[WVS$E179WVS == 70037] <- NA #CPR
WVS$v2paid[WVS$E179WVS == 70038] <- NA #BHPPSH
WVS$v2paid[WVS$E179WVS == 70039] <- NA #USDBH

WVS$vparty_year[WVS$S025 == 702001] <- 2000 #Adjust Country-Year

#Brazil 1991

WVS$numparties[WVS$S025 == 761991] <- 8
WVS$numgroup[WVS$S025 == 761991] <- 2
WVS$groupsize1[WVS$S025 == 761991] <- .8665377
WVS$groupsize2[WVS$S025 == 761991] <- .1334623
#WVS$groupsize3[WVS$S025 == 761991] <- 
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 761991] <- .0157858
WVS$VP[WVS$S025 == 761991] <- .0315717
WVS$PVF[WVS$S025 == 761991] <- .0369188
WVS$PVP[WVS$S025 == 761991] <- .0256223

WVS$ethnic_id[WVS$S025 == 761991 & WVS$X051 == 76001] <- 14001000
WVS$ethnic_id[WVS$S025 == 761991 & WVS$X051 == 76002] <- 14002000

WVS$to[WVS$S025 == 761991] <- 2002

WVS$winner[WVS$S025 == 761991 & WVS$E179WVS== 70015] <- 1 #NRP


WVS$proximity[WVS$S025 == 761991] <- 1 #2001-2000
WVS$winning_party_share[WVS$S025 == 761991] <- .5303 
WVS$second_party_share[WVS$S025 == 761991] <- .4697 #https://books.google.co.uk/books?id=ONqHHdjT4KUC&pg=PA202#v=onepage&q&f=false

#Brazil 1997

WVS$numparties[WVS$S025 == 761997] <- 7
WVS$numgroup[WVS$S025 == 761997] <- 3
WVS$groupsize1[WVS$S025 == 761997] <- .752394
WVS$groupsize2[WVS$S025 == 761997] <- .2229822
WVS$groupsize3[WVS$S025 == 761997] <- .0246238
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 761997] <- .0305446
WVS$VP[WVS$S025 == 761997] <- .0305446
WVS$PVF[WVS$S025 == 761997] <- .0483127
WVS$PVP[WVS$S025 == 761997] <- .038025

WVS$ethnic_id[WVS$S025 == 761997 & WVS$X051 == 76001] <- 14001000
WVS$ethnic_id[WVS$S025 == 761997 & WVS$X051 == 76002] <- 14002000
WVS$ethnic_id[WVS$S025 == 761997 & WVS$X051 == 76005] <- 14003000


WVS$to[WVS$S025 == 761997] <- 2002

WVS$winner[WVS$S025 == 761997 & WVS$E179WVS== 76003] <- 1 #BSDP


WVS$proximity[WVS$S025 == 761997] <- 1 #1998-1997
WVS$winning_party_share[WVS$S025 == 761997] <- .5428
WVS$second_party_share[WVS$S025 == 761997] <- .2704 #https://books.google.co.uk/books?id=ONqHHdjT4KUC&pg=PA202#v=onepage&q&f=false

#Brazil 1997

WVS$numparties[WVS$S025 == 761997] <- 7
WVS$numgroup[WVS$S025 == 761997] <- 3
WVS$groupsize1[WVS$S025 == 761997] <- .752394
WVS$groupsize2[WVS$S025 == 761997] <- .2229822
WVS$groupsize3[WVS$S025 == 761997] <- .0246238
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 761997] <- .0305446
WVS$VP[WVS$S025 == 761997] <- .0305446
WVS$PVF[WVS$S025 == 761997] <- .0483127
WVS$PVP[WVS$S025 == 761997] <- .038025

WVS$ethnic_id[WVS$S025 == 761997 & WVS$X051 == 76001] <- 14001000
WVS$ethnic_id[WVS$S025 == 761997 & WVS$X051 == 76002] <- 14002000
WVS$ethnic_id[WVS$S025 == 761997 & WVS$X051 == 76005] <- 14003000


WVS$to[WVS$S025 == 761997] <- 2002

WVS$winner[WVS$S025 == 761997 & WVS$E179WVS== 76003] <- 1 #BSDP


WVS$proximity[WVS$S025 == 761997] <- 1 #1998-1997
WVS$winning_party_share[WVS$S025 == 761997] <- .5428
WVS$second_party_share[WVS$S025 == 761997] <- .2704 #https://books.google.co.uk/books?id=ONqHHdjT4KUC&pg=PA202#v=onepage&q&f=false

#Brazil 2006

WVS$numparties[WVS$S025 == 762006] <- 7
WVS$numgroup[WVS$S025 == 762006] <- 2
WVS$groupsize1[WVS$S025 == 762006] <- .8352181
WVS$groupsize2[WVS$S025 == 762006] <- .1647819
#WVS$groupsize3[WVS$S025 == 762006] <- .0246238
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 762006] <- .0418122
WVS$VP[WVS$S025 == 762006] <- .0836244
WVS$PVF[WVS$S025 == 762006] <- .0606273
WVS$PVP[WVS$S025 == 762006] <- .0700034

WVS$ethnic_id[WVS$S025 == 762006 & WVS$X051 == 76001] <- 14001000
WVS$ethnic_id[WVS$S025 == 762006 & WVS$X051 == 76002] <- 14002000
WVS$ethnic_id[WVS$S025 == 762006 & WVS$X051 == 76005] <- 14003000


WVS$to[WVS$S025 == 762006] <- 2010

WVS$winner[WVS$S025 == 762006 & WVS$E179WVS== 76002] <- 1 #WP

WVS$proximity[WVS$S025 == 762006] <- 1 #2006-2005
WVS$winning_party_share[WVS$S025 == 762006] <- .6127
WVS$second_party_share[WVS$S025 == 762006] <- .3873 #http://electionresources.org/br/president.php?election=2002


#Brazil 2014

WVS$numparties[WVS$S025 == 762014] <- 8
WVS$numgroup[WVS$S025 == 762014] <- 2
WVS$groupsize1[WVS$S025 == 762014] <- .7587548
WVS$groupsize2[WVS$S025 == 762014] <- .2412451
#WVS$groupsize3[WVS$S025 == 762006] <- .0246238
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 762014] <- .0307611
WVS$VP[WVS$S025 == 762014] <- .0615221
WVS$PVF[WVS$S025 == 762014] <- .050841
WVS$PVP[WVS$S025 == 762014] <- .0518382

WVS$ethnic_id[WVS$S025 == 762014 & WVS$X051 == 76001] <- 14001000
WVS$ethnic_id[WVS$S025 == 762014 & WVS$X051 == 76002] <- 14002000
WVS$ethnic_id[WVS$S025 == 762014 & WVS$X051 == 76005] <- 14003000


WVS$to[WVS$S025 == 762014] <- 2018

WVS$winner[WVS$S025 == 762014 & WVS$E179WVS== 76002] <- 1 #WP

WVS$proximity[WVS$S025 == 762014] <- 0 #2014-2014
WVS$winning_party_share[WVS$S025 == 762014] <- .5605
WVS$second_party_share[WVS$S025 == 762014] <- .4395 #http://electionresources.org/br/president.php?election=2010

#Brazil 2018
WVS$numparties[WVS$S025 == 762018] <- 7
WVS$numgroup[WVS$S025 == 762018] <- 2
WVS$groupsize1[WVS$S025 == 762018] <- .681648
WVS$groupsize2[WVS$S025 == 762018] <- .3183521
#WVS$groupsize3[WVS$S025 == 762006] <- .0246238
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 762018] <- .0366884
WVS$VP[WVS$S025 == 762018] <- .0733767
WVS$PVF[WVS$S025 == 762018] <- .0626464
WVS$PVP[WVS$S025 == 762018] <- .0760382

WVS$ethnic_id[WVS$S025 == 762018 & WVS$X051 == 76001] <- 14001000
WVS$ethnic_id[WVS$S025 == 762018 & WVS$X051 == 76002] <- 14002000
WVS$ethnic_id[WVS$S025 == 762018 & WVS$X051 == 76005] <- 14003000


WVS$to[WVS$S025 == 762018] <- 2018

WVS$winner[WVS$S025 == 762018 & WVS$E179WVS== 76002] <- 1 #WP

WVS$proximity[WVS$S025 == 762018] <- 0 #2018-2018
WVS$winning_party_share[WVS$S025 == 762018] <- .5164
WVS$second_party_share[WVS$S025 == 762018] <- .4836 #http://electionresources.org/br/president.php?election=2014

#Brazil Parties
WVS$v2paid[WVS$E179WVS == 76001] <- 4615 #BDM
WVS$v2paid[WVS$E179WVS == 76002] <- 356 #PT
WVS$v2paid[WVS$E179WVS == 76003] <- 4613 #BSDP
WVS$v2paid[WVS$E179WVS == 76004] <- 1009 #DLP
WVS$v2paid[WVS$E179WVS == 76005] <- 781 #PPB
WVS$v2paid[WVS$E179WVS == 76006] <- 1536 #LF
WVS$v2paid[WVS$E179WVS == 76007] <- 458 #BLP
WVS$v2paid[WVS$E179WVS == 76008] <- 2489 #CPB
WVS$v2paid[WVS$E179WVS == 76009] <- 2489 #CPB NOT A MISTAKE
WVS$v2paid[WVS$E179WVS == 76010] <- NA #GP
WVS$v2paid[WVS$E179WVS == 76012] <- 723 #BSP
WVS$v2paid[WVS$E179WVS == 76013] <- 4403 #CDP
WVS$v2paid[WVS$E179WVS == 70014] <- 267 #SPP
WVS$v2paid[WVS$E179WVS == 70015] <- NA #SCP
WVS$v2paid[WVS$E179WVS == 70017] <- NA #PNM
WVS$v2paid[WVS$E179WVS == 70019] <- 4410 #NRP
WVS$v2paid[WVS$E179WVS == 70020] <- 4402 #RPP
WVS$v2paid[WVS$E179WVS == 70021] <- 1163 #DSP
WVS$v2paid[WVS$E179WVS == 70023] <- 1536 #D v Lib front
WVS$v2paid[WVS$E179WVS == 70024] <- NA #P
WVS$v2paid[WVS$E179WVS == 70025] <- 4408 #BRP
WVS$v2paid[WVS$E179WVS == 70026] <- NA #We Can
WVS$v2paid[WVS$E179WVS == 70027] <- 2489 #CP
WVS$v2paid[WVS$E179WVS == 70028] <- NA #SN
WVS$v2paid[WVS$E179WVS == 70029] <- NA #SLP

WVS$vparty_year[WVS$S025 == 761991] <- 1990 #Adjust Country-Year
WVS$vparty_year[WVS$S025 == 761997] <- 1994 #Adjust Country-Year
WVS$vparty_year[WVS$S025 == 762006] <- 2006 #Adjust Country-Year
WVS$vparty_year[WVS$S025 == 762018] <- 2018 #Adjust Country-Year

#Bulgaria 1997

WVS$numparties[WVS$S025 == 1001997] <- 5
WVS$numgroup[WVS$S025 == 1001997] <- 2
WVS$groupsize1[WVS$S025 == 1001997] <- .8805591
WVS$groupsize2[WVS$S025 == 1001997] <- .1194409
#WVS$groupsize3[WVS$S025 == 762006] <- .0246238
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 1001997] <- .1127272
WVS$VP[WVS$S025 == 1001997] <- .2254544
WVS$PVF[WVS$S025 == 1001997] <- .148112
WVS$PVP[WVS$S025 == 1001997] <- .1510336

WVS$ethnic_id[WVS$S025 == 1001997 & WVS$X051 == 100001] <- 35501000
WVS$ethnic_id[WVS$S025 == 1001997 & WVS$X051 == 100003] <- 35502000


WVS$to[WVS$S025 == 1001997] <- 1998

WVS$winner[WVS$S025 == 1001997 & WVS$E179WVS== 100001] <- 1 #ODS

WVS$proximity[WVS$S025 == 1001997] <- 0 #1998-1996
WVS$winning_party_share[WVS$S025 == 1001997] <- .5973
WVS$second_party_share[WVS$S025 == 1001997] <- .4027 #https://web.archive.org/web/20020618120305/http://www.president.bg/inst_izbori_96.php

#Bulgaria Parties
WVS$v2paid[WVS$E179WVS == 100001] <- 1183 #ODS
WVS$v2paid[WVS$E179WVS == 100003] <- 757 #BSP
WVS$v2paid[WVS$E179WVS == 100004] <- 149 #BEL
WVS$v2paid[WVS$E179WVS == 100005] <- 1027 #BBB
WVS$v2paid[WVS$E179WVS == 100006] <- 982 #MRF
WVS$v2paid[WVS$E179WVS == 100011] <- NA #BSD
WVS$v2paid[WVS$E179WVS == 100012] <- 2060 #BANU
WVS$v2paid[WVS$E179WVS == 100013] <- 2056 #IMR

WVS$vparty_year[WVS$S025 == 1001997] <- 1997 #Adjust Country-Year

#Myanmar 2020

WVS$numparties[WVS$S025 == 1042020] <- 2
WVS$numgroup[WVS$S025 == 1042020] <- 3
WVS$groupsize1[WVS$S025 == 1042020] <- .9059929
WVS$groupsize2[WVS$S025 == 1042020] <- .0752056
WVS$groupsize3[WVS$S025 == 1042020] <- .0188014
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 1042020] <- .011298
WVS$VP[WVS$S025 == 1042020] <- .0198737
WVS$PVF[WVS$S025 == 1042020] <- .0082768
WVS$PVP[WVS$S025 == 1042020] <- .0165537

WVS$ethnic_id[WVS$S025 == 1042020 & WVS$X051 == 104001] <- 77501000
WVS$ethnic_id[WVS$S025 == 1042020 & WVS$X051 == 104002] <- 77506000
WVS$ethnic_id[WVS$S025 == 1042020 & WVS$X051 == 104004] <- 77509000
WVS$ethnic_id[WVS$S025 == 1042020 & WVS$X051 == 104005] <- 77507000

WVS$to[WVS$S025 == 1042020] <- 2021

WVS$winner[WVS$S025 == 1042020 & WVS$E179WVS== 100001] <- 1 #ODS

WVS$proximity[WVS$S025 == 1042020] <- 0 #2020-2020
WVS$winning_party_share[WVS$S025 == 1042020] <- .572
WVS$second_party_share[WVS$S025 == 1042020] <- .2833 #https://en.wikipedia.org/wiki/2015_Myanmar_general_election

#Myanmar Parties
WVS$v2paid[WVS$E179WVS == 104001] <- 5973 #NLD
WVS$v2paid[WVS$E179WVS == 104002] <- 5818 #USDP
WVS$v2paid[WVS$E179WVS == 104003] <- NA #Arkan
WVS$v2paid[WVS$E179WVS == 104004] <- 5975 #Shan
WVS$v2paid[WVS$E179WVS == 104005] <- NA #Ta'ang

WVS$vparty_year[WVS$S025 == 1042020] <- 2015 #Adjust Country-Year

#Canada 2000
WVS$numparties[WVS$S025 == 1242000] <- 5
WVS$numgroup[WVS$S025 == 1242000] <- 2
WVS$groupsize1[WVS$S025 == 1242000] <- .7231245
WVS$groupsize2[WVS$S025 == 1242000] <- .2768755
#WVS$groupsize3[WVS$S025 == 1242000] <- 
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 1242000] <- .1436617
WVS$VP[WVS$S025 == 1242000] <- .2873235
WVS$PVF[WVS$S025 == 1242000] <- .2367857
WVS$PVP[WVS$S025 == 1242000] <- .2227596

WVS$ethnic_id[WVS$S025 == 1242000 & WVS$G016 == 1240] <- 2001000
WVS$ethnic_id[WVS$S025 == 1242000 & WVS$G016 == 1400] <- 2002000

WVS$to[WVS$S025 == 1242000] <- 2021

WVS$winner[WVS$S025 == 1242000 & WVS$E179WVS== 124001] <- 1 #Liberal Majority Gov't

WVS$proximity[WVS$S025 == 1242000] <- 0 #2000-2000
WVS$winning_party_share[WVS$S025 == 1242000] <- .3846
WVS$second_party_share[WVS$S025 == 1242000] <- .1935 #https://en.wikipedia.org/wiki/Minority_governments_in_Canada
#https://en.wikipedia.org/wiki/1997_Canadian_federal_election

#Canada 2006 
WVS$numparties[WVS$S025 == 1242006] <- 4
WVS$numgroup[WVS$S025 == 1242006] <- 2
WVS$groupsize1[WVS$S025 == 1242006] <- .7441714
WVS$groupsize2[WVS$S025 == 1242006] <- .2558286
#WVS$groupsize3[WVS$S025 == 1242000] <- 
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 1242006] <- .1410666
WVS$VP[WVS$S025 == 1242006] <- .2821331
WVS$PVF[WVS$S025 == 1242006] <- .1919304
WVS$PVP[WVS$S025 == 1242006] <- .1713751

WVS$ethnic_id[WVS$S025 == 1242006 & WVS$G016 == 1240] <- 2001000
WVS$ethnic_id[WVS$S025 == 1242006 & WVS$G016 == 1400] <- 2002000

WVS$to[WVS$S025 == 1242006] <- 2021

WVS$winner[WVS$S025 == 1242006 & WVS$E179WVS== 124002] <- 1 #Conservative (Minority Gov't)

WVS$proximity[WVS$S025 == 1242006] <- 0 #2006-2006
WVS$winning_party_share[WVS$S025 == 1242006] <- .3627
WVS$second_party_share[WVS$S025 == 1242006] <- .3023 #https://en.wikipedia.org/wiki/Minority_governments_in_Canada
#https://en.wikipedia.org/wiki/28th_Canadian_Ministry

#Canada 2020
WVS$numparties[WVS$S025 == 1242020] <- 6
WVS$numgroup[WVS$S025 == 1242020] <- 2
WVS$groupsize1[WVS$S025 == 1242020] <- .7544278
WVS$groupsize2[WVS$S025 == 1242020] <- .2455722
#WVS$groupsize3[WVS$S025 == 1242000] <- 
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 1242020] <- .1020515
WVS$VP[WVS$S025 == 1242020] <- .2041029
WVS$PVF[WVS$S025 == 1242020] <- .1530243
WVS$PVP[WVS$S025 == 1242020] <- .1144398

WVS$ethnic_id[WVS$S025 == 1242020 & WVS$G016 == 1240] <- 2001000
WVS$ethnic_id[WVS$S025 == 1242020 & WVS$G016 == 1400] <- 2002000

WVS$to[WVS$S025 == 1242020] <- 2021

WVS$winner[WVS$S025 == 1242020 & WVS$E179WVS== 124001] <- 1 #Liberal (No coalition)

WVS$proximity[WVS$S025 == 1242020] <- 1 #2020-2019
WVS$winning_party_share[WVS$S025 == 1242020] <- .3434
WVS$second_party_share[WVS$S025 == 1242020] <- .3312 #https://en.wikipedia.org/wiki/Minority_governments_in_Canada
#https://en.wikipedia.org/wiki/1997_Canadian_federal_election

#Canada Parties
WVS$v2paid[WVS$E179WVS == 124001] <- 1739 #Liberal
WVS$v2paid[WVS$E179WVS == 124002] <- 1004 #Conser
WVS$v2paid[WVS$E179WVS == 124003] <- 152 #NDP
WVS$v2paid[WVS$E179WVS == 124005] <- NA #CA
WVS$v2paid[WVS$E179WVS == 124006] <- 1428 #Queb bloc
WVS$v2paid[WVS$E179WVS == 124007] <- 931 #Green
WVS$v2paid[WVS$E179WVS == 124022] <- NA #RP
WVS$v2paid[WVS$E179WVS == 124029] <- NA #CHP
WVS$v2paid[WVS$E179WVS == 124047] <- 232 #PCP

WVS$vparty_year[WVS$S025 == 1242020] <- 2019 #Adjust Country-Year
WVS$vparty_year[WVS$S025 == 1242006] <- 2006 #Adjust Country-Year
WVS$vparty_year[WVS$S025 == 1242000] <- 2000 #Adjust Country-Year

#Colombia 2018
WVS$numparties[WVS$S025 == 1702018] <- 8
WVS$numgroup[WVS$S025 == 1702018] <- 3
WVS$groupsize1[WVS$S025 == 1702018] <- .2313117
WVS$groupsize2[WVS$S025 == 1702018] <- .1156559
WVS$groupsize3[WVS$S025 == 1702018] <- .6530324
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 1702018] <- .0710182
WVS$VP[WVS$S025 == 1702018] <- .1157212
WVS$PVF[WVS$S025 == 1702018] <- .1392923
WVS$PVP[WVS$S025 == 1702018] <- .0882623

WVS$ethnic_id[WVS$S025 == 1702018 & WVS$X051 == 170008] <- 10003000
WVS$ethnic_id[WVS$S025 == 1702018 & WVS$X051 == 170010] <- 10002000
WVS$ethnic_id[WVS$S025 == 1702018 & WVS$X051 == 170011] <- 10001000


WVS$to[WVS$S025 == 1702018] <- 2021

WVS$winner[WVS$S025 == 1702018 & WVS$E179WVS== 170021] <- 1 #Democratic Center

WVS$proximity[WVS$S025 == 1702018] <- 0 #2018-2018
WVS$winning_party_share[WVS$S025 == 1702018] <- .5403
WVS$second_party_share[WVS$S025 == 1702018] <- .4177 #https://www.cne.gov.co/phocadownload/relaciones-internacionales/informe-union-europea-elecciones-presidenciales-2019-en.pdf

#Colombia Parties
WVS$v2paid[WVS$E179WVS == 170001] <- 1577 #CCP
WVS$v2paid[WVS$E179WVS == 170002] <- 362 #CLP
WVS$v2paid[WVS$E179WVS == 170003] <- 759 #SPNU
WVS$v2paid[WVS$E179WVS == 170004] <- 561 #RC
WVS$v2paid[WVS$E179WVS == 170005] <- NA #MIRA
WVS$v2paid[WVS$E179WVS == 170006] <- 5926 #Green
WVS$v2paid[WVS$E179WVS == 170008] <- 218 #PDA
WVS$v2paid[WVS$E179WVS == 170011] <- NA #DA
WVS$v2paid[WVS$E179WVS == 170012] <- NA #PU
WVS$v2paid[WVS$E179WVS == 170014] <- NA #NCP
WVS$v2paid[WVS$E179WVS == 170016] <- NA #DP
WVS$v2paid[WVS$E179WVS == 170018] <- 4852 #DA
WVS$v2paid[WVS$E179WVS == 170020] <- 4852 #PM
WVS$v2paid[WVS$E179WVS == 170021] <- 5879 #DC

WVS$vparty_year[WVS$S025 == 1701997] <- 1994 #Adjust Country-Year
WVS$vparty_year[WVS$S025 == 1701998] <- 1998 #Adjust Country-Year
WVS$vparty_year[WVS$S025 == 1702005] <- 2002 #Adjust Country-Year
WVS$vparty_year[WVS$S025 == 1702012] <- 2010 #Adjust Country-Year
WVS$vparty_year[WVS$S025 == 1702018] <- 2018 #Adjust Country-Year

#Ecuador 2013
WVS$numparties[WVS$S025 == 2182013] <- 5
WVS$numgroup[WVS$S025 == 2182013] <- 2
WVS$groupsize1[WVS$S025 == 2182013] <- .9163347
WVS$groupsize2[WVS$S025 == 2182013] <- .0836653
#WVS$groupsize3[WVS$S025 == 2182018] <- .6530324
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 2182013] <- .0145575
WVS$VP[WVS$S025 == 2182013] <- .029115
WVS$PVF[WVS$S025 == 2182013] <- .0199997
WVS$PVP[WVS$S025 == 2182013] <- .0295499

WVS$ethnic_id[WVS$S025 == 2182013 & WVS$X051 == 218011] <- 13002000
WVS$ethnic_id[WVS$S025 == 2182013 & WVS$X051 == 218012] <- 13002000
WVS$ethnic_id[WVS$S025 == 2182013 & WVS$X051 == 218013] <- 13005000

WVS$to[WVS$S025 == 2182013] <- 2021

WVS$winner[WVS$S025 == 2182013 & WVS$E179WVS== 218001] <- 1 #United Front (PAIS and ESP)

WVS$proximity[WVS$S025 == 2182013] <- 0 #2013-2013
WVS$winning_party_share[WVS$S025 == 2182013] <- .5717
WVS$second_party_share[WVS$S025 == 2182013] <- .2268 #https://web.archive.org/web/20161019132729/http://cne.gob.ec/documents/publicaciones/2014/libro_resultados_electorales_2013-r.pdf

#Ecuador 2018
WVS$numparties[WVS$S025 == 2182018] <- 10
WVS$numgroup[WVS$S025 == 2182018] <- 2
WVS$groupsize1[WVS$S025 == 2182018] <- .9539228
WVS$groupsize2[WVS$S025 == 2182018] <- .0460772
#WVS$groupsize3[WVS$S025 == 2182018] <- .6530324
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 2182018] <- .0161962
WVS$VP[WVS$S025 == 2182018] <- .0323924
WVS$PVF[WVS$S025 == 2182018] <- .0282471
WVS$PVP[WVS$S025 == 2182018] <- .0189483

WVS$ethnic_id[WVS$S025 == 2182018 & WVS$X051 == 218011] <- 13002000
WVS$ethnic_id[WVS$S025 == 2182018 & WVS$X051 == 218012] <- 13002000
WVS$ethnic_id[WVS$S025 == 2182018 & WVS$X051 == 218013] <- 13005000

WVS$to[WVS$S025 == 2182018] <- 2021

WVS$winner[WVS$S025 == 2182018 & WVS$E179WVS== 218001] <- 1 #United Front (PAIS and ESP)

WVS$proximity[WVS$S025 == 2182018] <- 1 #2018-2017
WVS$winning_party_share[WVS$S025 == 2182018] <- .5116
WVS$second_party_share[WVS$S025 == 2182018] <- .4884 #https://cne.gob.ec/documents/Estadisticas/Publicaciones/resultados%20electorales%2008052017.pdf

#Ecuador Parties: 
WVS$v2paid[WVS$E179WVS == 218001] <- 4044 #PAIS
WVS$v2paid[WVS$E179WVS == 218003] <- 1450 #ERP
WVS$v2paid[WVS$E179WVS == 218004] <- 797 #DL
WVS$v2paid[WVS$E179WVS == 218006] <- 246 #PSP
WVS$v2paid[WVS$E179WVS == 218008] <- NA #E
WVS$v2paid[WVS$E179WVS == 218009] <- 1131 #PRIAN
WVS$v2paid[WVS$E179WVS == 218013] <- 1521 #DPM
WVS$v2paid[WVS$E179WVS == 218014] <- 4269 #CREO
WVS$v2paid[WVS$E179WVS == 218015] <- NA #SUMA
WVS$v2paid[WVS$E179WVS == 218016] <- NA #Rupture
WVS$v2paid[WVS$E179WVS == 218018] <- NA #EF
WVS$v2paid[WVS$E179WVS == 218019] <- NA #WWM
WVS$v2paid[WVS$E179WVS == 218020] <- NA #SCPM

WVS$vparty_year[WVS$S025 == 2182013] <- 2013 #Adjust Country-Year
WVS$vparty_year[WVS$S025 == 2182018] <- 2017 #Adjust Country-Year

#Ethiopia 2007
WVS$numparties[WVS$S025 == 2312007] <- 9
WVS$numgroup[WVS$S025 == 2312007] <- 3
WVS$groupsize1[WVS$S025 == 2312007] <- .5827996
WVS$groupsize2[WVS$S025 == 2312007] <- .1619396
WVS$groupsize3[WVS$S025 == 2182018] <- .2552607
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 2312007] <- .2274033
WVS$VP[WVS$S025 == 2312007] <- .3356099
WVS$PVF[WVS$S025 == 2312007] <- .3617355
WVS$PVP[WVS$S025 == 2312007] <- .2860132

WVS$ethnic_id[WVS$S025 == 2312007 & WVS$X051 == 231001] <- 53002000 #Amh
WVS$ethnic_id[WVS$S025 == 2312007 & WVS$X051 == 231002] <- 53009000 #Tigre
WVS$ethnic_id[WVS$S025 == 2312007 & WVS$X051 == 231003] <- 53006000 #Oromo
WVS$ethnic_id[WVS$S025 == 2312007 & WVS$X051 == 231004] <- 53008000 #Somoli


WVS$to[WVS$S025 == 2312007] <- 2012

WVS$winner[WVS$S025 == 2312007 & WVS$E179WVS== 231011] <- 1 #EPRDF
WVS$winner[WVS$S025 == 2312007 & WVS$E179WVS== 231033] <- 1 #Tigray
WVS$winner[WVS$S025 == 2312007 & WVS$E179WVS== 231005] <- 1 #ANDM
WVS$winner[WVS$S025 == 2312007 & WVS$E179WVS== 231021] <- 1 #SEPD
WVS$winner[WVS$S025 == 2312007 & WVS$E179WVS== 231022] <- 1 #SEPD same


WVS$proximity[WVS$S025 == 2312007] <- 2 #2007-2005
WVS$winning_party_share[WVS$S025 == 2312007] <- .6265
WVS$second_party_share[WVS$S025 == 2312007] <- .2039 #http://archive.ipu.org/parline-e/reports/arc/2107_05.htm

#Ethiopia 2020
WVS$numparties[WVS$S025 == 2312020] <- 6
WVS$numgroup[WVS$S025 == 2312020] <- 6
WVS$groupsize1[WVS$S025 == 2312020] <- .3398438
WVS$groupsize2[WVS$S025 == 2312020] <- .1458333
WVS$groupsize3[WVS$S025 == 2312020] <- .2994792
WVS$groupsize4[WVS$S025 == 2312020] <- .0794271
WVS$groupsize5[WVS$S025 == 2312020] <- .046875
WVS$groupsize6[WVS$S025 == 2312020] <- .0885417
WVS$VF[WVS$S025 == 2312020] <- .3328175
WVS$VP[WVS$S025 == 2312020] <- .2939055
WVS$PVF[WVS$S025 == 2312020] <- .3404513
WVS$PVP[WVS$S025 == 2312020] <- .4316858

WVS$ethnic_id[WVS$S025 == 2312020 & WVS$X051 == 231001] <- 53002000 #Amh
WVS$ethnic_id[WVS$S025 == 2312020 & WVS$X051 == 231002] <- 53009000 #Tigre
WVS$ethnic_id[WVS$S025 == 2312020 & WVS$X051 == 231003] <- 53006000 #Oromo
WVS$ethnic_id[WVS$S025 == 2312020 & WVS$X051 == 231004] <- 53008000 #Somoli
WVS$ethnic_id[WVS$S025 == 2312020 & WVS$X051 == 231005] <- 53001000  #Afar
WVS$ethnic_id[WVS$S025 == 2312020 & WVS$X051 == 231006] <- 53013000 #Sidama


WVS$to[WVS$S025 == 2312020] <- 2020

WVS$winner[WVS$S025 == 2312020 & WVS$E179WVS== 231011] <- 1 #EPRDF
WVS$winner[WVS$S025 == 2312020 & WVS$E179WVS== 231033] <- 1 #Tigray
WVS$winner[WVS$S025 == 2312020 & WVS$E179WVS== 231005] <- 1 #ANDM
WVS$winner[WVS$S025 == 2312020 & WVS$E179WVS== 231021] <- 1 #SEPD
WVS$winner[WVS$S025 == 2312020 & WVS$E179WVS== 231022] <- 1 #SEPD same


WVS$proximity[WVS$S025 == 2312020] <- 2 #2021-2020
WVS$winning_party_share[WVS$S025 == 2312020] <- NA #ELECTION FRAUD
WVS$second_party_share[WVS$S025 == 2312020] <- NA #https://web.archive.org/web/20160305154240/http://electionethiopia.org/en/home.html

#Ethiopia Partie s
WVS$v2paid[WVS$E179WVS == 231008] <- 4323 #CUD
WVS$v2paid[WVS$E179WVS == 231011] <- 4322 #EPRDF
WVS$v2paid[WVS$E179WVS == 231024] <- 4324 #UEDF

WVS$vparty_year[WVS$S025 == 2312007] <- 2005 #Adjust Country-Year
WVS$vparty_year[WVS$S025 == 2312020] <- 2015 #Adjust Country-Year

#Estonia 2011
WVS$numparties[WVS$S025 == 2332011] <- 6
WVS$numgroup[WVS$S025 == 2332011] <- 2
WVS$groupsize1[WVS$S025 == 2332011] <- .6864482
WVS$groupsize2[WVS$S025 == 2332011] <- .3135518
#WVS$groupsize3[WVS$S025 == 2332011] <- .2994792
#WVS$groupsize4[WVS$S025 == 2332011] <- .0794271
#WVS$groupsize5[WVS$S025 == 2332011] <- .046875
#WVS$groupsize6[WVS$S025 == 2332011] <- .0885417
WVS$VF[WVS$S025 == 2332011] <- .2256672
WVS$VP[WVS$S025 == 2332011] <- .4513344
WVS$PVF[WVS$S025 == 2332011] <- .3038236
WVS$PVP[WVS$S025 == 2332011] <- .3102436

WVS$ethnic_id[WVS$S025 == 2332011 & WVS$G016 == 1290] <- 36601000 #Estonian
WVS$ethnic_id[WVS$S025 == 2332011 & WVS$G016 == 3630] <- 36602000 #Russian 

WVS$to[WVS$S025 == 2332011] <- 2021 

WVS$winner[WVS$S025 == 2332011 & WVS$E179WVS== 233008] <- 1 #ERP
WVS$winner[WVS$S025 == 2332011 & WVS$E179WVS== 233030] <- 1 #ERP

WVS$proximity[WVS$S025 == 2332011] <- 0 #2011-2011
WVS$winning_party_share[WVS$S025 == 2332011] <- .286 #
WVS$second_party_share[WVS$S025 == 2332011] <- .233 #http://www.vvk.ee/varasemad/rk2011/election_result.html

#Parties Estonia
WVS$v2paid[WVS$E179WVS == 233002] <- 533 #ECP
WVS$v2paid[WVS$E179WVS == 233003] <- 1556 #ECP
WVS$v2paid[WVS$E179WVS == 233005] <- 174 #ECPP
WVS$v2paid[WVS$E179WVS == 233008] <- 821 #ERP
WVS$v2paid[WVS$E179WVS == 233009] <- NA #EBP
WVS$v2paid[WVS$E179WVS == 233010] <- 779 #PP
WVS$v2paid[WVS$E179WVS == 233013] <- NA #UF
WVS$v2paid[WVS$E179WVS == 233014] <- 1975 #RPE
WVS$v2paid[WVS$E179WVS == 233016] <- NA #EDU
WVS$v2paid[WVS$E179WVS == 233017] <- NA #EDTP
WVS$v2paid[WVS$E179WVS == 233018] <- NA #PEh
WVS$v2paid[WVS$E179WVS == 233019] <- 110 #ECU
WVS$v2paid[WVS$E179WVS == 233020] <- NA #ICPEP
WVS$v2paid[WVS$E179WVS == 233021] <- NA #ECNC
WVS$v2paid[WVS$E179WVS == 233022] <- 1040 #EG
WVS$v2paid[WVS$E179WVS == 233023] <- NA #ERP
WVS$v2paid[WVS$E179WVS == 233024] <- NA #EFP
WVS$v2paid[WVS$E179WVS == 233025] <- NA #TFP
WVS$v2paid[WVS$E179WVS == 233026] <- NA #FEP
WVS$v2paid[WVS$E179WVS == 233027] <- NA #PPRC
WVS$v2paid[WVS$E179WVS == 233028] <- NA #DP
WVS$v2paid[WVS$E179WVS == 233029] <- 110 #EPU
WVS$v2paid[WVS$E179WVS == 233030] <- 779 #UPP RE
WVS$v2paid[WVS$E179WVS == 233031] <- 1150 #SDP
WVS$v2paid[WVS$E179WVS == 233035] <- NA #EPU

WVS$vparty_year[WVS$S025 == 2332011] <- 2011 #Adjust Country-Year

#Ghana 2007
WVS$numparties[WVS$S025 == 2882007] <- 4
WVS$numgroup[WVS$S025 == 2882007] <- 5
WVS$groupsize1[WVS$S025 == 2882007] <- .1
WVS$groupsize2[WVS$S025 == 2882007] <- .2261261
WVS$groupsize3[WVS$S025 == 2332011] <- .081982
WVS$groupsize4[WVS$S025 == 2332011] <- .1378378
WVS$groupsize5[WVS$S025 == 2332011] <- .4540541
#WVS$groupsize6[WVS$S025 == 2332011] <- .0885417
WVS$VF[WVS$S025 == 2882007] <- .2464089
WVS$VP[WVS$S025 == 2882007] <- .2385288
WVS$PVF[WVS$S025 == 2882007] <- .16517
WVS$PVP[WVS$S025 == 2882007] <- .2860736

WVS$ethnic_id[WVS$S025 == 2882007 & WVS$X051 == 288021] <- 45203000 #Ga-Adangbe
WVS$ethnic_id[WVS$S025 == 2882007 & WVS$X051 == 288033] <- 45202000 #Ewe 
WVS$ethnic_id[WVS$S025 == 2882007 & WVS$X051 == 288022 & X048ISO==288001] <- 45201000 #Akan Asanti 
WVS$ethnic_id[WVS$S025 == 2882007 & WVS$X051 == 288022 & X048ISO!=288001] <- 45207000 #Akan Other 
WVS$ethnic_id[WVS$S025 == 2882007 & WVS$X051 == 288024] <- 45206000 # Northern Groups (Mole-Dagbani, Gurma, Grusi)

WVS$to[WVS$S025 == 2882007] <- 2008 

WVS$winner[WVS$S025 == 2882007 & WVS$E179WVS== 288002] <- 1 #NPP

WVS$proximity[WVS$S025 == 2882007] <- 1 #2008-2007
WVS$winning_party_share[WVS$S025 == 2882007] <- .5245 #
WVS$second_party_share[WVS$S025 == 2882007] <- .4464 #https://swap.stanford.edu/20121211163203/http%3A//results.ec.gov.gh/assets/file/2004ParliamentaryDetResults.pdf

#Ghana 2012
WVS$numparties[WVS$S025 == 2882012] <- 3
WVS$numgroup[WVS$S025 == 2882012] <- 4
WVS$groupsize1[WVS$S025 == 2882012] <- .2062868
WVS$groupsize2[WVS$S025 == 2882012] <- .4852652
WVS$groupsize3[WVS$S025 == 2332011] <- .1640472
WVS$groupsize4[WVS$S025 == 2332011] <- .1444008
#WVS$groupsize5[WVS$S025 == 2332011] <- .046875
#WVS$groupsize6[WVS$S025 == 2332011] <- .0885417
WVS$VF[WVS$S025 == 2882012] <- .2325826
WVS$VP[WVS$S025 == 2882012] <- .2541149
WVS$PVF[WVS$S025 == 2882012] <- .1567316
WVS$PVP[WVS$S025 == 2882012] <- .2816581

WVS$ethnic_id[WVS$S025 == 2882012 & WVS$X051 == 288021 & X048ISO==288001] <- 45201000 #Akan Ashanti
WVS$ethnic_id[WVS$S025 == 2882012 & WVS$X051 == 288021 & X048ISO!=288001] <- 45207000 #Akan Ashanti
WVS$ethnic_id[WVS$S025 == 2882012 & WVS$X051 == 288033] <- 45202000 #Ewe 
WVS$ethnic_id[WVS$S025 == 2882012 & WVS$X051 == 288024] <- 45206000 #Northern Groups (Daghbon) 

WVS$to[WVS$S025 == 2882012] <- 2012 

WVS$winner[WVS$S025 == 2882012 & WVS$E179WVS== 288001] <- 1 #NDC

WVS$proximity[WVS$S025 == 2882012] <- 0 #2012-2012
WVS$winning_party_share[WVS$S025 == 2882012] <- .502 #
WVS$second_party_share[WVS$S025 == 2882012] <- .498 #https://africanelections.tripod.com/gh.html

#Parties Ghana
WVS$v2paid[WVS$E179WVS == 288001] <- 2311 #NDS
WVS$v2paid[WVS$E179WVS == 288002] <- 2313 #NPP
WVS$v2paid[WVS$E179WVS == 288003] <- 3660 #CPP
WVS$v2paid[WVS$E179WVS == 288004] <- NA #PNC
WVS$v2paid[WVS$E179WVS == 288005] <- NA #GCPP
WVS$v2paid[WVS$E179WVS == 288006] <- NA #DPP
WVS$v2paid[WVS$E179WVS == 288007] <- NA #DFP
WVS$v2paid[WVS$E179WVS == 288030] <- 1975 #RPD

WVS$vparty_year[WVS$S025 == 2882007] <- 2004 #Adjust Country-Year
WVS$vparty_year[WVS$S025 == 2882012] <- 2012 #Adjust Country-Year

#India 1995
WVS$numparties[WVS$S025 == 3561995] <- 7
WVS$numgroup[WVS$S025 == 3561995] <- 4
WVS$groupsize1[WVS$S025 == 3561995] <- .1238761
WVS$groupsize2[WVS$S025 == 3561995] <- .7502497
WVS$groupsize3[WVS$S025 == 3561995] <- .1098901
WVS$groupsize4[WVS$S025 == 3561995] <- .015984
#WVS$groupsize5[WVS$S025 == 3561995] <- .046875
#WVS$groupsize6[WVS$S025 == 3561995] <- .0885417
WVS$VF[WVS$S025 == 3561995] <- .1430451
WVS$VP[WVS$S025 == 3561995] <- .2309372
WVS$PVF[WVS$S025 == 3561995] <- .1993386
WVS$PVP[WVS$S025 == 3561995] <- .1813991

WVS$ethnic_id[WVS$S025 == 3561995 & G016==490] <- 75002000 #Bengali
WVS$ethnic_id[WVS$S025 == 3561995 & G016==1740] <- 75005000 #Hindi
WVS$ethnic_id[WVS$S025 == 3561995 & X051==356008] <- NA #MUSLIM 
WVS$ethnic_id[WVS$S025 == 3561995 & G016==4190] <- 75019000 #Tamil
WVS$ethnic_id[WVS$S025 == 3561995 & G016==4420] <- 75020000 #Telugu

WVS$to[WVS$S025 == 3561995] <- 1999

WVS$winner[WVS$S025 == 3561995 & WVS$E179WVS== 356067] <- 1 #INC

WVS$proximity[WVS$S025 == 3561995] <- 1 #1996-1995
WVS$winning_party_share[WVS$S025 == 3561995] <- .364 #
WVS$second_party_share[WVS$S025 == 3561995] <- .2007 #https://eci.gov.in/files/file/4121-general-election-1991-vol-i-ii/?do=download&r=9764&confirm=1&t=1&csrfKey=6fdbcc3fe6a2e2fce996db3722892e72

#India 2001
WVS$numparties[WVS$S025 == 3562001] <- 10
WVS$numgroup[WVS$S025 == 3562001] <- 7
WVS$groupsize1[WVS$S025 == 3562001] <- .3943763
WVS$groupsize2[WVS$S025 == 3562001] <- .1658255
WVS$groupsize3[WVS$S025 == 3562001] <- .0670512
WVS$groupsize4[WVS$S025 == 3562001] <- .1687094
WVS$groupsize5[WVS$S025 == 3562001] <- .0576784
WVS$groupsize6[WVS$S025 == 3562001] <- .0915645
WVS$groupsize7[WVS$S025 == 3562001] <- .0547945
WVS$VF[WVS$S025 == 3562001] <- .1784855
WVS$VP[WVS$S025 == 3562001] <- .1328664
WVS$PVF[WVS$S025 == 3562001] <- .22135
WVS$PVP[WVS$S025 == 3562001] <- .1570212

WVS$ethnic_id[WVS$S025 == 3562001 & G016==490] <- 75002000 #Bengali


WVS$ethnic_id[WVS$S025 == 3562001 & X051==356017] <- 75021000 #Scheduled Castes
WVS$ethnic_id[WVS$S025 == 3562001 & X051==356018] <- 75022000 #Scheduled Tribe
WVS$ethnic_id[WVS$S025 == 3562001 & X051==356020] <- 75021000 #Upper SC 

WVS$ethnic_id[WVS$S025 == 3562001 & X051==356002] <- 75016000 # Other C
WVS$ethnic_id[WVS$S025 == 3562001 & X051==356003] <- 75016000 #Other C 
WVS$ethnic_id[WVS$S025 == 3562001 & X051==356004] <- 75016000 #Other C
WVS$ethnic_id[WVS$S025 == 3562001 & X051==356005] <- 75016000 #Other C

WVS$ethnic_id[WVS$S025 == 3562001 & G016==490 & X051<356017] <- 75002000 #Bangla No sc
WVS$ethnic_id[WVS$S025 == 3562001 & G016==1740 & X051<356017] <- 75005000 #Hindi No sc
WVS$ethnic_id[WVS$S025 == 3562001 & G016==2940 & X051<356017] <- 75005000 #Marathi No sc

WVS$ethnic_id[WVS$S025 == 3562001 & X051==356008] <- NA #Muslim

WVS$ethnic_id[WVS$S025 == 3562001 & G016==4420 & X051<356017] <- 75005000 #Telugu No sc

WVS$to[WVS$S025 == 3562001] <- 2002

WVS$winner[WVS$S025 == 3562001 & WVS$E179WVS== 356068] <- 1 #IPP
WVS$winner[WVS$S025 == 3562001 & WVS$E179WVS== 356044] <- 1 #TDP


WVS$proximity[WVS$S025 == 3562001] <- 2 #2001-1999
WVS$winning_party_share[WVS$S025 == 3562001] <- .2830 #
WVS$second_party_share[WVS$S025 == 3562001] <- .2375 #https://eci.gov.in/files/file/4121-general-election-1991-vol-i-ii/?do=download&r=9764&confirm=1&t=1&csrfKey=6fdbcc3fe6a2e2fce996db3722892e72

#India 2012
WVS$numparties[WVS$S025 == 3562012] <- 8
WVS$numgroup[WVS$S025 == 3562012] <- 7
WVS$groupsize1[WVS$S025 == 3562012] <- .3131825
WVS$groupsize2[WVS$S025 == 3562012] <- .2613105
WVS$groupsize3[WVS$S025 == 3562012] <- .0393916
WVS$groupsize4[WVS$S025 == 3562012] <- .1879875
WVS$groupsize5[WVS$S025 == 3562012] <- .0273011
WVS$groupsize6[WVS$S025 == 3562012] <- .1290952
WVS$groupsize7[WVS$S025 == 3562012] <- .0417317
WVS$VF[WVS$S025 == 3562012] <- .1944579
WVS$VP[WVS$S025 == 3562012] <- .153045
WVS$PVF[WVS$S025 == 3562012] <- .1868439
WVS$PVP[WVS$S025 == 3562012] <- .1518143

WVS$ethnic_id[WVS$S025 == 3562012 & G016==490] <- 75002000 #Bengali
WVS$ethnic_id[WVS$S025 == 3562012 & G016==1740] <- 75005000 #Hindi
WVS$ethnic_id[WVS$S025 == 3562012 & X051==356008] <- NA #MUSLIM 
WVS$ethnic_id[WVS$S025 == 3562012 & G016==4190] <- 75019000 #Tamil
WVS$ethnic_id[WVS$S025 == 3562012 & G016==4420] <- 75020000 #Telugu

WVS$to[WVS$S025 == 3562012] <- 2014

WVS$winner[WVS$S025 == 3562012 & WVS$E179WVS== 356067] <- 1 #INC
#Dravidian no obs

WVS$proximity[WVS$S025 == 3562012] <- 2 #2014-2012
WVS$winning_party_share[WVS$S025 == 3562012] <- .2855 #
WVS$second_party_share[WVS$S025 == 3562012] <- .1880 #https://eci.gov.in/files/category/98-general-election-2009/

#Indian Parties
WVS$v2paid[WVS$E179WVS == 356001] <- NA #IC
WVS$v2paid[WVS$E179WVS == 356003] <- NA #NPP
WVS$v2paid[WVS$E179WVS == 356004] <- 408 #CPI
WVS$v2paid[WVS$E179WVS == 356005] <- 893 #CPI(M)
WVS$v2paid[WVS$E179WVS == 356006] <- 937 #BSP
WVS$v2paid[WVS$E179WVS == 356007] <- NA #PP
WVS$v2paid[WVS$E179WVS == 356009] <- 2494 #AITMC
WVS$v2paid[WVS$E179WVS == 356010] <- NA #NCP
WVS$v2paid[WVS$E179WVS == 356011] <- NA #NPP
WVS$v2paid[WVS$E179WVS == 356014] <- NA #SA
WVS$v2paid[WVS$E179WVS == 356016] <- 1207 #JD
WVS$v2paid[WVS$E179WVS == 356017] <- 2491 #SP
WVS$v2paid[WVS$E179WVS == 356018] <- NA #SP
WVS$v2paid[WVS$E179WVS == 356019] <- NA #BP
WVS$v2paid[WVS$E179WVS == 356021] <- NA #RSP
WVS$v2paid[WVS$E179WVS == 356023] <- NA #MCC
WVS$v2paid[WVS$E179WVS == 356024] <- NA #AIFB
WVS$v2paid[WVS$E179WVS == 356025] <- NA #BBM
WVS$v2paid[WVS$E179WVS == 356026] <- NA #RPI
WVS$v2paid[WVS$E179WVS == 356028] <- NA #HDP
WVS$v2paid[WVS$E179WVS == 356029] <- NA #INL
WVS$v2paid[WVS$E179WVS == 356030] <- NA #SAP
WVS$v2paid[WVS$E179WVS == 356033] <- NA #JLF
WVS$v2paid[WVS$E179WVS == 356034] <- NA #APA
WVS$v2paid[WVS$E179WVS == 356035] <- NA #TYA
WVS$v2paid[WVS$E179WVS == 356036] <- NA #PWW
WVS$v2paid[WVS$E179WVS == 356037] <- NA #DPF
WVS$v2paid[WVS$E179WVS == 356038] <- 1571 #AIADP
WVS$v2paid[WVS$E179WVS == 356039] <- NA #Renaissance Dravidian Progressive 
WVS$v2paid[WVS$E179WVS == 356040] <- NA #WPP
WVS$v2paid[WVS$E179WVS == 356042] <- NA #KC
WVS$v2paid[WVS$E179WVS == 356044] <- NA #PTL
WVS$v2paid[WVS$E179WVS == 356046] <- NA #ABP
WVS$v2paid[WVS$E179WVS == 356047] <- NA #Tiwari
WVS$v2paid[WVS$E179WVS == 356052] <- NA #LF
WVS$v2paid[WVS$E179WVS == 356055] <- NA #UF
WVS$v2paid[WVS$E179WVS == 356060] <- 7257 #AIFM
WVS$v2paid[WVS$E179WVS == 356067] <- 1297 #INC
WVS$v2paid[WVS$E179WVS == 356068] <- 422 #IPP v BJP
WVS$v2paid[WVS$E179WVS == 356072] <- NA #IUML
WVS$v2paid[WVS$E179WVS == 356076] <- NA #RPI
WVS$v2paid[WVS$E179WVS == 356077] <- NA #SUCI
WVS$v2paid[WVS$E179WVS == 356079] <- NA #LJP
WVS$v2paid[WVS$E179WVS == 356081] <- NA #TRS
WVS$v2paid[WVS$E179WVS == 356087] <- NA #NPF
WVS$v2paid[WVS$E179WVS == 356090] <- NA #LJP
WVS$v2paid[WVS$E179WVS == 356091] <- NA #HJC
WVS$v2paid[WVS$E179WVS == 356092] <- NA #JDF
WVS$v2paid[WVS$E179WVS == 356093] <- NA #KFA
WVS$v2paid[WVS$E179WVS == 356095] <- NA #AD
WVS$v2paid[WVS$E179WVS == 356096] <- NA #TRMC
WVS$v2paid[WVS$E179WVS == 356098] <- NA #MRA
WVS$v2paid[WVS$E179WVS == 356099] <- NA #ASD
WVS$v2paid[WVS$E179WVS == 356101] <- 2498 #JD
WVS$v2paid[WVS$E179WVS == 356102] <- NA #PRP
WVS$v2paid[WVS$E179WVS == 356113] <- NA #RPI

WVS$vparty_year[WVS$S025 == 3561995] <- 1991 #Adjust Country-Year
WVS$vparty_year[WVS$S025 == 3562001] <- 1999 #Adjust Country-Year
WVS$vparty_year[WVS$S025 == 3562012] <- 2009 #Adjust Country-Year

#Indonesia 2001 
WVS$numparties[WVS$S025 == 3602001] <- 5
WVS$numgroup[WVS$S025 == 3602001] <- 2
WVS$groupsize1[WVS$S025 == 3602001] <- .8057554
WVS$groupsize2[WVS$S025 == 3602001] <- .1942446
#WVS$groupsize3[WVS$S025 == 2182018] <- .2552607
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 3602001] <- .0342562
WVS$VP[WVS$S025 == 3602001] <- .0685124
WVS$PVF[WVS$S025 == 3602001] <- .0660651
WVS$PVP[WVS$S025 == 3602001] <- .0530805

WVS$ethnic_id[WVS$S025 == 3602001 & WVS$X051 == 360004] <- 85008000 #Javanese
WVS$ethnic_id[WVS$S025 == 3602001 & WVS$X051 == 360005] <- 85014000 #Sundanese

WVS$to[WVS$S025 == 3602001] <- 2004

WVS$winner[WVS$S025 == 3602001 & WVS$E179WVS== 360004] <- 1 #PKB
WVS$winner[WVS$S025 == 3602001 & WVS$E179WVS== 360005] <- 1 #NMP 
WVS$winner[WVS$S025 == 3602001 & WVS$E179WVS== 360002] <- 1 #PFG 
WVS$winner[WVS$S025 == 3602001 & WVS$E179WVS== 360003] <- 1 #UDP 

WVS$proximity[WVS$S025 == 3602001] <- 2 #2001-1999
WVS$winning_party_share[WVS$S025 == 3602001] <- .5437
WVS$second_party_share[WVS$S025 == 3602001] <- .4563 #https://en.wikipedia.org/wiki/1999_Indonesian_presidential_election

#Indonesia 2004 
WVS$numparties[WVS$S025 == 3602006] <- 7
WVS$numgroup[WVS$S025 == 3602006] <- 2
WVS$groupsize1[WVS$S025 == 3602006] <- .689243
WVS$groupsize2[WVS$S025 == 3602006] <- .310757
#WVS$groupsize3[WVS$S025 == 2182018] <- .2552607
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 3602006] <- .0822155
WVS$VP[WVS$S025 == 3602006] <- .164431
WVS$PVF[WVS$S025 == 3602006] <- .165332
WVS$PVP[WVS$S025 == 3602006] <- .1024578

WVS$ethnic_id[WVS$S025 == 3602006 & WVS$X051 == 360004] <- 85008000 #Javanese
WVS$ethnic_id[WVS$S025 == 3602006 & WVS$X051 == 360005] <- 85014000 #Sundanese

WVS$to[WVS$S025 == 3602006] <- 2014

WVS$winner[WVS$S025 == 3602006 & WVS$E179WVS== 360001] <- 1 #D
WVS$winner[WVS$S025 == 3602006 & WVS$E179WVS== 360004] <- 1 #NAP 
WVS$winner[WVS$S025 == 3602006 & WVS$E179WVS== 360005] <- 1 #NMP 
WVS$winner[WVS$S025 == 3602006 & WVS$E179WVS== 360002] <- 1 #GP-PFG 
WVS$winner[WVS$S025 == 3602006 & WVS$E179WVS== 360008] <- 1 #PJP
WVS$winner[WVS$S025 == 3602006 & WVS$E179WVS== 360003] <- 1 #UDP

WVS$proximity[WVS$S025 == 3602006] <- 2 #2006-2004
WVS$winning_party_share[WVS$S025 == 3602006] <- .6062
WVS$second_party_share[WVS$S025 == 3602006] <- .3938 #https://en.wikipedia.org/wiki/1999_Indonesian_presidential_election

#Indonesia Parties
WVS$v2paid[WVS$E179WVS == 360001] <- 2561 #DP
WVS$v2paid[WVS$E179WVS == 360002] <- 2304 #PFG
WVS$v2paid[WVS$E179WVS == 360003] <- 2558 #UDP
WVS$v2paid[WVS$E179WVS == 360004] <- 2559 #NAP
WVS$v2paid[WVS$E179WVS == 360005] <- 2557 #NMP
WVS$v2paid[WVS$E179WVS == 360007] <- 2560 #IDPS
WVS$v2paid[WVS$E179WVS == 360008] <- 2556 #PJP
WVS$v2paid[WVS$E179WVS == 360011] <- NA #WP
WVS$v2paid[WVS$E179WVS == 360012] <- 4495 #GIMP
WVS$v2paid[WVS$E179WVS == 360013] <- NA #CIMP
WVS$v2paid[WVS$E179WVS == 360014] <- 4497 #PCP
WVS$v2paid[WVS$E179WVS == 360015] <- 2556 #PJP same
WVS$v2paid[WVS$E179WVS == 360017] <- 4496 #NP
WVS$v2paid[WVS$E179WVS == 360018] <- NA #IUP
WVS$v2paid[WVS$E179WVS == 360019] <- NA #ISP

WVS$vparty_year[WVS$S025 == 3602001] <- 1999 #Adjust Country-Year
WVS$vparty_year[WVS$S025 == 3602006] <- 2004 #Adjust Country-Year

#Kazakhstan 2011
WVS$numparties[WVS$S025 == 3982011] <- 4
WVS$numgroup[WVS$S025 == 3982011] <- 3
WVS$groupsize1[WVS$S025 == 3982011] <- .5984523
WVS$groupsize2[WVS$S025 == 3982011] <- .3551161
WVS$groupsize3[WVS$S025 == 3982011] <- .0464316
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 3982011] <- .0081057
WVS$VP[WVS$S025 == 3982011] <- .0118934
WVS$PVF[WVS$S025 == 3982011] <- .008239
WVS$PVP[WVS$S025 == 3982011] <- .0148804

WVS$ethnic_id[WVS$S025 == 3982011 & WVS$X051 == 398025] <- 70502000 #Kazakhs
WVS$ethnic_id[WVS$S025 == 3982011 & WVS$X051 == 398029] <- 70503000 #Russian
WVS$ethnic_id[WVS$S025 == 3982011 & WVS$X051 == 398033] <- 70507000 #Uzbeks

WVS$to[WVS$S025 == 3982011] <- 2019

WVS$winner[WVS$S025 == 3982011 & WVS$E179WVS== 398008] <- 1 #Nur Otan

WVS$proximity[WVS$S025 == 3982011] <- 0 #2011-2011
WVS$winning_party_share[WVS$S025 == 3982011] <- .9555
WVS$second_party_share[WVS$S025 == 3982011] <- .0194 #http://election.kz/kaz/r-saylau-zh-ne-referendum-zh-n-ndeg-a-parat/tken-saylau-nau-andary-turaly-a-parat/2011-zhyl-y-3-s-u-rde-bol-an-r-prezident-n-kezekten-tys-saylauyny-orytyndylar.php

#Kazakhstan 2018
WVS$numparties[WVS$S025 == 3982018] <- 5
WVS$numgroup[WVS$S025 == 3982018] <- 3
WVS$groupsize1[WVS$S025 == 3982018] <- .7445256
WVS$groupsize2[WVS$S025 == 3982018] <- .2177616
WVS$groupsize3[WVS$S025 == 3982018] <- .0377129
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 3982018] <- .0224788
WVS$VP[WVS$S025 == 3982018] <- .0374246
WVS$PVF[WVS$S025 == 3982018] <- .0342729
WVS$PVP[WVS$S025 == 3982018] <- .0557147

WVS$ethnic_id[WVS$S025 == 3982018 & WVS$X051 == 398025] <- 70502000 #Kazakhs
WVS$ethnic_id[WVS$S025 == 3982018 & WVS$X051 == 398029] <- 70503000 #Russian
WVS$ethnic_id[WVS$S025 == 3982018 & WVS$X051 == 398033] <- 70507000 #Uzbeks

WVS$to[WVS$S025 == 3982018] <- 2019

WVS$winner[WVS$S025 == 3982018 & WVS$E179WVS== 398008] <- 1 #Nur Otan

WVS$proximity[WVS$S025 == 3982018] <- 1 #2019-2018
WVS$winning_party_share[WVS$S025 == 3982018] <- .9775
WVS$second_party_share[WVS$S025 == 3982018] <- .0161 #http://election.kz/kaz/r-saylau-zh-ne-referendum-zh-n-ndeg-a-parat/tken-saylau-nau-andary-turaly-a-parat/2011-zhyl-y-3-s-u-rde-bol-an-r-prezident-n-kezekten-tys-saylauyny-orytyndylar.php


#Kazakhstan Parties
WVS$v2paid[WVS$E179WVS == 398001] <- 4350 #CPK
WVS$v2paid[WVS$E179WVS == 398002] <- NA #DC
WVS$v2paid[WVS$E179WVS == 398003] <- 3747 #AK ZHOL
WVS$v2paid[WVS$E179WVS == 398004] <- NA #KSDP
WVS$v2paid[WVS$E179WVS == 398005] <- 3749 #CPP
WVS$v2paid[WVS$E179WVS == 398006] <- NA #RP
WVS$v2paid[WVS$E179WVS == 398007] <- NA #PKP
WVS$v2paid[WVS$E179WVS == 398008] <- 3748 #NO
WVS$v2paid[WVS$E179WVS == 398009] <- NA #NSDP
WVS$v2paid[WVS$E179WVS == 398010] <- NA #DPA
WVS$v2paid[WVS$E179WVS == 398011] <- NA #CP

WVS$vparty_year[WVS$S025 == 3982011] <- 2012 #Adjust Country-Year 
WVS$vparty_year[WVS$S025 == 3982018] <- 2016 #Adjust Country-Year

#Kenya 2021
WVS$numparties[WVS$S025 == 4042021] <- 11
WVS$numgroup[WVS$S025 == 4042021] <- 7
WVS$groupsize1[WVS$S025 == 4042021] <- .1847134
WVS$groupsize2[WVS$S025 == 4042021] <- .0997877
WVS$groupsize3[WVS$S025 == 4042021] <- .2292994
WVS$groupsize4[WVS$S025 == 4042021] <- .059448
WVS$groupsize5[WVS$S025 == 4042021] <- .14862
WVS$groupsize6[WVS$S025 == 4042021] <- .2038217
WVS$groupsize7[WVS$S025 == 4042021] <- .07431
WVS$VF[WVS$S025 == 4042021] <- .2726587
WVS$VP[WVS$S025 == 4042021] <- .1872604
WVS$PVF[WVS$S025 == 4042021] <- .2940206
WVS$PVP[WVS$S025 == 4042021] <- .1985044

WVS$ethnic_id[WVS$S025 == 4042021 & WVS$X051 == 404001] <- 50101000 #Kalenjin-Masai-Turkana-Samburu
WVS$ethnic_id[WVS$S025 == 4042021 & WVS$X051 == 404007] <- 50101000 #Kalenjin-Masai-Turkana-Samburu
WVS$ethnic_id[WVS$S025 == 4042021 & WVS$X051 == 404011] <- 50101000 #Kalenjin-Masai-Turkana-Samburu

WVS$ethnic_id[WVS$S025 == 4042021 & WVS$X051 == 404002] <- 50102000 #Kamba

WVS$ethnic_id[WVS$S025 == 4042021 & WVS$X051 == 404003] <- 50103000 #Kikuyu-Meru-Emb
WVS$ethnic_id[WVS$S025 == 4042021 & WVS$X051 == 404008] <- 50103000 #Kikuyu-Meru-Emb

WVS$ethnic_id[WVS$S025 == 4042021 & WVS$X051 == 404004] <- 50104000 #Kisii   

WVS$ethnic_id[WVS$S025 == 4042021 & WVS$X051 == 404005] <- 50105000 #Luhya    

WVS$ethnic_id[WVS$S025 == 4042021 & WVS$X051 == 404006] <- 50106000 #Luo      

WVS$ethnic_id[WVS$S025 == 4042021 & WVS$X051 == 404009] <- 50107000 #Mijikenda

WVS$ethnic_id[WVS$S025 == 4042021 & WVS$X051 == 404009] <- 50108000  #Somalis

WVS$to[WVS$S025 == 4042021] <- 2021

WVS$winner[WVS$S025 == 4042021 & WVS$E179WVS== 404005] <- 1 #Jubilee

WVS$proximity[WVS$S025 == 4042021] <- 1 #2022-2021
WVS$winning_party_share[WVS$S025 == 4042021] <- .983
WVS$second_party_share[WVS$S025 == 4042021] <- .01 #https://www.iebc.or.ke/uploads/resources/A1wUl9EnMM.pdf

#Kenya Parties
WVS$v2paid[WVS$E179WVS == 404001] <- 7609 #Amani
WVS$v2paid[WVS$E179WVS == 404002] <- 3860 #DPK
WVS$v2paid[WVS$E179WVS == 404003] <- 3863 #FORD-K
WVS$v2paid[WVS$E179WVS == 404004] <- 3862 #FORD-A
WVS$v2paid[WVS$E179WVS == 404005] <- 6912 #JP
WVS$v2paid[WVS$E179WVS == 404006] <- 2316 #KANU
WVS$v2paid[WVS$E179WVS == 404007] <- NA #LP
WVS$v2paid[WVS$E179WVS == 404008] <- NA #MCCP
WVS$v2paid[WVS$E179WVS == 404009] <- 7970 #NARC-K
WVS$v2paid[WVS$E179WVS == 404010] <- NA #NASA
WVS$v2paid[WVS$E179WVS == 404011] <- 2360 #ODM
WVS$v2paid[WVS$E179WVS == 404012] <- NA #PEP
WVS$v2paid[WVS$E179WVS == 404013] <- NA #TAPK
WVS$v2paid[WVS$E179WVS == 404014] <- NA #UDA
WVS$v2paid[WVS$E179WVS == 404015] <- NA #UDF
WVS$v2paid[WVS$E179WVS == 404016] <- NA #UDM
WVS$v2paid[WVS$E179WVS == 404017] <- NA #UPK
WVS$v2paid[WVS$E179WVS == 404018] <- 2362 #Wiper

WVS$vparty_year[WVS$S025 == 4042021] <- 2017 #Adjust Country-Year 

#Malaysia 2012
WVS$numparties[WVS$S025 == 4582012] <- 4
WVS$numgroup[WVS$S025 == 4582012] <- 3
WVS$groupsize1[WVS$S025 == 4582012] <- .6921708
WVS$groupsize2[WVS$S025 == 4582012] <- .225089
WVS$groupsize3[WVS$S025 == 4582012] <- .0827402
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 4582012] <- .0976598
WVS$VP[WVS$S025 == 4582012] <- .1665385
WVS$PVF[WVS$S025 == 4582012] <- .1288573
WVS$PVP[WVS$S025 == 4582012] <- .1841878

WVS$ethnic_id[WVS$S025 == 4582012 & WVS$X051 == 458004] <- 82005000 #Malays
WVS$ethnic_id[WVS$S025 == 4582012 & WVS$X051 == 458012] <- 82001000 #Chinese
WVS$ethnic_id[WVS$S025 == 4582012 & WVS$X051 == 458014] <- 82003000 #Indian

WVS$to[WVS$S025 == 4582012] <- 2021

WVS$winner[WVS$S025 == 4582012 & WVS$E179WVS== 458005] <- 1 #NF

WVS$proximity[WVS$S025 == 4582012] <- 1 #2013-2012
WVS$winning_party_share[WVS$S025 == 4582012] <- .5139
WVS$second_party_share[WVS$S025 == 4582012] <- .1396 #http://archive.ipu.org/parline-e/reports/arc/2197_08.htm


#Malaysia 2018
WVS$numparties[WVS$S025 == 4582018] <- 5
WVS$numgroup[WVS$S025 == 4582018] <- 3
WVS$groupsize1[WVS$S025 == 4582018] <- .6777692
WVS$groupsize2[WVS$S025 == 4582018] <- .2463207
WVS$groupsize3[WVS$S025 == 4582018] <- .0759101
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 4582018] <- .119325
WVS$VP[WVS$S025 == 4582018] <- .2094628
WVS$PVF[WVS$S025 == 4582018] <- .1488607
WVS$PVP[WVS$S025 == 4582018] <- .1964735

WVS$ethnic_id[WVS$S025 == 4582018 & WVS$X051 == 458004] <- 82005000 #Malays
WVS$ethnic_id[WVS$S025 == 4582018 & WVS$X051 == 458012] <- 82001000 #Chinese
WVS$ethnic_id[WVS$S025 == 4582018 & WVS$X051 == 458014] <- 82003000 #Indian

WVS$to[WVS$S025 == 4582018] <- 2021

WVS$winner[WVS$S025 == 4582018 & WVS$E179WVS== 458006] <- 1 #AH

WVS$proximity[WVS$S025 == 4582018] <- 0 #2018-2018
WVS$winning_party_share[WVS$S025 == 4582018] <- .4576
WVS$second_party_share[WVS$S025 == 4582018] <- .3384 #https://graphics.straitstimes.com/STI/STIMEDIA/Interactives/2018/05/malaysia-general-elections-live-results/index.html

#Malaysia Parties
WVS$v2paid[WVS$E179WVS == 458001] <- 2485 #PJP
WVS$v2paid[WVS$E179WVS == 458002] <- 2486 #DAP
WVS$v2paid[WVS$E179WVS == 458003] <- 2483 #PMIP
WVS$v2paid[WVS$E179WVS == 458004] <- NA #SPM
WVS$v2paid[WVS$E179WVS == 458005] <- 3637 #NF
WVS$v2paid[WVS$E179WVS == 458006] <- 93407 #AH
WVS$v2paid[WVS$E179WVS == 458007] <- NA #IoP
WVS$v2paid[WVS$E179WVS == 458008] <- NA #USA
WVS$v2paid[WVS$E179WVS == 458009] <- NA #SHA

WVS$vparty_year[WVS$S025 == 4582012] <- 2008 #Adjust Country-Year 
WVS$vparty_year[WVS$S025 == 4582018] <- 2018 #Adjust Country-Year 

#Moldova 2002
WVS$numparties[WVS$S025 == 4982002] <- 9
WVS$numgroup[WVS$S025 == 4982002] <- 2
WVS$groupsize1[WVS$S025 == 4982002] <- .8461539
WVS$groupsize2[WVS$S025 == 4982002] <- .1538462
#WVS$groupsize3[WVS$S025 == 4982002] <- .0759101
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 4982002] <- .0492166
WVS$VP[WVS$S025 == 4982002] <- .0984332
WVS$PVF[WVS$S025 == 4982002] <- .0696401
WVS$PVP[WVS$S025 == 4982002] <- .0779091

WVS$ethnic_id[WVS$S025 == 4982002 & WVS$X051 == 498001] <- 35901000 #Moldovan
WVS$ethnic_id[WVS$S025 == 4982002 & WVS$X051 == 498002] <- 35903000 #Russian

WVS$to[WVS$S025 == 4982002] <- 2010

WVS$winner[WVS$S025 == 4982002 & WVS$E179WVS== 498003] <- 1 #PCRM

WVS$proximity[WVS$S025 == 4982002] <- 1 #2002-2001
WVS$winning_party_share[WVS$S025 == 4982002] <- .5007
WVS$second_party_share[WVS$S025 == 4982002] <- .1336 #http://www.e-democracy.md/elections/parliamentary/2001/results/

#Moldova 2006
WVS$numparties[WVS$S025 == 4982006] <- 7
WVS$numgroup[WVS$S025 == 4982006] <- 2
WVS$groupsize1[WVS$S025 == 4982006] <- .9297297
WVS$groupsize2[WVS$S025 == 4982006] <- .0702703
#WVS$groupsize3[WVS$S025 == 4982002] <- .0759101
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 4982006] <- .0472132
WVS$VP[WVS$S025 == 4982006] <- .0944265
WVS$PVF[WVS$S025 == 4982006] <- .0652885
WVS$PVP[WVS$S025 == 4982006] <- .085154

WVS$ethnic_id[WVS$S025 == 4982006 & WVS$X051 == 498001] <- 35901000 #Moldovan
WVS$ethnic_id[WVS$S025 == 4982006 & WVS$X051 == 498002] <- 35903000 #Russian

WVS$to[WVS$S025 == 4982006] <- 2010

WVS$winner[WVS$S025 == 4982006 & WVS$E179WVS== 498003] <- 1 #PCRM

WVS$proximity[WVS$S025 == 4982006] <- 1 #2006-2005
WVS$winning_party_share[WVS$S025 == 4982006] <- .4598
WVS$second_party_share[WVS$S025 == 4982006] <- .2853 #http://www.e-democracy.md/elections/parliamentary/2005/results/

#Moldovan Parties
WVS$v2paid[WVS$E179WVS == 498001] <- 2264 #CDPP
WVS$v2paid[WVS$E179WVS == 498002] <- NA #SLP
WVS$v2paid[WVS$E179WVS == 498003] <- 2260 #PCRM
WVS$v2paid[WVS$E179WVS == 498004] <- NA #NFSM
WVS$v2paid[WVS$E179WVS == 498005] <- NA #PRCM
WVS$v2paid[WVS$E179WVS == 498006] <- 2265 #DPM
WVS$v2paid[WVS$E179WVS == 498007] <- NA #SPMR
WVS$v2paid[WVS$E179WVS == 498008] <- 2261 #PDF
WVS$v2paid[WVS$E179WVS == 498009] <- NA #DAPM
WVS$v2paid[WVS$E179WVS == 498010] <- NA #SDP
WVS$v2paid[WVS$E179WVS == 498011] <- NA #SDAM
WVS$v2paid[WVS$E179WVS == 498012] <- NA #NRCD
WVS$v2paid[WVS$E179WVS == 498013] <- 6503 #UMER
WVS$v2paid[WVS$E179WVS == 498014] <- NA #IARM
WVS$v2paid[WVS$E179WVS == 498015] <- NA #MNYL
WVS$v2paid[WVS$E179WVS == 498017] <- NA #MYA
WVS$v2paid[WVS$E179WVS == 498018] <- NA #AVTCRM
WVS$v2paid[WVS$E179WVS == 498019] <- NA #MWA
WVS$v2paid[WVS$E179WVS == 498020] <- NA #NCPM
WVS$v2paid[WVS$E179WVS == 498021] <- NA #DDM
WVS$v2paid[WVS$E179WVS == 498022] <- 5239 #PFM
WVS$v2paid[WVS$E179WVS == 498023] <- NA #DCLW
WVS$v2paid[WVS$E179WVS == 498024] <- NA #PE/AV
WVS$v2paid[WVS$E179WVS == 498025] <- NA #MER
WVS$v2paid[WVS$E179WVS == 498028] <- NA #CYM
WVS$v2paid[WVS$E179WVS == 498029] <- NA #RPM
WVS$v2paid[WVS$E179WVS == 498030] <- NA #RDOM
WVS$v2paid[WVS$E179WVS == 498031] <- 2272 #LP
WVS$v2paid[WVS$E179WVS == 498033] <- NA #GKPM
WVS$v2paid[WVS$E179WVS == 498036] <- NA #LRP
WVS$v2paid[WVS$E179WVS == 498038] <- NA #ERP
WVS$v2paid[WVS$E179WVS == 498039] <- NA #PMD
WVS$v2paid[WVS$E179WVS == 498041] <- NA #DPC
WVS$v2paid[WVS$E179WVS == 498042] <- NA #DCPR
WVS$v2paid[WVS$E179WVS == 498044] <- NA #ADY
WVS$v2paid[WVS$E179WVS == 498045] <- NA #PPFM
WVS$v2paid[WVS$E179WVS == 498046] <- NA #PSPM
WVS$v2paid[WVS$E179WVS == 498048] <- NA #SPMM
WVS$v2paid[WVS$E179WVS == 498049] <- 7904 #PAS
WVS$v2paid[WVS$E179WVS == 498052] <- 2259 #AMN
WVS$v2paid[WVS$E179WVS == 498053] <- 3180 #RSPM

WVS$vparty_year[WVS$S025 == 4982002] <- 2001 #Adjust Country-Year 
WVS$vparty_year[WVS$S025 == 4982006] <- 2005 #Adjust Country-Year 

#New Zealand 2011
WVS$numparties[WVS$S025 == 5542011] <- 4
WVS$numgroup[WVS$S025 == 5542011] <- 5
WVS$groupsize1[WVS$S025 == 5542011] <- .0892388
WVS$groupsize2[WVS$S025 == 5542011] <- .0524934
WVS$groupsize3[WVS$S025 == 5542011] <- .8582677
#WVS$groupsize4[WVS$S025 == 122014] <- 
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 5542011] <- .1225906
WVS$VP[WVS$S025 == 5542011] <- .2219627
WVS$PVF[WVS$S025 == 5542011] <- .1276311
WVS$PVP[WVS$S025 == 5542011] <- .1882754

WVS$ethnic_id[WVS$S025 == 5542011 & WVS$X051 == 554001] <- 92001000 #Maori
WVS$ethnic_id[WVS$S025 == 5542011 & WVS$X051 == 554004] <- 92003000 #Pacific Islander 
WVS$ethnic_id[WVS$S025 == 5542011 & WVS$X051 == 554006] <- 92002000 #New Zealander


WVS$to[WVS$S025 == 5542011] <- 2021

WVS$winner[WVS$S025 == 5542011 & WVS$E179WVS== 554006] <- 1 #NP

WVS$proximity[WVS$S025 == 5542011] <- 0 #2011-2011
WVS$winning_party_share[WVS$S025 == 5542011 &  WVS$S012<20111027] <- .4660
WVS$second_party_share[WVS$S025 == 5542011 & WVS$S012<20111027] <- .3399 #https://en.wikipedia.org/wiki/2011_New_Zealand_general_election
WVS$winning_party_share[WVS$S025 == 5542011 &  WVS$S012>20111027] <- .4731
WVS$second_party_share[WVS$S025 == 5542011 & WVS$S012>20111027] <- .2748 #https://en.wikipedia.org/wiki/2011_New_Zealand_general_election

#New Zealand Parties
WVS$v2paid[WVS$E179WVS == 554001] <- 752 #ACT
WVS$v2paid[WVS$E179WVS == 554003] <- NA #CC
WVS$v2paid[WVS$E179WVS == 554004] <- 1099 #Green
WVS$v2paid[WVS$E179WVS == 554005] <- 1119 #LP
WVS$v2paid[WVS$E179WVS == 554006] <- 1824 #NP
WVS$v2paid[WVS$E179WVS == 554007] <- 591 #NZFP
WVS$v2paid[WVS$E179WVS == 554008] <- 940 #UFNZ
WVS$v2paid[WVS$E179WVS == 554009] <- NA #MAori
WVS$v2paid[WVS$E179WVS == 554011] <- NA #Jim
WVS$v2paid[WVS$E179WVS == 554012] <- NA #mana


WVS$vparty_year[WVS$S025 == 5542011] <- 2011 #Adjust Country-Year 

#Nigeria 2012
WVS$numparties[WVS$S025 == 5662012] <- 6
WVS$numgroup[WVS$S025 == 5662012] <- 4
WVS$groupsize1[WVS$S025 == 5662012] <- .4749403
WVS$groupsize2[WVS$S025 == 5662012] <- .4093079
WVS$groupsize3[WVS$S025 == 5662012] <- .048926
WVS$groupsize4[WVS$S025 == 5662012] <- .0668258
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 5662012] <- .3211553
WVS$VP[WVS$S025 == 5662012] <- .4953569
WVS$PVF[WVS$S025 == 5662012] <- .3599136
WVS$PVP[WVS$S025 == 5662012] <- .4919803

WVS$ethnic_id[WVS$S025 == 5662012 & WVS$X051 == 566001] <- 47506000 #Yoruba
WVS$ethnic_id[WVS$S025 == 5662012 & WVS$X051 == 566003] <- 47502000 #Igbo
WVS$ethnic_id[WVS$S025 == 5662012 & WVS$X051 == 566005] <- 47505000 #Tiv
WVS$ethnic_id[WVS$S025 == 5662012 & WVS$X051 == 566004] <- 47501000 #Fulani - Muslim Belt


WVS$to[WVS$S025 == 5662012] <- 2015

WVS$winner[WVS$S025 == 5662012 & WVS$E179WVS== 566012] <- 1 #PDP 
WVS$winner[WVS$S025 == 5662012 & WVS$E179WVS== 566004] <- 1 #ANPP

WVS$proximity[WVS$S025 == 5662012] <- 1 #2012-2011
WVS$winning_party_share[WVS$S025 == 5662012] <- .5887
WVS$second_party_share[WVS$S025 == 5662012] <- .3197 #https://web.archive.org/web/20110501010957/http://www.inecnigeria.org/results/presidential/

#Nigeria 2018
WVS$numparties[WVS$S025 == 5662018] <- 4
WVS$numgroup[WVS$S025 == 5662018] <- 3
WVS$groupsize1[WVS$S025 == 5662018] <- .5660377
WVS$groupsize2[WVS$S025 == 5662018] <- .3746631
WVS$groupsize3[WVS$S025 == 5662018] <- .0592992
#WVS$groupsize4[WVS$S025 == 5662018] <- .0668258
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 5662018] <- .1632759
WVS$VP[WVS$S025 == 5662018] <- .2908789
WVS$PVF[WVS$S025 == 5662018] <- .2347124
WVS$PVP[WVS$S025 == 5662018] <- .3204882

WVS$ethnic_id[WVS$S025 == 5662018 & WVS$X051 == 566001] <- 47506000 #Yoruba
WVS$ethnic_id[WVS$S025 == 5662018 & WVS$X051 == 566003] <- 47502000 #Igbo
WVS$ethnic_id[WVS$S025 == 5662018 & WVS$X051 == 566005] <- 47505000 #Tiv
WVS$ethnic_id[WVS$S025 == 5662018 & WVS$X051 == 566004] <- 47501000 #Fulani - Muslim Belt

WVS$to[WVS$S025 == 5662018] <- 2021

WVS$winner[WVS$S025 == 5662018 & WVS$E179WVS== 566021] <- 1 #ACP 

WVS$proximity[WVS$S025 == 5662018] <- 1 #2019-2018
WVS$winning_party_share[WVS$S025 == 5662018] <- .5396
WVS$second_party_share[WVS$S025 == 5662018] <- .4496 #https://web.archive.org/web/20110501010957/http://www.inecnigeria.org/results/presidential/

#Nigeria Parties
WVS$v2paid[WVS$E179WVS == 566001] <- NA #AA
WVS$v2paid[WVS$E179WVS == 566002] <- 2353 #ACN
WVS$v2paid[WVS$E179WVS == 566003] <- NA #ADC
WVS$v2paid[WVS$E179WVS == 566004] <- 2313 #ANPP
WVS$v2paid[WVS$E179WVS == 566005] <- NA #APGA
WVS$v2paid[WVS$E179WVS == 566006] <- 5539 #CPC
WVS$v2paid[WVS$E179WVS == 566007] <- NA #DPA
WVS$v2paid[WVS$E179WVS == 566008] <- NA #DPP
WVS$v2paid[WVS$E179WVS == 566009] <- NA #FDP
WVS$v2paid[WVS$E179WVS == 566010] <- NA #kowa
WVS$v2paid[WVS$E179WVS == 566011] <- NA #LP
WVS$v2paid[WVS$E179WVS == 566012] <- 2354 #PDP
WVS$v2paid[WVS$E179WVS == 566013] <- NA #PPP
WVS$v2paid[WVS$E179WVS == 566014] <- NA #PPA
WVS$v2paid[WVS$E179WVS == 566017] <- 4116 #AD
WVS$v2paid[WVS$E179WVS == 566018] <- 2313 #APP
WVS$v2paid[WVS$E179WVS == 566019] <- 510 #SDP
WVS$v2paid[WVS$E179WVS == 566020] <- 1154 #NRC
WVS$v2paid[WVS$E179WVS == 566021] <- 5538 #APC
WVS$v2paid[WVS$E179WVS == 566022] <- NA #JP
WVS$v2paid[WVS$E179WVS == 566023] <- NA #PMP
WVS$v2paid[WVS$E179WVS == 566035] <- NA #NCP
WVS$v2paid[WVS$E179WVS == 566036] <- NA #AP

WVS$vparty_year[WVS$S025 == 5662012] <- 2011 #Adjust Country-Year 
WVS$vparty_year[WVS$S025 == 5662018] <- 2015 #Adjust Country-Year 

#Pakistan 2001
WVS$numparties[WVS$S025 == 5862001] <- 4
WVS$numgroup[WVS$S025 == 5862001] <- 3
WVS$groupsize1[WVS$S025 == 5862001] <- .8326106
WVS$groupsize2[WVS$S025 == 5862001] <- .0242845
WVS$groupsize3[WVS$S025 == 5862001] <- .1431049
#WVS$groupsize4[WVS$S025 == 5662018] <- .0668258
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 5862001] <- .0981557
WVS$VP[WVS$S025 == 5862001] <- .1832948
WVS$PVF[WVS$S025 == 5862001] <- .0940382
WVS$PVP[WVS$S025 == 5862001] <- .1616494

WVS$ethnic_id[WVS$S025 == 5862001 & WVS$X051 == 586001] <- 77005000 #Punjabi
WVS$ethnic_id[WVS$S025 == 5862001 & WVS$X051 == 586003] <- 77001000 #Baluchi
WVS$ethnic_id[WVS$S025 == 5862001 & WVS$X051 == 586004] <- 77006000 #Sindhi

WVS$to[WVS$S025 == 5862001] <- 2008

WVS$winner[WVS$S025 == 5862001 & WVS$E179WVS== 586002] <- 1 #Pakistan Muslim League 

WVS$proximity[WVS$S025 == 5862001] <- 1 #2002-2001
WVS$winning_party_share[WVS$S025 == 5862001] <- .4488
WVS$second_party_share[WVS$S025 == 5862001] <- .2129 #Nohlen et al. (Dieter Nohlen, Florian Grotz & Christof Hartmann (2001) Elections in Asia: A data handbook, Volume I, p680)
#https://en.wikipedia.org/wiki/1997_Pakistani_general_election

#Pakistan 2018
WVS$numparties[WVS$S025 == 5862018] <- 5
WVS$numgroup[WVS$S025 == 5862018] <- 4
WVS$groupsize1[WVS$S025 == 5862018] <- .5695473
WVS$groupsize2[WVS$S025 == 5862018] <- .0345679
WVS$groupsize3[WVS$S025 == 5862018] <- .2246914
WVS$groupsize4[WVS$S025 == 5662018] <- .1711934
#WVS$groupsize5[WVS$S025 == 122014] <- 
#WVS$groupsize6[WVS$S025 == 122014] <- 
WVS$VF[WVS$S025 == 5862018] <- .2408092
WVS$VP[WVS$S025 == 5862018] <- .3346967
WVS$PVF[WVS$S025 == 5862018] <- .2932349
WVS$PVP[WVS$S025 == 5862018] <- .3137508

WVS$ethnic_id[WVS$S025 == 5862018 & WVS$X051 == 586001] <- 77005000 #Punjabi
WVS$ethnic_id[WVS$S025 == 5862018 & WVS$X051 == 586003] <- 77001000 #Baluchi
WVS$ethnic_id[WVS$S025 == 5862018 & WVS$X051 == 586004] <- 77006000 #Sindhi
WVS$ethnic_id[WVS$S025 == 5862018 & WVS$X051 == 586006] <- 77004000 #Sindhi

WVS$to[WVS$S025 == 5862018] <- 2018

WVS$winner[WVS$S025 == 5862018 & WVS$E179WVS== 586007] <- 1 #Pakistan Muslim League 

WVS$proximity[WVS$S025 == 5862018] <- 0 #2018-2018
WVS$winning_party_share[WVS$S025 == 5862018] <- .3182
WVS$second_party_share[WVS$S025 == 5862018] <- .2435 #https://www.ecp.gov.pk/default.aspx

#Pakistan Parties
WVS$v2paid[WVS$E179WVS == 586001] <- 2383 #PPP
WVS$v2paid[WVS$E179WVS == 586002] <- 2384 #PML-N
WVS$v2paid[WVS$E179WVS == 586003] <- 2385 #PML
WVS$v2paid[WVS$E179WVS == 586004] <- 2387 #MQM
WVS$v2paid[WVS$E179WVS == 586005] <- NA #AIC
WVS$v2paid[WVS$E179WVS == 586006] <- 5551 #Awami
WVS$v2paid[WVS$E179WVS == 586007] <- 5587 #MforJ
WVS$v2paid[WVS$E179WVS == 586010] <- NA #PPP
WVS$v2paid[WVS$E179WVS == 586012] <- NA #PMLF
WVS$v2paid[WVS$E179WVS == 586013] <- NA #SUP
WVS$v2paid[WVS$E179WVS == 586014] <- NA #TJ
WVS$v2paid[WVS$E179WVS == 586016] <- NA #MJH
WVS$v2paid[WVS$E179WVS == 586017] <- NA #BNP
WVS$v2paid[WVS$E179WVS == 586018] <- NA #RNP
WVS$v2paid[WVS$E179WVS == 586026] <- 2383 #awami

WVS$vparty_year[WVS$S025 == 5862001] <- 1997 #Adjust Country-Year 
WVS$vparty_year[WVS$S025 == 5862018] <- 2018 #Adjust Country-Year 

#Romania 1998
WVS$numparties[WVS$S025 == 6421998] <- 11
WVS$numgroup[WVS$S025 == 6421998] <- 2
WVS$groupsize1[WVS$S025 == 6421998] <- .0725146
WVS$groupsize2[WVS$S025 == 6421998] <- .9274854
#WVS$groupsize3[WVS$S025 == 6421998] <- .2246914
#WVS$groupsize4[WVS$S025 == 6421998] <- .1711934
#WVS$groupsize5[WVS$S025 == 6421998] <- 
#WVS$groupsize6[WVS$S025 == 6421998] <- 
WVS$VF[WVS$S025 == 6421998] <- .0724067
WVS$VP[WVS$S025 == 6421998] <- .1448134
WVS$PVF[WVS$S025 == 6421998] <- .1172354
WVS$PVP[WVS$S025 == 6421998] <- .0453996

WVS$ethnic_id[WVS$S025 == 6421998 & WVS$X051 == 642003] <- 36002000 #Hungarian
WVS$ethnic_id[WVS$S025 == 6421998 & WVS$X051 == 642004] <- 36001000 #Romanian

WVS$to[WVS$S025 == 6421998] <- 2008

WVS$winner[WVS$S025 == 6421998 & WVS$E179WVS== 642016] <- 1 #CDR
WVS$winner[WVS$S025 == 6421998 & WVS$E179WVS== 642003] <- 1 #Democratic Party
WVS$winner[WVS$S025 == 6421998 & WVS$E179WVS== 642006] <- 1 #Democratic Union of Hungarians and Rom
WVS$winner[WVS$S025 == 6421998 & WVS$E179WVS== 642030] <- 1 #NLP

WVS$proximity[WVS$S025 == 6421998] <- 2 #2000-1998
WVS$winning_party_share[WVS$S025 == 6421998] <- .5441
WVS$second_party_share[WVS$S025 == 6421998] <- .4559 #Nohlen & Stover (2010) Elections in Europe

#Romania 2005
WVS$numparties[WVS$S025 == 6422005] <- 6
WVS$numgroup[WVS$S025 == 6422005] <- 2
WVS$groupsize1[WVS$S025 == 6422005] <- .0542035
WVS$groupsize2[WVS$S025 == 6422005] <- .9457965
#WVS$groupsize3[WVS$S025 == 6422005] <- .2246914
#WVS$groupsize4[WVS$S025 == 6422005] <- .1711934
#WVS$groupsize5[WVS$S025 == 6422005] <- 
#WVS$groupsize6[WVS$S025 == 6422005] <- 
WVS$VF[WVS$S025 == 6422005] <- .0648049
WVS$VP[WVS$S025 == 6422005] <- .1296098
WVS$PVF[WVS$S025 == 6422005] <- .093148
WVS$PVP[WVS$S025 == 6422005] <- .0596244

WVS$ethnic_id[WVS$S025 == 6422005 & WVS$G016 == 1770] <- 36002000 #Hungarian
WVS$ethnic_id[WVS$S025 == 6422005 & WVS$G016 == 3580] <- 36001000 #Romanian

WVS$to[WVS$S025 == 6422005] <- 2008

WVS$winner[WVS$S025 == 6422005 & WVS$E179WVS== 642030] <- 1 #NLP
WVS$winner[WVS$S025 == 6422005 & WVS$E179WVS== 642034] <- 1 #CP
WVS$winner[WVS$S025 == 6422005 & WVS$E179WVS== 642003] <- 1 #DP
WVS$winner[WVS$S025 == 6422005 & WVS$E179WVS== 642006] <- 1 #D union H&R

WVS$proximity[WVS$S025 == 6422005] <- 1 #2005-2004
WVS$winning_party_share[WVS$S025 == 6422005] <- .5123
WVS$second_party_share[WVS$S025 == 6422005] <- .4877 #Nohlen & Stover (2010) Elections in Europe

#Romania 2012
WVS$numparties[WVS$S025 == 6422012] <- 7
WVS$numgroup[WVS$S025 == 6422012] <- 2
WVS$groupsize1[WVS$S025 == 6422012] <- .0961123
WVS$groupsize2[WVS$S025 == 6422012] <- .9038877
#WVS$groupsize3[WVS$S025 == 6422012] <- .2246914
#WVS$groupsize4[WVS$S025 == 6422012] <- .1711934
#WVS$groupsize5[WVS$S025 == 6422012] <- 
#WVS$groupsize6[WVS$S025 == 6422012] <- 
WVS$VF[WVS$S025 == 6422012] <- .124573
WVS$VP[WVS$S025 == 6422012] <- .2491461
WVS$PVF[WVS$S025 == 6422012] <- .1592908
WVS$PVP[WVS$S025 == 6422012] <- .1225511

WVS$ethnic_id[WVS$S025 == 6422012 & WVS$G016 == 1770] <- 36002000 #Hungarian
WVS$ethnic_id[WVS$S025 == 6422012 & WVS$G016 == 3580] <- 36001000 #Romanian

WVS$to[WVS$S025 == 6422012] <- 2012

WVS$winner[WVS$S025 == 6422012 & WVS$E179WVS== 642008] <- 1 #SDP
WVS$winner[WVS$S025 == 6422012 & WVS$E179WVS== 642034] <- 1 #CP
WVS$winner[WVS$S025 == 6422012 & WVS$E179WVS== 642060] <- 1 #NLP
WVS$winner[WVS$S025 == 6422012 & WVS$E179WVS==  642056] <- 1 #NUFP

WVS$proximity[WVS$S025 == 6422012] <- 2 #2014-2012
WVS$winning_party_share[WVS$S025 == 6422012] <- .5033
WVS$second_party_share[WVS$S025 == 6422012] <- .4967 #http://alegeri.roaep.ro/?alegeri=prezidentiale-2009

#Romania 2018
WVS$numparties[WVS$S025 == 6422018] <- 6
WVS$numgroup[WVS$S025 == 6422018] <- 2
WVS$groupsize1[WVS$S025 == 6422018] <- .1142857
WVS$groupsize2[WVS$S025 == 6422018] <- .8857143
#WVS$groupsize3[WVS$S025 == 6422018] <- .2246914
#WVS$groupsize4[WVS$S025 == 6422018] <- .1711934
#WVS$groupsize5[WVS$S025 == 6422018] <- 
#WVS$groupsize6[WVS$S025 == 6422018] <- 
WVS$VF[WVS$S025 == 6422018] <- .1512076
WVS$VP[WVS$S025 == 6422018] <- .3024151
WVS$PVF[WVS$S025 == 6422018] <- .1847114
WVS$PVP[WVS$S025 == 6422018] <- .1739989

WVS$ethnic_id[WVS$S025 == 6422018 & WVS$G016 == 1770] <- 36002000 #Hungarian
WVS$ethnic_id[WVS$S025 == 6422018 & WVS$G016 == 3580] <- 36001000 #Romanian

WVS$to[WVS$S025 == 6422018] <- 2020

WVS$winner[WVS$S025 == 6422018 & WVS$E179WVS== 642008] <- 1 #SDP
WVS$winner[WVS$S025 == 6422018 & WVS$E179WVS== 642066] <- 1 #AofL

WVS$proximity[WVS$S025 == 6422018] <- 1 #2019-2018
WVS$winning_party_share[WVS$S025 == 6422018] <- .5443
WVS$second_party_share[WVS$S025 == 6422018] <- .4556 #http://alegeri.roaep.ro/?alegeri=alegeri-presedintele-romaniei-2014

#Romanian Parties
WVS$v2paid[WVS$E179WVS == 642002] <- 1034 #PDSR
WVS$v2paid[WVS$E179WVS == 642003] <- 1715 #DP
WVS$v2paid[WVS$E179WVS == 642004] <- 5450 #NPP
WVS$v2paid[WVS$E179WVS == 642006] <- 1105 #DAHR
WVS$v2paid[WVS$E179WVS == 642007] <- 1305 #GRP
WVS$v2paid[WVS$E179WVS == 642008] <- 120 #SDP
WVS$v2paid[WVS$E179WVS == 642009] <- 1451 #PRNU
WVS$v2paid[WVS$E179WVS == 642016] <- 192 #CDR
WVS$v2paid[WVS$E179WVS == 642023] <- NA #PSM
WVS$v2paid[WVS$E179WVS == 642030] <- NA #NLPC
WVS$v2paid[WVS$E179WVS == 642031] <- 6670 #NRP
WVS$v2paid[WVS$E179WVS == 642033] <- 215 #JTA
WVS$v2paid[WVS$E179WVS == 642034] <- 1443 #CP
WVS$v2paid[WVS$E179WVS == 642035] <- 660 #DLP
WVS$v2paid[WVS$E179WVS == 642039] <- NA #NDP
WVS$v2paid[WVS$E179WVS == 642052] <- 5941 #SLC
WVS$v2paid[WVS$E179WVS == 642055] <- 2474 #PP
WVS$v2paid[WVS$E179WVS == 642056] <- NA #NUfPR
WVS$v2paid[WVS$E179WVS == 642060] <- 481 #NLP
WVS$v2paid[WVS$E179WVS == 642062] <- 2473 #CF
WVS$v2paid[WVS$E179WVS == 642063] <- 5940 #RRA
WVS$v2paid[WVS$E179WVS == 642065] <- 5969 #USR
WVS$v2paid[WVS$E179WVS == 642066] <- 5662 #ALD
WVS$v2paid[WVS$E179WVS == 642067] <- 3210 #PMP
WVS$v2paid[WVS$E179WVS == 642068] <- NA #LP

WVS$vparty_year[WVS$S025 == 6421998] <- 1996 #Adjust Country-Year 
WVS$vparty_year[WVS$S025 == 6422005] <- 2004 #Adjust Country-Year 
WVS$vparty_year[WVS$S025 == 6422012] <- 2012 #Adjust Country-Year 
WVS$vparty_year[WVS$S025 == 6422018] <- 2016 #Adjust Country-Year 

#Russia
WVS$numparties[WVS$S025 == 6432017] <- 4
WVS$numgroup[WVS$S025 == 6432017] <- 2
WVS$groupsize1[WVS$S025 == 6432017] <- .9527897
WVS$groupsize2[WVS$S025 == 6432017] <- .0472103
#WVS$groupsize3[WVS$S025 == 6432017] <- .2246914
#WVS$groupsize4[WVS$S025 == 6432017] <- .1711934
#WVS$groupsize5[WVS$S025 == 6432017] <- 
#WVS$groupsize6[WVS$S025 == 6432017] <- 
WVS$VF[WVS$S025 == 6432017] <- .0042895
WVS$VP[WVS$S025 == 6432017] <- .008579
WVS$PVF[WVS$S025 == 6432017] <- .0054877
WVS$PVP[WVS$S025 == 6432017] <- .0081375

WVS$ethnic_id[WVS$S025 == 6432017 & WVS$X051 == 643001] <- 36501000 #Russian
WVS$ethnic_id[WVS$S025 == 6432017 & WVS$X051 == 643002] <- 36503000 #Tarar

WVS$to[WVS$S025 == 6432017] <- 2017

WVS$winner[WVS$S025 == 6432017 & WVS$E179WVS== 642016] <- 1 #United Russia

WVS$proximity[WVS$S025 == 6432017] <- 1 #2018-2017
WVS$winning_party_share[WVS$S025 == 6432017] <- .636
WVS$second_party_share[WVS$S025 == 6432017] <- .1718 #https://sgp.fas.org/crs/row/R42407.pdf

#Russian Parties
WVS$v2paid[WVS$E179WVS == 643001] <- 2235 #APR
WVS$v2paid[WVS$E179WVS == 643002] <- 2236 #CPR
WVS$v2paid[WVS$E179WVS == 643003] <- 2245 #LDPR
WVS$v2paid[WVS$E179WVS == 643014] <- NA #Power to the people (Alliance)
WVS$v2paid[WVS$E179WVS == 643015] <- NA #Forward
WVS$v2paid[WVS$E179WVS == 643016] <- 2238 #DPR
WVS$v2paid[WVS$E179WVS == 643017] <- 2253 #DCR
WVS$v2paid[WVS$E179WVS == 643018] <- 2247 #Our Home
WVS$v2paid[WVS$E179WVS == 643019] <- 2257 #Women Russia
WVS$v2paid[WVS$E179WVS == 643022] <- 4784 #RCWP USSR
WVS$v2paid[WVS$E179WVS == 643023] <- NA #CORC
WVS$v2paid[WVS$E179WVS == 643024] <- NA #IRB
WVS$v2paid[WVS$E179WVS == 643027] <- NA #RPRF
WVS$v2paid[WVS$E179WVS == 643028] <- NA #PWSG
WVS$v2paid[WVS$E179WVS == 643029] <- NA #TUI
WVS$v2paid[WVS$E179WVS == 643030] <- NA #CP
WVS$v2paid[WVS$E179WVS == 643032] <- 2256 #UR
WVS$v2paid[WVS$E179WVS == 643033] <- NA #PoR
WVS$v2paid[WVS$E179WVS == 643034] <- 2244 #JR
WVS$v2paid[WVS$E179WVS == 643037] <- 2252 #RUDP
WVS$v2paid[WVS$E179WVS == 643039] <- NA #RC
WVS$v2paid[WVS$E179WVS == 643040] <- NA #PFP
WVS$v2paid[WVS$E179WVS == 643041] <- NA #PoG
WVS$v2paid[WVS$E179WVS == 643042] <- NA #Greens
WVS$v2paid[WVS$E179WVS == 643043] <- NA #CP
WVS$v2paid[WVS$E179WVS == 643044] <- 2246 #MNPU
WVS$v2paid[WVS$E179WVS == 643045] <- NA #RPoPSJ

WVS$vparty_year[WVS$S025 == 6432017] <- 2016 #Adjust Country-Year 

#Slovakia 1998
WVS$numparties[WVS$S025 == 7031998] <- 9
WVS$numgroup[WVS$S025 == 7031998] <- 2
WVS$groupsize1[WVS$S025 == 7031998] <- .0608794
WVS$groupsize2[WVS$S025 == 7031998] <- .9391207
#WVS$groupsize3[WVS$S025 == 7031998] <- .2246914
#WVS$groupsize4[WVS$S025 == 7031998] <- .1711934
#WVS$groupsize5[WVS$S025 == 7031998] <- 
#WVS$groupsize6[WVS$S025 == 7031998] <- 
WVS$VF[WVS$S025 == 7031998] <- .074696
WVS$VP[WVS$S025 == 7031998] <- .1493921
WVS$PVF[WVS$S025 == 7031998] <- .10838
WVS$PVP[WVS$S025 == 7031998] <- .0528061

WVS$ethnic_id[WVS$S025 == 7031998 & WVS$G016 == 1770] <- 31702000 #Hungary
WVS$ethnic_id[WVS$S025 == 7031998 & WVS$G016 == 3890] <- 31701000 #Slovak

WVS$to[WVS$S025 == 7031998] <- 1998

WVS$winner[WVS$S025 == 7031998 & WVS$E179WVS== 703005] <- 1 #CDM 
WVS$winner[WVS$S025 == 7031998 & WVS$E179WVS== 703001] <- 1 #DM 
WVS$winner[WVS$S025 == 7031998 & WVS$E179WVS== 703002] <- 1 #DUS 
WVS$winner[WVS$S025 == 7031998 & WVS$E179WVS== 703010] <- 1 #PCU 
WVS$winner[WVS$S025 == 7031998 & WVS$E179WVS== 703009] <- 1 #PHC 
WVS$winner[WVS$S025 == 7031998 & WVS$E179WVS== 703015] <- 1 #SDC 

WVS$proximity[WVS$S025 == 7031998] <- 0 #1998-1998
WVS$winning_party_share[WVS$S025 == 7031998] <- .27
WVS$second_party_share[WVS$S025 == 7031998] <- .263 #Nohlen, D & Stöver, P (2010) Elections in Europe: A data handbook, p1747 ISBN 978-3-8329-5609-7

#Slovak Parties
WVS$v2paid[WVS$E179WVS == 703001] <- 983 #DP
WVS$v2paid[WVS$E179WVS == 703002] <- 707 #DUS
WVS$v2paid[WVS$E179WVS == 703003] <- 560 #MFDS
WVS$v2paid[WVS$E179WVS == 703004] <- 340 #CPS
WVS$v2paid[WVS$E179WVS == 703005] <- 63 #C-D M
WVS$v2paid[WVS$E179WVS == 703006] <- 730 #SNP
WVS$v2paid[WVS$E179WVS == 703008] <- 1242 #P of the D
WVS$v2paid[WVS$E179WVS == 703009] <- 349 #PHC
WVS$v2paid[WVS$E179WVS == 703010] <- 9 #PCU
WVS$v2paid[WVS$E179WVS == 703012] <- 1569 #Green
WVS$v2paid[WVS$E179WVS == 703014] <- 230 #AWS
WVS$v2paid[WVS$E179WVS == 703015] <- 226 #DC
WVS$v2paid[WVS$E179WVS == 703019] <- NA #CSUoS
WVS$v2paid[WVS$E179WVS == 703020] <- 656 #PPOS
WVS$v2paid[WVS$E179WVS == 703022] <- NA #SGP
WVS$v2paid[WVS$E179WVS == 703043] <- 200 #SDPS

WVS$vparty_year[WVS$S025 == 7031998] <- 1998 #Adjust Country-Year 

#South Africa 1996
WVS$numparties[WVS$S025 == 7101996] <- 5
WVS$numgroup[WVS$S025 == 7101996] <- 7
WVS$groupsize1[WVS$S025 == 7101996] <- .1187479
WVS$groupsize2[WVS$S025 == 7101996] <- .1820347
WVS$groupsize3[WVS$S025 == 7101996] <- .1024158
WVS$groupsize4[WVS$S025 == 7101996] <- .056822
WVS$groupsize5[WVS$S025 == 7101996] <- .1782919
WVS$groupsize6[WVS$S025 == 7101996] <- .2915958
WVS$groupsize7[WVS$S025 == 7101996] <- .0700919
WVS$VF[WVS$S025 == 7101996] <- .368405
WVS$VP[WVS$S025 == 7101996] <- .2414713
WVS$PVF[WVS$S025 == 7101996] <- .2670813
WVS$PVP[WVS$S025 == 7101996] <- .4004378

WVS$ethnic_id[WVS$S025 == 7101996 & WVS$G016 == 40] <- 56001000 #Afrikaners
WVS$ethnic_id[WVS$S025 == 7101996 & WVS$G016 == 4570] <- 56005200 #Xhosa
WVS$ethnic_id[WVS$S025 == 7101996 & WVS$X051 == 710003] <- 56003000 #Colored
WVS$ethnic_id[WVS$S025 == 7101996 & WVS$X051 == 710004] <- 56002000 #Asian
WVS$ethnic_id[WVS$S025 == 7101996 & WVS$G016 == 4660] <- 56005100 #Asian
WVS$ethnic_id[WVS$S025 == 7101996 & WVS$X051 == 710001] <- 56004000 #English

WVS$to[WVS$S025 == 7101996] <- 2008

WVS$winner[WVS$S025 == 7101996 & WVS$E179WVS== 710003] <- 1 #ANC 
WVS$winner[WVS$S025 == 7101996 & WVS$E179WVS== 710015] <- 1 #NP 

WVS$proximity[WVS$S025 == 7101996] <- 3 #1999-1996
WVS$winning_party_share[WVS$S025 == 7101996] <- .6265
WVS$second_party_share[WVS$S025 == 7101996] <- .2039 #http://africanelections.tripod.com/za.html#1994_National_Assembly_Election

#South Africa 2001
WVS$numparties[WVS$S025 == 7102001] <- 5
WVS$numgroup[WVS$S025 == 7102001] <- 7
WVS$groupsize1[WVS$S025 == 7102001] <- .1319009
WVS$groupsize2[WVS$S025 == 7102001] <- .1053417
WVS$groupsize3[WVS$S025 == 7102001] <- .1307072
WVS$groupsize4[WVS$S025 == 7102001] <- .0558042
WVS$groupsize5[WVS$S025 == 7102001] <- .1945688
WVS$groupsize6[WVS$S025 == 7102001] <- .2834975
WVS$groupsize7[WVS$S025 == 7102001] <- .0981796
WVS$VF[WVS$S025 == 7102001] <- .4000573
WVS$VP[WVS$S025 == 7102001] <- .2646094
WVS$PVF[WVS$S025 == 7102001] <- .2386916
WVS$PVP[WVS$S025 == 7102001] <- .4155463

WVS$ethnic_id[WVS$S025 == 7102001 & WVS$G016 == 40] <- 56001000 #Afrikaners
WVS$ethnic_id[WVS$S025 == 7102001 & WVS$G016 == 4570] <- 56005200 #Xhosa
WVS$ethnic_id[WVS$S025 == 7102001 & WVS$X051 == 710003] <- 56003000 #Colored
WVS$ethnic_id[WVS$S025 == 7102001 & WVS$X051 == 710004] <- 56002000 #Asian
WVS$ethnic_id[WVS$S025 == 7102001 & WVS$G016 == 4660] <- 56005100 #Asian
WVS$ethnic_id[WVS$S025 == 7102001 & WVS$X051 == 710001] <- 56004000 #English

WVS$to[WVS$S025 == 7102001] <- 2008

WVS$winner[WVS$S025 == 7102001 & WVS$E179WVS== 710003] <- 1 #ANC 

WVS$proximity[WVS$S025 == 7102001] <- 3 #1999-1996
WVS$winning_party_share[WVS$S025 == 7102001] <- .6635
WVS$second_party_share[WVS$S025 == 7102001] <- .0956 #http://africanelections.tripod.com/za.html#1994_National_Assembly_Election

#South Africa 2006
WVS$numparties[WVS$S025 == 7102006] <- 3
WVS$numgroup[WVS$S025 == 7102006] <- 7
WVS$groupsize1[WVS$S025 == 7102006] <- .0629946
WVS$groupsize2[WVS$S025 == 7102006] <- .1930991
WVS$groupsize3[WVS$S025 == 7102006] <- .0534979
WVS$groupsize4[WVS$S025 == 7102006] <- .0158278
WVS$groupsize5[WVS$S025 == 7102006] <- .2462805
WVS$groupsize6[WVS$S025 == 7102006] <- .385565
WVS$groupsize7[WVS$S025 == 7102006] <- .042735
WVS$VF[WVS$S025 == 7102006] <- .2556843
WVS$VP[WVS$S025 == 7102006] <- .199264
WVS$PVF[WVS$S025 == 7102006] <- .1670453
WVS$PVP[WVS$S025 == 7102006] <- .2965001

WVS$ethnic_id[WVS$S025 == 7102006 & WVS$G016 == 40] <- 56001000 #Afrikaners
WVS$ethnic_id[WVS$S025 == 7102006 & WVS$G016 == 4570] <- 56005200 #Xhosa
WVS$ethnic_id[WVS$S025 == 7102006 & WVS$X051 == 710003] <- 56003000 #Colored
WVS$ethnic_id[WVS$S025 == 7102006 & WVS$X051 == 710004] <- 56002000 #Asian
WVS$ethnic_id[WVS$S025 == 7102006 & WVS$G016 == 4660] <- 56005100 #Asian
WVS$ethnic_id[WVS$S025 == 7102006 & WVS$X051 == 710001] <- 56004000 #English

WVS$to[WVS$S025 == 7102006] <- 2008

WVS$winner[WVS$S025 == 7102006 & WVS$E179WVS== 710003] <- 1 #ANC 

WVS$proximity[WVS$S025 == 7102006] <- 2 #2006-2004
WVS$winning_party_share[WVS$S025 == 7102006] <- .6969
WVS$second_party_share[WVS$S025 == 7102006] <- .1237 #http://africanelections.tripod.com/za.html#1994_National_Assembly_Election

#South Africa 2013
WVS$numparties[WVS$S025 == 7102013] <- 3
WVS$numgroup[WVS$S025 == 7102013] <- 6
WVS$groupsize1[WVS$S025 == 7102013] <- .0821105
WVS$groupsize2[WVS$S025 == 7102013] <- .1595379
WVS$groupsize3[WVS$S025 == 7102013] <- .0758664
WVS$groupsize4[WVS$S025 == 7102013] <- .2435217
WVS$groupsize5[WVS$S025 == 7102013] <- .4086794
WVS$groupsize6[WVS$S025 == 7102013] <- .0302841
#WVS$groupsize7[WVS$S025 == 7102013] <- .042735
WVS$VF[WVS$S025 == 7102013] <- .2617986
WVS$VP[WVS$S025 == 7102013] <- .2031414
WVS$PVF[WVS$S025 == 7102013] <- .15958
WVS$PVP[WVS$S025 == 7102013] <- .3004085

WVS$ethnic_id[WVS$S025 == 7102013 & WVS$G016 == 40] <- 56001000 #Afrikaners
WVS$ethnic_id[WVS$S025 == 7102013 & WVS$G016 == 4570] <- 56005200 #Xhosa
WVS$ethnic_id[WVS$S025 == 7102013 & WVS$X051 == 710003] <- 56003000 #Colored
WVS$ethnic_id[WVS$S025 == 7102013 & WVS$X051 == 710004] <- 56002000 #Asian
WVS$ethnic_id[WVS$S025 == 7102013 & WVS$G016 == 4660] <- 56005100 #Asian
WVS$ethnic_id[WVS$S025 == 7102013 & WVS$X051 == 710001] <- 56004000 #English

WVS$to[WVS$S025 == 7102013] <- 2019

WVS$winner[WVS$S025 == 7102013 & WVS$E179WVS== 710003] <- 1 #ANC 

WVS$proximity[WVS$S025 == 7102013] <- 1 #2014-2013
WVS$winning_party_share[WVS$S025 == 7102013] <- .659
WVS$second_party_share[WVS$S025 == 7102013] <- .167 #http://electionresources.org/za/provinces.php?election=2009

#South Africa Parties: 
WVS$v2paid[WVS$E179WVS == 710001] <- NA #AMP
WVS$v2paid[WVS$E179WVS == 710002] <- NA #ACDP
WVS$v2paid[WVS$E179WVS == 710003] <- 1219 #ANC
WVS$v2paid[WVS$E179WVS == 710005] <- NA #APO
WVS$v2paid[WVS$E179WVS == 710006] <- 1038 #DA
WVS$v2paid[WVS$E179WVS == 710007] <- NA #FFP
WVS$v2paid[WVS$E179WVS == 710008] <- 1630 #IFP
WVS$v2paid[WVS$E179WVS == 710009] <- NA #MF
WVS$v2paid[WVS$E179WVS == 710010] <- NA #PACA
WVS$v2paid[WVS$E179WVS == 710011] <- NA #UDCM
WVS$v2paid[WVS$E179WVS == 710012] <- NA #UDM
WVS$v2paid[WVS$E179WVS == 710017] <- NA #SACP
WVS$v2paid[WVS$E179WVS == 710028] <- NA #AGANG
WVS$v2paid[WVS$E179WVS == 710029] <- 4548 #EFF
WVS$v2paid[WVS$E179WVS == 710030] <- NA #CoP

WVS$vparty_year[WVS$S025 == 7101996] <- 1994 #Adjust Country-Year 
WVS$vparty_year[WVS$S025 == 7102001] <- 1999 #Adjust Country-Year 
WVS$vparty_year[WVS$S025 == 7102006] <- 2004 #Adjust Country-Year 
WVS$vparty_year[WVS$S025 == 7102013] <- 2009 #Adjust Country-Year 

#Zimbabwe 2020
WVS$numparties[WVS$S025 == 7162020] <- 8
WVS$numgroup[WVS$S025 == 7162020] <- 2
WVS$groupsize1[WVS$S025 == 7162020] <- .8809261
WVS$groupsize2[WVS$S025 == 7162020] <- .1190739
#WVS$groupsize3[WVS$S025 == 6432017] <- .2246914
#WVS$groupsize4[WVS$S025 == 6432017] <- .1711934
#WVS$groupsize5[WVS$S025 == 6432017] <- 
#WVS$groupsize6[WVS$S025 == 6432017] <- 
WVS$VF[WVS$S025 == 7162020] <- .017453
WVS$VP[WVS$S025 == 7162020] <- .034906
WVS$PVF[WVS$S025 == 7162020] <- .0319043
WVS$PVP[WVS$S025 == 7162020] <- .0312918

WVS$ethnic_id[WVS$S025 == 7162020 & WVS$X051 == 716006] <- 55201200 #Shona
WVS$ethnic_id[WVS$S025 == 7162020 & WVS$X051 == 716007] <- 55201100 #Ndebele

WVS$to[WVS$S025 == 7162020] <- 2021

WVS$winner[WVS$S025 == 7162020 & WVS$E179WVS== 716027] <- 1 #Zanu-PF

WVS$proximity[WVS$S025 == 7162020] <- 2 #2020-2018
WVS$winning_party_share[WVS$S025 == 7162020] <- .5144
WVS$second_party_share[WVS$S025 == 7162020] <- .4507 #https://production-new-commonwealth-files.s3.eu-west-2.amazonaws.com/migrated/inline/Zimbabwe%202018%20COG%20Report%20-%20Final.pdf

#Zimbabwe Parties 
WVS$v2paid[WVS$E179WVS == 716002] <- 3559 #MDC-T
WVS$v2paid[WVS$E179WVS == 716010] <- 3558 #MDC-
WVS$v2paid[WVS$E179WVS == 716015] <- NA #FZC
WVS$v2paid[WVS$E179WVS == 716016] <- NA #RZP
WVS$v2paid[WVS$E179WVS == 716017] <- NA #FMZ
WVS$v2paid[WVS$E179WVS == 716018] <- NA #UDF
WVS$v2paid[WVS$E179WVS == 716019] <- NA #RP
WVS$v2paid[WVS$E179WVS == 716020] <- NA #ZPP
WVS$v2paid[WVS$E179WVS == 716021] <- NA #NCA
WVS$v2paid[WVS$E179WVS == 716022] <- NA #COD
WVS$v2paid[WVS$E179WVS == 716023] <- NA #BZA
WVS$v2paid[WVS$E179WVS == 716024] <- NA #PPP
WVS$v2paid[WVS$E179WVS == 716025] <- NA #UDM
WVS$v2paid[WVS$E179WVS == 716026] <- NA #NAPDR
WVS$v2paid[WVS$E179WVS == 716027] <- 3305 #ZANU-PF
WVS$v2paid[WVS$E179WVS == 716028] <- NA #AFPA
WVS$v2paid[WVS$E179WVS == 716029] <- NA #BCP
WVS$v2paid[WVS$E179WVS == 716031] <- NA #NPF
WVS$v2paid[WVS$E179WVS == 716032] <- NA #NPF
WVS$v2paid[WVS$E179WVS == 716033] <- NA #UDA
WVS$v2paid[WVS$E179WVS == 716034] <- NA #DOP

WVS$vparty_year[WVS$S025 == 7162020] <- 2018 #Adjust Country-Year 

