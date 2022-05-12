##AFROBAROMETER SCRIPT 


#Merge Afrobarometer

library(haven)
merged_r1_data <- read_sav("merged_r1_data.sav")

#Create a County-Wave Identifier

library("countrycode")

merged_r1_data$country.name <- NA
merged_r1_data$country.name[merged_r1_data$country == 1] <- 'Botswana'
merged_r1_data$country.name[merged_r1_data$country == 2] <- 'Ghana'
merged_r1_data$country.name[merged_r1_data$country == 3] <- 'Lesotho'
merged_r1_data$country.name[merged_r1_data$country == 4] <- 'Malawi'
merged_r1_data$country.name[merged_r1_data$country == 5] <- 'Mali'
merged_r1_data$country.name[merged_r1_data$country == 6] <- 'Namibia'
merged_r1_data$country.name[merged_r1_data$country == 7] <- 'Nigeria'
merged_r1_data$country.name[merged_r1_data$country == 8] <- 'South Africa'
merged_r1_data$country.name[merged_r1_data$country == 9] <- 'Tanzania'
merged_r1_data$country.name[merged_r1_data$country == 10] <- 'Uganda'
merged_r1_data$country.name[merged_r1_data$country == 11] <- 'Zambia'
merged_r1_data$country.name[merged_r1_data$country == 12] <- 'Zimbabwe'

merged_r1_data$cowcode <- NA
merged_r1_data$cowcode <- countryname(merged_r1_data$country.name, destination = 'cowc', warn = TRUE)

#Assign a code for each wave (Cowcode + wave number)
merged_r1_data$country_wave <- NA
merged_r1_data$wave <- "Afr1"
library(stringr)
merged_r1_data$country_wave <- str_c(merged_r1_data$cowcode, "_", merged_r1_data$wave)

#AFROBAROMETER WAVE 1 DEPENDENT VARIABLE
merged_r1_data$trust_courts <- NA
merged_r1_data$trust_courts[merged_r1_data$trscts == 1] <- 1
merged_r1_data$trust_courts[merged_r1_data$trscts == 2] <- 2
merged_r1_data$trust_courts[merged_r1_data$trscts == 3] <- 3
merged_r1_data$trust_courts[merged_r1_data$trscts == 4] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r1_data$trust_police <- NA
merged_r1_data$trust_police[merged_r1_data$trspol == 1] <- 1
merged_r1_data$trust_police[merged_r1_data$trspol == 2] <- 2
merged_r1_data$trust_police[merged_r1_data$trspol == 3] <- 3
merged_r1_data$trust_police[merged_r1_data$trspol == 4] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r1_data$trust_president <- NA
merged_r1_data$trust_president[merged_r1_data$trspre == 1] <- 1
merged_r1_data$trust_president[merged_r1_data$trspre == 2] <- 2
merged_r1_data$trust_president[merged_r1_data$trspre == 3] <- 3
merged_r1_data$trust_president[merged_r1_data$trspre == 4] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Parliament is missing from this wave

merged_r1_data$trust_electoral <- NA
merged_r1_data$trust_electoral[merged_r1_data$trsnec == 1] <- 1
merged_r1_data$trust_electoral[merged_r1_data$trsnec == 2] <- 2
merged_r1_data$trust_electoral[merged_r1_data$trsnec == 3] <- 3
merged_r1_data$trust_electoral[merged_r1_data$trsnec == 4] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r1_data$trust_army <- NA
merged_r1_data$trust_army[merged_r1_data$trsarm == 1] <- 1
merged_r1_data$trust_army[merged_r1_data$trsarm == 2] <- 2
merged_r1_data$trust_army[merged_r1_data$trsarm == 3] <- 3
merged_r1_data$trust_army[merged_r1_data$trsarm == 4] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#AFROBAROMETER WAVE 2 DEPENDENT VARIABLE

merged_r2_data <- read_sav("merged_r2_data.sav")

#Create a County-Wave Identifier

library("countrycode")

merged_r2_data$country.name <- NA
merged_r2_data$country.name[merged_r2_data$country == 1] <- 'Botswana'
merged_r2_data$country.name[merged_r2_data$country == 2] <- 'Ghana'
merged_r2_data$country.name[merged_r2_data$country == 3] <- 'Lesotho'
merged_r2_data$country.name[merged_r2_data$country == 4] <- 'Malawi'
merged_r2_data$country.name[merged_r2_data$country == 5] <- 'Mali'
merged_r2_data$country.name[merged_r2_data$country == 6] <- 'Namibia'
merged_r2_data$country.name[merged_r2_data$country == 7] <- 'Nigeria'
merged_r2_data$country.name[merged_r2_data$country == 8] <- 'South Africa'
merged_r2_data$country.name[merged_r2_data$country == 9] <- 'Tanzania'
merged_r2_data$country.name[merged_r2_data$country == 10] <- 'Uganda'
merged_r2_data$country.name[merged_r2_data$country == 11] <- 'Zambia'
merged_r2_data$country.name[merged_r2_data$country == 12] <- 'Zimbabwe'
merged_r2_data$country.name[merged_r2_data$country == 13] <- 'Cape Verde'
merged_r2_data$country.name[merged_r2_data$country == 14] <- 'Kenya'
merged_r2_data$country.name[merged_r2_data$country == 15] <- 'Mozambique'
merged_r2_data$country.name[merged_r2_data$country == 16] <- 'Senegal'


merged_r2_data$cowcode <- NA
merged_r2_data$cowcode <- countryname(merged_r2_data$country.name, destination = 'cowc', warn = TRUE)

#Assign a code for each wave (Cowcode + wave number)
merged_r2_data$country_wave <- NA
merged_r2_data$wave <- "Afr2"
library(stringr)
merged_r2_data$country_wave <- str_c(merged_r2_data$cowcode, "_", merged_r2_data$wave)

#AFROBAROMETER WAVE 2 DEPENDENT VARIABLE
merged_r2_data$trust_courts <- NA
merged_r2_data$trust_courts[merged_r2_data$q43j == 0] <- 1
merged_r2_data$trust_courts[merged_r2_data$q43j == 1] <- 2
merged_r2_data$trust_courts[merged_r2_data$q43j == 2] <- 3
merged_r2_data$trust_courts[merged_r2_data$q43j == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r2_data$trust_police <- NA
merged_r2_data$trust_police[merged_r2_data$q43i == 0] <- 1
merged_r2_data$trust_police[merged_r2_data$q43i == 1] <- 2
merged_r2_data$trust_police[merged_r2_data$q43i == 2] <- 3
merged_r2_data$trust_police[merged_r2_data$q43i == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r2_data$trust_president <- NA
merged_r2_data$trust_president[merged_r2_data$q43a == 0] <- 1
merged_r2_data$trust_president[merged_r2_data$q43a == 1] <- 2
merged_r2_data$trust_president[merged_r2_data$q43a == 2] <- 3
merged_r2_data$trust_president[merged_r2_data$q43a == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r2_data$trust_parliament <- NA
merged_r2_data$trust_parliament[merged_r2_data$q43b == 0] <- 1
merged_r2_data$trust_parliament[merged_r2_data$q43b == 1] <- 2
merged_r2_data$trust_parliament[merged_r2_data$q43b == 2] <- 3
merged_r2_data$trust_parliament[merged_r2_data$q43b == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r2_data$trust_electoral <- NA
merged_r2_data$trust_electoral[merged_r2_data$q43c == 0] <- 1
merged_r2_data$trust_electoral[merged_r2_data$q43c == 1] <- 2
merged_r2_data$trust_electoral[merged_r2_data$q43c == 2] <- 3
merged_r2_data$trust_electoral[merged_r2_data$q43c == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r2_data$trust_army <- NA
merged_r2_data$trust_army[merged_r2_data$q43h == 0] <- 1
merged_r2_data$trust_army[merged_r2_data$q43h == 1] <- 2
merged_r2_data$trust_army[merged_r2_data$q43h == 2] <- 3
merged_r2_data$trust_army[merged_r2_data$q43h == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#AFROBAROMETER ROUND 3 DEPENDENT VARIABLE

merged_r3_data <- read_sav("merged_r3_data.sav")

#Create a County-Wave Identifier

library("countrycode")

merged_r3_data$country.name <- NA
merged_r3_data$country.name[merged_r3_data$country == 1] <- 'Benin'
merged_r3_data$country.name[merged_r3_data$country == 2] <- 'Botswana'
merged_r3_data$country.name[merged_r3_data$country == 3] <- 'Cape Verde'
merged_r3_data$country.name[merged_r3_data$country == 4] <- 'Ghana'
merged_r3_data$country.name[merged_r3_data$country == 5] <- 'Kenya'
merged_r3_data$country.name[merged_r3_data$country == 6] <- 'Lesotho'
merged_r3_data$country.name[merged_r3_data$country == 7] <- 'Madagascar'
merged_r3_data$country.name[merged_r3_data$country == 8] <- 'Malawi'
merged_r3_data$country.name[merged_r3_data$country == 9] <- 'Mali'
merged_r3_data$country.name[merged_r3_data$country == 10] <- 'Mozambique'
merged_r3_data$country.name[merged_r3_data$country == 11] <- 'Namibia'
merged_r3_data$country.name[merged_r3_data$country == 12] <- 'Namibia'
merged_r3_data$country.name[merged_r3_data$country == 13] <- 'Senegal'
merged_r3_data$country.name[merged_r3_data$country == 14] <- 'South Africa'
merged_r3_data$country.name[merged_r3_data$country == 15] <- 'Tanzania'
merged_r3_data$country.name[merged_r3_data$country == 16] <- 'Uganda'
merged_r3_data$country.name[merged_r3_data$country == 17] <- 'Zambia'
merged_r3_data$country.name[merged_r3_data$country == 18] <- 'Zimbabwe'

merged_r3_data$cowcode <- NA
merged_r3_data$cowcode <- countryname(merged_r3_data$country.name, destination = 'cowc', warn = TRUE)

#Assign a code for each wave (Cowcode + wave number)
merged_r3_data$country_wave <- NA
merged_r3_data$wave <- "Afr3"
library(stringr)
merged_r3_data$country_wave <- str_c(merged_r3_data$cowcode, "_", merged_r3_data$wave)

#AFROBAROMETER WAVE 2 DEPENDENT VARIABLE
merged_r3_data$trust_courts <- NA
merged_r3_data$trust_courts[merged_r3_data$q55i == 0] <- 1
merged_r3_data$trust_courts[merged_r3_data$q55i == 1] <- 2
merged_r3_data$trust_courts[merged_r3_data$q55i == 2] <- 3
merged_r3_data$trust_courts[merged_r3_data$q55i == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r3_data$trust_police <- NA
merged_r3_data$trust_police[merged_r3_data$q55h == 0] <- 1
merged_r3_data$trust_police[merged_r3_data$q55h == 1] <- 2
merged_r3_data$trust_police[merged_r3_data$q55h == 2] <- 3
merged_r3_data$trust_police[merged_r3_data$q55h == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r3_data$trust_president <- NA
merged_r3_data$trust_president[merged_r3_data$q55a == 0] <- 1
merged_r3_data$trust_president[merged_r3_data$q55a == 1] <- 2
merged_r3_data$trust_president[merged_r3_data$q55a == 2] <- 3
merged_r3_data$trust_president[merged_r3_data$q55a == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r3_data$trust_parliament <- NA
merged_r3_data$trust_parliament[merged_r3_data$q55b == 0] <- 1
merged_r3_data$trust_parliament[merged_r3_data$q55b == 1] <- 2
merged_r3_data$trust_parliament[merged_r3_data$q55b == 2] <- 3
merged_r3_data$trust_parliament[merged_r3_data$q55b == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r3_data$trust_electoral <- NA
merged_r3_data$trust_electoral[merged_r3_data$q55c == 0] <- 1
merged_r3_data$trust_electoral[merged_r3_data$q55c == 1] <- 2
merged_r3_data$trust_electoral[merged_r3_data$q55c == 2] <- 3
merged_r3_data$trust_electoral[merged_r3_data$q55c == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r3_data$trust_army <- NA
merged_r3_data$trust_army[merged_r3_data$q55g == 0] <- 1
merged_r3_data$trust_army[merged_r3_data$q55g == 1] <- 2
merged_r3_data$trust_army[merged_r3_data$q55g == 2] <- 3
merged_r3_data$trust_army[merged_r3_data$q55g == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#AFROBAROMETER WAVE 4 

merged_r4_data <- read_sav("merged_r4_data.sav")

#Create a County-Wave Identifier

library("countrycode")
merged_r4_data$country <- merged_r4_data$COUNTRY

merged_r4_data$country.name <- NA
merged_r4_data$country.name[merged_r4_data$country == 1] <- 'Benin'
merged_r4_data$country.name[merged_r4_data$country == 2] <- 'Botswana'
merged_r4_data$country.name[merged_r4_data$country == 3] <- 'Burkina Faso'
merged_r4_data$country.name[merged_r4_data$country == 4] <- 'Cape Verde'
merged_r4_data$country.name[merged_r4_data$country == 5] <- 'Ghana'
merged_r4_data$country.name[merged_r4_data$country == 6] <- 'Kenya'
merged_r4_data$country.name[merged_r4_data$country == 7] <- 'Lesotho'
merged_r4_data$country.name[merged_r4_data$country == 8] <- 'Liberia'
merged_r4_data$country.name[merged_r4_data$country == 9] <- 'Madagascar'
merged_r4_data$country.name[merged_r4_data$country == 10] <- 'Malawi'
merged_r4_data$country.name[merged_r4_data$country == 11] <- 'Mali'
merged_r4_data$country.name[merged_r4_data$country == 12] <- 'Mozambique'
merged_r4_data$country.name[merged_r4_data$country == 13] <- 'Namibia'
merged_r4_data$country.name[merged_r4_data$country == 14] <- 'Nigeria'
merged_r4_data$country.name[merged_r4_data$country == 15] <- 'Senegal'
merged_r4_data$country.name[merged_r4_data$country == 16] <- 'South Africa'
merged_r4_data$country.name[merged_r4_data$country == 17] <- 'Tanzania'
merged_r4_data$country.name[merged_r4_data$country == 18] <- 'Uganda'
merged_r4_data$country.name[merged_r4_data$country == 19] <- 'Zambia'
merged_r4_data$country.name[merged_r4_data$country == 20] <- 'Zimbabwe'

merged_r4_data$cowcode <- NA
merged_r4_data$cowcode <- countryname(merged_r4_data$country.name, destination = 'cowc', warn = TRUE)

#Assign a code for each wave (Cowcode + wave number)
merged_r4_data$country_wave <- NA
merged_r4_data$wave <- "Afr4"
library(stringr)
merged_r4_data$country_wave <- str_c(merged_r4_data$cowcode, "_", merged_r4_data$wave)

#AFROBAROMETER WAVE 4 DEPENDENT VARIABLE
merged_r4_data$trust_courts <- NA
merged_r4_data$trust_courts[merged_r4_data$Q49H == 0] <- 1
merged_r4_data$trust_courts[merged_r4_data$Q49H == 1] <- 2
merged_r4_data$trust_courts[merged_r4_data$Q49H == 2] <- 3
merged_r4_data$trust_courts[merged_r4_data$Q49H == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r4_data$trust_police <- NA
merged_r4_data$trust_police[merged_r4_data$Q49G == 0] <- 1
merged_r4_data$trust_police[merged_r4_data$Q49G == 1] <- 2
merged_r4_data$trust_police[merged_r4_data$Q49G == 2] <- 3
merged_r4_data$trust_police[merged_r4_data$Q49G == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r4_data$trust_president <- NA
merged_r4_data$trust_president[merged_r4_data$Q49A == 0] <- 1
merged_r4_data$trust_president[merged_r4_data$Q49A == 1] <- 2
merged_r4_data$trust_president[merged_r4_data$Q49A == 2] <- 3
merged_r4_data$trust_president[merged_r4_data$Q49A == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r4_data$trust_parliament <- NA
merged_r4_data$trust_parliament[merged_r4_data$Q49B == 0] <- 1
merged_r4_data$trust_parliament[merged_r4_data$Q49B == 1] <- 2
merged_r4_data$trust_parliament[merged_r4_data$Q49B == 2] <- 3
merged_r4_data$trust_parliament[merged_r4_data$Q49B == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r4_data$trust_electoral <- NA
merged_r4_data$trust_electoral[merged_r4_data$Q49C == 0] <- 1
merged_r4_data$trust_electoral[merged_r4_data$Q49C == 1] <- 2
merged_r4_data$trust_electoral[merged_r4_data$Q49C == 2] <- 3
merged_r4_data$trust_electoral[merged_r4_data$Q49C == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Missing Trust in the Amry item.

#AFROBAROMETER WAVE 5 

merged_r5_data <- read_sav("merged-round-5-data-34-countries-2011-2013-last-update-july-2015.sav")

#Create a County-Wave Identifier

library("countrycode")
merged_r5_data$country <- merged_r5_data$COUNTRY

merged_r5_data$country.name <- NA
merged_r5_data$country.name[merged_r5_data$country == 1] <- 'Algeria'
merged_r5_data$country.name[merged_r5_data$country == 2] <- 'Benin'
merged_r5_data$country.name[merged_r5_data$country == 3] <- 'Botswana'
merged_r5_data$country.name[merged_r5_data$country == 4] <- 'Burkina Faso'
merged_r5_data$country.name[merged_r5_data$country == 5] <- 'Burundi'
merged_r5_data$country.name[merged_r5_data$country == 6] <- 'Cameroon'
merged_r5_data$country.name[merged_r5_data$country == 7] <- 'Cape Verde'
merged_r5_data$country.name[merged_r5_data$country == 8] <- 'Cote d’Ivoire'
merged_r5_data$country.name[merged_r5_data$country == 9] <- 'Egypt'
#Number 10 is missing. 
merged_r5_data$country.name[merged_r5_data$country == 11] <- 'Ghana'
merged_r5_data$country.name[merged_r5_data$country == 12] <- 'Guinea'
merged_r5_data$country.name[merged_r5_data$country == 13] <- 'Kenya'
merged_r5_data$country.name[merged_r5_data$country == 14] <- 'Lesotho'
merged_r5_data$country.name[merged_r5_data$country == 15] <- 'Liberia'
merged_r5_data$country.name[merged_r5_data$country == 16] <- 'Madagascar'
merged_r5_data$country.name[merged_r5_data$country == 17] <- 'Malawi'
merged_r5_data$country.name[merged_r5_data$country == 18] <- 'Mali'
merged_r5_data$country.name[merged_r5_data$country == 19] <- 'Mauritius'
merged_r5_data$country.name[merged_r5_data$country == 20] <- 'Morocco'
merged_r5_data$country.name[merged_r5_data$country == 21] <- 'Mozambique'
merged_r5_data$country.name[merged_r5_data$country == 22] <- 'Namibia'
merged_r5_data$country.name[merged_r5_data$country == 23] <- 'Niger'
merged_r5_data$country.name[merged_r5_data$country == 24] <- 'Nigeria'
merged_r5_data$country.name[merged_r5_data$country == 25] <- 'Senegal'
merged_r5_data$country.name[merged_r5_data$country == 26] <- 'Sierra Leone'
merged_r5_data$country.name[merged_r5_data$country == 27] <- 'South Africa'
merged_r5_data$country.name[merged_r5_data$country == 28] <- 'Sudan'
merged_r5_data$country.name[merged_r5_data$country == 29] <- 'Swaziland'
merged_r5_data$country.name[merged_r5_data$country == 30] <- 'Tanzania'
merged_r5_data$country.name[merged_r5_data$country == 31] <- 'Togo'
merged_r5_data$country.name[merged_r5_data$country == 32] <- 'Tunisia'
merged_r5_data$country.name[merged_r5_data$country == 33] <- 'Uganda'
merged_r5_data$country.name[merged_r5_data$country == 34] <- 'Zambia'
merged_r5_data$country.name[merged_r5_data$country == 35] <- 'Zimbabwe'



merged_r5_data$cowcode <- NA
merged_r5_data$cowcode <- countryname(merged_r5_data$country.name, destination = 'cowc', warn = TRUE)

#Assign a code for each wave (Cowcode + wave number)
merged_r5_data$country_wave <- NA
merged_r5_data$wave <- "Afr5"
library(stringr)
merged_r5_data$country_wave <- str_c(merged_r5_data$cowcode, "_", merged_r5_data$wave)

#AFROBAROMETER WAVE 5 DEPENDENT VARIABLE
merged_r5_data$trust_courts <- NA
merged_r5_data$trust_courts[merged_r5_data$Q59J == 0] <- 1
merged_r5_data$trust_courts[merged_r5_data$Q59J == 1] <- 2
merged_r5_data$trust_courts[merged_r5_data$Q59J == 2] <- 3
merged_r5_data$trust_courts[merged_r5_data$Q59J == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r5_data$trust_police <- NA
merged_r5_data$trust_police[merged_r5_data$Q59H == 0] <- 1
merged_r5_data$trust_police[merged_r5_data$Q59H == 1] <- 2
merged_r5_data$trust_police[merged_r5_data$Q59H == 2] <- 3
merged_r5_data$trust_police[merged_r5_data$Q59H == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r5_data$trust_president <- NA
merged_r5_data$trust_president[merged_r5_data$Q59A == 0] <- 1
merged_r5_data$trust_president[merged_r5_data$Q59A == 1] <- 2
merged_r5_data$trust_president[merged_r5_data$Q59A == 2] <- 3
merged_r5_data$trust_president[merged_r5_data$Q59A == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r5_data$trust_parliament <- NA
merged_r5_data$trust_parliament[merged_r5_data$Q59B == 0] <- 1
merged_r5_data$trust_parliament[merged_r5_data$Q59B == 1] <- 2
merged_r5_data$trust_parliament[merged_r5_data$Q59B == 2] <- 3
merged_r5_data$trust_parliament[merged_r5_data$Q59B == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r5_data$trust_electoral <- NA
merged_r5_data$trust_electoral[merged_r5_data$Q59C == 0] <- 1
merged_r5_data$trust_electoral[merged_r5_data$Q59C == 1] <- 2
merged_r5_data$trust_electoral[merged_r5_data$Q59C == 2] <- 3
merged_r5_data$trust_electoral[merged_r5_data$Q59C == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r5_data$trust_army <- NA
merged_r5_data$trust_army[merged_r5_data$Q59I == 0] <- 1
merged_r5_data$trust_army[merged_r5_data$Q59I == 1] <- 2
merged_r5_data$trust_army[merged_r5_data$Q59I == 2] <- 3
merged_r5_data$trust_army[merged_r5_data$Q59I == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#AFROBAROMETER WAVE 6

merged_r6_data_2016_36countries2 <- read_sav("merged_r6_data_2016_36countries2.sav")
merged_r6_data <- merged_r6_data_2016_36countries2

#Create a County-Wave Identifier

library("countrycode")
merged_r6_data$country <- merged_r6_data$COUNTRY 

merged_r6_data$country.name <- NA
merged_r6_data$country.name[merged_r6_data$country == 1] <- 'Algeria'
merged_r6_data$country.name[merged_r6_data$country == 2] <- 'Benin'
merged_r6_data$country.name[merged_r6_data$country == 3] <- 'Botswana'
merged_r6_data$country.name[merged_r6_data$country == 4] <- 'Burkina Faso'
merged_r6_data$country.name[merged_r6_data$country == 5] <- 'Burundi'
merged_r6_data$country.name[merged_r6_data$country == 6] <- 'Cameroon'
merged_r6_data$country.name[merged_r6_data$country == 7] <- 'Cape Verde'
merged_r6_data$country.name[merged_r6_data$country == 8] <- 'Cote d’Ivoire'
merged_r6_data$country.name[merged_r6_data$country == 9] <- 'Egypt'
merged_r6_data$country.name[merged_r6_data$country == 10] <- 'Gabon'
merged_r6_data$country.name[merged_r6_data$country == 11] <- 'Ghana'
merged_r6_data$country.name[merged_r6_data$country == 12] <- 'Guinea'
merged_r6_data$country.name[merged_r6_data$country == 13] <- 'Kenya'
merged_r6_data$country.name[merged_r6_data$country == 14] <- 'Lesotho'
merged_r6_data$country.name[merged_r6_data$country == 15] <- 'Liberia'
merged_r6_data$country.name[merged_r6_data$country == 16] <- 'Madagascar'
merged_r6_data$country.name[merged_r6_data$country == 17] <- 'Malawi'
merged_r6_data$country.name[merged_r6_data$country == 18] <- 'Mali'
merged_r6_data$country.name[merged_r6_data$country == 19] <- 'Mauritius'
merged_r6_data$country.name[merged_r6_data$country == 20] <- 'Morocco'
merged_r6_data$country.name[merged_r6_data$country == 21] <- 'Mozambique'
merged_r6_data$country.name[merged_r6_data$country == 22] <- 'Namibia'
merged_r6_data$country.name[merged_r6_data$country == 23] <- 'Niger'
merged_r6_data$country.name[merged_r6_data$country == 24] <- 'Nigeria'
merged_r6_data$country.name[merged_r6_data$country == 25] <- 'São Tomé and Príncipe'
merged_r6_data$country.name[merged_r6_data$country == 26] <- 'Senegal'
merged_r6_data$country.name[merged_r6_data$country == 27] <- 'Sierra Leone'
merged_r6_data$country.name[merged_r6_data$country == 28] <- 'South Africa'
merged_r6_data$country.name[merged_r6_data$country == 29] <- 'Sudan'
merged_r6_data$country.name[merged_r6_data$country == 30] <- 'Swaziland'
merged_r6_data$country.name[merged_r6_data$country == 31] <- 'Tanzania'
merged_r6_data$country.name[merged_r6_data$country == 32] <- 'Togo'
merged_r6_data$country.name[merged_r6_data$country == 33] <- 'Tunisia'
merged_r6_data$country.name[merged_r6_data$country == 34] <- 'Uganda'
merged_r6_data$country.name[merged_r6_data$country == 35] <- 'Zambia'
merged_r6_data$country.name[merged_r6_data$country == 36] <- 'Zimbabwe'

merged_r6_data$cowcode <- NA
merged_r6_data$cowcode <- countryname(merged_r6_data$country.name, destination = 'cowc', warn = TRUE)

#Assign a code for each wave (Cowcode + wave number)
merged_r6_data$country_wave <- NA
merged_r6_data$wave <- "Afr6"
library(stringr)
merged_r6_data$country_wave <- str_c(merged_r6_data$cowcode, "_", merged_r6_data$wave)

#AFROBAROMETER WAVE 2 DEPENDENT VARIABLE
merged_r6_data$trust_courts <- NA
merged_r6_data$trust_courts[merged_r6_data$Q52J == 0] <- 1
merged_r6_data$trust_courts[merged_r6_data$Q52J == 1] <- 2
merged_r6_data$trust_courts[merged_r6_data$Q52J == 2] <- 3
merged_r6_data$trust_courts[merged_r6_data$Q52J == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r6_data$trust_police <- NA
merged_r6_data$trust_police[merged_r6_data$Q52H == 0] <- 1
merged_r6_data$trust_police[merged_r6_data$Q52H == 1] <- 2
merged_r6_data$trust_police[merged_r6_data$Q52H == 2] <- 3
merged_r6_data$trust_police[merged_r6_data$Q52H == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r6_data$trust_president <- NA
merged_r6_data$trust_president[merged_r6_data$Q52A == 0] <- 1
merged_r6_data$trust_president[merged_r6_data$Q52A == 1] <- 2
merged_r6_data$trust_president[merged_r6_data$Q52A == 2] <- 3
merged_r6_data$trust_president[merged_r6_data$Q52A == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r6_data$trust_parliament <- NA
merged_r6_data$trust_parliament[merged_r6_data$Q52B == 0] <- 1
merged_r6_data$trust_parliament[merged_r6_data$Q52B == 1] <- 2
merged_r6_data$trust_parliament[merged_r6_data$Q52B == 2] <- 3
merged_r6_data$trust_parliament[merged_r6_data$Q52B == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r6_data$trust_electoral <- NA
merged_r6_data$trust_electoral[merged_r6_data$Q52C == 0] <- 1
merged_r6_data$trust_electoral[merged_r6_data$Q52C == 1] <- 2
merged_r6_data$trust_electoral[merged_r6_data$Q52C == 2] <- 3
merged_r6_data$trust_electoral[merged_r6_data$Q52C == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r6_data$trust_army <- NA
merged_r6_data$trust_army[merged_r6_data$Q52I == 0] <- 1
merged_r6_data$trust_army[merged_r6_data$Q52I == 1] <- 2
merged_r6_data$trust_army[merged_r6_data$Q52I == 2] <- 3
merged_r6_data$trust_army[merged_r6_data$Q52I == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#AFROBAROMETER WAVE 7

r7_merged_data_34ctry_release <- read_sav("r7_merged_data_34ctry.release.sav")
merged_r7_data <- r7_merged_data_34ctry_release

#Create a County-Wave Identifier

library("countrycode")

merged_r7_data$country <- merged_r7_data$COUNTRY

merged_r7_data$country.name <- NA
merged_r7_data$country.name[merged_r7_data$country == 1] <- 'Benin'
merged_r7_data$country.name[merged_r7_data$country == 2] <- 'Botswana'
merged_r7_data$country.name[merged_r7_data$country == 3] <- 'Burkina Faso'
merged_r7_data$country.name[merged_r7_data$country == 4] <- 'Cabo Verde'
merged_r7_data$country.name[merged_r7_data$country == 5] <- 'Cameroon'
merged_r7_data$country.name[merged_r7_data$country == 6] <- 'Côte d`Ivoire'
merged_r7_data$country.name[merged_r7_data$country == 7] <- 'eSwatini'
merged_r7_data$country.name[merged_r7_data$country == 8] <- 'Gabon'
merged_r7_data$country.name[merged_r7_data$country == 9] <- 'Gambia'
merged_r7_data$country.name[merged_r7_data$country == 10] <- 'Ghana'
merged_r7_data$country.name[merged_r7_data$country == 11] <- 'Guinea'
merged_r7_data$country.name[merged_r7_data$country == 12] <- 'Kenya'
merged_r7_data$country.name[merged_r7_data$country == 13] <- 'Lesotho'
merged_r7_data$country.name[merged_r7_data$country == 14] <- 'Liberia'
merged_r7_data$country.name[merged_r7_data$country == 15] <- 'Madagascar'
merged_r7_data$country.name[merged_r7_data$country == 16] <- 'Malawi'
merged_r7_data$country.name[merged_r7_data$country == 17] <- 'Mali'
merged_r7_data$country.name[merged_r7_data$country == 18] <- 'Mauritius'
merged_r7_data$country.name[merged_r7_data$country == 19] <- 'Morocco'
merged_r7_data$country.name[merged_r7_data$country == 20] <- 'Mozambique'
merged_r7_data$country.name[merged_r7_data$country == 21] <- 'Namibia'
merged_r7_data$country.name[merged_r7_data$country == 22] <- 'Niger'
merged_r7_data$country.name[merged_r7_data$country == 23] <- 'Nigeria'
merged_r7_data$country.name[merged_r7_data$country == 24] <- 'São Tomé and Príncipe'
merged_r7_data$country.name[merged_r7_data$country == 25] <- 'Senegal'
merged_r7_data$country.name[merged_r7_data$country == 26] <- 'Sierra Leone'
merged_r7_data$country.name[merged_r7_data$country == 27] <- 'South Africa'
merged_r7_data$country.name[merged_r7_data$country == 28] <- 'Sudan'
merged_r7_data$country.name[merged_r7_data$country == 29] <- 'Tanzania'
merged_r7_data$country.name[merged_r7_data$country == 30] <- 'Togo'
merged_r7_data$country.name[merged_r7_data$country == 31] <- 'Tunisia'
merged_r7_data$country.name[merged_r7_data$country == 32] <- 'Uganda'
merged_r7_data$country.name[merged_r7_data$country == 33] <- 'Zambia'
merged_r7_data$country.name[merged_r7_data$country == 34] <- 'Zimbabwe'


merged_r7_data$cowcode <- NA
merged_r7_data$cowcode <- countryname(merged_r7_data$country.name, destination = 'cowc', warn = TRUE)

#Assign a code for each wave (Cowcode + wave number)
merged_r7_data$country_wave <- NA
merged_r7_data$wave <- "Afr7"
library(stringr)
merged_r7_data$country_wave <- str_c(merged_r7_data$cowcode, "_", merged_r7_data$wave)

#AFROBAROMETER WAVE 2 DEPENDENT VARIABLE
merged_r7_data$trust_courts <- NA
merged_r7_data$trust_courts[merged_r7_data$Q43I == 0] <- 1
merged_r7_data$trust_courts[merged_r7_data$Q43I == 1] <- 2
merged_r7_data$trust_courts[merged_r7_data$Q43I == 2] <- 3
merged_r7_data$trust_courts[merged_r7_data$Q43I == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r7_data$trust_police <- NA
merged_r7_data$trust_police[merged_r7_data$Q43G == 0] <- 1
merged_r7_data$trust_police[merged_r7_data$Q43G == 1] <- 2
merged_r7_data$trust_police[merged_r7_data$Q43G == 2] <- 3
merged_r7_data$trust_police[merged_r7_data$Q43G == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r7_data$trust_president <- NA
merged_r7_data$trust_president[merged_r7_data$Q43A == 0] <- 1
merged_r7_data$trust_president[merged_r7_data$Q43A == 1] <- 2
merged_r7_data$trust_president[merged_r7_data$Q43A == 2] <- 3
merged_r7_data$trust_president[merged_r7_data$Q43A == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r7_data$trust_parliament <- NA
merged_r7_data$trust_parliament[merged_r7_data$Q43B == 0] <- 1
merged_r7_data$trust_parliament[merged_r7_data$Q43B == 1] <- 2
merged_r7_data$trust_parliament[merged_r7_data$Q43B == 2] <- 3
merged_r7_data$trust_parliament[merged_r7_data$Q43B == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r7_data$trust_electoral <- NA
merged_r7_data$trust_electoral[merged_r7_data$Q43C == 0] <- 1
merged_r7_data$trust_electoral[merged_r7_data$Q43C == 1] <- 2
merged_r7_data$trust_electoral[merged_r7_data$Q43C == 2] <- 3
merged_r7_data$trust_electoral[merged_r7_data$Q43C == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

merged_r7_data$trust_army <- NA
merged_r7_data$trust_army[merged_r7_data$Q43H == 0] <- 1
merged_r7_data$trust_army[merged_r7_data$Q43H == 1] <- 2
merged_r7_data$trust_army[merged_r7_data$Q43H == 2] <- 3
merged_r7_data$trust_army[merged_r7_data$Q43H == 3] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   


#Input PE Scores and Winner Status: 

##        Benin

merged_r3_data$numparties[merged_r3_data$country == 1] <- 6 
merged_r3_data$numgroup[merged_r3_data$country == 1] <- 4
merged_r3_data$groupsize1[merged_r3_data$country == 1] <- .5276596
merged_r3_data$groupsize2[merged_r3_data$country == 1] <- .106383
merged_r3_data$groupsize3[merged_r3_data$country == 1] <- .2
merged_r3_data$groupsize4[merged_r3_data$country == 1] <- .1659575
merged_r3_data$VF[merged_r3_data$country == 1] <- .2468198
merged_r3_data$VP[merged_r3_data$country == 1] <- .3067054
merged_r3_data$PVF[merged_r3_data$country == 1] <- .3162217
merged_r3_data$PVP[merged_r3_data$country == 1] <- .2390216

#Coding to merged with epr at individual level

merged_r3_data$to <- NA
merged_r3_data$ethnic_id <- NA

merged_r3_data$to[merged_r3_data$country == 1] <- 2006 

#Fon
merged_r3_data$ethnic_id[merged_r3_data$q79 == 120] <- 43401000

#Adja
merged_r3_data$ethnic_id[merged_r3_data$q79 == 121] <- 43404000

#Northern
merged_r3_data$ethnic_id[merged_r3_data$q79 == 122] <- 43403000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 123] <- 43403000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 126] <- 43403000

#Southeastern
merged_r3_data$ethnic_id[merged_r3_data$q79 == 124] <- 43402000

#Winner 

#Elections March 4, 2001. Survey April-May 2005. Kerekou in office. 

#Voter Winner and Loser
merged_r3_data$winner <- 0 
merged_r3_data$winner[merged_r3_data$q99 == 126] <- 1
merged_r3_data$winner[merged_r3_data$q99 == 121] <- 1
merged_r3_data$winner[merged_r3_data$q99 == 122] <- 1

#Refused to and I don't know are dropped. They did not answer the question. 
merged_r3_data$winner[merged_r3_data$q99 == 998] <- NA 
merged_r3_data$winner[merged_r3_data$q99 == 999] <- NA 

#Non Voter 
merged_r3_data$didnt_vote <- 0
merged_r3_data$didnt_vote[merged_r3_data$q99 == 997] <- 1

#Loser
merged_r3_data$loser <- 0
merged_r3_data$loser[merged_r3_data$winner == 0 & merged_r3_data$didnt_vote == 0 & merged_r3_data$country == 1] <- 1

#Close Party Winner/Loser 
merged_r3_data$winner_party <- 0 
merged_r3_data$winner_party[merged_r3_data$q86 == 126] <- 1 
merged_r3_data$winner_party[merged_r3_data$q86 == 121] <- 1 
merged_r3_data$winner_party[merged_r3_data$q86 == 122] <- 1 
merged_r3_data$winner_party[merged_r3_data$q86 == 997] <- NA 
merged_r3_data$winner_party[merged_r3_data$q86 == 998] <- NA 

merged_r3_data$didnt_party <- 0
merged_r3_data$didnt_party[merged_r3_data$q85 == 0] <- 1
merged_r3_data$didnt_party[merged_r3_data$q85 == 8] <- NA
merged_r3_data$didnt_party[merged_r3_data$q85 == 9] <- NA
merged_r3_data$didnt_party[merged_r3_data$q85 == -1] <- NA

#Year

merged_r3_data$year <- NA 
merged_r3_data$year[merged_r3_data$country==1] <- 2005

#V-party matching 

merged_r3_data$v2paid <- NA 
merged_r3_data$v2paid[merged_r3_data$q99 == 120] <- 3831 #RB
merged_r3_data$v2paid[merged_r3_data$q99 == 121] <- 2365 #PRD
merged_r3_data$v2paid[merged_r3_data$q99 == 122] <- 2368 #PSD
merged_r3_data$v2paid[merged_r3_data$q99 == 123] <- NA #Daniel
merged_r3_data$v2paid[merged_r3_data$q99 == 124] <- 4090 #UDS
merged_r3_data$v2paid[merged_r3_data$q99 == 125] <- NA #Sefou
merged_r3_data$v2paid[merged_r3_data$q99 == 126] <- 4089 #FARD-A
merged_r3_data$v2paid[merged_r3_data$q99 == 127] <- NA #
merged_r3_data$v2paid[merged_r3_data$q99 == 128] <- NA #CAD
merged_r3_data$v2paid[merged_r3_data$q99 == 129] <- NA #Boni
merged_r3_data$v2paid[merged_r3_data$q99 == 130] <- NA #RDL
merged_r3_data$v2paid[merged_r3_data$q99 == 132] <- NA #IPD
merged_r3_data$v2paid[merged_r3_data$q99 == 133] <- NA #FADES
merged_r3_data$v2paid[merged_r3_data$q99 == 134] <- NA #MAP
merged_r3_data$v2paid[merged_r3_data$q99 == 135] <- NA #CAPP
merged_r3_data$v2paid[merged_r3_data$q99 == 136] <- NA #PDB

#Vparty Year 
merged_r3_data$vparty_year <- NA
merged_r3_data$vparty_year[merged_r3_data$country==1] <- 1999

merged_r3_data$year <- NA
merged_r3_data$year[merged_r3_data$country==1] <- 2005



#Compet
merged_r3_data$proximity[merged_r3_data$country==1] <- 1 #2006-2005
merged_r3_data$winning_party_share[merged_r3_data$country==1] <- .8364
merged_r3_data$second_party_share[merged_r3_data$country==1] <- .1636 #AE database

##        Botswana

merged_r3_data$numparties[merged_r3_data$country == 2] <- 3 
merged_r3_data$numgroup[merged_r3_data$country == 2] <- 6
merged_r3_data$groupsize1[merged_r3_data$country == 2] <- .6271451
merged_r3_data$groupsize2[merged_r3_data$country == 2] <- .1154446
merged_r3_data$groupsize3[merged_r3_data$country == 2] <- .0296412
merged_r3_data$groupsize4[merged_r3_data$country == 2] <- .0468019
merged_r3_data$groupsize5[merged_r3_data$country == 2] <- .0577223
merged_r3_data$groupsize6[merged_r3_data$country == 2] <- .1232449
merged_r3_data$VF[merged_r3_data$country == 2] <- .1001973
merged_r3_data$VP[merged_r3_data$country == 2] <- .1195794
merged_r3_data$PVF[merged_r3_data$country == 2] <- .06515
merged_r3_data$PVP[merged_r3_data$country == 2] <- .1044197


merged_r3_data$to[merged_r3_data$country == 2] <- 2021

#Tswana
merged_r3_data$ethnic_id[merged_r3_data$q79 == 142] <- 57101000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 140] <- 57101000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 143] <- 57101000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 146] <- 57101000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 153] <- 57101000

#Kgalagadi
merged_r3_data$ethnic_id[merged_r3_data$q79 == 154] <- 57103000

#Herero/Mbanderu
merged_r3_data$ethnic_id[merged_r3_data$q79 == 145] <- 57104000

#Yeyi
merged_r3_data$ethnic_id[merged_r3_data$q79 == 155] <- 57106000

#Mbukushu
merged_r3_data$ethnic_id[merged_r3_data$q79 == 157] <- 57107000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 159] <- 57107000

#Birwa
merged_r3_data$ethnic_id[merged_r3_data$q79 == 150] <- 57108000

#Winner 

#Elections March 4, 2001. Survey April-May 2005. Kerekou in office. 

#Voter Winner and Loser
merged_r3_data$winner[merged_r3_data$q99 == 142] <- 1

#Loser
merged_r3_data$loser[merged_r3_data$winner == 0 & merged_r3_data$didnt_vote == 0 & merged_r3_data$country == 2] <- 1

#Close Party Winner/Loser 
merged_r3_data$winner_party[merged_r3_data$q86 == 142] <- 1 

#Party Matching
merged_r3_data$v2paid[merged_r3_data$q99 == 120] <- 3831 #SOGLO  - BRP
merged_r3_data$v2paid[merged_r3_data$q99 == 121] <- 2365 #Houngbedji - PRD
merged_r3_data$v2paid[merged_r3_data$q99 == 122] <- 2368 #Amoussou - SDP
merged_r3_data$v2paid[merged_r3_data$q99 == 123] <- NA #
merged_r3_data$v2paid[merged_r3_data$q99 == 124] <- 4090 #Lafia - UDNS
merged_r3_data$v2paid[merged_r3_data$q99 == 125] <- NA #Fagbohoun
merged_r3_data$v2paid[merged_r3_data$q99 == 126] <- 4089 #Kerekou
merged_r3_data$v2paid[merged_r3_data$q99 == 127] <- NA #
merged_r3_data$v2paid[merged_r3_data$q99 == 128] <- NA #AGBO - ACD
merged_r3_data$v2paid[merged_r3_data$q99 == 129] <- NA #Boni - Ind

merged_r3_data$v2paid_close[merged_r3_data$q86 == 120] <- 3831 #SOGLO  - BRP
merged_r3_data$v2paid_close[merged_r3_data$q86 == 121] <- 2365 #Houngbedji - PRD
merged_r3_data$v2paid_close[merged_r3_data$q86 == 122] <- 2368 #Amoussou - SDP
merged_r3_data$v2paid_close[merged_r3_data$q86 == 123] <- NA #
merged_r3_data$v2paid_close[merged_r3_data$q86 == 124] <- 4090 #Lafia - UDNS
merged_r3_data$v2paid_close[merged_r3_data$q86 == 125] <- NA #Fagbohoun
merged_r3_data$v2paid_close[merged_r3_data$q86 == 126] <- 4089 #Kerekou
merged_r3_data$v2paid_close[merged_r3_data$q86 == 127] <- NA #
merged_r3_data$v2paid_close[merged_r3_data$q86 == 128] <- NA #AGBO - ACD
merged_r3_data$v2paid_close[merged_r3_data$q86 == 129] <- NA #Boni - Ind

#Vparty Year 
merged_r3_data$vparty_year[merged_r3_data$country==2] <- 2004
merged_r3_data$year[merged_r3_data$country==2] <- 2005


#Compet
merged_r3_data$proximity[merged_r3_data$country==2] <- 1 #2005-2004
merged_r3_data$winning_party_share[merged_r3_data$country==2] <- .5715
merged_r3_data$second_party_share[merged_r3_data$country==2] <- .2606 #AE database

##      Cape Verde is dropped because there is not ethnic variation in the EPR dataset.  

##      Ghana

merged_r3_data$numparties[merged_r3_data$country == 4] <- 4  
merged_r3_data$numgroup[merged_r3_data$country == 4] <- 5
merged_r3_data$groupsize1[merged_r3_data$country == 4] <- .4244898
merged_r3_data$groupsize2[merged_r3_data$country == 4] <- .2380952
merged_r3_data$groupsize3[merged_r3_data$country == 4] <- .0680272
merged_r3_data$groupsize4[merged_r3_data$country == 4] <- .1823129
merged_r3_data$groupsize5[merged_r3_data$country == 4] <- .0870748
merged_r3_data$VF[merged_r3_data$country == 4] <- .2007108
merged_r3_data$VP[merged_r3_data$country == 4] <- .2009916
merged_r3_data$PVF[merged_r3_data$country == 4] <- .1303903
merged_r3_data$PVP[merged_r3_data$country == 4] <- .2403352

merged_r3_data$to[merged_r3_data$country == 4] <- 2008


#March 10-21, 2005 Suvey data

merged_r3_data$ethnic_id[merged_r3_data$q79 == 180 & merged_r3_data$region == 185] <- 45201000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 180 & merged_r3_data$region != 185] <- 45207000

merged_r3_data$ethnic_id[merged_r3_data$q79 == 181] <- 45202000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 182] <- 45203000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 183] <- NA
merged_r3_data$ethnic_id[merged_r3_data$q79 == 184] <- 45206000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 185] <- 45206000

#Winner 


#Voter Winner and Loser
merged_r3_data$winner[merged_r3_data$q99 == 182] <- 1

#Loser
merged_r3_data$loser[merged_r3_data$winner == 0 & merged_r3_data$didnt_vote == 0 & merged_r3_data$country == 4] <- 1

#Close Party Winner/Loser 
merged_r3_data$winner_party[merged_r3_data$q86 == 182] <- 1 

#Party Matching Vote
merged_r3_data$v2paid[merged_r3_data$q99 == 180] <- 3660 
merged_r3_data$v2paid[merged_r3_data$q99 == 181] <- 2311 #NDC
merged_r3_data$v2paid[merged_r3_data$q99 == 182] <- 4732 #NPP
merged_r3_data$v2paid[merged_r3_data$q99 == 183] <- NA #PNC
merged_r3_data$v2paid[merged_r3_data$q99 == 184] <- NA #NRP
merged_r3_data$v2paid[merged_r3_data$q99 == 185] <- NA #DPP
merged_r3_data$v2paid[merged_r3_data$q99 == 186] <- NA #GCPP


#Party Matching Close
merged_r3_data$v2paid_close[merged_r3_data$q86 == 180] <- 3660 
merged_r3_data$v2paid_close[merged_r3_data$q86 == 181] <- 2311 #NDC
merged_r3_data$v2paid_close[merged_r3_data$q86 == 182] <- 4732 #NPP

#Vparty Year 
merged_r3_data$vparty_year[merged_r3_data$country==4] <- 2004
merged_r3_data$year[merged_r3_data$country==4] <- 2005


#Compet
merged_r3_data$proximity[merged_r3_data$country==4] <- 1 #2005-2004
merged_r3_data$winning_party_share[merged_r3_data$country==4] <- .52448
merged_r3_data$second_party_share[merged_r3_data$country==4] <- .44638 #Electoral Commission 

######      Kenya

merged_r3_data$numparties[merged_r3_data$country == 5] <- 4  
merged_r3_data$numgroup[merged_r3_data$country == 5] <- 7
merged_r3_data$groupsize1[merged_r3_data$country == 5] <- .3451327
merged_r3_data$groupsize2[merged_r3_data$country == 5] <- .1656131
merged_r3_data$groupsize3[merged_r3_data$country == 5] <- .1011378
merged_r3_data$groupsize4[merged_r3_data$country == 5] <- .1415929
merged_r3_data$groupsize5[merged_r3_data$country == 5] <- .1276865
merged_r3_data$groupsize6[merged_r3_data$country == 5] <- .0733249
merged_r3_data$groupsize7[merged_r3_data$country == 5] <- .045512

merged_r3_data$VF[merged_r3_data$country == 5] <- .2971909
merged_r3_data$VP[merged_r3_data$country == 5] <- .2294833
merged_r3_data$PVF[merged_r3_data$country == 5] <- .2294833
merged_r3_data$PVP[merged_r3_data$country == 5] <- .3282574

merged_r3_data$to[merged_r3_data$country == 5] <- 2007

#Matching Ethnic ID Kenya 3
merged_r3_data$ethnic_id[merged_r3_data$q79 == 200] <- 50103000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 201] <- 50106000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 202] <- 50105000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 203] <- 50102000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 204] <- 50103000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 205] <- 50104000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 206] <- 50101000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 207] <- 50101000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 208] <- 50107000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 209] <- NA
merged_r3_data$ethnic_id[merged_r3_data$q79 == 210] <- 50108000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 211] <- NA
merged_r3_data$ethnic_id[merged_r3_data$q79 == 212] <- 50101000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 215] <- 50103000


#Voter Winner and Loser
merged_r3_data$winner[merged_r3_data$q99 == 201] <- 1
merged_r3_data$winner[merged_r3_data$q99 == 203] <- 1
merged_r3_data$winner[merged_r3_data$q99 == 204] <- 1

merged_r3_data$winner[merged_r3_data$q99 == 207] <- 1



#Refused to and I don't know are dropped. They did not answer the question.
merged_r3_data$winner[merged_r3_data$q99 == -1] <- NA
merged_r3_data$winner[merged_r3_data$q99 == 998] <- NA 
merged_r3_data$winner[merged_r3_data$q99 == 999] <- NA 

#Non Voter 
#merged_r3_data$didnt_vote <- 0
#merged_r3_data$didnt_vote[merged_r3_data$q99 == 997] <- 1

#Loser
#merged_r3_data$loser <- 0 
merged_r3_data$loser[merged_r3_data$winner == 0 & merged_r3_data$didnt_vote == 0 & merged_r3_data$country == 5] <- 1

#Close Party Winner/Loser 
#merged_r3_data$winner_party <- 0 
merged_r3_data$winner_party[merged_r3_data$q86 == 201] <- 1 
merged_r3_data$winner_party[merged_r3_data$q86 == 203] <- 1 
merged_r3_data$winner_party[merged_r3_data$q86 == 204] <- 1 
merged_r3_data$winner_party[merged_r3_data$q86 == 207] <- 1 



merged_r3_data$winner_party[merged_r3_data$q86 == -1] <- NA 
merged_r3_data$winner_party[merged_r3_data$q86 == 997] <- NA 
merged_r3_data$winner_party[merged_r3_data$q86 == 998] <- NA 

#merged_r3_data$loser_party <- 1 
#merged_r3_data$loser_party[merged_r3_data$winner_party == 1] <- 0

#merged_r3_data$didnt_party <- 0
#merged_r3_data$didnt_party[merged_r3_data$q85 == 0] <- 1
#merged_r3_data$didnt_party[merged_r3_data$q85 == 8] <- NA
#merged_r3_data$didnt_party[merged_r3_data$q85 == 9] <- NA
#merged_r3_data$didnt_party[merged_r3_data$q85 == -1] <- NA

#Party Matching Vote
merged_r3_data$v2paid[merged_r3_data$q99 == -1] <- NA 
merged_r3_data$v2paid[merged_r3_data$q99 == 201] <- 5834 #NARC not NARC-K that coalition did not start yet.  
merged_r3_data$v2paid[merged_r3_data$q99 == 202] <- 4858  #LDP
merged_r3_data$v2paid[merged_r3_data$q99 == 203] <- 3860 #DP
merged_r3_data$v2paid[merged_r3_data$q99 == 204] <- 3863 #FORD-K 
merged_r3_data$v2paid[merged_r3_data$q99 == 205] <- 7971 #FORD-P
merged_r3_data$v2paid[merged_r3_data$q99 == 206] <- 2316 #KANU
merged_r3_data$v2paid[merged_r3_data$q99 == 207] <- 7932 #NPK
merged_r3_data$v2paid[merged_r3_data$q99 == 208] <- NA #
merged_r3_data$v2paid[merged_r3_data$q99 == 209] <- 3862 #FORD-A


#Party Matching Close
merged_r3_data$v2paid_close[merged_r3_data$q86 == -1] <- NA 
merged_r3_data$v2paid_close[merged_r3_data$q86 == 995] <- NA 
merged_r3_data$v2paid_close[merged_r3_data$q86 == 997] <- NA 
merged_r3_data$v2paid_close[merged_r3_data$q86 == 998] <- NA 
merged_r3_data$v2paid_close[merged_r3_data$q86 == 999] <- NA 
merged_r3_data$v2paid_close[merged_r3_data$q86 == 201] <- 5834 #NARC not NARC-K that coalition did not start yet.  
merged_r3_data$v2paid_close[merged_r3_data$q86 == 202] <- 4858  #LDP
merged_r3_data$v2paid_close[merged_r3_data$q86 == 203] <- 3860 #DP
merged_r3_data$v2paid_close[merged_r3_data$q86 == 204] <- 3863 #FORD-K 
merged_r3_data$v2paid_close[merged_r3_data$q86 == 205] <- 7971 #FORD-P
merged_r3_data$v2paid_close[merged_r3_data$q86 == 206] <- 2316 #KANU
merged_r3_data$v2paid_close[merged_r3_data$q86 == 207] <- 7932 #NPK
merged_r3_data$v2paid_close[merged_r3_data$q86 == 208] <- NA #
merged_r3_data$v2paid_close[merged_r3_data$q86 == 209] <- 3862 #FORD-A

#Vparty Year 
merged_r3_data$vparty_year[merged_r3_data$country==5] <- 2002
merged_r3_data$year[merged_r3_data$country==5] <- 2005


#Compet
merged_r3_data$proximity[merged_r3_data$country==5] <- 2 #2007-2005
merged_r3_data$winning_party_share[merged_r3_data$country==5] <- .622
merged_r3_data$second_party_share[merged_r3_data$country==5] <- .313 #IFES 


#           Lesotho is dropped because there is no ethnic variation. 

##          Madagascar 

merged_r3_data$numparties[merged_r3_data$country == 7] <- 6   
merged_r3_data$numgroup[merged_r3_data$country == 7] <- 2
merged_r3_data$groupsize1[merged_r3_data$country == 7] <- .3271462 
merged_r3_data$groupsize2[merged_r3_data$country == 7] <- .6728538
merged_r3_data$VF[merged_r3_data$country == 7] <- .0630449
merged_r3_data$VP[merged_r3_data$country == 7] <- .1260898
merged_r3_data$PVF[merged_r3_data$country == 7] <- .1135868
merged_r3_data$PVP[merged_r3_data$country == 7] <- .1612592

merged_r3_data$to[merged_r3_data$country == 7] <- 2021

#Matching Ethnic ID Madagacar 3
merged_r3_data$ethnic_id[merged_r3_data$q79 == 264] <- 58001000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 249] <- 58002000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 250] <- 58001000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 253] <- 58002000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 254] <- 58001000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 257] <- 58001000

#Voter Winner and Loser
merged_r3_data$winner[merged_r3_data$q99 == 240] <- 1

#Refused to and I don't know are dropped. They did not answer the question.
merged_r3_data$winner[merged_r3_data$q99 == -1] <- NA
merged_r3_data$winner[merged_r3_data$q99 == 998] <- NA 
merged_r3_data$winner[merged_r3_data$q99 == 999] <- NA 

#Non Voter 
#merged_r3_data$didnt_vote <- 0
merged_r3_data$didnt_vote[merged_r3_data$q99 == 997] <- 1

#Loser
#merged_r3_data$loser <- 1 
merged_r3_data$loser[merged_r3_data$winner == 0 & merged_r3_data$didnt_vote == 0 & merged_r3_data$country == 7] <- 1

#Close Party Winner/Loser 
#merged_r3_data$winner_party <- 0 
merged_r3_data$winner_party[merged_r3_data$q86 == 240] <- 1 
merged_r3_data$winner_party[merged_r3_data$q86 == -1] <- NA 
merged_r3_data$winner_party[merged_r3_data$q86 == 997] <- NA 
merged_r3_data$winner_party[merged_r3_data$q86 == 998] <- NA 

#merged_r3_data$loser_party <- 1 
#merged_r3_data$loser_party[merged_r3_data$winner_party == 1] <- 0

#merged_r3_data$didnt_party <- 0
#merged_r3_data$didnt_party[merged_r3_data$q85 == 0] <- 1
#merged_r3_data$didnt_party[merged_r3_data$q85 == 8] <- NA
#merged_r3_data$didnt_party[merged_r3_data$q85 == 9] <- NA
#merged_r3_data$didnt_party[merged_r3_data$q85 == -1] <- NA

#Party Matching Vote
merged_r3_data$v2paid[merged_r3_data$q99 == -1] <- NA 
merged_r3_data$v2paid[merged_r3_data$q99 == 240] <- 5201 #TIM  
merged_r3_data$v2paid[merged_r3_data$q99 == 241] <- 5311  #AREMA
merged_r3_data$v2paid[merged_r3_data$q99 == 242] <- NA #
merged_r3_data$v2paid[merged_r3_data$q99 == 243] <- NA  #
merged_r3_data$v2paid[merged_r3_data$q99 == 249] <- 5869  #UNDD
merged_r3_data$v2paid[merged_r3_data$q99 == 250] <- 5838 #MFM/MPI


#Party Matching Close

merged_r3_data$v2paid_close[merged_r3_data$q86 == -1] <- NA 
merged_r3_data$v2paid_close[merged_r3_data$q86 == 240] <- 5201 #TIM  
merged_r3_data$v2paid_close[merged_r3_data$q86 == 241] <- 5311  #AREMA
merged_r3_data$v2paid_close[merged_r3_data$q86 == 242] <- NA #
merged_r3_data$v2paid_close[merged_r3_data$q86 == 243] <- NA  #
merged_r3_data$v2paid_close[merged_r3_data$q86 == 249] <- 5869  #UNDD
merged_r3_data$v2paid_close[merged_r3_data$q86 == 250] <- 5838 #MFM/MPI


#Vparty Year 
merged_r3_data$vparty_year[merged_r3_data$country==7] <- 2002
merged_r3_data$year[merged_r3_data$country==7] <- 2005


#Compet
merged_r3_data$proximity[merged_r3_data$country==7] <- 2 #2007-2005
merged_r3_data$winning_party_share[merged_r3_data$country==7] <- .5146
merged_r3_data$second_party_share[merged_r3_data$country==7] <- .3590 #AE database 


##      Malawi 

merged_r3_data$numparties[merged_r3_data$country == 8] <- 3   
merged_r3_data$numgroup[merged_r3_data$country == 8] <- 3
merged_r3_data$groupsize1[merged_r3_data$country == 8] <- .4422043  
merged_r3_data$groupsize2[merged_r3_data$country == 8] <- .4395161
merged_r3_data$groupsize3[merged_r3_data$country == 8] <- .1182796
merged_r3_data$VF[merged_r3_data$country == 8] <- .2309065
merged_r3_data$VP[merged_r3_data$country == 8] <- .3521383
merged_r3_data$PVF[merged_r3_data$country == 8] <- .2534844
merged_r3_data$PVP[merged_r3_data$country == 8] <- .3329855

merged_r3_data$to[merged_r3_data$country == 8] <- 2020

#Ethnic ID Malawi 3
merged_r3_data$ethnic_id[merged_r3_data$q79 == 260] <- 55303000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 261] <- 55303000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 263] <- 55302000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 264] <- 55301000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 266] <- 55301000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 267] <- 55301000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 271] <- 55303000

#Intv June-July 2005
#Voter Winner and Loser 
merged_r3_data$winner[merged_r3_data$q99 == 270] <- 1

#Refused to and I don't know are dropped. They did not answer the question.
merged_r3_data$winner[merged_r3_data$q99 == -1] <- NA
merged_r3_data$winner[merged_r3_data$q99 == 998] <- NA 
merged_r3_data$winner[merged_r3_data$q99 == 999] <- NA 

#Non Voter 
#merged_r3_data$didnt_vote <- 0
merged_r3_data$didnt_vote[merged_r3_data$q99 == 997] <- 1

#Loser
#merged_r3_data$loser <- 0 
merged_r3_data$loser[merged_r3_data$winner == 0 & merged_r3_data$didnt_vote == 0 & merged_r3_data$country == 8] <- 1

#Close Party Winner/Loser 
#merged_r3_data$winner_party <- 0 
merged_r3_data$winner_party[merged_r3_data$q86 == 270] <- 1 
merged_r3_data$winner_party[merged_r3_data$q86 == -1] <- NA 
merged_r3_data$winner_party[merged_r3_data$q86 == 997] <- NA 
merged_r3_data$winner_party[merged_r3_data$q86 == 998] <- NA 

#merged_r3_data$loser_party <- 1 
#merged_r3_data$loser_party[merged_r3_data$winner_party == 1] <- 0

#merged_r3_data$didnt_party <- 0
#merged_r3_data$didnt_party[merged_r3_data$q85 == 0] <- 1
#merged_r3_data$didnt_party[merged_r3_data$q85 == 8] <- NA
#merged_r3_data$didnt_party[merged_r3_data$q85 == 9] <- NA
#merged_r3_data$didnt_party[merged_r3_data$q85 == -1] <- NA

#Party Matching Vote
merged_r3_data$v2paid[merged_r3_data$q99 == -1] <- NA 
merged_r3_data$v2paid[merged_r3_data$q99 == 260] <- 3733 #AFROD  
merged_r3_data$v2paid[merged_r3_data$q99 == 261] <- 4846  #DPP
merged_r3_data$v2paid[merged_r3_data$q99 == 263] <- 3732 #MCP
merged_r3_data$v2paid[merged_r3_data$q99 == 266] <- 3735  #NAD
merged_r3_data$v2paid[merged_r3_data$q99 == 269] <- 3737  #RP
merged_r3_data$v2paid[merged_r3_data$q99 == 270] <- 3734 #UDF

#Party Matching Close

merged_r3_data$v2paid_close[merged_r3_data$q86 == -1] <- NA 
merged_r3_data$v2paid_close[merged_r3_data$q86 == 260] <- 3733 #AFROD  
merged_r3_data$v2paid_close[merged_r3_data$q86 == 261] <- 4846  #DPP
merged_r3_data$v2paid_close[merged_r3_data$q86 == 263] <- 3732 #MCP
merged_r3_data$v2paid_close[merged_r3_data$q86 == 266] <- 3735  #NAD
merged_r3_data$v2paid_close[merged_r3_data$q86 == 269] <- 3737  #RP
merged_r3_data$v2paid_close[merged_r3_data$q86 == 270] <- 3734 #UDF

#Vparty Year 
merged_r3_data$vparty_year[merged_r3_data$country==8] <- 2004
merged_r3_data$year[merged_r3_data$country==8] <- 2005


#Compet
merged_r3_data$proximity[merged_r3_data$country==8] <- 1 #2005-2004
merged_r3_data$winning_party_share[merged_r3_data$country==8] <- .3597
merged_r3_data$second_party_share[merged_r3_data$country==8] <- .2822 #CMI

##          Mali 
#Surveys from June to July 2005

merged_r3_data$numparties[merged_r3_data$country == 9] <- 7   
merged_r3_data$numgroup[merged_r3_data$country == 9] <- 2
merged_r3_data$groupsize1[merged_r3_data$country == 9] <- .9518072  
merged_r3_data$groupsize2[merged_r3_data$country == 9] <- .0481928
#merged_r3_data$groupsize3[merged_r3_data$country == 9] <- 
merged_r3_data$VF[merged_r3_data$country == 9] <- .0335467
merged_r3_data$VP[merged_r3_data$country == 9] <- .0670935
merged_r3_data$PVF[merged_r3_data$country == 9] <- .0525594
merged_r3_data$PVP[merged_r3_data$country == 9] <- .0498803

merged_r3_data$to[merged_r3_data$country == 9] <- 2012

#Ethnic ID MALI 3
merged_r3_data$ethnic_id[merged_r3_data$q79 == 280] <- 43201000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 281] <- 43201000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 282] <- 43201000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 283] <- 43201000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 284] <- 43201000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 285] <- 43201000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 286] <- 43201000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 287] <- NA
merged_r3_data$ethnic_id[merged_r3_data$q79 == 288] <- NA
merged_r3_data$ethnic_id[merged_r3_data$q79 == 289] <- 43201000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 290] <- 43201000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 291] <- 43201000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 291] <- 43203000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 292] <- NA
merged_r3_data$ethnic_id[merged_r3_data$q79 == 297] <- 43202000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 298] <- 43201000


#############################################



#Voter Winner and Loser 
merged_r3_data$winner[merged_r3_data$q99 == 293] <- 1 #Toure won
merged_r3_data$winner[merged_r3_data$q99 == 282] <- 1
merged_r3_data$winner[merged_r3_data$q99 == 281] <- 1
merged_r3_data$winner[merged_r3_data$q99 == 280] <- 1

#Refused to and I don't know are dropped. They did not answer the question.
merged_r3_data$winner[merged_r3_data$q99 == -1] <- NA
merged_r3_data$winner[merged_r3_data$q99 == 998] <- NA 
merged_r3_data$winner[merged_r3_data$q99 == 999] <- NA 

#Loser
#merged_r3_data$loser <- 0
merged_r3_data$loser[merged_r3_data$winner == 0 & merged_r3_data$didnt_vote == 0 & merged_r3_data$country == 9] <- 1

#Close Party Winner/Loser 
merged_r3_data$winner_party[merged_r3_data$q86 == 293] <- 1 
merged_r3_data$winner_party[merged_r3_data$q86 == 282] <- 1 
merged_r3_data$winner_party[merged_r3_data$q86 == 281] <- 1 
merged_r3_data$winner_party[merged_r3_data$q86 == 280] <- 1 

merged_r3_data$winner_party[merged_r3_data$q86 == -1] <- NA 
merged_r3_data$winner_party[merged_r3_data$q86 == 997] <- NA 
merged_r3_data$winner_party[merged_r3_data$q86 == 998] <- NA 

#Party Matching Vote
merged_r3_data$v2paid[merged_r3_data$q99 == 280] <- 2477 #ADEMA  
merged_r3_data$v2paid[merged_r3_data$q99 == 281] <- 2319  #RPM
merged_r3_data$v2paid[merged_r3_data$q99 == 282] <- 2478 #CNID
merged_r3_data$v2paid[merged_r3_data$q99 == 283] <- 2475  #US-RDA
merged_r3_data$v2paid[merged_r3_data$q99 == 285] <- 6084  #PARENA
merged_r3_data$v2paid[merged_r3_data$q99 == 286] <- NA #SAI
merged_r3_data$v2paid[merged_r3_data$q99 == 287] <- 6085 #MPR
merged_r3_data$v2paid[merged_r3_data$q99 == 288] <- NA #BDIA
merged_r3_data$v2paid[merged_r3_data$q99 == 289] <- NA #UDD
merged_r3_data$v2paid[merged_r3_data$q99 == 290] <- NA #RND
merged_r3_data$v2paid[merged_r3_data$q99 == 291] <- NA #MIRIA
merged_r3_data$v2paid[merged_r3_data$q99 == 292] <- 2476 #URD

#Party Matching Close

merged_r3_data$v2paid_close[merged_r3_data$q86 == 280] <- 2477 #ADEMA  
merged_r3_data$v2paid_close[merged_r3_data$q86 == 281] <- 2319  #RPM
merged_r3_data$v2paid_close[merged_r3_data$q86 == 282] <- 2478 #CNID
merged_r3_data$v2paid_close[merged_r3_data$q86 == 283] <- 2475  #US-RDA
merged_r3_data$v2paid_close[merged_r3_data$q86 == 285] <- 6084  #PARENA
merged_r3_data$v2paid_close[merged_r3_data$q86 == 286] <- NA #SAI
merged_r3_data$v2paid_close[merged_r3_data$q86 == 287] <- 6085 #MPR
merged_r3_data$v2paid_close[merged_r3_data$q86 == 288] <- NA #BDIA
merged_r3_data$v2paid_close[merged_r3_data$q86 == 289] <- NA #UDD
merged_r3_data$v2paid_close[merged_r3_data$q86 == 290] <- NA #RND
merged_r3_data$v2paid_close[merged_r3_data$q86 == 291] <- NA #MIRIA
merged_r3_data$v2paid_close[merged_r3_data$q86 == 292] <- 2476 #URD

#Vparty Year 
merged_r3_data$vparty_year[merged_r3_data$country==9] <- 2002
merged_r3_data$year[merged_r3_data$country==9] <- 2005


#Compet
merged_r3_data$proximity[merged_r3_data$country==9] <- 2 #2007-2005
merged_r3_data$winning_party_share[merged_r3_data$country==9] <- .6501
merged_r3_data$second_party_share[merged_r3_data$country==9] <- .3499 #AE Database

##          Mozambique not included because languages are the main identifier instead of ethnic group. 

#Interview June 2005
#Voter Winner and Loser 
merged_r3_data$winner[merged_r3_data$q99 == 300] <- 1

#Refused to and I don't know are dropped. They did not answer the question.
merged_r3_data$winner[merged_r3_data$q99 == -1] <- NA
merged_r3_data$winner[merged_r3_data$q99 == 998] <- NA 
merged_r3_data$winner[merged_r3_data$q99 == 999] <- NA 

#Loser
#merged_r3_data$loser <- 0
merged_r3_data$loser[merged_r3_data$winner == 0 & merged_r3_data$didnt_vote == 0 & merged_r3_data$country == 10] <- 1 

#Close Party Winner/Loser 
merged_r3_data$winner_party[merged_r3_data$q86 == 300] <- 1 

#Party Matching Vote
merged_r3_data$v2paid[merged_r3_data$q99 == -1] <- NA 
merged_r3_data$v2paid[merged_r3_data$q99 == 300] <- 2314 #FREMLO  
merged_r3_data$v2paid[merged_r3_data$q99 == 301] <- 2315  #RENAMO
merged_r3_data$v2paid[merged_r3_data$q99 == 302] <- NA #PIMO
merged_r3_data$v2paid[merged_r3_data$q99 == 303] <- NA  #PDD


#Party Matching Close

merged_r3_data$v2paid_close[merged_r3_data$q86 == -1] <- NA 
merged_r3_data$v2paid_close[merged_r3_data$q86 == 300] <- 2314 #FREMLO   
merged_r3_data$v2paid_close[merged_r3_data$q86 == 301] <- 2315  #RENAMO
merged_r3_data$v2paid_close[merged_r3_data$q86 == 302] <- NA #
merged_r3_data$v2paid_close[merged_r3_data$q86 == 303] <- NA  #

##                Namibia
#PE Measure
merged_r3_data$numparties[merged_r3_data$country == 11] <- 5   
merged_r3_data$numgroup[merged_r3_data$country == 11] <- 4
merged_r3_data$groupsize1[merged_r3_data$country == 11] <- .7189189  
merged_r3_data$groupsize2[merged_r3_data$country == 11] <- .0905405
merged_r3_data$groupsize3[merged_r3_data$country == 11] <- .0405405
merged_r3_data$groupsize4[merged_r3_data$country == 11] <- .15
merged_r3_data$VF[merged_r3_data$country == 11] <- .1482063
merged_r3_data$VP[merged_r3_data$country == 11] <- .22892
merged_r3_data$PVF[merged_r3_data$country == 11] <- .159045
merged_r3_data$PVP[merged_r3_data$country == 11] <- .2657197

merged_r3_data$to[merged_r3_data$country == 11] <- 2014

#Ethnic ID NAMIBIA 3
merged_r3_data$ethnic_id[merged_r3_data$q79 == 320] <- 56509000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 321] <- 56505000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 327] <- 56508000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 328] <- 56504000

#Interview Feb-Mar 2006
#Voter Winner and Loser 
merged_r3_data$winner[merged_r3_data$q99 == 320] <- 1

#Loser
#merged_r3_data$loser <- 0
merged_r3_data$loser[merged_r3_data$winner == 0 & merged_r3_data$didnt_vote == 0 & merged_r3_data$country == 11] <- 1 

#Close Party Winner/Loser 
merged_r3_data$winner_party[merged_r3_data$q86 == 320] <- 1 

#Party Matching Vote
merged_r3_data$v2paid[merged_r3_data$q99 == -1] <- NA 
merged_r3_data$v2paid[merged_r3_data$q99 == 320] <- 2331 #SWAPO  
merged_r3_data$v2paid[merged_r3_data$q99 == 321] <- 2356  #DTA
merged_r3_data$v2paid[merged_r3_data$q99 == 322] <- 2358 #CoD
merged_r3_data$v2paid[merged_r3_data$q99 == 323] <- 2355 #UDF
merged_r3_data$v2paid[merged_r3_data$q99 == 330] <- 6600  #UNSWP

#Party Matching Close
merged_r3_data$v2paid_close[merged_r3_data$q86 == -1] <- NA 
merged_r3_data$v2paid_close[merged_r3_data$q86 == 320] <- 2314 #FREMLO   
merged_r3_data$v2paid_close[merged_r3_data$q86 == 321] <- 2315  #RENAMO
merged_r3_data$v2paid_close[merged_r3_data$q86 == 322] <- 2358 #CoD
merged_r3_data$v2paid_close[merged_r3_data$q86 == 323] <- 2355 #UDF
merged_r3_data$v2paid_close[merged_r3_data$q86 == 330] <- 6600  #UNSWP

#Vparty Year 
merged_r3_data$vparty_year[merged_r3_data$country==11] <- 2004
merged_r3_data$year[merged_r3_data$country==11] <- 2006


#Compet
merged_r3_data$proximity[merged_r3_data$country==11] <- 2 #2006-2004
merged_r3_data$winning_party_share[merged_r3_data$country==11] <- .7644
merged_r3_data$second_party_share[merged_r3_data$country==11] <- .0728 #Official 

##      Nigeria
#Interview August, Sept, and Dec 2005
#Voter Winner and Loser 
merged_r3_data$winner[merged_r3_data$q99 == 340] <- 1

#Loser
merged_r3_data$loser[merged_r3_data$winner == 0 & merged_r3_data$didnt_vote == 0 & merged_r3_data$country == 12] <- 1

#Close Party Winner/Loser 
merged_r3_data$winner_party[merged_r3_data$q86 == 340] <- 1 

#Party Matching Vote
merged_r3_data$v2paid[merged_r3_data$q99 == -1] <- NA 
merged_r3_data$v2paid[merged_r3_data$q99 == 340] <- 2354 #PDP 
merged_r3_data$v2paid[merged_r3_data$q99 == 341] <- 4116  #AD
merged_r3_data$v2paid[merged_r3_data$q99 == 342] <- 2313 #ANPP
merged_r3_data$v2paid[merged_r3_data$q99 == 343] <- NA #APGA
merged_r3_data$v2paid[merged_r3_data$q99 == 344] <- NA   #PAC
merged_r3_data$v2paid[merged_r3_data$q99 == 345] <- NA  #APLG
merged_r3_data$v2paid[merged_r3_data$q99 == 346] <- NA  #JP
merged_r3_data$v2paid[merged_r3_data$q99 == 348] <- NA  #NCP
merged_r3_data$v2paid[merged_r3_data$q99 == 349] <- NA  #UNPP
merged_r3_data$v2paid[merged_r3_data$q99 == 351] <- NA  #NAP
merged_r3_data$v2paid[merged_r3_data$q99 == 352] <- 5354  #PRP
merged_r3_data$v2paid[merged_r3_data$q99 == 353] <- NA  #MDJ
merged_r3_data$v2paid[merged_r3_data$q99 == 355] <- NA  #PSD
merged_r3_data$v2paid[merged_r3_data$q99 == 356] <- NA  #AA

#Party Matching Close

merged_r3_data$v2paid_close[merged_r3_data$q86 == -1] <- NA 
merged_r3_data$v2paid_close[merged_r3_data$q86 == 340] <- 2354 #PDP 
merged_r3_data$v2paid_close[merged_r3_data$q86 == 341] <- 4116  #AD
merged_r3_data$v2paid_close[merged_r3_data$q86 == 342] <- 2313 #ANPP
merged_r3_data$v2paid_close[merged_r3_data$q86 == 352] <- 5354  #PRP


#Nigeria Ethnic 
merged_r3_data$numparties[merged_r3_data$country == 12] <- 4   
merged_r3_data$numgroup[merged_r3_data$country == 12] <- 4
merged_r3_data$groupsize1[merged_r3_data$country == 12] <- .4038855  
merged_r3_data$groupsize2[merged_r3_data$country == 12] <- .2484663
merged_r3_data$groupsize3[merged_r3_data$country == 12] <- .2290388
merged_r3_data$groupsize4[merged_r3_data$country == 12] <- .1186094
merged_r3_data$VF[merged_r3_data$country == 12] <- .27453
merged_r3_data$VP[merged_r3_data$country == 12] <- .3138187
merged_r3_data$PVF[merged_r3_data$country == 12] <- .3233626
merged_r3_data$PVP[merged_r3_data$country == 12] <- .3910861

merged_r3_data$to[merged_r3_data$country == 12] <- 2014

#Ethnic ID Nigeria 3
merged_r3_data$ethnic_id[merged_r3_data$q79 == 340] <- 47501000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 341] <- 47502000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 342] <- 47506000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 346] <- 47501000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 352] <- 47503000


#Vparty Year 
merged_r3_data$vparty_year[merged_r3_data$country==12] <- 2003
merged_r3_data$year[merged_r3_data$country==12] <- 2005


#Compet
merged_r3_data$proximity[merged_r3_data$country==12] <- 2 #2005-2003
merged_r3_data$winning_party_share[merged_r3_data$country==12] <- .6194
merged_r3_data$second_party_share[merged_r3_data$country==12] <- .3218 #AE database 


##          Senegal 

#Interview Sep-Oct 05
#Voter Winner and Loser 
merged_r3_data$winner[merged_r3_data$q99 == 360] <- 1

#Loser
merged_r3_data$loser[merged_r3_data$winner == 0 & merged_r3_data$didnt_vote == 0 & merged_r3_data$country == 13] <- 1

#Close Party Winner/Loser 
merged_r3_data$winner_party[merged_r3_data$q86 == 360] <- 1 

#Party Matching Vote
merged_r3_data$v2paid[merged_r3_data$q99 == -1] <- NA 
merged_r3_data$v2paid[merged_r3_data$q99 == 360] <- 2329 #PDS
merged_r3_data$v2paid[merged_r3_data$q99 == 361] <- 2380 #PS/UPS
merged_r3_data$v2paid[merged_r3_data$q99 == 362] <- 2379 #AFP
merged_r3_data$v2paid[merged_r3_data$q99 == 363] <- NA #URD
merged_r3_data$v2paid[merged_r3_data$q99 == 364] <- 2382 #AJ/PADS
merged_r3_data$v2paid[merged_r3_data$q99 == 367] <- NA #LD/MPT
merged_r3_data$v2paid[merged_r3_data$q99 == 368] <- NA #NA
merged_r3_data$v2paid[merged_r3_data$q99 == 369] <- NA

#Party Matching Close
merged_r3_data$v2paid_close[merged_r3_data$q86 == -1] <- NA 
merged_r3_data$v2paid_close[merged_r3_data$q86 == 360] <- 2329 #PDS 
merged_r3_data$v2paid_close[merged_r3_data$q86 == 361] <- 2380 #PS/UPS
merged_r3_data$v2paid_close[merged_r3_data$q86 == 362] <- 2379 #AFP
merged_r3_data$v2paid_close[merged_r3_data$q86 == 364] <- 2382 #AJ/PADS
merged_r3_data$v2paid_close[merged_r3_data$q86 == 367] <- NA #LD/MPT

merged_r3_data$numparties[merged_r3_data$country == 13] <- 4   
merged_r3_data$numgroup[merged_r3_data$country == 13] <- 5
merged_r3_data$groupsize1[merged_r3_data$country == 13] <- .5046235  
merged_r3_data$groupsize2[merged_r3_data$country == 13] <- .2602378
merged_r3_data$groupsize3[merged_r3_data$country == 13] <- .1387054
merged_r3_data$groupsize4[merged_r3_data$country == 13] <- .0422721
merged_r3_data$groupsize5[merged_r3_data$country == 13] <- .0541612
merged_r3_data$VF[merged_r3_data$country == 13] <- .0551102
merged_r3_data$VP[merged_r3_data$country == 13] <- .0606766
merged_r3_data$PVF[merged_r3_data$country == 13] <- .0436409
merged_r3_data$PVP[merged_r3_data$country == 13] <- .0678117

merged_r3_data$to[merged_r3_data$country == 13] <- 2012

#Ethnic ID Senegal 3
merged_r3_data$ethnic_id[merged_r3_data$q79 == 360] <- 43301000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 361] <- 43302000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 362] <- 43303000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 363] <- 43304000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 365] <- 43305000

#Vparty Year 
merged_r3_data$vparty_year[merged_r3_data$country==13] <-  2001
merged_r3_data$year[merged_r3_data$country==13] <-  2005

#Compet
merged_r3_data$proximity[merged_r3_data$country==13] <- 2 #2007-2005
merged_r3_data$winning_party_share[merged_r3_data$country==13] <- .5849
merged_r3_data$second_party_share[merged_r3_data$country==13] <-  .4151 #AE data 

##          South Africa
#Interview Feb 06
#Voter Winner and Loser 
merged_r3_data$winner[merged_r3_data$q99 == 102] <- 1

#Loser
merged_r3_data$loser[merged_r3_data$winner == 0 & merged_r3_data$didnt_vote == 0 & merged_r3_data$country == 14] <- 1

#Close Party Winner/Loser 
merged_r3_data$winner_party[merged_r3_data$q86 == 102] <- 1 

#Ethnic
merged_r3_data$numparties[merged_r3_data$country == 14] <- 3   
merged_r3_data$numgroup[merged_r3_data$country == 14] <- 10
merged_r3_data$groupsize1[merged_r3_data$country == 14] <- .0663957  
merged_r3_data$groupsize2[merged_r3_data$country == 14] <- .0257453
merged_r3_data$groupsize3[merged_r3_data$country == 14] <- .2391599
merged_r3_data$groupsize4[merged_r3_data$country == 14] <- .1172087
merged_r3_data$groupsize5[merged_r3_data$country == 14] <- .1111111
merged_r3_data$groupsize6[merged_r3_data$country == 14] <- .1138211
merged_r3_data$groupsize7[merged_r3_data$country == 14] <- .0392954
merged_r3_data$groupsize8[merged_r3_data$country == 14] <- .0325203
merged_r3_data$groupsize9[merged_r3_data$country == 14] <- .1822493
merged_r3_data$groupsize10[merged_r3_data$country == 14] <- .0724932


merged_r3_data$VF[merged_r3_data$country == 14] <- .1462865
merged_r3_data$VP[merged_r3_data$country == 14] <- .0729547
merged_r3_data$PVF[merged_r3_data$country == 14] <- .0923359
merged_r3_data$PVP[merged_r3_data$country == 14] <- .1717026

merged_r3_data$to[merged_r3_data$country == 14] <- 2008

#Ethnic ID South Africa 3
merged_r3_data$ethnic_id[merged_r3_data$q79 == 100] <- 56001000
merged_r3_data$ethnic_id[merged_r3_data$q79 == 101] <- 56005800
merged_r3_data$ethnic_id[merged_r3_data$q79 == 102] <- 56005200
merged_r3_data$ethnic_id[merged_r3_data$q79 == 103] <- 56005310
merged_r3_data$ethnic_id[merged_r3_data$q79 == 104] <- 56005320
merged_r3_data$ethnic_id[merged_r3_data$q79 == 105] <- 56005400
merged_r3_data$ethnic_id[merged_r3_data$q79 == 107] <- 56005600
merged_r3_data$ethnic_id[merged_r3_data$q79 == 108] <- 56005700
merged_r3_data$ethnic_id[merged_r3_data$q79 == 109] <- 56005100
merged_r3_data$ethnic_id[merged_r3_data$q79 == 113] <- 56003000

#Party Matching Vote
merged_r3_data$v2paid[merged_r3_data$q99 == -1] <- NA 
merged_r3_data$v2paid[merged_r3_data$q99 == 100] <- NA #ACD
merged_r3_data$v2paid[merged_r3_data$q99 == 101] <- NA #AMP
merged_r3_data$v2paid[merged_r3_data$q99 == 102] <- 1219 #ANC
merged_r3_data$v2paid[merged_r3_data$q99 == 103] <- NA #AUM
merged_r3_data$v2paid[merged_r3_data$q99 == 104] <- NA #
merged_r3_data$v2paid[merged_r3_data$q99 == 105] <- NA 
merged_r3_data$v2paid[merged_r3_data$q99 == 106] <- NA
merged_r3_data$v2paid[merged_r3_data$q99 == 107] <- 1038 #DA
merged_r3_data$v2paid[merged_r3_data$q99 == 109] <- NA
merged_r3_data$v2paid[merged_r3_data$q99 == 110] <- NA
merged_r3_data$v2paid[merged_r3_data$q99 == 111] <- NA
merged_r3_data$v2paid[merged_r3_data$q99 == 112] <- 1630 #IFP
merged_r3_data$v2paid[merged_r3_data$q99 == 113] <- NA
merged_r3_data$v2paid[merged_r3_data$q99 == 115] <- 5731 #NNP
merged_r3_data$v2paid[merged_r3_data$q99 == 116] <- NA
merged_r3_data$v2paid[merged_r3_data$q99 == 119] <- NA
merged_r3_data$v2paid[merged_r3_data$q99 == 850] <- NA

#Party Matching Close
merged_r3_data$v2paid_close[merged_r3_data$q86 == -1] <- NA 
merged_r3_data$v2paid_close[merged_r3_data$q86 == 102] <- 1219 #ANC
merged_r3_data$v2paid_close[merged_r3_data$q86 == 107] <- 1038 #DA
merged_r3_data$v2paid_close[merged_r3_data$q86 == 112] <- 1630 #IFP
merged_r3_data$v2paid_close[merged_r3_data$q86 == 115] <- 5731 #NNP

#Vparty Year 
merged_r3_data$vparty_year[merged_r3_data$country==14] <-  2004

#Compet
merged_r3_data$proximity[merged_r3_data$country==14] <- 2 #2006-2004
merged_r3_data$winning_party_share[merged_r3_data$country==14] <- .6969 
merged_r3_data$second_party_share[merged_r3_data$country==14] <-  .1237 #Electoral Resources

merged_r3_data$year[merged_r3_data$country==14] <- 2006

##          Tanzania
#Interview Jul-Aug 05 
#Voter Winner and Loser 
merged_r3_data$winner[merged_r3_data$q99 == 380] <- 1

#Loser
merged_r3_data$loser[merged_r3_data$winner == 0 & merged_r3_data$didnt_vote == 0 & merged_r3_data$country == 15] <- 1 

#Close Party Winner/Loser 
merged_r3_data$winner_party[merged_r3_data$q86 == 380] <- 1 

#Party Matching Vote
merged_r3_data$v2paid[merged_r3_data$q99 == -1] <- NA 
merged_r3_data$v2paid[merged_r3_data$q99 == 380] <- 2328 #CMM
merged_r3_data$v2paid[merged_r3_data$q99 == 381] <- 2345 #CUF
merged_r3_data$v2paid[merged_r3_data$q99 == 382] <- 2344 #Chadema
merged_r3_data$v2paid[merged_r3_data$q99 == 384] <- 3276 #NCCR
merged_r3_data$v2paid[merged_r3_data$q99 == 389] <- 3553 #TLP
merged_r3_data$v2paid[merged_r3_data$q99 == 390] <- 6075 #UDP 

#Party Matching Close
merged_r3_data$v2paid_close[merged_r3_data$q86 == -1] <- NA 
merged_r3_data$v2paid_close[merged_r3_data$q86 == 380] <- 2328 #CMM
merged_r3_data$v2paid_close[merged_r3_data$q86 == 381] <- 2345 #CUF
merged_r3_data$v2paid_close[merged_r3_data$q86 == 382] <- 2344 #Chadema
merged_r3_data$v2paid_close[merged_r3_data$q86 == 384] <- 3276 #NCCR
merged_r3_data$v2paid_close[merged_r3_data$q86 == 389] <- 3553 #TLP
merged_r3_data$v2paid_close[merged_r3_data$q86 == 390] <- 6075 #UDP 

merged_r3_data$vparty_year[merged_r3_data$country==15] <-  2004


##          Uganda
#Interview Apr-May 05 
#Voter Winner and Loser 
merged_r3_data$winner[merged_r3_data$q99 == 512] <- 1

#Loser
merged_r3_data$loser[merged_r3_data$winner == 0 & merged_r3_data$didnt_vote == 0 & merged_r3_data$country == 16] <- 0 

#Close Party Winner/Loser 
merged_r3_data$winner_party[merged_r3_data$q86 == 512] <- 1 

#Party Matching Vote
merged_r3_data$v2paid[merged_r3_data$q99 == -1] <- NA 
merged_r3_data$v2paid[merged_r3_data$q99 == 512] <- 4523 #NRM
merged_r3_data$v2paid[merged_r3_data$q99 == 513] <- 5389 #FDC
merged_r3_data$v2paid[merged_r3_data$q99 == 514] <- 4524 #UPC
merged_r3_data$v2paid[merged_r3_data$q99 == 515] <- 4525 #DP
merged_r3_data$v2paid[merged_r3_data$q99 == 516] <- NA #CP
merged_r3_data$v2paid[merged_r3_data$q99 == 517] <- NA # 

#Party Matching Close
merged_r3_data$v2paid_close[merged_r3_data$q86 == -1] <- NA 
merged_r3_data$v2paid_close[merged_r3_data$q86 == 512] <- 4523 #NRM
merged_r3_data$v2paid_close[merged_r3_data$q86 == 513] <- 5389 #FDC
merged_r3_data$v2paid_close[merged_r3_data$q86 == 514] <- 4524 #UPC
merged_r3_data$v2paid_close[merged_r3_data$q86 == 515] <- 4525 #DP
merged_r3_data$v2paid_close[merged_r3_data$q86 == 516] <- NA #CP
merged_r3_data$v2paid_close[merged_r3_data$q86 == 517] <- NA # 

#PE measures
merged_r3_data$numparties[merged_r3_data$country == 16] <- 4    
merged_r3_data$numgroup[merged_r3_data$country == 16] <- 4
merged_r3_data$groupsize1[merged_r3_data$country == 16] <- .3896414   
merged_r3_data$groupsize2[merged_r3_data$country == 16] <- .301992
merged_r3_data$groupsize3[merged_r3_data$country == 16] <- .1625498
merged_r3_data$groupsize4[merged_r3_data$country == 16] <- .1458167

merged_r3_data$VF[merged_r3_data$country == 16] <- .0918278
merged_r3_data$VP[merged_r3_data$country == 16] <- .1050259
merged_r3_data$PVF[merged_r3_data$country == 16] <- .0956684
merged_r3_data$PVP[merged_r3_data$country == 16] <- .1570489

#Vparty Year 
merged_r3_data$vparty_year[merged_r3_data$country==16] <-  

#Compet
merged_r3_data$proximity[merged_r3_data$country==16] <- 1 #2006-2005
merged_r3_data$winning_party_share[merged_r3_data$country==16] <- .5926 
merged_r3_data$second_party_share[merged_r3_data$country==16] <-  .3739 #AE data

merged_r3_data$year[merged_r3_data$country==16] <- 2005

##          Zambia
#Interview Jul-Aug 05
#Voter Winner and Loser 
merged_r3_data$winner[merged_r3_data$q99 == 422] <- 1

#Loser
merged_r3_data$loser[merged_r3_data$winner == 0 & merged_r3_data$didnt_vote == 0 & merged_r3_data$country == 17] <- 1

#Close Party Winner/Loser 
merged_r3_data$winner_party[merged_r3_data$q86 == 422] <- 1 

#Party Matching Vote
merged_r3_data$v2paid[merged_r3_data$q99 == -1] <- NA 
merged_r3_data$v2paid[merged_r3_data$q99 == 420] <- 4523 #FDD
merged_r3_data$v2paid[merged_r3_data$q99 == 421] <- NA #HP
merged_r3_data$v2paid[merged_r3_data$q99 == 422] <- 2333 #MMD
merged_r3_data$v2paid[merged_r3_data$q99 == 423] <- 2302 #PF
merged_r3_data$v2paid[merged_r3_data$q99 == 424] <- 2334 #UNIP
merged_r3_data$v2paid[merged_r3_data$q99 == 425] <- 2335 #UPND
merged_r3_data$v2paid[merged_r3_data$q99 == 426] <- NA #ZRP


#Party Matching Close
merged_r3_data$v2paid_close[merged_r3_data$q86 == -1] <- NA 
merged_r3_data$v2paid_close[merged_r3_data$q86 == 420] <- 4523 #FDD
merged_r3_data$v2paid_close[merged_r3_data$q86 == 422] <- 2333 #MMD
merged_r3_data$v2paid_close[merged_r3_data$q86 == 423] <- 2302 #PF
merged_r3_data$v2paid_close[merged_r3_data$q86 == 424] <- 2334 #UNIP
merged_r3_data$v2paid_close[merged_r3_data$q86 == 425] <- 2335 #UPND
merged_r3_data$v2paid_close[merged_r3_data$q86 == 426] <- NA #ZRP

#PE measures
merged_r3_data$numparties[merged_r3_data$country == 17] <-  5
merged_r3_data$numgroup[merged_r3_data$country == 17] <- 5
merged_r3_data$groupsize1[merged_r3_data$country == 17] <- .4119923    
merged_r3_data$groupsize2[merged_r3_data$country == 17] <- .2901354
merged_r3_data$groupsize3[merged_r3_data$country == 17] <- .1586073
merged_r3_data$groupsize4[merged_r3_data$country == 17] <- .0618956
merged_r3_data$groupsize4[merged_r3_data$country == 17] <- .0773694




merged_r3_data$VF[merged_r3_data$country == 17] <- .2615567
merged_r3_data$VP[merged_r3_data$country == 17] <- .3092276
merged_r3_data$PVF[merged_r3_data$country == 17] <- .2723857
merged_r3_data$PVP[merged_r3_data$country == 17] <- .3463333

#Vparty Year 
merged_r3_data$vparty_year[merged_r3_data$country==17] <- 2001 
  
  #Compet
merged_r3_data$proximity[merged_r3_data$country==17] <- 1 #2006-2005
merged_r3_data$winning_party_share[merged_r3_data$country==17] <- .2915 
merged_r3_data$second_party_share[merged_r3_data$country==17] <- .2720   #AE data

merged_r3_data$year[merged_r3_data$country==17] <- 2005

##          Zimbabwe
#interview OCT 05
#Voter Winner and Loser 
merged_r3_data$winner[merged_r3_data$q99 == 440] <- 1

#Loser
merged_r3_data$loser[merged_r3_data$winner == 0 & merged_r3_data$didnt_vote == 0 & merged_r3_data$country == 17] <- 1

#Close Party Winner/Loser 
merged_r3_data$winner_party[merged_r3_data$q86 == 440] <- 1 

#Party Matching Vote
merged_r3_data$v2paid[merged_r3_data$q99 == -1] <- NA 
merged_r3_data$v2paid[merged_r3_data$q99 == 440] <- 3305 #ZANU PF
merged_r3_data$v2paid[merged_r3_data$q99 == 441] <- 3558 #MDC
merged_r3_data$v2paid[merged_r3_data$q99 == 442] <- 6032 #ZANU NDONGA
merged_r3_data$v2paid[merged_r3_data$q99 == 444] <- NA #ZIYA

#Party Matching Close
merged_r3_data$v2paid_close[merged_r3_data$q86 == -1] <- NA 
merged_r3_data$v2paid_close[merged_r3_data$q86 == 440] <- 3305 #ZANU PF
merged_r3_data$v2paid_close[merged_r3_data$q86 == 441] <- 3558 #MDC
merged_r3_data$v2paid_close[merged_r3_data$q86 == 442] <- 6032 #ZANU NDONGA
merged_r3_data$v2paid_close[merged_r3_data$q86 == 444] <- NA #ZIYA

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

merged_r3_data$nonpartisan <- 0
merged_r3_data$nonpartisan[merged_r3_data$q85 == 0] <- 1
merged_r3_data$nonpartisan[merged_r3_data$q85 == 8] <- NA
merged_r3_data$nonpartisan[merged_r3_data$q85 == 9] <- NA

merged_r3_data$loser_party <- 0 
merged_r3_data$loser_party[merged_r3_data$winner_party == 0 & merged_r3_data$didnt_party == 0] <- 1







#____________________________________________________________________________________________
#__________________________WAVE 4 AFRO AFRO4 ________________________________________
#____________________________________________________________________________________________

#BENIN 
#INT DATE: JUN-JUL 08

#Voter Winner and Loser 
merged_r4_data$winner <- 0
merged_r4_data$winner[merged_r4_data$Q97 == 100] <- 1 #FORCE Cauris was the party associated with BONI (Independent) in the 2007 Parlimentary Election.

#Refused to and I don't know are dropped. They did not answer the question.
merged_r4_data$winner[merged_r4_data$Q97 == -1] <- NA
merged_r4_data$winner[merged_r4_data$Q97 == 998] <- NA 
merged_r4_data$winner[merged_r4_data$Q97 == 999] <- NA 

#Non Voter 
merged_r4_data$didnt_vote <- 0
merged_r4_data$didnt_vote[merged_r4_data$Q97 == 997] <- 1

#Loser
merged_r4_data$loser <- 0 
merged_r4_data$loser[merged_r4_data$winner == 0 & merged_r4_data$didnt_vote == 0 & merged_r4_data$COUNTRY == 1] <- 1

#Close Party Winner/Loser 
merged_r4_data$winner_party <- 0 
merged_r4_data$winner_party[merged_r4_data$Q86 == 100] <- 1 
merged_r4_data$winner_party[merged_r4_data$Q86 == -1] <- NA 
merged_r4_data$winner_party[merged_r4_data$Q86 == 997] <- 0 
merged_r4_data$winner_party[merged_r4_data$Q86 == 995] <- NA 
merged_r4_data$winner_party[merged_r4_data$Q86 == 998] <- NA 
merged_r4_data$winner_party[merged_r4_data$Q86 == 999] <- NA 
merged_r4_data$winner_party[merged_r4_data$Q85 == 9] <- NA 
merged_r4_data$winner_party[merged_r4_data$Q85 == 8] <- NA 
merged_r4_data$winner_party[merged_r4_data$Q85 == -1] <- NA 

merged_r4_data$loser_party <- 1 
merged_r4_data$loser_party[merged_r4_data$winner_party == 1] <- 0

merged_r4_data$nonpartisan <- 0
merged_r4_data$nonpartisan[merged_r4_data$Q85 == 0] <- 1
merged_r4_data$nonpartisan[merged_r4_data$Q85 == 8] <- NA
merged_r4_data$nonpartisan[merged_r4_data$Q85 == 9] <- NA

merged_r4_data$didnt_party <- 0
merged_r4_data$didnt_party[merged_r3_data$Q85 == 0] <- 1
merged_r4_data$didnt_party[merged_r3_data$Q85 == 8] <- NA
merged_r4_data$didnt_party[merged_r3_data$Q85 == 9] <- NA
merged_r4_data$didnt_party[merged_r3_data$Q85 == -1] <- NA

#Party Matching Vote
merged_r4_data$v2paid[merged_r4_data$Q97 == -1] <- NA 
merged_r4_data$v2paid[merged_r4_data$Q97 == 100] <- 2300 #FCBE
merged_r4_data$v2paid[merged_r4_data$Q97 == 101] <- 3831  #RB
merged_r4_data$v2paid[merged_r4_data$Q97 == 102] <- 2365 #PRD
merged_r4_data$v2paid[merged_r4_data$Q97 == 103] <- 2368 #PSD
merged_r4_data$v2paid[merged_r4_data$Q97 == 104] <- 5900 #MADEP
merged_r4_data$v2paid[merged_r4_data$Q97 == 105] <- NA  #PCB
merged_r4_data$v2paid[merged_r4_data$Q97 == 106] <- 6190 #FC
merged_r4_data$v2paid[merged_r4_data$Q97 == 107] <- 2366 #G13
merged_r4_data$v2paid[merged_r4_data$Q97 == 108] <- 7071 #ADD
merged_r4_data$v2paid[merged_r4_data$Q97 == 109] <- NA #ADR
merged_r4_data$v2paid[merged_r4_data$Q97 == 110] <- NA #AFP
merged_r4_data$v2paid[merged_r4_data$Q97 == 111] <- NA #ANFANNI
merged_r4_data$v2paid[merged_r4_data$Q97 == 112] <- NA #CTCC
merged_r4_data$v2paid[merged_r4_data$Q97 == 113] <- 4089 #FARD
merged_r4_data$v2paid[merged_r4_data$Q97 == 114] <- 7061 #FE
merged_r4_data$v2paid[merged_r4_data$Q97 == 115] <- NA #IPD
merged_r4_data$v2paid[merged_r4_data$Q97 == 117] <- NA #
merged_r4_data$v2paid[merged_r4_data$Q97 == 119] <- NA #
merged_r4_data$v2paid[merged_r4_data$Q97 == 120] <- 120 #UNSP
merged_r4_data$v2paid[merged_r4_data$Q97 == 121] <- 7060 #UPR
merged_r4_data$v2paid[merged_r4_data$Q97 == 122] <- NA #UTD

#Party Matching Close
merged_r4_data$v2paid_close[merged_r4_data$Q86 == -1] <- NA 
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 100] <- 2300 #FCBE
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 101] <- 3831  #RB
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 102] <- 2365 #PRD
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 103] <- 2368 #PSD
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 104] <- 5900 #MADEP
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 106] <- 6190 #FC
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 107] <- 2366 #G13
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 108] <- 7071 #ADD
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 113] <- 4089 #FARD
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 114] <- 7061 #FE
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 120] <- 120 #UNSP
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 121] <- 7060 #UPR

#PE measures
merged_r4_data$numparties[merged_r4_data$COUNTRY == 1] <-  5
merged_r4_data$numgroup[merged_r4_data$COUNTRY == 1] <- 4
merged_r4_data$groupsize1[merged_r4_data$COUNTRY == 1] <- .2696774    
merged_r4_data$groupsize2[merged_r4_data$COUNTRY == 1] <- .2116129
merged_r4_data$groupsize3[merged_r4_data$COUNTRY == 1] <- .316129
merged_r4_data$groupsize4[merged_r4_data$COUNTRY == 1] <- .2025806

merged_r4_data$VF[merged_r4_data$COUNTRY == 1] <- .2001861
merged_r4_data$VP[merged_r4_data$COUNTRY == 1] <- .2071819
merged_r4_data$PVF[merged_r4_data$COUNTRY == 1] <- .2117057
merged_r4_data$PVP[merged_r4_data$COUNTRY == 1] <- .3053496

#Vparty Year 
merged_r4_data$vparty_year[merged_r4_data$COUNTRY==1] <-  2007
merged_r4_data$year[merged_r4_data$COUNTRY==1] <- 2008
  
#Compet
merged_r4_data$proximity[merged_r4_data$COUNTRY==1] <-  2 #2008-2006
merged_r4_data$winning_party_share[merged_r4_data$COUNTRY==1] <- .746 
merged_r4_data$second_party_share[merged_r4_data$COUNTRY==1] <- .254   #AE data

#BOTSWANA  
#INT DATE: JUN-JUL 08

#Voter Winner and Loser 
merged_r4_data$winner[merged_r4_data$Q97 == 142] <- 1 

#Loser
merged_r4_data$loser[merged_r4_data$winner == 0 & merged_r4_data$didnt_vote == 0 & merged_r4_data$COUNTRY == 2] <- 1

#Close Party Winner/Loser 
merged_r4_data$winner_party[merged_r4_data$Q86 == 142] <- 1 

#Party Matching Vote
#merged_r4_data$v2paid[merged_r4_data$Q97 == -1] <- NA 
merged_r4_data$v2paid[merged_r4_data$Q97 == 140] <- NA #BA
merged_r4_data$v2paid[merged_r4_data$Q97 == 141] <- 2337 #bcp
merged_r4_data$v2paid[merged_r4_data$Q97 == 142] <- 2301 #bdp
merged_r4_data$v2paid[merged_r4_data$Q97 == 143] <- 2336 #nbf
merged_r4_data$v2paid[merged_r4_data$Q97 == 144] <- NA #MELS
merged_r4_data$v2paid[merged_r4_data$Q97 == 147] <- 3632  #BPP

#Party Matching Close
merged_r4_data$v2paid_close[merged_r4_data$Q86 == -1] <- NA 
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 140] <- NA #BA
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 141] <- 2337 #bcp
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 142] <- 2301 #bdp
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 143] <- 2336 #nbf
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 147] <- 3632  #BPP

#PE
merged_r4_data$numparties[merged_r4_data$COUNTRY == 2] <-  3
merged_r4_data$numgroup[merged_r4_data$COUNTRY == 2] <- 5
merged_r4_data$groupsize1[merged_r4_data$COUNTRY == 2] <- .8209237    
merged_r4_data$groupsize2[merged_r4_data$COUNTRY == 2] <- .0424128
merged_r4_data$groupsize3[merged_r4_data$COUNTRY == 2] <- .0829406
merged_r4_data$groupsize4[merged_r4_data$COUNTRY == 2] <- .0263902
merged_r4_data$groupsize5[merged_r4_data$COUNTRY == 2] <- .0273327


merged_r4_data$VF[merged_r4_data$COUNTRY == 2] <- .0545336
merged_r4_data$VP[merged_r4_data$COUNTRY == 2] <- .0842484
merged_r4_data$PVF[merged_r4_data$COUNTRY == 2] <- .037314
merged_r4_data$PVP[merged_r4_data$COUNTRY == 2] <- .0596222

#Vparty Year 
merged_r4_data$vparty_year[merged_r4_data$COUNTRY==2] <- 2004   
merged_r4_data$year[merged_r4_data$COUNTRY==2] <- 2008

#Compet
merged_r4_data$proximity[merged_r4_data$COUNTRY==2] <-  1 #2009-2008
merged_r4_data$winning_party_share[merged_r4_data$COUNTRY==2] <- .5173 
merged_r4_data$second_party_share[merged_r4_data$COUNTRY==2] <- .2606   #AE data

#BUKRINA FASO  
#INT DATE: OCT 08

#Voter Winner and Loser 
merged_r4_data$winner[merged_r4_data$Q97 == 180] <- 1 

#Loser
merged_r4_data$loser[merged_r4_data$winner == 0 & merged_r4_data$didnt_vote == 0 & merged_r4_data$COUNTRY == 3] <- 1

#Close Party Winner/Loser 
merged_r4_data$winner_party[merged_r4_data$Q86 == 180] <- 1 

#Party Matching Vote
#merged_r4_data$v2paid[merged_r4_data$Q97 == -1] <- NA 
merged_r4_data$v2paid[merged_r4_data$Q97 == 180] <- 4313 #CDP
merged_r4_data$v2paid[merged_r4_data$Q97 == 181] <- 4314 #ADF/RDA
merged_r4_data$v2paid[merged_r4_data$Q97 == 182] <- NA #UPR
merged_r4_data$v2paid[merged_r4_data$Q97 == 183] <- NA #UNIR/MS
merged_r4_data$v2paid[merged_r4_data$Q97 == 184] <- NA #CFD/B
merged_r4_data$v2paid[merged_r4_data$Q97 == 185] <- 4317 #PDS
merged_r4_data$v2paid[merged_r4_data$Q97 == 186] <- NA #PDP/PS 
merged_r4_data$v2paid[merged_r4_data$Q97 == 187] <- NA #RPD
merged_r4_data$v2paid[merged_r4_data$Q97 == 188] <- NA #UP
merged_r4_data$v2paid[merged_r4_data$Q97 == 189] <- NA #PAI
merged_r4_data$v2paid[merged_r4_data$Q97 == 190] <- NA #PAREN
merged_r4_data$v2paid[merged_r4_data$Q97 == 191] <- NA #RPC
merged_r4_data$v2paid[merged_r4_data$Q97 == 191] <- NA #UDPS

#Party Matching Close
merged_r4_data$v2paid_close[merged_r4_data$Q86 == -1] <- NA 
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 180] <- 4313 #CDP
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 181] <- 4314 #ADF/RDA
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 1185] <- 4317 #PDS
#merged_r4_data$v2paid_close[merged_r4_data$Q86 == ] <-  #
#merged_r4_data$v2paid_close[merged_r4_data$Q86 == ] <-   #

#Vparty Year 
merged_r4_data$vparty_year[merged_r4_data$COUNTRY==3] <- 2007    
merged_r4_data$year[merged_r4_data$COUNTRY==3] <- 2008

#Compet
merged_r4_data$proximity[merged_r4_data$COUNTRY==3] <- 2  #2010-2008
merged_r4_data$winning_party_share[merged_r4_data$COUNTRY==3] <- .8035  
merged_r4_data$second_party_share[merged_r4_data$COUNTRY==3] <- .0488   #AE data





#CAPE VERDE SKIP

##             Ghana
#Mar 08 Interview

#Voter Winner and Loser 
merged_r4_data$winner[merged_r4_data$Q97 == 262] <- 1 

#Loser
merged_r4_data$loser[merged_r4_data$winner == 0 & merged_r4_data$didnt_vote == 0 & merged_r4_data$COUNTRY == 5] <- 1

#Close Party Winner/Loser 
merged_r4_data$winner_party[merged_r4_data$Q86 == 262] <- 1 

#Party Matching Vote
#merged_r4_data$v2paid[merged_r4_data$Q97 == -1] <- NA 
merged_r4_data$v2paid[merged_r4_data$Q97 == 260] <- 3660 #CPP
merged_r4_data$v2paid[merged_r4_data$Q97 == 261] <- 4314 #NDC
merged_r4_data$v2paid[merged_r4_data$Q97 == 262] <- 2312 #NPP
merged_r4_data$v2paid[merged_r4_data$Q97 == 263] <- NA #PNC
merged_r4_data$v2paid[merged_r4_data$Q97 == 264] <- NA #NRP
merged_r4_data$v2paid[merged_r4_data$Q97 == 265] <- NA #DFP
#merged_r4_data$v2paid[merged_r4_data$Q97 == ] <- NA #
#merged_r4_data$v2paid[merged_r4_data$Q97 == ] <- NA #
#merged_r4_data$v2paid[merged_r4_data$Q97 == ] <- NA #
#merged_r4_data$v2paid[merged_r4_data$Q97 == ] <- NA #
#merged_r4_data$v2paid[merged_r4_data$Q97 == ] <- NA #
#merged_r4_data$v2paid[merged_r4_data$Q97 == ] <- NA #
#merged_r4_data$v2paid[merged_r4_data$Q97 == ] <- NA #

#Party Matching Close
merged_r4_data$v2paid_close[merged_r4_data$Q86 == -1] <- NA 
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 260] <- 3660 #CPP
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 261] <- 4314 #NDC
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 262] <- 2312 #NPP

#PE
merged_r4_data$numparties[merged_r4_data$COUNTRY == 5] <- 3 
merged_r4_data$numgroup[merged_r4_data$COUNTRY == 5] <- 4
merged_r4_data$groupsize1[merged_r4_data$COUNTRY == 5] <- .2286501     
merged_r4_data$groupsize2[merged_r4_data$COUNTRY == 5] <- .4325069
merged_r4_data$groupsize3[merged_r4_data$COUNTRY == 5] <- .2176308
merged_r4_data$groupsize4[merged_r4_data$COUNTRY == 5] <- .1212121


merged_r4_data$VF[merged_r4_data$COUNTRY == 5] <- .2345792
merged_r4_data$VP[merged_r4_data$COUNTRY == 5] <- .2562568
merged_r4_data$PVF[merged_r4_data$COUNTRY == 5] <- .1556077
merged_r4_data$PVP[merged_r4_data$COUNTRY == 5] <- .2913474

#Vparty Year 
merged_r4_data$vparty_year[merged_r4_data$COUNTRY==5] <- 2004   
merged_r4_data$year[merged_r4_data$COUNTRY==5] <- 2008

#Compet
merged_r4_data$proximity[merged_r4_data$COUNTRY==5] <- 0 #2008-2008
merged_r4_data$winning_party_share[merged_r4_data$COUNTRY==5] <- .5245   
merged_r4_data$second_party_share[merged_r4_data$COUNTRY==5] <- .4464 #https://swap.stanford.edu/20121211163203/http%3A//results.ec.gov.gh/assets/file/2004ParliamentaryDetResults.pdf



##        Kenya
#Oct-Nov 08 Interview
#Voter Winner and Loser 
merged_r4_data$winner[merged_r4_data$Q97 == 302] <- 1
merged_r4_data$winner[merged_r4_data$Q97 == 301] <- 1 


#Loser
merged_r4_data$loser[merged_r4_data$winner == 0 & merged_r4_data$didnt_vote == 0 & merged_r4_data$COUNTRY == 6] <- 1

#Close Party Winner/Loser 
merged_r4_data$winner_party[merged_r4_data$Q86 == 302] <- 1 
merged_r4_data$winner_party[merged_r4_data$Q86 == 301] <- 1 


#Party Matching Vote
#merged_r4_data$v2paid[merged_r4_data$Q97 == -1] <- NA 
merged_r4_data$v2paid[merged_r4_data$Q97 == 300] <- 2360 #ODM
merged_r4_data$v2paid[merged_r4_data$Q97 == 301] <- 2360 #ODM
merged_r4_data$v2paid[merged_r4_data$Q97 == 302] <- 2359 #PNU
merged_r4_data$v2paid[merged_r4_data$Q97 == 303] <- 5834 #NARC
merged_r4_data$v2paid[merged_r4_data$Q97 == 304] <- 5834 #NARC (Kenya)
merged_r4_data$v2paid[merged_r4_data$Q97 == 305] <- 3860 #DP
merged_r4_data$v2paid[merged_r4_data$Q97 == 306] <- 3863 #FORD-K
merged_r4_data$v2paid[merged_r4_data$Q97 == 308] <- 2316 #KANU
merged_r4_data$v2paid[merged_r4_data$Q97 == 311] <- 3862 #FORD-A
merged_r4_data$v2paid[merged_r4_data$Q97 == 314] <- 4083 #KADU
merged_r4_data$v2paid[merged_r4_data$Q97 == 315] <- NA #KADUU-Asili different than KADU 
#merged_r4_data$v2paid[merged_r4_data$Q97 == ] <- NA #
#merged_r4_data$v2paid[merged_r4_data$Q97 == ] <- NA #

#Party Matching Close
merged_r4_data$v2paid_close[merged_r4_data$Q86 == -1] <- NA 
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 300] <- 2360 #ODM
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 301] <- 2360 #ODM
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 302] <- 2359 #PNU
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 303] <- 5834 #NARC
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 304] <- 5834 #NARC (Kenya)
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 305] <- 3860 #DP
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 306] <- 3863 #FORD-K
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 308] <- 2316 #KANU
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 311] <- 3862 #FORD-A
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 315] <- NA #KADUU-Asili different than KADU 

#PE
merged_r4_data$numparties[merged_r4_data$COUNTRY == 6] <- 4
merged_r4_data$numgroup[merged_r4_data$COUNTRY == 6] <- 8
merged_r4_data$groupsize1[merged_r4_data$COUNTRY == 6] <- .2275785      
merged_r4_data$groupsize2[merged_r4_data$COUNTRY == 6] <- .17713
merged_r4_data$groupsize3[merged_r4_data$COUNTRY == 6] <- .1378924
merged_r4_data$groupsize4[merged_r4_data$COUNTRY == 6] <- .1793722
merged_r4_data$groupsize5[merged_r4_data$COUNTRY == 6] <- .0941704
merged_r4_data$groupsize6[merged_r4_data$COUNTRY == 6] <- .0773543
merged_r4_data$groupsize7[merged_r4_data$COUNTRY == 6] <- .0347534
merged_r4_data$groupsize8[merged_r4_data$COUNTRY == 6] <- .0717489

merged_r4_data$VF[merged_r4_data$COUNTRY == 6] <- .3714397
merged_r4_data$VP[merged_r4_data$COUNTRY == 6] <- .2396747
merged_r4_data$PVF[merged_r4_data$COUNTRY == 6] <- .2676533
merged_r4_data$PVP[merged_r4_data$COUNTRY == 6] <- .4139934

#Vparty Year 
merged_r4_data$vparty_year[merged_r4_data$COUNTRY==6] <- 2007  
merged_r4_data$year[merged_r4_data$COUNTRY==6] <- 2008 #nov

#Compet
merged_r4_data$proximity[merged_r4_data$COUNTRY==6] <- 1 #2008-2007
merged_r4_data$winning_party_share[merged_r4_data$COUNTRY==6] <- .4642   
merged_r4_data$second_party_share[merged_r4_data$COUNTRY==6] <- .4407 #AE data


##        Lesotho Dropped No Ethnic Groups

##        Liberia 
#DEC - FEB 08-09 Interview
#Voter Winner and Loser 
merged_r4_data$winner[merged_r4_data$Q97 == 409] <- 1 
merged_r4_data$winner[merged_r4_data$Q97 == 386] <- 1 
merged_r4_data$winner[merged_r4_data$Q97 == 396] <- 1 

#Loser
merged_r4_data$loser[merged_r4_data$winner == 0 & merged_r4_data$didnt_vote == 0 & merged_r4_data$COUNTRY == 8] <- 1

#Close Party Winner/Loser 
merged_r4_data$winner_party[merged_r4_data$Q86 == 409] <- 1 
merged_r4_data$winner_party[merged_r4_data$Q86 == 386] <- 1 
merged_r4_data$winner_party[merged_r4_data$Q86 == 396] <- 1 

#Party Matching Vote
#merged_r4_data$v2paid[merged_r4_data$Q97 == -1] <- NA 
merged_r4_data$v2paid[merged_r4_data$Q97 == 380] <- NA #ALCOP
merged_r4_data$v2paid[merged_r4_data$Q97 == 381] <- 4136 #CDC
merged_r4_data$v2paid[merged_r4_data$Q97 == 382] <- NA #FDP
merged_r4_data$v2paid[merged_r4_data$Q97 == 385] <- NA #LPL
merged_r4_data$v2paid[merged_r4_data$Q97 == 386] <- 5376 #LAP
merged_r4_data$v2paid[merged_r4_data$Q97 == 387] <- NA #LDP
merged_r4_data$v2paid[merged_r4_data$Q97 == 389] <- NA #LERP
merged_r4_data$v2paid[merged_r4_data$Q97 == 392] <- 5870 #LPP
merged_r4_data$v2paid[merged_r4_data$Q97 == 393] <- 4139 #LP
merged_r4_data$v2paid[merged_r4_data$Q97 == 394] <- 4143 #NDPL
merged_r4_data$v2paid[merged_r4_data$Q97 == 396] <- 4142 #NPP
merged_r4_data$v2paid[merged_r4_data$Q97 == 401] <- NA #PPP
merged_r4_data$v2paid[merged_r4_data$Q97 == 404] <- NA #NEW DEAL
merged_r4_data$v2paid[merged_r4_data$Q97 == 408] <- 5991 #UPP
merged_r4_data$v2paid[merged_r4_data$Q97 == 409] <- 4140 #UPP

#Party Matching Close
merged_r4_data$v2paid_close[merged_r4_data$Q86 == -1] <- NA 
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 381] <- 4136 #CDC
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 386] <- 5376 #LAP
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 392] <- 5870 #LPP
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 393] <- 4139 #LP
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 394] <- 4143 #NDPL
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 396] <- 4142 #NPP
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 408] <- 5991 #UPP
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 409] <- 4140 #UPP

#PE
merged_r4_data$numparties[merged_r4_data$COUNTRY == 8] <- 5
merged_r4_data$numgroup[merged_r4_data$COUNTRY == 8] <- 5
merged_r4_data$groupsize1[merged_r4_data$COUNTRY == 8] <- .2765957       
merged_r4_data$groupsize2[merged_r4_data$COUNTRY == 8] <- .2925532
merged_r4_data$groupsize3[merged_r4_data$COUNTRY == 8] <- .2287234
merged_r4_data$groupsize4[merged_r4_data$COUNTRY == 8] <- .1276596
merged_r4_data$groupsize5[merged_r4_data$COUNTRY == 8] <- .0744681

merged_r4_data$VF[merged_r4_data$COUNTRY == 8] <- .2256796
merged_r4_data$VP[merged_r4_data$COUNTRY == 8] <- .1992542
merged_r4_data$PVF[merged_r4_data$COUNTRY == 8] <- .1707559
merged_r4_data$PVP[merged_r4_data$COUNTRY == 8] <- .2426993

#Vparty Year 
merged_r4_data$vparty_year[merged_r4_data$COUNTRY==8] <- 2005   
merged_r4_data$year[merged_r4_data$COUNTRY==8] <- 2008 #dec

#Compet
merged_r4_data$proximity[merged_r4_data$COUNTRY==8] <- 3 #2008-2005
merged_r4_data$winning_party_share[merged_r4_data$COUNTRY==8] <- .594   
merged_r4_data$second_party_share[merged_r4_data$COUNTRY==8] <- .4060 #https://www.necliberia.org/results/


## Madagascar
#Interview May-June 08
#Voter Winner and Loser 
merged_r4_data$winner[merged_r4_data$Q97 == 420] <- 1 

#Loser
merged_r4_data$loser[merged_r4_data$winner == 0 & merged_r4_data$didnt_vote == 0 & merged_r4_data$COUNTRY == 9] <- 1

#Close Party Winner/Loser 
merged_r4_data$winner_party[merged_r4_data$Q86 == 420] <- 1 

#Party Matching Vote
#merged_r4_data$v2paid[merged_r4_data$Q97 == -1] <- NA 
merged_r4_data$v2paid[merged_r4_data$Q97 == 420] <- 5201 #TIM
merged_r4_data$v2paid[merged_r4_data$Q97 == 421] <- 5311 #AREMA
merged_r4_data$v2paid[merged_r4_data$Q97 == 422] <- NA #AFFA (CRN)
merged_r4_data$v2paid[merged_r4_data$Q97 == 423] <- NA #RPSD - VAOVAO
merged_r4_data$v2paid[merged_r4_data$Q97 == 424] <- 6086 #RPSD
merged_r4_data$v2paid[merged_r4_data$Q97 == 425] <- 5370 #LEADER - FANILO
merged_r4_data$v2paid[merged_r4_data$Q97 == 426] <- 5373 #AVI
merged_r4_data$v2paid[merged_r4_data$Q97 == 427] <- NA #AKFM
merged_r4_data$v2paid[merged_r4_data$Q97 == 429] <- NA #TEZA
merged_r4_data$v2paid[merged_r4_data$Q97 == 430] <- NA #GRAD ILOAFO
merged_r4_data$v2paid[merged_r4_data$Q97 == 431] <- 5869 #UNDD
merged_r4_data$v2paid[merged_r4_data$Q97 == 432] <- 5838 #MFM
merged_r4_data$v2paid[merged_r4_data$Q97 == 435] <- NA #Mahaleo Tena
merged_r4_data$v2paid[merged_r4_data$Q97 == 436] <- NA #TGV
merged_r4_data$v2paid[merged_r4_data$Q97 == 437] <- NA #Toamasina Tonga Saina
merged_r4_data$v2paid[merged_r4_data$Q97 == 438] <- NA #Tambatra
merged_r4_data$v2paid[merged_r4_data$Q97 == 439] <- NA #PSD Premier Republique
merged_r4_data$v2paid[merged_r4_data$Q97 == 441] <- NA #Lahiniriko

#Party Matching Close
merged_r4_data$v2paid_close[merged_r4_data$Q86 == -1] <- NA 
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 420] <- 5201 #TIM
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 421] <- 5311 #AREMA
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 424] <- 6086 #RPSD
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 425] <- 5370 #LEADER - FANILO
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 426] <- 5373 #AVI
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 431] <- 5869 #UNDD
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 432] <- 5838 #MFM
#merged_r4_data$v2paid_close[merged_r4_data$Q86 == 409] <- 4140 #UPP

#PE
merged_r4_data$numparties[merged_r4_data$COUNTRY == 9] <- 6
merged_r4_data$numgroup[merged_r4_data$COUNTRY == 9] <- 2
merged_r4_data$groupsize1[merged_r4_data$COUNTRY == 9] <- .8291317        
merged_r4_data$groupsize2[merged_r4_data$COUNTRY == 9] <- .1708684


merged_r4_data$VF[merged_r4_data$COUNTRY == 9] <- .0242228
merged_r4_data$VP[merged_r4_data$COUNTRY == 9] <- .0484455
merged_r4_data$PVF[merged_r4_data$COUNTRY == 9] <- .0507811
merged_r4_data$PVP[merged_r4_data$COUNTRY == 9] <- .0794919

#Vparty Year 
merged_r4_data$vparty_year[merged_r4_data$COUNTRY==9] <- 2007   
merged_r4_data$year[merged_r4_data$COUNTRY==9] <- 2008 #june

#Compet
merged_r4_data$proximity[merged_r4_data$COUNTRY==9] <- 2 #2008-2006
merged_r4_data$winning_party_share[merged_r4_data$COUNTRY==9] <- .5479    
merged_r4_data$second_party_share[merged_r4_data$COUNTRY==9] <- .1165 #AE data

## Malawi
#Interview Oct 08
#Voter Winner and Loser 
merged_r4_data$winner[merged_r4_data$Q97 == 469] <- 1 

#Loser
merged_r4_data$loser[merged_r4_data$winner == 0 & merged_r4_data$didnt_vote == 0 & merged_r4_data$COUNTRY == 10] <- 1

#Close Party Winner/Loser 
merged_r4_data$winner_party[merged_r4_data$Q86 == 469] <- 1 

#Party Matching Vote
#merged_r4_data$v2paid[merged_r4_data$Q97 == -1] <- NA 
merged_r4_data$v2paid[merged_r4_data$Q97 == 460] <- 3733 #AFROD
merged_r4_data$v2paid[merged_r4_data$Q97 == 461] <- 4846 #DPP
merged_r4_data$v2paid[merged_r4_data$Q97 == 462] <- NA #MAFUNDE
merged_r4_data$v2paid[merged_r4_data$Q97 == 463] <- 3732 #MCP
merged_r4_data$v2paid[merged_r4_data$Q97 == 465] <- NA #NEW RP
merged_r4_data$v2paid[merged_r4_data$Q97 == 467] <- NA #PPM
merged_r4_data$v2paid[merged_r4_data$Q97 == 468] <- 3737 #RP
merged_r4_data$v2paid[merged_r4_data$Q97 == 469] <- 3734 #UDF


#Party Matching Close
merged_r4_data$v2paid_close[merged_r4_data$Q86 == -1] <- NA 
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 460] <- 3733 #AFROD
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 461] <- 4846 #DPP
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 462] <- NA #MAFUNDE
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 463] <- 3732 #MCP
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 465] <- NA #NEW RP
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 467] <- NA #PPM
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 468] <- 3737 #RP
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 469] <- 3734 #UDF

#PE
merged_r4_data$numparties[merged_r4_data$COUNTRY == 10] <- 3 
merged_r4_data$numgroup[merged_r4_data$COUNTRY == 10] <- 3
merged_r4_data$groupsize1[merged_r4_data$COUNTRY == 10] <- .3603276         
merged_r4_data$groupsize2[merged_r4_data$COUNTRY == 10] <- .3639672
merged_r4_data$groupsize3[merged_r4_data$COUNTRY == 10] <- .2757052

merged_r4_data$VF[merged_r4_data$COUNTRY == 10] <- .1055036
merged_r4_data$VP[merged_r4_data$COUNTRY == 10] <- .1429119
merged_r4_data$PVF[merged_r4_data$COUNTRY == 10] <- .1429119
merged_r4_data$PVP[merged_r4_data$COUNTRY == 10] <- .1429119

#Vparty Year 
merged_r4_data$vparty_year[merged_r4_data$COUNTRY== 10] <- 2004  
merged_r4_data$year[merged_r4_data$COUNTRY== 10] <- 2008 #june

#Compet
merged_r4_data$proximity[merged_r4_data$COUNTRY==10] <- 1 #2009-2008
merged_r4_data$winning_party_share[merged_r4_data$COUNTRY==10] <- .3597    
merged_r4_data$second_party_share[merged_r4_data$COUNTRY==10] <- .2822 #https://www.cmi.no/publications/file/2541-the-institutional-context-of-the-2004-general.pdf

## Mali
#Interview DEC 08
#Voter Winner and Loser 
merged_r4_data$winner[merged_r4_data$Q97 == 515] <- 1 
merged_r4_data$winner[merged_r4_data$Q97 == 500] <- 1 
merged_r4_data$winner[merged_r4_data$Q97 == 513] <- 1 
merged_r4_data$winner[merged_r4_data$Q97 == 507] <- 1 
merged_r4_data$winner[merged_r4_data$Q97 == 504] <- 1 
merged_r4_data$winner[merged_r4_data$Q97 == 512] <- 1 
merged_r4_data$winner[merged_r4_data$Q97 == 509] <- 1 
merged_r4_data$winner[merged_r4_data$Q97 == 506] <- 1 
merged_r4_data$winner[merged_r4_data$Q97 == 502] <- 1 
merged_r4_data$winner[merged_r4_data$Q97 == 514] <- 1 

#Loser
merged_r4_data$loser[merged_r4_data$winner == 0 & merged_r4_data$didnt_vote == 0 & merged_r4_data$COUNTRY == 11] <- 1

#Close Party Winner/Loser 
merged_r4_data$winner_party[merged_r4_data$Q86 == 515] <- 1 
merged_r4_data$winner_party[merged_r4_data$Q86 == 500] <- 1 
merged_r4_data$winner_party[merged_r4_data$Q86 == 513] <- 1 
merged_r4_data$winner_party[merged_r4_data$Q86 == 507] <- 1 
merged_r4_data$winner_party[merged_r4_data$Q86 == 504] <- 1 
merged_r4_data$winner_party[merged_r4_data$Q86 == 512] <- 1 
merged_r4_data$winner_party[merged_r4_data$Q86 == 509] <- 1 
merged_r4_data$winner_party[merged_r4_data$Q86 == 506] <- 1 
merged_r4_data$winner_party[merged_r4_data$Q86 == 502] <- 1 
merged_r4_data$winner_party[merged_r4_data$Q86 == 514] <- 1 


#Party Matching Vote
#merged_r4_data$v2paid[merged_r4_data$Q97 == -1] <- NA 
merged_r4_data$v2paid[merged_r4_data$Q97 == 500] <- 2477 #ADEMA
merged_r4_data$v2paid[merged_r4_data$Q97 == 501] <- NA #BARA
merged_r4_data$v2paid[merged_r4_data$Q97 == 502] <- NA #BDIA
merged_r4_data$v2paid[merged_r4_data$Q97 == 503] <- NA #CDS
merged_r4_data$v2paid[merged_r4_data$Q97 == 504] <- 2478 #CNID
merged_r4_data$v2paid[merged_r4_data$Q97 == 505] <- NA #LSJ
merged_r4_data$v2paid[merged_r4_data$Q97 == 506] <- NA #MIRIA
merged_r4_data$v2paid[merged_r4_data$Q97 == 507] <- 6085 #MPR
merged_r4_data$v2paid[merged_r4_data$Q97 == 508] <- 6084 #PARENA
merged_r4_data$v2paid[merged_r4_data$Q97 == 509] <- 6448 #PSP
merged_r4_data$v2paid[merged_r4_data$Q97 == 510] <- 2319 #RPM
merged_r4_data$v2paid[merged_r4_data$Q97 == 511] <- NA #SADI
merged_r4_data$v2paid[merged_r4_data$Q97 == 512] <- 6448 #PSP
merged_r4_data$v2paid[merged_r4_data$Q97 == 513] <- 2476 #URD
merged_r4_data$v2paid[merged_r4_data$Q97 == 514] <- 2475 #US-RDA
merged_r4_data$v2paid[merged_r4_data$Q97 == 515] <- NA #Toure's movement
merged_r4_data$v2paid[merged_r4_data$Q97 == 516] <- NA #IN
merged_r4_data$v2paid[merged_r4_data$Q97 == 517] <- NA #BARICA

#Party Matching Close
merged_r4_data$v2paid_close[merged_r4_data$Q86 == -1] <- NA 
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 500] <- 2477 #ADEMA
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 504] <- 2478 #CNID
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 507] <- 6085 #MPR
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 508] <- 6084 #PARENA
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 509] <- 6448 #PSP
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 510] <- 2319 #RPM
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 512] <- 6448 #PSP
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 513] <- 2476 #URD
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 514] <- 2475 #US-RDA

#PE
merged_r4_data$numparties[merged_r4_data$COUNTRY == 11] <- 7  
merged_r4_data$numgroup[merged_r4_data$COUNTRY == 11] <- 2
merged_r4_data$groupsize1[merged_r4_data$COUNTRY == 11] <- .0248366          
merged_r4_data$groupsize2[merged_r4_data$COUNTRY == 11] <- .9751634

merged_r4_data$VF[merged_r4_data$COUNTRY == 11] <- .0213993
merged_r4_data$VP[merged_r4_data$COUNTRY == 11] <- .0427986
merged_r4_data$PVF[merged_r4_data$COUNTRY == 11] <- .0316699
merged_r4_data$PVP[merged_r4_data$COUNTRY == 11] <- .0269426
  
  #Vparty Year 
merged_r4_data$vparty_year[merged_r4_data$COUNTRY== 11] <- 2004  
merged_r4_data$year[merged_r4_data$COUNTRY== 11] <- 2008 #june

#Compet
merged_r4_data$proximity[merged_r4_data$COUNTRY==11] <- 1 #2008-2007
merged_r4_data$winning_party_share[merged_r4_data$COUNTRY==11] <- .712    
merged_r4_data$second_party_share[merged_r4_data$COUNTRY==11] <- .1915  #AE data

##                          Mozambique
#Interview DEC 08
#Voter Winner and Loser 
merged_r4_data$winner[merged_r4_data$Q97 == 540] <- 1 

#Loser
merged_r4_data$loser[merged_r4_data$winner == 0 & merged_r4_data$didnt_vote == 0 & merged_r4_data$COUNTRY == 12] <- 1

#Close Party Winner/Loser
merged_r4_data$winner_party[merged_r4_data$Q86 == 540] <- 1 

#Party Matching Vote
#merged_r4_data$v2paid[merged_r4_data$Q97 == -1] <- NA 
merged_r4_data$v2paid[merged_r4_data$Q97 == 540] <- 2314 #FREMILO
merged_r4_data$v2paid[merged_r4_data$Q97 == 541] <- 2315 #RENAMO
merged_r4_data$v2paid[merged_r4_data$Q97 == 542] <- NA #PDD

#Party Matching Close
merged_r4_data$v2paid_close[merged_r4_data$Q86 == -1] <- NA 
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 540] <- 2314 #FREMILO
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 541] <- 2315 #RENAMO
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 542] <- NA #PDD

##                          Namibia 
#Interview OCT-DEC 08
#Voter Winner and Loser 
merged_r4_data$winner[merged_r4_data$Q97 == 590] <- 1 

#Loser
merged_r4_data$loser[merged_r4_data$winner == 0 & merged_r4_data$didnt_vote == 0 & merged_r4_data$COUNTRY == 13] <- 1

#Close Party Winner/Loser
merged_r4_data$winner_party[merged_r4_data$Q86 == 590] <- 1 

#Party Matching Vote
#merged_r4_data$v2paid[merged_r4_data$Q97 == -1] <- NA 
merged_r4_data$v2paid[merged_r4_data$Q97 == 580] <- NA #APP
merged_r4_data$v2paid[merged_r4_data$Q97 == 581] <- 2358 #CD
merged_r4_data$v2paid[merged_r4_data$Q97 == 582] <- 2356 #DTA
merged_r4_data$v2paid[merged_r4_data$Q97 == 583] <- NA #MAG
merged_r4_data$v2paid[merged_r4_data$Q97 == 584] <- NA #NDMC
merged_r4_data$v2paid[merged_r4_data$Q97 == 585] <- NA #NUDO
merged_r4_data$v2paid[merged_r4_data$Q97 == 586] <- NA #NDP
merged_r4_data$v2paid[merged_r4_data$Q97 == 587] <- 4895 #RDP
merged_r4_data$v2paid[merged_r4_data$Q97 == 588] <- NA #RP
merged_r4_data$v2paid[merged_r4_data$Q97 == 589] <- NA #SWANU
merged_r4_data$v2paid[merged_r4_data$Q97 == 590] <- 2331 #SWAPO
merged_r4_data$v2paid[merged_r4_data$Q97 == 591] <- 2355 #UDF

#Party Matching Close
merged_r4_data$v2paid_close[merged_r4_data$Q86 == -1] <- NA 
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 581] <- 2358 #CD
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 582] <- 2356 #DTA
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 587] <- 4895 #RDP
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 590] <- 2331 #SWAPO
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 591] <- 2355 #UDF

#PE
merged_r4_data$numparties[merged_r4_data$COUNTRY == 13] <- 7 
merged_r4_data$numgroup[merged_r4_data$COUNTRY == 13] <- 6
merged_r4_data$groupsize1[merged_r4_data$COUNTRY == 13] <- .618929
merged_r4_data$groupsize2[merged_r4_data$COUNTRY == 13] <- .1232877
merged_r4_data$groupsize3[merged_r4_data$COUNTRY == 13] <- .0871731
merged_r4_data$groupsize4[merged_r4_data$COUNTRY == 13] <- .0622665
merged_r4_data$groupsize5[merged_r4_data$COUNTRY == 13] <- .0797011
merged_r4_data$groupsize6[merged_r4_data$COUNTRY == 13] <- .0286426

merged_r4_data$VF[merged_r4_data$COUNTRY == 13] <- .1860461
merged_r4_data$VP[merged_r4_data$COUNTRY == 13] <- .2294172
merged_r4_data$PVF[merged_r4_data$COUNTRY == 13] <- .2034093
merged_r4_data$PVP[merged_r4_data$COUNTRY == 13] <- .265225

#Vparty Year 
merged_r4_data$vparty_year[merged_r4_data$COUNTRY== 13] <- 2004  
merged_r4_data$year[merged_r4_data$COUNTRY== 13] <- 2008 #dec

#Compet
merged_r4_data$proximity[merged_r4_data$COUNTRY==13] <- 1 #2009-2008
merged_r4_data$winning_party_share[merged_r4_data$COUNTRY==13] <- .7644     
merged_r4_data$second_party_share[merged_r4_data$COUNTRY==13] <- .0728 #https://web.archive.org/web/20141025201326/http://www.gov.na/documents/10181/13120/2004_presidential_and_national_assembly_election.pdf/5c40cfab-03b4-4563-998e-73450a6140fb


##                          NIGERIA 
#Interview May 08
#Voter Winner and Loser 
merged_r4_data$winner[merged_r4_data$Q97 == 623] <- 1 

#Loser
merged_r4_data$loser[merged_r4_data$winner == 0 & merged_r4_data$didnt_vote == 0 & merged_r4_data$COUNTRY == 14] <- 1

#Close Party Winner/Loser
merged_r4_data$winner_party[merged_r4_data$Q86 == 623] <- 1 

#Party Matching Vote
#merged_r4_data$v2paid[merged_r4_data$Q97 == -1] <- NA 
merged_r4_data$v2paid[merged_r4_data$Q97 == 620] <- 2313 #ANPP
merged_r4_data$v2paid[merged_r4_data$Q97 == 621] <- 2353 #AC
merged_r4_data$v2paid[merged_r4_data$Q97 == 622] <- 4116 #AD
merged_r4_data$v2paid[merged_r4_data$Q97 == 623] <- 2354 #PDP
merged_r4_data$v2paid[merged_r4_data$Q97 == 624] <- NA #APGA
merged_r4_data$v2paid[merged_r4_data$Q97 == 625] <- NA #DPA
merged_r4_data$v2paid[merged_r4_data$Q97 == 626] <- NA #LP
merged_r4_data$v2paid[merged_r4_data$Q97 == 627] <- NA #PPA
merged_r4_data$v2paid[merged_r4_data$Q97 == 628] <- NA #FRESH
merged_r4_data$v2paid[merged_r4_data$Q97 == 629] <- NA #NDP
merged_r4_data$v2paid[merged_r4_data$Q97 == 630] <- NA #AA
merged_r4_data$v2paid[merged_r4_data$Q97 == 631] <- NA #DPP
merged_r4_data$v2paid[merged_r4_data$Q97 == 632] <- NA #ACD

#Party Matching Close
merged_r4_data$v2paid_close[merged_r4_data$Q86 == -1] <- NA 
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 620] <- 2313 #ANPP
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 621] <- 2353 #AC
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 622] <- 4116 #AD
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 623] <- 2354 #PDP
#merged_r4_data$v2paid_close[merged_r4_data$Q86 == 591] <- 2355 #UDF

#PE
merged_r4_data$numparties[merged_r4_data$COUNTRY == 14] <- 4  
merged_r4_data$numgroup[merged_r4_data$COUNTRY == 14] <- 4
merged_r4_data$groupsize1[merged_r4_data$COUNTRY == 14] <- .5460386 
merged_r4_data$groupsize2[merged_r4_data$COUNTRY == 14] <- .2237687
merged_r4_data$groupsize3[merged_r4_data$COUNTRY == 14] <- .1927195
merged_r4_data$groupsize4[merged_r4_data$COUNTRY == 14] <- .0374732

merged_r4_data$VF[merged_r4_data$COUNTRY == 14] <- .2361837
merged_r4_data$VP[merged_r4_data$COUNTRY == 14] <- .3286878
merged_r4_data$PVF[merged_r4_data$COUNTRY == 14] <- .2788527
merged_r4_data$PVP[merged_r4_data$COUNTRY == 14] <- .3350028

#Vparty Year 
merged_r4_data$vparty_year[merged_r4_data$COUNTRY== 14] <- 2007   
merged_r4_data$year[merged_r4_data$COUNTRY== 14] <- 2008 #may

#Compet
merged_r4_data$proximity[merged_r4_data$COUNTRY==14] <- 1 #2008-2007
merged_r4_data$winning_party_share[merged_r4_data$COUNTRY==14] <- .6960     
merged_r4_data$second_party_share[merged_r4_data$COUNTRY==14] <- .1866  #AE data


##                          Senegal 
#Interview May-Jun 08
#Voter Winner and Loser 
merged_r4_data$winner[merged_r4_data$Q97 == 660] <- 1 

#Loser
merged_r4_data$loser[merged_r4_data$winner == 0 & merged_r4_data$didnt_vote == 0 & merged_r4_data$COUNTRY == 15] <- 1

#Close Party Winner/Loser
merged_r4_data$winner_party[merged_r4_data$Q86 == 660] <- 1 

#Party Matching Vote
#merged_r4_data$v2paid[merged_r4_data$Q97 == -1] <- NA 
merged_r4_data$v2paid[merged_r4_data$Q97 == 660] <- 2329 #PDS
merged_r4_data$v2paid[merged_r4_data$Q97 == 661] <- 2380 #PS
merged_r4_data$v2paid[merged_r4_data$Q97 == 662] <- 2379 #AFP
merged_r4_data$v2paid[merged_r4_data$Q97 == 663] <- 6462 #URD
merged_r4_data$v2paid[merged_r4_data$Q97 == 664] <- 2382 #AP/PADS
merged_r4_data$v2paid[merged_r4_data$Q97 == 665] <- NA #PIT
merged_r4_data$v2paid[merged_r4_data$Q97 == 666] <- NA #Jef Jel (non-profit)
merged_r4_data$v2paid[merged_r4_data$Q97 == 667] <- NA #LD/MPT
merged_r4_data$v2paid[merged_r4_data$Q97 == 668] <- NA #TDS
merged_r4_data$v2paid[merged_r4_data$Q97 == 669] <- NA #RP
merged_r4_data$v2paid[merged_r4_data$Q97 == 670] <- NA #Rewmi
merged_r4_data$v2paid[merged_r4_data$Q97 == 671] <- NA #PSA
merged_r4_data$v2paid[merged_r4_data$Q97 == 672] <- NA #FSDBJ
merged_r4_data$v2paid[merged_r4_data$Q97 == 673] <- NA #PR

#Party Matching Close
merged_r4_data$v2paid_close[merged_r4_data$Q86 == -1] <- NA 
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 660] <- 2329 #PDS
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 661] <- 2380 #PS
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 662] <- 2379 #AFP
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 663] <- 6462 #URD
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 664] <- 2382 #AP/PADS

#PE
merged_r4_data$numparties[merged_r4_data$COUNTRY == 15] <- 5  
merged_r4_data$numgroup[merged_r4_data$COUNTRY == 15] <- 5
merged_r4_data$groupsize1[merged_r4_data$COUNTRY == 15] <- .4712286  
merged_r4_data$groupsize2[merged_r4_data$COUNTRY == 15] <- .2659409
merged_r4_data$groupsize3[merged_r4_data$COUNTRY == 15] <- .1353033
merged_r4_data$groupsize4[merged_r4_data$COUNTRY == 15] <- .0653188
merged_r4_data$groupsize5[merged_r4_data$COUNTRY == 15] <- .0622084

merged_r4_data$VF[merged_r4_data$COUNTRY == 15] <- .0651379
merged_r4_data$VP[merged_r4_data$COUNTRY == 15] <- .0647512
merged_r4_data$PVF[merged_r4_data$COUNTRY == 15] <- .0629278
merged_r4_data$PVP[merged_r4_data$COUNTRY == 15] <- .0707713

#Vparty Year 
merged_r4_data$vparty_year[merged_r4_data$COUNTRY== 15] <- 2007   
merged_r4_data$year[merged_r4_data$COUNTRY== 15] <- 2008 #june

#Compet
merged_r4_data$proximity[merged_r4_data$COUNTRY==15] <- 1 #2008-2007
merged_r4_data$winning_party_share[merged_r4_data$COUNTRY==15] <- .559     
merged_r4_data$second_party_share[merged_r4_data$COUNTRY==15] <- .1492  #AE data

#                          South Africa 
#Interview OCT-NOV 08
#Voter Winner and Loser 
merged_r4_data$winner[merged_r4_data$Q97 == 702] <- 1 

#Loser
merged_r4_data$loser[merged_r4_data$winner == 0 & merged_r4_data$didnt_vote == 0 & merged_r4_data$COUNTRY == 16] <- 1

#Close Party Winner/Loser
merged_r4_data$winner_party[merged_r4_data$Q86 == 702] <- 1 

#Party Matching Vote
#merged_r4_data$v2paid[merged_r4_data$Q97 == -1] <- NA 
merged_r4_data$v2paid[merged_r4_data$Q97 == 700] <- NA #ACD
merged_r4_data$v2paid[merged_r4_data$Q97 == 701] <- NA #AMP
merged_r4_data$v2paid[merged_r4_data$Q97 == 702] <- 1219 #ANC
merged_r4_data$v2paid[merged_r4_data$Q97 == 703] <- NA #AUM
merged_r4_data$v2paid[merged_r4_data$Q97 == 704] <- NA  #Alliance of Free Democrat
merged_r4_data$v2paid[merged_r4_data$Q97 == 705] <- NA #AZAPO
merged_r4_data$v2paid[merged_r4_data$Q97 == 706] <- NA #Christian Party
merged_r4_data$v2paid[merged_r4_data$Q97 == 707] <- 1038 #DA
merged_r4_data$v2paid[merged_r4_data$Q97 == 708] <- NA #FD
merged_r4_data$v2paid[merged_r4_data$Q97 == 709] <- NA #Freedom Front
merged_r4_data$v2paid[merged_r4_data$Q97 == 710] <- NA #ID
merged_r4_data$v2paid[merged_r4_data$Q97 == 711] <- 1630 #IFP
merged_r4_data$v2paid[merged_r4_data$Q97 == 712] <- NA #MF
merged_r4_data$v2paid[merged_r4_data$Q97 == 713] <- NA #NADECO
merged_r4_data$v2paid[merged_r4_data$Q97 == 714] <- 5731 #NNP
merged_r4_data$v2paid[merged_r4_data$Q97 == 715] <- NA #PAC
merged_r4_data$v2paid[merged_r4_data$Q97 == 716] <- NA #UCDP
merged_r4_data$v2paid[merged_r4_data$Q97 == 717] <- NA #UDM
merged_r4_data$v2paid[merged_r4_data$Q97 == 718] <- NA #UIF
merged_r4_data$v2paid[merged_r4_data$Q97 == 719] <- NA #new loekota

#Party Matching Close
merged_r4_data$v2paid_close[merged_r4_data$Q86 == -1] <- NA 
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 702] <- 1219 #ANC
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 707] <- 1038 #DA
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 711] <- 1630 #IFP
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 714] <- 5731 #NNP
#merged_r4_data$v2paid_close[merged_r4_data$Q86 == 664] <- 2382 #AP/PADS

#PE measure
merged_r4_data$numparties[merged_r4_data$COUNTRY == 16] <- 3
merged_r4_data$numgroup[merged_r4_data$COUNTRY == 16] <- 10
merged_r4_data$groupsize1[merged_r4_data$COUNTRY == 16] <- .2509804   
merged_r4_data$groupsize2[merged_r4_data$COUNTRY == 16] <- .1945098
merged_r4_data$groupsize3[merged_r4_data$COUNTRY == 16] <- .0807843
merged_r4_data$groupsize4[merged_r4_data$COUNTRY == 16] <- .0721569
merged_r4_data$groupsize5[merged_r4_data$COUNTRY == 16] <- .0705882
merged_r4_data$groupsize6[merged_r4_data$COUNTRY == 16] <- .1145098
merged_r4_data$groupsize7[merged_r4_data$COUNTRY == 16] <- .1372549
merged_r4_data$groupsize8[merged_r4_data$COUNTRY == 16] <- .0258824
merged_r4_data$groupsize9[merged_r4_data$COUNTRY == 16] <- .0352941
merged_r4_data$groupsize10[merged_r4_data$COUNTRY == 16] <- .0180392
  

merged_r4_data$VF[merged_r4_data$COUNTRY == 16] <- .1785302
merged_r4_data$VP[merged_r4_data$COUNTRY == 16] <- .0903443
merged_r4_data$PVF[merged_r4_data$COUNTRY == 16] <- .0987743
merged_r4_data$PVP[merged_r4_data$COUNTRY == 16] <- .1713359

#Vparty Year 
merged_r4_data$vparty_year[merged_r4_data$COUNTRY== 16] <- 2004   
merged_r4_data$year[merged_r4_data$COUNTRY== 16] <- 2008 #nov

#Compet
merged_r4_data$proximity[merged_r4_data$COUNTRY==16] <- 1 #2009-2008
merged_r4_data$winning_party_share[merged_r4_data$COUNTRY==16] <- .697      
merged_r4_data$second_party_share[merged_r4_data$COUNTRY==16] <-  .124 #AE data


#                           Tanzania 
#Interview JUN-JUL 08
#Voter Winner and Loser 
merged_r4_data$winner[merged_r4_data$Q97 == 740] <- 1 

#Loser
merged_r4_data$loser[merged_r4_data$winner == 0 & merged_r4_data$didnt_vote == 0 & merged_r4_data$COUNTRY == 17] <- 1

#Close Party Winner/Loser
merged_r4_data$winner_party[merged_r4_data$Q86 == 740] <- 1 

#Party Matching Vote
#merged_r4_data$v2paid[merged_r4_data$Q97 == -1] <- NA 
merged_r4_data$v2paid[merged_r4_data$Q97 == 740] <- 2328 #CCM
merged_r4_data$v2paid[merged_r4_data$Q97 == 741] <- 2345 #CUF Civic UNITED front
merged_r4_data$v2paid[merged_r4_data$Q97 == 742] <- 2344 #Chadema
merged_r4_data$v2paid[merged_r4_data$Q97 == 744] <- 3276 #NCCR
merged_r4_data$v2paid[merged_r4_data$Q97 == 749] <- 3553  #TLP

#Party Matching Close
merged_r4_data$v2paid_close[merged_r4_data$Q86 == -1] <- NA 
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 740] <- 2328 #CCM
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 741] <- 2345 #CUF Civic UNITED front
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 742] <- 2344 #Chadema
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 744] <- 3276 #NCCR
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 749] <- 3553  #TLP

#                           Uganda 
#Interview JUL-OCT 08
#Voter Winner and Loser 
merged_r4_data$winner[merged_r4_data$Q97 == 780] <- 1 

#Loser
merged_r4_data$loser[merged_r4_data$winner == 0 & merged_r4_data$didnt_vote == 0 & merged_r4_data$COUNTRY == 18] <- 1

#Close Party Winner/Loser
merged_r4_data$winner_party[merged_r4_data$Q86 == 780] <- 1 

#Party Matching Vote
#merged_r4_data$v2paid[merged_r4_data$Q97 == -1] <- NA 
merged_r4_data$v2paid[merged_r4_data$Q97 == 780] <- 4528 #NRM
merged_r4_data$v2paid[merged_r4_data$Q97 == 781] <- 5389 #FDC
merged_r4_data$v2paid[merged_r4_data$Q97 == 782] <- 4525 #DP
merged_r4_data$v2paid[merged_r4_data$Q97 == 783] <- NA #CP
merged_r4_data$v2paid[merged_r4_data$Q97 == 784] <- 4524  #UPC
merged_r4_data$v2paid[merged_r4_data$Q97 == 785] <- NA  #TPP
merged_r4_data$v2paid[merged_r4_data$Q97 == 786] <- 3553  #Jeema


#Party Matching Close
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 780] <- 4528 #NRM
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 781] <- 5389 #FDC
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 782] <- 4525 #DP
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 784] <- 4524  #UPC
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 786] <- 3553  #Jeema
#merged_r4_data$v2paid_close[merged_r4_data$Q86 == 749] <- 3553  #TLP

#PE measure
merged_r4_data$numparties[merged_r4_data$COUNTRY == 18] <- 4
merged_r4_data$numgroup[merged_r4_data$COUNTRY == 18] <- 6
merged_r4_data$groupsize1[merged_r4_data$COUNTRY == 18] <- .2446406    
merged_r4_data$groupsize2[merged_r4_data$COUNTRY == 18] <- .2698613
merged_r4_data$groupsize3[merged_r4_data$COUNTRY == 18] <- .1828499
merged_r4_data$groupsize4[merged_r4_data$COUNTRY == 18] <- .1462799
merged_r4_data$groupsize5[merged_r4_data$COUNTRY == 18] <- .0712484
merged_r4_data$groupsize6[merged_r4_data$COUNTRY == 18] <- .0851198

merged_r4_data$VF[merged_r4_data$COUNTRY == 18] <- .188828
merged_r4_data$VP[merged_r4_data$COUNTRY == 18] <- .1517703
merged_r4_data$PVF[merged_r4_data$COUNTRY == 18] <- .1732924
merged_r4_data$PVP[merged_r4_data$COUNTRY == 18] <- .2191944

#Vparty Year 
merged_r4_data$vparty_year[merged_r4_data$COUNTRY== 18] <- 2006    
merged_r4_data$year[merged_r4_data$COUNTRY== 18] <- 2008 #sep

#Compet
merged_r4_data$proximity[merged_r4_data$COUNTRY==18] <- 2 #2008-2006
merged_r4_data$winning_party_share[merged_r4_data$COUNTRY==18] <- .5926       
merged_r4_data$second_party_share[merged_r4_data$COUNTRY==18] <-  .3739 #AE data

#                           Zambia 
#Interview JUL-OCT 08
#Voter Winner and Loser 
merged_r4_data$winner[merged_r4_data$Q97 == 822] <- 1 

#Loser
merged_r4_data$loser[merged_r4_data$winner == 0 & merged_r4_data$didnt_vote == 0 & merged_r4_data$COUNTRY == 19] <- 1

#Close Party Winner/Loser
merged_r4_data$winner_party[merged_r4_data$Q86 == 822] <- 1 

#Party Matching Vote
#merged_r4_data$v2paid[merged_r4_data$Q97 == -1] <- NA 
merged_r4_data$v2paid[merged_r4_data$Q97 == 820] <- 2332 #FDD
merged_r4_data$v2paid[merged_r4_data$Q97 == 821] <- NA #Heritage
merged_r4_data$v2paid[merged_r4_data$Q97 == 822] <- 2333 #MMD
merged_r4_data$v2paid[merged_r4_data$Q97 == 823] <- 2302 #PF
merged_r4_data$v2paid[merged_r4_data$Q97 == 824] <- 2334  #UNI
merged_r4_data$v2paid[merged_r4_data$Q97 == 825] <- 2335  #UPND

#Party Matching Close
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 820] <- 2332 #FDD
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 822] <- 2333 #MMD
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 823] <- 2302 #PF
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 824] <- 2334  #UNI
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 825] <- 2335  #UPND
#merged_r4_data$v2paid_close[merged_r4_data$Q86 == 749] <- 3553  #TLP

#PE measure
merged_r4_data$numparties[merged_r4_data$COUNTRY == 19] <- 3
merged_r4_data$numgroup[merged_r4_data$COUNTRY == 19] <- 6
merged_r4_data$groupsize1[merged_r4_data$COUNTRY == 19] <- .4386252     
merged_r4_data$groupsize2[merged_r4_data$COUNTRY == 19] <- .2716857
merged_r4_data$groupsize3[merged_r4_data$COUNTRY == 19] <- .1472995
merged_r4_data$groupsize4[merged_r4_data$COUNTRY == 19] <- .0441899
merged_r4_data$groupsize5[merged_r4_data$COUNTRY == 19] <- .0556465
merged_r4_data$groupsize6[merged_r4_data$COUNTRY == 19] <- .0425532

merged_r4_data$VF[merged_r4_data$COUNTRY == 19] <- .3396713
merged_r4_data$VP[merged_r4_data$COUNTRY == 19] <- .400788
merged_r4_data$PVF[merged_r4_data$COUNTRY == 19] <- .321117
merged_r4_data$PVP[merged_r4_data$COUNTRY == 19] <- .443927

#Vparty Year 
merged_r4_data$vparty_year[merged_r4_data$COUNTRY== 19] <- 2006    
merged_r4_data$year[merged_r4_data$COUNTRY== 19] <- 2009 #jun

#Compet
merged_r4_data$proximity[merged_r4_data$COUNTRY==19] <- 1 #2009-2008
merged_r4_data$winning_party_share[merged_r4_data$COUNTRY==19] <- .4063       
merged_r4_data$second_party_share[merged_r4_data$COUNTRY==19] <- .3864 #https://web.archive.org/web/20151222144210/http://www.elections.org.zm/media/national_summary1.pdf

#                           Zimbabwe 
#Interview May 09
#Voter Winner and Loser 
merged_r4_data$winner[merged_r4_data$Q97 == 861] <- 1 

#Loser
merged_r4_data$loser[merged_r4_data$winner == 0 & merged_r4_data$didnt_vote == 0 & merged_r4_data$COUNTRY == 20] <- 1

#Close Party Winner/Loser
merged_r4_data$winner_party[merged_r4_data$Q86 == 861] <- 1 

#Party Matching Vote
#merged_r4_data$v2paid[merged_r4_data$Q97 == -1] <- NA 
merged_r4_data$v2paid[merged_r4_data$Q97 == 860] <- 3559 #MDC-T
merged_r4_data$v2paid[merged_r4_data$Q97 == 861] <- 3305 #ZANU-PF
merged_r4_data$v2paid[merged_r4_data$Q97 == 862] <- 3560 #MDC-M Name is acutally N
merged_r4_data$v2paid[merged_r4_data$Q97 == 863] <- NA #MKD
merged_r4_data$v2paid[merged_r4_data$Q97 == 824] <- 5244  #ZAPU

#Party Matching Close
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 860] <- 3559 #MDC-T
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 861] <- 3305 #ZANU-PF
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 862] <- 3560 #MDC-M Name
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 863] <- NA #MKD
merged_r4_data$v2paid_close[merged_r4_data$Q86 == 824] <- 5244  #ZAPU
#merged_r4_data$v2paid_close[merged_r4_data$Q86 == 749] <- 3553  #TLP

#PE measure
merged_r4_data$numparties[merged_r4_data$COUNTRY == 20] <- 2 
merged_r4_data$numgroup[merged_r4_data$COUNTRY == 20] <- 2
merged_r4_data$groupsize1[merged_r4_data$COUNTRY == 20] <- .6909975      
merged_r4_data$groupsize2[merged_r4_data$COUNTRY == 20] <- .3090024

merged_r4_data$VF[merged_r4_data$COUNTRY == 20] <- .0026758
merged_r4_data$VP[merged_r4_data$COUNTRY == 20] <- .0053516
merged_r4_data$PVF[merged_r4_data$COUNTRY == 20] <- .0026758
merged_r4_data$PVP[merged_r4_data$COUNTRY == 20] <- .0053516

#Vparty Year 
merged_r4_data$vparty_year[merged_r4_data$COUNTRY== 20] <- 2008     
merged_r4_data$year[merged_r4_data$COUNTRY== 20] <- 2009 #may

#Compet
merged_r4_data$proximity[merged_r4_data$COUNTRY==20] <- 1 #2009-2008
merged_r4_data$winning_party_share[merged_r4_data$COUNTRY==20] <- .9022      
merged_r4_data$second_party_share[merged_r4_data$COUNTRY==20] <- .0978  #AE data
  
#____________________________________________________________________________________________
#__________________________WAVE 5 AFRO AFRO5 ________________________________________
#____________________________________________________________________________________________

#Benin 1
#int date: JUN-JUL/12

merged_r5_data$winner <- 0
merged_r5_data$winner[merged_r5_data$Q99 == 100] <- 1 #fcbe

#Refused to and I don't know are dropped. They did not answer the question.
merged_r5_data$winner[merged_r5_data$Q99 == -1] <- NA
merged_r5_data$winner[merged_r5_data$Q99 == 9998] <- NA 
merged_r5_data$winner[merged_r5_data$Q99 == 9999] <- NA 

#Non Voter 
merged_r5_data$didnt_vote <- 0
merged_r5_data$didnt_vote[merged_r5_data$Q99 == 9997] <- 1
merged_r5_data$didnt_vote[merged_r5_data$Q99 == 9998] <- NA
merged_r5_data$didnt_vote[merged_r5_data$Q99 == 9999] <- NA

#Close Party Winner/Loser 
merged_r5_data$winner_party <- 0 
merged_r5_data$winner_party[merged_r5_data$Q89B == 100] <- 1 
merged_r5_data$winner_party[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9997] <- 0 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9995] <- 0 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9998] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9999] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89A == 9] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89A == 8] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89A == -1] <- NA 

merged_r5_data$nonpartisan <- 0
merged_r5_data$nonpartisan[merged_r5_data$Q89A == 0] <- 1
merged_r5_data$nonpartisan[merged_r5_data$Q89A == 8] <- NA
merged_r5_data$nonpartisan[merged_r5_data$Q89A == 9] <- NA
merged_r5_data$nonpartisan[merged_r5_data$Q89A == -1] <- NA

merged_r5_data$didnt_party <- 0
merged_r5_data$didnt_party[merged_r5_data$Q89A == 0] <- 1
merged_r5_data$didnt_party[merged_r5_data$Q89A == 8] <- NA
merged_r5_data$didnt_party[merged_r5_data$Q89A == 9] <- NA
merged_r5_data$didnt_party[merged_r5_data$Q89A == -1] <- NA

#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 100] <- 2300 #FCBE
merged_r5_data$v2paid[merged_r5_data$Q99 == 101] <- 6569  #UN
merged_r5_data$v2paid[merged_r5_data$Q99 == 102] <- NA #ABT
merged_r5_data$v2paid[merged_r5_data$Q99 == 103] <- NA #UPR
merged_r5_data$v2paid[merged_r5_data$Q99 == 104] <- 7059 #7059

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 100] <- 2300 #FCBE
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 101] <- 6569  #UN
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 102] <- NA #ABT
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 103] <- NA #UPR
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 104] <- 7059 #7059

#PE measure
merged_r5_data$numparties[merged_r5_data$COUNTRY == 1] <- 3   
merged_r5_data$numgroup[merged_r5_data$COUNTRY == 1] <- 4
merged_r5_data$groupsize1[merged_r5_data$COUNTRY == 1] <- .1579618       
merged_r5_data$groupsize2[merged_r5_data$COUNTRY == 1] <- .3834395
merged_r5_data$groupsize3[merged_r5_data$COUNTRY == 1] <- .2713376
merged_r5_data$groupsize4[merged_r5_data$COUNTRY == 1] <- .1872611

merged_r5_data$VF[merged_r5_data$COUNTRY == 1] <- .1058792
merged_r5_data$VP[merged_r5_data$COUNTRY == 1] <- .1204124
merged_r5_data$PVF[merged_r5_data$COUNTRY == 1] <- .1001616
merged_r5_data$PVP[merged_r5_data$COUNTRY == 1] <- .1714251

#Vparty Year 
merged_r5_data$vparty_year[merged_r5_data$COUNTRY== 1] <- 2011     
merged_r5_data$year[merged_r5_data$COUNTRY== 1] <- 2011 #dec

#Compet
merged_r5_data$proximity[merged_r5_data$COUNTRY==1] <- 0 #2011-2011
merged_r5_data$winning_party_share[merged_r5_data$COUNTRY== 1] <- .5314      
merged_r5_data$second_party_share[merged_r5_data$COUNTRY== 1] <- .3564  #AE data

#Botswana 2
#int date: JUN-JUL/12
merged_r5_data$winner[merged_r5_data$Q99 == 141] <- 1 #BDP

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 141] <- 1 

#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 140] <- 2337 #BCP
merged_r5_data$v2paid[merged_r5_data$Q99 == 141] <- 2301  #BDP
merged_r5_data$v2paid[merged_r5_data$Q99 == 142] <- NA #BMD
merged_r5_data$v2paid[merged_r5_data$Q99 == 143] <- 2336 #BNF
merged_r5_data$v2paid[merged_r5_data$Q99 == 144] <- 3632 #BPP
merged_r5_data$v2paid[merged_r5_data$Q99 == 146] <- 4832  #Umbrella

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 140] <- 2337 #BCP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 141] <- 2301  #BDP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 142] <- NA #BMD
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 143] <- 2336 #BNF
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 144] <- 3632 #BPP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 146] <- 4832  #Umbrella

#PE measure
merged_r5_data$numparties[merged_r5_data$COUNTRY == 2] <- 7  
merged_r5_data$numgroup[merged_r5_data$COUNTRY == 2] <- 5
merged_r5_data$groupsize1[merged_r5_data$COUNTRY == 2] <- .4860051        
merged_r5_data$groupsize2[merged_r5_data$COUNTRY == 2] <- .1933842
merged_r5_data$groupsize3[merged_r5_data$COUNTRY == 2] <- .0916031
merged_r5_data$groupsize4[merged_r5_data$COUNTRY == 2] <- .1094148
merged_r5_data$groupsize5[merged_r5_data$COUNTRY == 2] <- .1195929


merged_r5_data$VF[merged_r5_data$COUNTRY == 2] <- .1082692
merged_r5_data$VP[merged_r5_data$COUNTRY == 2] <- .1126736
merged_r5_data$PVF[merged_r5_data$COUNTRY == 2] <- .119633
merged_r5_data$PVP[merged_r5_data$COUNTRY == 2] <- .1175033

#Vparty Year 
merged_r5_data$vparty_year[merged_r5_data$COUNTRY== 2] <- 2009      
merged_r5_data$year[merged_r5_data$COUNTRY== 2] <- 2012 #jul

#Compet
merged_r5_data$proximity[merged_r5_data$COUNTRY==2] <-2 #2014-2012
merged_r5_data$winning_party_share[merged_r5_data$COUNTRY== 2] <- .5326        
merged_r5_data$second_party_share[merged_r5_data$COUNTRY== 2] <- .2194  #https://www.eisa.org/wep/bot2009presults.htm

#Burkina 3
#int date: DEC/12
merged_r5_data$winner[merged_r5_data$Q99 == 181] <- 1 #BDP

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 181] <- 1 

#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 180] <- 4314 #ADF/RDA
merged_r5_data$v2paid[merged_r5_data$Q99 == 181] <- 4313  #BDP
merged_r5_data$v2paid[merged_r5_data$Q99 == 182] <- NA #CFD
merged_r5_data$v2paid[merged_r5_data$Q99 == 183] <- NA #AF
merged_r5_data$v2paid[merged_r5_data$Q99 == 184] <- NA #PDP
merged_r5_data$v2paid[merged_r5_data$Q99 == 185] <- NA  #PAREN
merged_r5_data$v2paid[merged_r5_data$Q99 == 186] <- NA  #PDS
merged_r5_data$v2paid[merged_r5_data$Q99 == 187] <- NA  #UNDD
merged_r5_data$v2paid[merged_r5_data$Q99 == 188] <- NA  #UNIR/PS
merged_r5_data$v2paid[merged_r5_data$Q99 == 189] <- 4315  #UPC
merged_r5_data$v2paid[merged_r5_data$Q99 == 191] <- 4317  #PDS/METBA 

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 180] <- 4314 #ADF/RDA
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 181] <- 4313  #BDP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 189] <- 4315  #UPC
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 191] <- 4317  #PDS/METBA 

##Skip CAPE VERDE Because of Ethnic. 

# Ghana 5
#int date: MAY/12
merged_r5_data$winner[merged_r5_data$Q99 == 261] <- 1 #NDC Looking at 2008 elections because 2012 election was held in Dec. 

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 261] <- 1 

#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 260] <- 3660 #CPP
merged_r5_data$v2paid[merged_r5_data$Q99 == 261] <- 2311  #NDC
merged_r5_data$v2paid[merged_r5_data$Q99 == 262] <- 4732 #NPP
merged_r5_data$v2paid[merged_r5_data$Q99 == 263] <- NA #PNC
merged_r5_data$v2paid[merged_r5_data$Q99 == 264] <- NA #PPP

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 260] <- 3660 #CPP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 261] <- 2311  #NDC
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 262] <- 4732 #NPP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 263] <- NA #PNC

#PE measure
merged_r5_data$numparties[merged_r5_data$COUNTRY == 5] <- 3
merged_r5_data$numgroup[merged_r5_data$COUNTRY == 5] <- 4
merged_r5_data$groupsize1[merged_r5_data$COUNTRY == 5] <- .1736282         
merged_r5_data$groupsize2[merged_r5_data$COUNTRY == 5] <- .0737101
merged_r5_data$groupsize3[merged_r5_data$COUNTRY == 5] <- .2366912
merged_r5_data$groupsize4[merged_r5_data$COUNTRY == 5] <- .5159705

merged_r5_data$VF[merged_r5_data$COUNTRY == 5] <- .2523361
merged_r5_data$VP[merged_r5_data$COUNTRY == 5] <- .2973938
merged_r5_data$PVF[merged_r5_data$COUNTRY == 5] <- .1580149
merged_r5_data$PVP[merged_r5_data$COUNTRY == 5] <- .2999591

#Vparty Year 
merged_r5_data$vparty_year[merged_r5_data$COUNTRY== 5] <- 2008     
merged_r5_data$year[merged_r5_data$COUNTRY== 5] <- 2012  #may

#Compet
merged_r5_data$proximity[merged_r5_data$COUNTRY==5] <- 0 #2012-2012
merged_r5_data$winning_party_share[merged_r5_data$COUNTRY== 5] <- .5023        
merged_r5_data$second_party_share[merged_r5_data$COUNTRY== 5] <- .4977  #AE data

#Kenya 6 
#int date: NOV/11
merged_r5_data$winner[merged_r5_data$Q99 == 302] <- 1 
merged_r5_data$winner[merged_r5_data$Q99 == 300] <- 1 

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 302] <- 1 
merged_r5_data$winner_party[merged_r5_data$Q89B == 300] <- 1 

#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 300] <- 2360 #ODM
merged_r5_data$v2paid[merged_r5_data$Q99 == 301] <- 2360  #ODM
merged_r5_data$v2paid[merged_r5_data$Q99 == 302] <- 2359 #PNU
merged_r5_data$v2paid[merged_r5_data$Q99 == 303] <- 5834 #NARC
merged_r5_data$v2paid[merged_r5_data$Q99 == 304] <- 7970 #NARK-K
merged_r5_data$v2paid[merged_r5_data$Q99 == 305] <- 3860 #DP
merged_r5_data$v2paid[merged_r5_data$Q99 == 306] <- 3863 #FORD-K
merged_r5_data$v2paid[merged_r5_data$Q99 == 307] <- 7971 #FORD-P
merged_r5_data$v2paid[merged_r5_data$Q99 == 308] <- 2316 #KANU
merged_r5_data$v2paid[merged_r5_data$Q99 == 309] <- 7932 #NPK
merged_r5_data$v2paid[merged_r5_data$Q99 == 313] <- 3858 #S
merged_r5_data$v2paid[merged_r5_data$Q99 == 314] <- 4083 #KADU
merged_r5_data$v2paid[merged_r5_data$Q99 == 315] <- NA #KADDU
merged_r5_data$v2paid[merged_r5_data$Q99 == 316] <- NA #UDM
merged_r5_data$v2paid[merged_r5_data$Q99 == 317] <- NA #NEw ford
merged_r5_data$v2paid[merged_r5_data$Q99 == 318] <- NA #G&

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 300] <- 2360 #ODM
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 301] <- 2360  #ODM
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 302] <- 2359 #PNU
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 303] <- 5834 #NARC
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 304] <- 7970 #NARK-K
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 305] <- 3860 #DP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 306] <- 3863 #FORD-K
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 307] <- 7971 #FORD-P
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 308] <- 2316 #KANU
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 309] <- 7932 #NPK
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 313] <- 3858 #S
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 314] <- 4083 #KADU

#PE measure
merged_r5_data$numparties[merged_r5_data$COUNTRY == 6] <- 6  
merged_r5_data$numgroup[merged_r5_data$COUNTRY == 6] <- 8 
merged_r5_data$groupsize1[merged_r5_data$COUNTRY == 6] <- .2691202         
merged_r5_data$groupsize2[merged_r5_data$COUNTRY == 6] <- .1322599
merged_r5_data$groupsize3[merged_r5_data$COUNTRY == 6] <- .1483611
merged_r5_data$groupsize4[merged_r5_data$COUNTRY == 6] <- .1748131
merged_r5_data$groupsize5[merged_r5_data$COUNTRY == 6] <- .1127085
merged_r5_data$groupsize6[merged_r5_data$COUNTRY == 6] <- .0437033
merged_r5_data$groupsize7[merged_r5_data$COUNTRY == 6] <- .0448534
merged_r5_data$groupsize8[merged_r5_data$COUNTRY == 6] <- .0741806

merged_r5_data$VF[merged_r5_data$COUNTRY == 6] <- .380542
merged_r5_data$VP[merged_r5_data$COUNTRY == 6] <- .264171
merged_r5_data$PVF[merged_r5_data$COUNTRY == 6] <- .3166941
merged_r5_data$PVP[merged_r5_data$COUNTRY == 6] <- .4027616

#Vparty Year 
merged_r5_data$vparty_year[merged_r5_data$COUNTRY== 6] <- 2007      
merged_r5_data$year[merged_r5_data$COUNTRY== 6] <-  2011 #nov

#Compet
merged_r5_data$proximity[merged_r5_data$COUNTRY==6] <- 2  #2013-2011
merged_r5_data$winning_party_share[merged_r5_data$COUNTRY== 6] <- .4642        
merged_r5_data$second_party_share[merged_r5_data$COUNTRY== 6] <- .4407  #AE data

#Lesotho Droppped no ethnic groups

#Liberia 8
#int date: Jun-JUL/12
merged_r5_data$winner[merged_r5_data$Q99 == 386] <- 1 

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 386] <- 1 

#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 380] <- NA #NRP
merged_r5_data$v2paid[merged_r5_data$Q99 == 382] <- NA  #APD
merged_r5_data$v2paid[merged_r5_data$Q99 == 383] <- 6596 #NDC
merged_r5_data$v2paid[merged_r5_data$Q99 == 384] <- 4139 #LP
merged_r5_data$v2paid[merged_r5_data$Q99 == 385] <- 5837 #TWP
merged_r5_data$v2paid[merged_r5_data$Q99 == 386] <- 4140 #UP
merged_r5_data$v2paid[merged_r5_data$Q99 == 387] <- 4143 #NDPL
merged_r5_data$v2paid[merged_r5_data$Q99 == 389] <- 4136 #CDC
merged_r5_data$v2paid[merged_r5_data$Q99 == 392] <- 2316 #LINU
merged_r5_data$v2paid[merged_r5_data$Q99 == 393] <- NA #ALCOP
merged_r5_data$v2paid[merged_r5_data$Q99 == 394] <- NA #LRP
merged_r5_data$v2paid[merged_r5_data$Q99 == 395] <- 5163 #NUDP
merged_r5_data$v2paid[merged_r5_data$Q99 == 397] <- NA #PPP
merged_r5_data$v2paid[merged_r5_data$Q99 == 399] <- NA #OCP
merged_r5_data$v2paid[merged_r5_data$Q99 == 402] <- NA #GDPL
merged_r5_data$v2paid[merged_r5_data$Q99 == 406] <- NA #TPL
merged_r5_data$v2paid[merged_r5_data$Q99 == 409] <- 4142 #NPP

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 383] <- 6596 #NDC
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 384] <- 4139 #LP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 385] <- 5837 #TWP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 386] <- 4140 #UP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 387] <- 4143 #NDPL
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 389] <- 4136 #CDC
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 392] <- 2316 #LINU
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 395] <- 5163 #NUDP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 409] <- 4142 #NPP

#PE measure
merged_r5_data$numparties[merged_r5_data$COUNTRY == 8] <- 4   
merged_r5_data$numgroup[merged_r5_data$COUNTRY == 8] <- 5
merged_r5_data$groupsize1[merged_r5_data$COUNTRY == 8] <- .3215548          
merged_r5_data$groupsize2[merged_r5_data$COUNTRY == 8] <- .1837456
merged_r5_data$groupsize3[merged_r5_data$COUNTRY == 8] <- .2190813
merged_r5_data$groupsize4[merged_r5_data$COUNTRY == 8] <- .1978799
merged_r5_data$groupsize5[merged_r5_data$COUNTRY == 8] <- .0777385

merged_r5_data$VF[merged_r5_data$COUNTRY == 8] <- .2206726
merged_r5_data$VP[merged_r5_data$COUNTRY == 8] <- .2007566
merged_r5_data$PVF[merged_r5_data$COUNTRY == 8] <- .1920124
merged_r5_data$PVP[merged_r5_data$COUNTRY == 8] <- .2645833

#Vparty Year 
merged_r5_data$vparty_year[merged_r5_data$COUNTRY== 8] <- 2011       
merged_r5_data$year[merged_r5_data$COUNTRY== 8] <- 2012 #jul

#Compet
merged_r5_data$proximity[merged_r5_data$COUNTRY==8] <- 1  #2012-2011
merged_r5_data$winning_party_share[merged_r5_data$COUNTRY== 8] <-  .9071       
merged_r5_data$second_party_share[merged_r5_data$COUNTRY== 8] <- .0929  #https://en.wikipedia.org/wiki/2011_Liberian_general_election

##            Madagascar 9
#int date: MAR-APR/13 
merged_r5_data$winner[merged_r5_data$Q99 == 438] <- 1 #Use the 2006 Elections because 2013 happened Oct and Dec 2013

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 438] <- 1 


#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 420] <- NA #AKFM
merged_r5_data$v2paid[merged_r5_data$Q99 == 421] <- NA  #AKFM
merged_r5_data$v2paid[merged_r5_data$Q99 == 423] <- 6596 #Hasin’i Madagasikara
merged_r5_data$v2paid[merged_r5_data$Q99 == 424] <- 5311 #AREMA
merged_r5_data$v2paid[merged_r5_data$Q99 == 425] <- 5373 #AVI
merged_r5_data$v2paid[merged_r5_data$Q99 == 428] <- 5370 #FANILO
merged_r5_data$v2paid[merged_r5_data$Q99 == 429] <- NA #MAHALEO
merged_r5_data$v2paid[merged_r5_data$Q99 == 430] <- NA #MAMAFISOA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 432] <- NA #MDM
merged_r5_data$v2paid[merged_r5_data$Q99 == 433] <- NA #MONIMA
merged_r5_data$v2paid[merged_r5_data$Q99 == 434] <- NA #MTS
merged_r5_data$v2paid[merged_r5_data$Q99 == 435] <- NA #RPSD-V
merged_r5_data$v2paid[merged_r5_data$Q99 == 436] <- NA #TEZA
merged_r5_data$v2paid[merged_r5_data$Q99 == 437] <- NA #TGV
merged_r5_data$v2paid[merged_r5_data$Q99 == 438] <- 5201 #TIM
merged_r5_data$v2paid[merged_r5_data$Q99 == 439] <- 5869 #UNDD
merged_r5_data$v2paid[merged_r5_data$Q99 == 440] <- NA #MAF AVOKO

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 423] <- 6596 #Hasin’i Madagasikara
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 424] <- 5311 #AREMA
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 425] <- 5373 #AVI
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 428] <- 5370 #FANILO
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 438] <- 5201 #TIM
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 439] <- 5869 #UNDD

#PE measure
merged_r5_data$numparties[merged_r5_data$COUNTRY == 9] <- 7   
merged_r5_data$numgroup[merged_r5_data$COUNTRY == 9] <- 2
merged_r5_data$groupsize1[merged_r5_data$COUNTRY == 9] <- .4214876           
merged_r5_data$groupsize2[merged_r5_data$COUNTRY == 9] <- .5785124

merged_r5_data$VF[merged_r5_data$COUNTRY == 9] <- .1090046
merged_r5_data$VP[merged_r5_data$COUNTRY == 9] <- .2180092
merged_r5_data$PVF[merged_r5_data$COUNTRY == 9] <- .2004645
merged_r5_data$PVP[merged_r5_data$COUNTRY == 9] <- .2045383

#Vparty Year 
merged_r5_data$vparty_year[merged_r5_data$COUNTRY== 9] <- 2007
merged_r5_data$year[merged_r5_data$COUNTRY== 9] <- 2013 #before election

#Compet
merged_r5_data$proximity[merged_r5_data$COUNTRY==9] <- 0  #2013-2013
merged_r5_data$winning_party_share[merged_r5_data$COUNTRY== 9] <-.5479         
merged_r5_data$second_party_share[merged_r5_data$COUNTRY== 9] <- .1165   #AE database


##            Malawi 10
#Int date: Jun/12
merged_r5_data$winner[merged_r5_data$Q99 == 462] <- 1 

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 462] <- 1 


#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 460] <- 3733 #AFORD
merged_r5_data$v2paid[merged_r5_data$Q99 == 461] <- NA  #CODE
merged_r5_data$v2paid[merged_r5_data$Q99 == 462] <- 4846 #DPP
merged_r5_data$v2paid[merged_r5_data$Q99 == 464] <- 3732 #MCP
merged_r5_data$v2paid[merged_r5_data$Q99 == 465] <- NA #MDP
merged_r5_data$v2paid[merged_r5_data$Q99 == 472] <- 4847 #PP
merged_r5_data$v2paid[merged_r5_data$Q99 == 475] <- 3737 #RP 
merged_r5_data$v2paid[merged_r5_data$Q99 == 476] <- 3734 #UDF

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 460] <- 3733 #AFORD
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 462] <- 4846 #DPP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 464] <- 3732 #MCP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 472] <- 4847 #PP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 475] <- 3737 #RP 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 476] <- 3734 #UDF

#PE measure
merged_r5_data$numparties[merged_r5_data$COUNTRY == 10] <- 4  
merged_r5_data$numgroup[merged_r5_data$COUNTRY == 10] <- 3
merged_r5_data$groupsize1[merged_r5_data$COUNTRY == 10] <- .4245014            
merged_r5_data$groupsize2[merged_r5_data$COUNTRY == 10] <- .4233618
merged_r5_data$groupsize3[merged_r5_data$COUNTRY == 10] <- .1521368


merged_r5_data$VF[merged_r5_data$COUNTRY == 10] <- .1711832
merged_r5_data$VP[merged_r5_data$COUNTRY == 10] <- .2523433
merged_r5_data$PVF[merged_r5_data$COUNTRY == 10] <- .2067242
merged_r5_data$PVP[merged_r5_data$COUNTRY == 10] <- .2812206

#Vparty Year 
merged_r5_data$vparty_year[merged_r5_data$COUNTRY== 10] <- 2009  
merged_r5_data$year[merged_r5_data$COUNTRY== 10] <- 2012 #jun

#Compet
merged_r5_data$proximity[merged_r5_data$COUNTRY==10] <-  2 #2014-2012
merged_r5_data$winning_party_share[merged_r5_data$COUNTRY== 10] <- .6617         
merged_r5_data$second_party_share[merged_r5_data$COUNTRY== 10] <-  .3049  #AE database

#         Mali      11 

#Int date: DEC/12
merged_r5_data$winner[merged_r5_data$Q99 == 500] <- 1 

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 500] <- 1 

#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 500] <- 2477 #AFORD
merged_r5_data$v2paid[merged_r5_data$Q99 == 501] <- NA  #BARA
merged_r5_data$v2paid[merged_r5_data$Q99 == 502] <- NA #BDIA
merged_r5_data$v2paid[merged_r5_data$Q99 == 503] <- NA #CDS
merged_r5_data$v2paid[merged_r5_data$Q99 == 504] <- NA #CNAS
merged_r5_data$v2paid[merged_r5_data$Q99 == 505] <- 2478 #CNID
merged_r5_data$v2paid[merged_r5_data$Q99 == 506] <- NA #CODEM 
merged_r5_data$v2paid[merged_r5_data$Q99 == 508] <- NA #MIRIA
merged_r5_data$v2paid[merged_r5_data$Q99 == 509] <- 6085 #MPR
merged_r5_data$v2paid[merged_r5_data$Q99 == 510] <- 6084 #PARENA
merged_r5_data$v2paid[merged_r5_data$Q99 == 511] <- NA #PDES
merged_r5_data$v2paid[merged_r5_data$Q99 == 512] <- 6448 #PSP
merged_r5_data$v2paid[merged_r5_data$Q99 == 513] <- NA #RPDM
merged_r5_data$v2paid[merged_r5_data$Q99 == 514] <- 2319 #RPM
merged_r5_data$v2paid[merged_r5_data$Q99 == 515] <- NA #SADI
merged_r5_data$v2paid[merged_r5_data$Q99 == 516] <- NA #UDD
merged_r5_data$v2paid[merged_r5_data$Q99 == 517] <- NA #UM-RDA
merged_r5_data$v2paid[merged_r5_data$Q99 == 518] <- 2476 #URD
merged_r5_data$v2paid[merged_r5_data$Q99 == 519] <- NA #YELEMA

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 500] <- 2477 #AFORD
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 505] <- 2478 #CNID
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 509] <- 6085 #MPR
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 510] <- 6084 #PARENA
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 512] <- 6448 #PSP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 514] <- 2319 #RPM
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 518] <- 2476 #URD


#         Mozambique      12 

#Int date: NOV-DEC/12
merged_r5_data$winner[merged_r5_data$Q99 == 540] <- 1 

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 540] <- 1 

#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 540] <- 2314 #FRELIMO
merged_r5_data$v2paid[merged_r5_data$Q99 == 541] <- 2315  #RENAMO
merged_r5_data$v2paid[merged_r5_data$Q99 == 542] <- 3813 #MDM
merged_r5_data$v2paid[merged_r5_data$Q99 == 543] <- NA #PDD


#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 540] <- 2314 #FRELIMO
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 541] <- 2315  #RENAMO
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 542] <- 3813 #MDM
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 543] <- NA #PDD

#         Namibia      13

#Int date: NOV-DEC/12
merged_r5_data$winner[merged_r5_data$Q99 == 590] <- 1 

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 590] <- 1 

#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 580] <- NA #APP
merged_r5_data$v2paid[merged_r5_data$Q99 == 581] <- 2358  #CoD
merged_r5_data$v2paid[merged_r5_data$Q99 == 582] <- 2356 #DTA
merged_r5_data$v2paid[merged_r5_data$Q99 == 583] <- NA #MAG
merged_r5_data$v2paid[merged_r5_data$Q99 == 585] <- NA #NUDO
merged_r5_data$v2paid[merged_r5_data$Q99 == 586] <- NA #NDP
merged_r5_data$v2paid[merged_r5_data$Q99 == 587] <- 4895 #RDP
merged_r5_data$v2paid[merged_r5_data$Q99 == 588] <- NA #RP
merged_r5_data$v2paid[merged_r5_data$Q99 == 589] <- NA #SWANU
merged_r5_data$v2paid[merged_r5_data$Q99 == 590] <- 2331 #SWAPO
merged_r5_data$v2paid[merged_r5_data$Q99 == 591] <- 2355 #UDF

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 581] <- 2358  #CoD
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 582] <- 2356 #DTA
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 587] <- 4895 #RDP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 590] <- 2331 #SWAPO
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 591] <- 2355 #UDF

#PE measure
merged_r5_data$numparties[merged_r5_data$COUNTRY == 13] <- 6      
merged_r5_data$numgroup[merged_r5_data$COUNTRY == 13] <- 6
merged_r5_data$groupsize1[merged_r5_data$COUNTRY == 13] <- .5872642             
merged_r5_data$groupsize2[merged_r5_data$COUNTRY == 13] <- .1591981
merged_r5_data$groupsize3[merged_r5_data$COUNTRY == 13] <- .0955189
merged_r5_data$groupsize4[merged_r5_data$COUNTRY == 13] <- .053066
merged_r5_data$groupsize5[merged_r5_data$COUNTRY == 13] <- .0813679
merged_r5_data$groupsize6[merged_r5_data$COUNTRY == 13] <- .0235849

merged_r5_data$VF[merged_r5_data$COUNTRY == 13] <- .1566419
merged_r5_data$VP[merged_r5_data$COUNTRY == 13] <- .1892484
merged_r5_data$PVF[merged_r5_data$COUNTRY == 13] <- .1625348
merged_r5_data$PVP[merged_r5_data$COUNTRY == 13] <- .25702
  
  #Vparty Year 
merged_r5_data$vparty_year[merged_r5_data$COUNTRY== 13] <- 2009      
merged_r5_data$year[merged_r5_data$COUNTRY== 13] <- 2012  #dec
  
  #Compet
merged_r5_data$proximity[merged_r5_data$COUNTRY==13] <- 2  #2014-2012
merged_r5_data$winning_party_share[merged_r5_data$COUNTRY== 13] <- .7642          
merged_r5_data$second_party_share[merged_r5_data$COUNTRY== 13] <- .1108   #https://www.ecn.na/wp-content/uploads/2019/07/27-28-Nov-2009-Presidential-Elections.pdf

#         NIGERIA      14

#Int date: OCT/12 - JAN/13 
merged_r5_data$winner[merged_r5_data$Q99 == 638] <- 1 
merged_r5_data$winner[merged_r5_data$Q99 == 624] <- 1 


#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 638] <- 1 
merged_r5_data$winner_party[merged_r5_data$Q89B == 624] <- 1 


#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 620] <- NA #ACD
merged_r5_data$v2paid[merged_r5_data$Q99 == 621] <- 2353  #ACN
merged_r5_data$v2paid[merged_r5_data$Q99 == 622] <- 4116 #AD
merged_r5_data$v2paid[merged_r5_data$Q99 == 623] <- NA #ADC
merged_r5_data$v2paid[merged_r5_data$Q99 == 624] <- 2313 #ANPP
merged_r5_data$v2paid[merged_r5_data$Q99 == 625] <- NA #APGA
merged_r5_data$v2paid[merged_r5_data$Q99 == 626] <- NA #APP
merged_r5_data$v2paid[merged_r5_data$Q99 == 627] <- NA #ARP
merged_r5_data$v2paid[merged_r5_data$Q99 == 628] <- 5539 #CPC
merged_r5_data$v2paid[merged_r5_data$Q99 == 629] <- NA #CPN
merged_r5_data$v2paid[merged_r5_data$Q99 == 631] <- NA #DPP
merged_r5_data$v2paid[merged_r5_data$Q99 == 633] <- NA #FDP
merged_r5_data$v2paid[merged_r5_data$Q99 == 634] <- NA #LP
merged_r5_data$v2paid[merged_r5_data$Q99 == 636] <- NA #NCP
merged_r5_data$v2paid[merged_r5_data$Q99 == 637] <- NA #ND
merged_r5_data$v2paid[merged_r5_data$Q99 == 638] <- 2354 #PDP
merged_r5_data$v2paid[merged_r5_data$Q99 == 639] <- NA #PPA

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 621] <- 2353  #ACN
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 622] <- 4116 #AD
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 624] <- 2313 #ANPP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 628] <- 5539 #CPC
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 638] <- 2354 #PDP

#PE measure
merged_r5_data$numparties[merged_r5_data$COUNTRY == 14] <- 5       
merged_r5_data$numgroup[merged_r5_data$COUNTRY == 14] <- 5 
merged_r5_data$groupsize1[merged_r5_data$COUNTRY == 14] <- .5337219             
merged_r5_data$groupsize2[merged_r5_data$COUNTRY == 14] <- .2398002
merged_r5_data$groupsize3[merged_r5_data$COUNTRY == 14] <- .1606994
merged_r5_data$groupsize4[merged_r5_data$COUNTRY == 14] <- .0291424
merged_r5_data$groupsize5[merged_r5_data$COUNTRY == 14] <- .0366361

merged_r5_data$VF[merged_r5_data$COUNTRY == 14] <- .2748077
merged_r5_data$VP[merged_r5_data$COUNTRY == 14] <- .3686873
merged_r5_data$PVF[merged_r5_data$COUNTRY == 14] <- .3439077
merged_r5_data$PVP[merged_r5_data$COUNTRY == 14] <- .3803187

#Vparty Year 
merged_r5_data$vparty_year[merged_r5_data$COUNTRY== 14] <- 2011      
merged_r5_data$year[merged_r5_data$COUNTRY== 14] <- 2012  #dec

#Compet
merged_r5_data$proximity[merged_r5_data$COUNTRY==14] <- 1 #2012-2011
merged_r5_data$winning_party_share[merged_r5_data$COUNTRY== 14] <- .5887           
merged_r5_data$second_party_share[merged_r5_data$COUNTRY== 14] <- .3197  #https://web.archive.org/web/20110501010957/http://www.inecnigeria.org/results/presidential/

#         Senegal      15

#Int date: FEB/13 
merged_r5_data$winner[merged_r5_data$Q99 == 663] <- 1 

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 663] <- 1 

#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 660] <- 2329 #PDS
merged_r5_data$v2paid[merged_r5_data$Q99 == 661] <- 2380  #PS
merged_r5_data$v2paid[merged_r5_data$Q99 == 662] <- 2379 #AFP
merged_r5_data$v2paid[merged_r5_data$Q99 == 663] <- 5766 #APR
merged_r5_data$v2paid[merged_r5_data$Q99 == 664] <- NA #REWMI
merged_r5_data$v2paid[merged_r5_data$Q99 == 665] <- 6462 #URD
merged_r5_data$v2paid[merged_r5_data$Q99 == 666] <- NA #FSM
merged_r5_data$v2paid[merged_r5_data$Q99 == 668] <- NA #RDS
merged_r5_data$v2paid[merged_r5_data$Q99 == 670] <- NA #LM/
merged_r5_data$v2paid[merged_r5_data$Q99 == 671] <- 6151 #BGG
merged_r5_data$v2paid[merged_r5_data$Q99 == 672] <- NA #BBY

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 660] <- 2329 #PDS
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 661] <- 2380  #PS
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 662] <- 2379 #AFP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 663] <- 5766 #APR
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 665] <- 6462 #URD
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 671] <- 6151 #BGG

#PE measure
merged_r5_data$numparties[merged_r5_data$COUNTRY == 15] <- 5     
merged_r5_data$numgroup[merged_r5_data$COUNTRY == 15] <- 5
merged_r5_data$groupsize1[merged_r5_data$COUNTRY == 15] <- .4155496               
merged_r5_data$groupsize2[merged_r5_data$COUNTRY == 15] <- .3016086
merged_r5_data$groupsize3[merged_r5_data$COUNTRY == 15] <- .1648794
merged_r5_data$groupsize4[merged_r5_data$COUNTRY == 15] <- .0723861
merged_r5_data$groupsize5[merged_r5_data$COUNTRY == 15] <- .0455764

merged_r5_data$VF[merged_r5_data$COUNTRY == 15] <- .098555
merged_r5_data$VP[merged_r5_data$COUNTRY == 15] <- .0991189
merged_r5_data$PVF[merged_r5_data$COUNTRY == 15] <- .0706706
merged_r5_data$PVP[merged_r5_data$COUNTRY == 15] <- .1053108

#Vparty Year 
merged_r5_data$vparty_year[merged_r5_data$COUNTRY== 15] <-  2012     
merged_r5_data$year[merged_r5_data$COUNTRY== 15] <- 2013  #feb 

#Compet
merged_r5_data$proximity[merged_r5_data$COUNTRY==15] <- 1 #2013-2012
merged_r5_data$winning_party_share[merged_r5_data$COUNTRY== 15] <- .658            
merged_r5_data$second_party_share[merged_r5_data$COUNTRY== 15] <- .3420  #AE data


#         South Africa    16

#Int date: OCT-NOV/11
merged_r5_data$winner[merged_r5_data$Q99 == 702] <- 1 

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 702] <- 1 

#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 700] <- NA #ACDP
merged_r5_data$v2paid[merged_r5_data$Q99 == 701] <- NA  #AMP
merged_r5_data$v2paid[merged_r5_data$Q99 == 702] <- 1219 #ANC
merged_r5_data$v2paid[merged_r5_data$Q99 == 703] <- NA #AZAPO
merged_r5_data$v2paid[merged_r5_data$Q99 == 704] <- 4546 #COPE
merged_r5_data$v2paid[merged_r5_data$Q99 == 705] <- 1038 #DA
merged_r5_data$v2paid[merged_r5_data$Q99 == 706] <- NA #VF plus 
merged_r5_data$v2paid[merged_r5_data$Q99 == 707] <- NA #ID
merged_r5_data$v2paid[merged_r5_data$Q99 == 708] <- 1630 #IFP
merged_r5_data$v2paid[merged_r5_data$Q99 == 709] <- NA #MF
merged_r5_data$v2paid[merged_r5_data$Q99 == 711] <- 5731 #NNP
merged_r5_data$v2paid[merged_r5_data$Q99 == 712] <- NA #PAC
merged_r5_data$v2paid[merged_r5_data$Q99 == 713] <- NA #UDM

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 702] <- 1219 #ANC
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 704] <- 4546 #COPE
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 705] <- 1038 #DA
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 708] <- 1630 #IFP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 711] <- 5731 #NNP

#PE measure
merged_r5_data$numparties[merged_r5_data$COUNTRY == 16] <- 2       
merged_r5_data$numgroup[merged_r5_data$COUNTRY == 16] <- 10
merged_r5_data$groupsize1[merged_r5_data$COUNTRY == 16] <- .1868339               
merged_r5_data$groupsize2[merged_r5_data$COUNTRY == 16] <- .1755486
merged_r5_data$groupsize3[merged_r5_data$COUNTRY == 16] <- .1115987
merged_r5_data$groupsize4[merged_r5_data$COUNTRY == 16] <- .0902821
merged_r5_data$groupsize5[merged_r5_data$COUNTRY == 16] <- .0946708
merged_r5_data$groupsize6[merged_r5_data$COUNTRY == 16] <- .108464
merged_r5_data$groupsize7[merged_r5_data$COUNTRY == 16] <- .1191223
merged_r5_data$groupsize8[merged_r5_data$COUNTRY == 16] <- .0489028
merged_r5_data$groupsize9[merged_r5_data$COUNTRY == 16] <- .0332288
merged_r5_data$groupsize10[merged_r5_data$COUNTRY == 16] <- .031348

merged_r5_data$VF[merged_r5_data$COUNTRY == 16] <- .2639549
merged_r5_data$VP[merged_r5_data$COUNTRY == 16] <- .1171261
merged_r5_data$PVF[merged_r5_data$COUNTRY == 16] <- .1285904
merged_r5_data$PVP[merged_r5_data$COUNTRY == 16] <- .2571808

#Vparty Year 
merged_r5_data$vparty_year[merged_r5_data$COUNTRY== 16] <- 2009       
merged_r5_data$year[merged_r5_data$COUNTRY== 16] <- 2011  #nov 

#Compet
merged_r5_data$proximity[merged_r5_data$COUNTRY==16] <- 3 #2014-2011
merged_r5_data$winning_party_share[merged_r5_data$COUNTRY== 16] <-  .6590             
merged_r5_data$second_party_share[merged_r5_data$COUNTRY== 16] <- .1666  #http://electionresources.org/za/provinces.php?election=2009

#     Tanzania 17      

#Int date: MAY-JUN/11
merged_r5_data$winner[merged_r5_data$Q99 == 740] <- 1 

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 740] <- 1 

#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 740] <- 2328 #CCM
merged_r5_data$v2paid[merged_r5_data$Q99 == 741] <- 2345  #CUF
merged_r5_data$v2paid[merged_r5_data$Q99 == 742] <- 2344 #Chadema
merged_r5_data$v2paid[merged_r5_data$Q99 == 743] <- NA #UMD
merged_r5_data$v2paid[merged_r5_data$Q99 == 744] <- NA #NCCR
merged_r5_data$v2paid[merged_r5_data$Q99 == 746] <- 6075 #UDP
merged_r5_data$v2paid[merged_r5_data$Q99 == 749] <- 3553 #TLP 
merged_r5_data$v2paid[merged_r5_data$Q99 == 750] <- 6075 #UDP

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 740] <- 2328 #CCM
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 741] <- 2345  #CUF
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 742] <- 2344 #Chadema
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 746] <- 6075 #UDP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 749] <- 3553 #TLP 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 750] <- 6075 #UDP

#PE measure
merged_r5_data$numparties[merged_r5_data$COUNTRY == 17] <- 3       
merged_r5_data$numgroup[merged_r5_data$COUNTRY == 17] <- 2
merged_r5_data$groupsize1[merged_r5_data$COUNTRY == 17] <- .3896283                 
merged_r5_data$groupsize2[merged_r5_data$COUNTRY == 17] <- .6103717

merged_r5_data$VF[merged_r5_data$COUNTRY == 17] <- .0752676
merged_r5_data$VP[merged_r5_data$COUNTRY == 17] <- .1505352
merged_r5_data$PVF[merged_r5_data$COUNTRY == 17] <- .1196544
merged_r5_data$PVP[merged_r5_data$COUNTRY == 17] <- .1853579

#Vparty Year 
merged_r5_data$vparty_year[merged_r5_data$COUNTRY== 17] <- 2010       
merged_r5_data$year[merged_r5_data$COUNTRY== 17] <- 2012 #jun 

#Compet
merged_r5_data$proximity[merged_r5_data$COUNTRY==17] <- 2 #2012-2010
merged_r5_data$winning_party_share[merged_r5_data$COUNTRY== 17] <- .6283              
merged_r5_data$second_party_share[merged_r5_data$COUNTRY== 17] <- .2705  #AE data

#     Uganda 18       

#Int date: DEC/11-FEB/12
merged_r5_data$winner[merged_r5_data$Q99 == 780] <- 1 

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 780] <- 1 

#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 780] <- 4523 #NRM
merged_r5_data$v2paid[merged_r5_data$Q99 == 781] <- 5389  #FDC
merged_r5_data$v2paid[merged_r5_data$Q99 == 782] <- 4525 #DP
merged_r5_data$v2paid[merged_r5_data$Q99 == 784] <- 4524 #UPC
merged_r5_data$v2paid[merged_r5_data$Q99 == 785] <- NA #PPP
merged_r5_data$v2paid[merged_r5_data$Q99 == 786] <- NA #SDP
merged_r5_data$v2paid[merged_r5_data$Q99 == 787] <- NA #UFA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 791] <- NA #IPC
merged_r5_data$v2paid[merged_r5_data$Q99 == 793] <- NA #CP

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 780] <- 4523 #NRM
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 781] <- 5389  #FDC
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 782] <- 4525 #DP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 784] <- 4524 #UPC

#PE measure
merged_r5_data$numparties[merged_r5_data$COUNTRY == 18] <- 4         
merged_r5_data$numgroup[merged_r5_data$COUNTRY == 18] <- 7
merged_r5_data$groupsize1[merged_r5_data$COUNTRY == 18] <- .2501608                  
merged_r5_data$groupsize2[merged_r5_data$COUNTRY == 18] <- .2237942 
merged_r5_data$groupsize3[merged_r5_data$COUNTRY == 18] <- .1472669
merged_r5_data$groupsize4[merged_r5_data$COUNTRY == 18] <- .1266881
merged_r5_data$groupsize5[merged_r5_data$COUNTRY == 18] <- .0720257
merged_r5_data$groupsize6[merged_r5_data$COUNTRY == 18] <- .1157556
merged_r5_data$groupsize7[merged_r5_data$COUNTRY == 18] <- .0643087
  
merged_r5_data$VF[merged_r5_data$COUNTRY == 18] <- .1269581
merged_r5_data$VP[merged_r5_data$COUNTRY == 18] <- .0878337
merged_r5_data$PVF[merged_r5_data$COUNTRY == 18] <- .1061748
merged_r5_data$PVP[merged_r5_data$COUNTRY == 18] <- .1401809

#Vparty Year 
merged_r5_data$vparty_year[merged_r5_data$COUNTRY== 18] <- 2011       
merged_r5_data$year[merged_r5_data$COUNTRY== 18] <- 2012 #feb 

#Compet
merged_r5_data$proximity[merged_r5_data$COUNTRY==18] <- 1 #2012-2011
merged_r5_data$winning_party_share[merged_r5_data$COUNTRY== 18] <- .6838              
merged_r5_data$second_party_share[merged_r5_data$COUNTRY== 18] <- .2601  #https://www.ec.or.ug/sites/Elec_results/2011_Pres_dis.pdf

#     Zambia 19       

#Int date: JAN/12-FEB/13
merged_r5_data$winner[merged_r5_data$Q99 == 826] <- 1 

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 826] <- 1 

#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 820] <- NA #ADD
merged_r5_data$v2paid[merged_r5_data$Q99 == 821] <- 2332  #FDD
merged_r5_data$v2paid[merged_r5_data$Q99 == 822] <- NA #HP
merged_r5_data$v2paid[merged_r5_data$Q99 == 823] <- 2333 #MMD
merged_r5_data$v2paid[merged_r5_data$Q99 == 826] <- 2302 #PF
merged_r5_data$v2paid[merged_r5_data$Q99 == 827] <- 2334 #UNIP
merged_r5_data$v2paid[merged_r5_data$Q99 == 828] <- 2335 #UPND 
merged_r5_data$v2paid[merged_r5_data$Q99 == 829] <- NA #ZED

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 821] <- 2332  #FDD
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 823] <- 2333 #MMD
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 826] <- 2302 #PF
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 827] <- 2334 #UNIP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 828] <- 2335 #UPND 

#PE measure
merged_r5_data$numparties[merged_r5_data$COUNTRY == 19] <- 4        
merged_r5_data$numgroup[merged_r5_data$COUNTRY == 19] <- 5
merged_r5_data$groupsize1[merged_r5_data$COUNTRY == 19] <- .4596491                  
merged_r5_data$groupsize2[merged_r5_data$COUNTRY == 19] <- .2280702
merged_r5_data$groupsize3[merged_r5_data$COUNTRY == 19] <- .1298246
merged_r5_data$groupsize4[merged_r5_data$COUNTRY == 19] <- .0666667
merged_r5_data$groupsize5[merged_r5_data$COUNTRY == 19] <- .1157895

merged_r5_data$VF[merged_r5_data$COUNTRY == 19] <- .2169719
merged_r5_data$VP[merged_r5_data$COUNTRY == 19] <- .2444102
merged_r5_data$PVF[merged_r5_data$COUNTRY == 19] <- .1841773
merged_r5_data$PVP[merged_r5_data$COUNTRY == 19] <- .2904987

#Vparty Year 
merged_r5_data$vparty_year[merged_r5_data$COUNTRY== 19] <- 2011       
merged_r5_data$year[merged_r5_data$COUNTRY== 19] <- 2013 #feb 

#Compet
merged_r5_data$proximity[merged_r5_data$COUNTRY==19] <- 2 #2013-2011
merged_r5_data$winning_party_share[merged_r5_data$COUNTRY== 19] <- .4285               
merged_r5_data$second_party_share[merged_r5_data$COUNTRY== 19] <- .3615  #https://www.ec.or.ug/sites/Elec_results/2011_Pres_dis.pdf


#     Zimbabwe 20      

#Int date: JUL/12

merged_r5_data$winner[merged_r5_data$Q99 == 861] <- 1 

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 861] <- 1 

#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 860] <- NA #MDC-T
merged_r5_data$v2paid[merged_r5_data$Q99 == 821] <- 2332  #FDD
merged_r5_data$v2paid[merged_r5_data$Q99 == 822] <- NA #HP
merged_r5_data$v2paid[merged_r5_data$Q99 == 823] <- 2333 #MMD
merged_r5_data$v2paid[merged_r5_data$Q99 == 826] <- 2302 #PF
merged_r5_data$v2paid[merged_r5_data$Q99 == 827] <- 2334 #UNIP
merged_r5_data$v2paid[merged_r5_data$Q99 == 828] <- 2335 #UPND 
merged_r5_data$v2paid[merged_r5_data$Q99 == 829] <- NA #ZED

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 821] <- 2332  #FDD
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 823] <- 2333 #MMD
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 826] <- 2302 #PF
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 827] <- 2334 #UNIP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 828] <- 2335 #UPND 

#PE measure
merged_r5_data$numparties[merged_r5_data$COUNTRY == 20] <- 2      
merged_r5_data$numgroup[merged_r5_data$COUNTRY == 20] <- 2
merged_r5_data$groupsize1[merged_r5_data$COUNTRY == 20] <- .6060606                   
merged_r5_data$groupsize2[merged_r5_data$COUNTRY == 20] <- .3939394

merged_r5_data$VF[merged_r5_data$COUNTRY == 20] <- .0610235
merged_r5_data$VP[merged_r5_data$COUNTRY == 20] <- .1220469
merged_r5_data$PVF[merged_r5_data$COUNTRY == 20] <- .0610235
merged_r5_data$PVP[merged_r5_data$COUNTRY == 20] <- .1220469

#Vparty Year 
merged_r5_data$vparty_year[merged_r5_data$COUNTRY== 20] <- 2008       
merged_r5_data$year[merged_r5_data$COUNTRY== 20] <- 2012 #jul 

#Compet
merged_r5_data$proximity[merged_r5_data$COUNTRY==20] <- 1 #2013-2012
merged_r5_data$winning_party_share[merged_r5_data$COUNTRY== 20] <- .9022               
merged_r5_data$second_party_share[merged_r5_data$COUNTRY== 20] <-  .0978 #AE elections

#     Mauritius 21      
#Int date: JAN-FEB/12

merged_r5_data$winner[merged_r5_data$Q99 == 900] <- 1 
merged_r5_data$winner[merged_r5_data$Q99 == 901] <- 1 
merged_r5_data$winner[merged_r5_data$Q99 == 903] <- 1 

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 900] <- 1 
merged_r5_data$winner_party[merged_r5_data$Q89B == 901] <- 1 
merged_r5_data$winner_party[merged_r5_data$Q89B == 903] <- 1 

#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 900] <- 2320 #PT
merged_r5_data$v2paid[merged_r5_data$Q99 == 901] <- 3800  #PMSD
merged_r5_data$v2paid[merged_r5_data$Q99 == 903] <- 3798 #MSM
merged_r5_data$v2paid[merged_r5_data$Q99 == 904] <- NA #FSM
merged_r5_data$v2paid[merged_r5_data$Q99 == 905] <- 2460 #MMM
merged_r5_data$v2paid[merged_r5_data$Q99 == 906] <- NA #UN
merged_r5_data$v2paid[merged_r5_data$Q99 == 907] <- NA #MR 
merged_r5_data$v2paid[merged_r5_data$Q99 == 908] <- 2463 #OPR
merged_r5_data$v2paid[merged_r5_data$Q99 == 909] <- NA #FPR

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 900] <- 2320 #PT
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 901] <- 3800  #PMSD
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 903] <- 3798 #MSM
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 905] <- 2460 #MMM
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 908] <- 2463 #OPR

#     Sierra Leone 22      

#Int date: JUN-JUL/12
merged_r5_data$winner[merged_r5_data$Q99 == 930] <- 1 
merged_r5_data$winner[merged_r5_data$Q99 == 931] <- 1 


#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 930] <- 1 
merged_r5_data$winner_party[merged_r5_data$Q89B == 931] <- 1 


#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 930] <- 4045 #APC
merged_r5_data$v2paid[merged_r5_data$Q99 == 931] <- 4047  #SLPP
merged_r5_data$v2paid[merged_r5_data$Q99 == 932] <- NA #PMDC
merged_r5_data$v2paid[merged_r5_data$Q99 == 933] <- NA #NDA
merged_r5_data$v2paid[merged_r5_data$Q99 == 934] <- NA #UDM

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 930] <- 4045 #APC
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 931] <- 4047  #SLPP

#PE measure
merged_r5_data$numparties[merged_r5_data$COUNTRY == 22] <-3       
merged_r5_data$numgroup[merged_r5_data$COUNTRY == 22] <- 4
merged_r5_data$groupsize1[merged_r5_data$COUNTRY == 22] <- .0886999                    
merged_r5_data$groupsize2[merged_r5_data$COUNTRY == 22] <- .4143378
merged_r5_data$groupsize3[merged_r5_data$COUNTRY == 22] <- .3803159
merged_r5_data$groupsize4[merged_r5_data$COUNTRY == 22] <- .1166464


merged_r5_data$VF[merged_r5_data$COUNTRY == 22] <- .4040888
merged_r5_data$VP[merged_r5_data$COUNTRY == 22] <- .5581603
merged_r5_data$PVF[merged_r5_data$COUNTRY == 22] <- .3523394
merged_r5_data$PVP[merged_r5_data$COUNTRY == 22] <- .6532618

#Vparty Year 
merged_r5_data$vparty_year[merged_r5_data$COUNTRY== 22] <- 2007         
merged_r5_data$year[merged_r5_data$COUNTRY== 22] <- 2012 #jul 

#Compet
merged_r5_data$proximity[merged_r5_data$COUNTRY==22] <- 0 #2012-2012
merged_r5_data$winning_party_share[merged_r5_data$COUNTRY== 22] <- .5462               
merged_r5_data$second_party_share[merged_r5_data$COUNTRY== 22] <- .4538  #AE elections

#     Niger  23      

#Int date: APR/13
merged_r5_data$winner[merged_r5_data$Q99 == 1105] <- 1 
merged_r5_data$winner[merged_r5_data$Q99 == 1103] <- 1 
merged_r5_data$winner[merged_r5_data$Q99 == 1113] <- 1 

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 1105] <- 1 
merged_r5_data$winner_party[merged_r5_data$Q89B == 1103] <- 1 
merged_r5_data$winner_party[merged_r5_data$Q89B == 1113] <- 1 

#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 1100] <- 2351 #ANDP
merged_r5_data$v2paid[merged_r5_data$Q99 == 1101] <- 2352  #CDS 
merged_r5_data$v2paid[merged_r5_data$Q99 == 1102] <- 2350 #MNSD
merged_r5_data$v2paid[merged_r5_data$Q99 == 1103] <- 5285 #MODEN
merged_r5_data$v2paid[merged_r5_data$Q99 == 1104] <- NA #PNA
merged_r5_data$v2paid[merged_r5_data$Q99 == 1105] <- 2325 #PNDS
merged_r5_data$v2paid[merged_r5_data$Q99 == 1106] <- 5347 #PPN-RDA
merged_r5_data$v2paid[merged_r5_data$Q99 == 1109] <- 5804 #RDP
merged_r5_data$v2paid[merged_r5_data$Q99 == 1110] <- 5348 #RSD
merged_r5_data$v2paid[merged_r5_data$Q99 == 1111] <- NA #UDFP
merged_r5_data$v2paid[merged_r5_data$Q99 == 1113] <- 5645 #UDR
merged_r5_data$v2paid[merged_r5_data$Q99 == 1114] <- 7301 #UNIS
merged_r5_data$v2paid[merged_r5_data$Q99 == 1115] <- NA #NA

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1100] <- 2351 #ANDP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1101] <- 2352  #CDS 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1102] <- 2350 #MNSD
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1103] <- 5285 #MODEN 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1105] <- 2325 #PNDS
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1106] <- 5347 #PPN-RDA
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1109] <- 5804 #RDP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1110] <- 5348 #RSD
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1113] <- 5645 #UDR
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1114] <- 7301 #UNIS

#PE measure
merged_r5_data$numparties[merged_r5_data$COUNTRY == 23] <- 5        
merged_r5_data$numgroup[merged_r5_data$COUNTRY == 23] <- 4
merged_r5_data$groupsize1[merged_r5_data$COUNTRY == 23] <- .5539359                     
merged_r5_data$groupsize2[merged_r5_data$COUNTRY == 23] <- .2983479
merged_r5_data$groupsize3[merged_r5_data$COUNTRY == 23] <- .0826045
merged_r5_data$groupsize4[merged_r5_data$COUNTRY == 23] <- .0651118


merged_r5_data$VF[merged_r5_data$COUNTRY == 23] <- .2069145
merged_r5_data$VP[merged_r5_data$COUNTRY == 23] <- .3062325
merged_r5_data$PVF[merged_r5_data$COUNTRY == 23] <- .2551509
merged_r5_data$PVP[merged_r5_data$COUNTRY == 23] <- .273918

#Vparty Year 
merged_r5_data$vparty_year[merged_r5_data$COUNTRY== 23] <- 2011          
merged_r5_data$year[merged_r5_data$COUNTRY== 23] <- 2013 #apr 

#Compet
merged_r5_data$proximity[merged_r5_data$COUNTRY==23] <- 2 #2013-2011
merged_r5_data$winning_party_share[merged_r5_data$COUNTRY== 23] <- .5804               
merged_r5_data$second_party_share[merged_r5_data$COUNTRY== 23] <- .4196  #AE elections

#Togo 24

#Intv date : DEC/12
merged_r5_data$winner[merged_r5_data$Q99 == 1140] <- 1 

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 1140] <- 1 

#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 1140] <- 4131 #UNIR changed from RPT. Party of President Gnassinge
merged_r5_data$v2paid[merged_r5_data$Q99 == 1141] <- 4130  #UFC 
merged_r5_data$v2paid[merged_r5_data$Q99 == 1142] <- 5767 #ANC
merged_r5_data$v2paid[merged_r5_data$Q99 == 1143] <- 4133 #CAR
merged_r5_data$v2paid[merged_r5_data$Q99 == 1144] <- NA #CDPA
merged_r5_data$v2paid[merged_r5_data$Q99 == 1145] <- NA #PRR
merged_r5_data$v2paid[merged_r5_data$Q99 == 1146] <- NA #OBUTS
merged_r5_data$v2paid[merged_r5_data$Q99 == 1148] <- 8071 #ADDI

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1140] <- 4131 #UNIR c
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1141] <- 4130  #UFC 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1142] <- 5767 #ANC
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1143] <- 4133 #CAR
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1144] <- NA #CDPA
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1145] <- NA #PRR
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1148] <- 8071 #ADDI

#PE measure
merged_r5_data$numparties[merged_r5_data$COUNTRY == 24] <- 4         
merged_r5_data$numgroup[merged_r5_data$COUNTRY == 24] <- 2
merged_r5_data$groupsize1[merged_r5_data$COUNTRY == 24] <- .6549296                      
merged_r5_data$groupsize2[merged_r5_data$COUNTRY == 24] <- .3450704



merged_r5_data$VF[merged_r5_data$COUNTRY == 24] <- .1361605
merged_r5_data$VP[merged_r5_data$COUNTRY == 24] <- .272321
merged_r5_data$PVF[merged_r5_data$COUNTRY == 24] <- .1613519 
merged_r5_data$PVP[merged_r5_data$COUNTRY == 24] <- .2781355

#Vparty Year 
merged_r5_data$vparty_year[merged_r5_data$COUNTRY== 24] <- 2007         
merged_r5_data$year[merged_r5_data$COUNTRY== 24] <- 2012  #dec 

#Compet
merged_r5_data$proximity[merged_r5_data$COUNTRY==24] <- 1 #2013-2012
merged_r5_data$winning_party_share[merged_r5_data$COUNTRY== 24] <- .6089               
merged_r5_data$second_party_share[merged_r5_data$COUNTRY== 24] <- .3394  #AE elections

#BURUNDI 25

#Intv date : NOV-DEC/12
merged_r5_data$winner[merged_r5_data$Q99 == 1180] <- 1 

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 1180] <- 1 

#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 1180] <- 5266 #CNDD-FDD
merged_r5_data$v2paid[merged_r5_data$Q99 == 1181] <- NA  #FNL 
merged_r5_data$v2paid[merged_r5_data$Q99 == 1182] <- 5263 #UNP
merged_r5_data$v2paid[merged_r5_data$Q99 == 1183] <- NA #FDB
merged_r5_data$v2paid[merged_r5_data$Q99 == 1184] <- NA #CNDD
merged_r5_data$v2paid[merged_r5_data$Q99 == 1185] <- NA #MSD
merged_r5_data$v2paid[merged_r5_data$Q99 == 1187] <- NA #Frodebu
merged_r5_data$v2paid[merged_r5_data$Q99 == 1189] <- NA #NA

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1180] <- 5266 #CNDD-FDD
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1182] <- 5263 #UNP

#Cameroon 26

#Intv date : MAR/13
merged_r5_data$winner[merged_r5_data$Q99 == 1220] <- 1 

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 1220] <- 1 

#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 1220] <- 3774 # RDPC Intial problem clear case though
merged_r5_data$v2paid[merged_r5_data$Q99 == 1221] <- 3682  #SDF 
merged_r5_data$v2paid[merged_r5_data$Q99 == 1222] <- 3775 #UNDP
merged_r5_data$v2paid[merged_r5_data$Q99 == 1223] <- NA #UDC
merged_r5_data$v2paid[merged_r5_data$Q99 == 1224] <- NA #PM
merged_r5_data$v2paid[merged_r5_data$Q99 == 1225] <- 5411 #UPC
merged_r5_data$v2paid[merged_r5_data$Q99 == 1226] <- NA #ADD
merged_r5_data$v2paid[merged_r5_data$Q99 == 1227] <- NA #MDR

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1220] <- 3774 # RDP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1221] <- 3682  #SDF 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1222] <- 3775 #UNDP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1225] <- 5411 #UPC

#Ivory Coast 27
#Intv date : Mar/13
merged_r5_data$winner[merged_r5_data$Q99 == 1260] <- 1 

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 1260] <- 1 

#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 1260] <- 5097 #RDR
merged_r5_data$v2paid[merged_r5_data$Q99 == 1261] <- 5098  #PDCI 
merged_r5_data$v2paid[merged_r5_data$Q99 == 1262] <- 5096 #FPI
merged_r5_data$v2paid[merged_r5_data$Q99 == 1263] <- 7335 #UDPCI
merged_r5_data$v2paid[merged_r5_data$Q99 == 1264] <- NA #UDCY
merged_r5_data$v2paid[merged_r5_data$Q99 == 1266] <- NA #PIT
merged_r5_data$v2paid[merged_r5_data$Q99 == 1268] <- NA #UPCI
merged_r5_data$v2paid[merged_r5_data$Q99 == 1269] <- NA #MDR

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1260] <- 5097 #RDR
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1261] <- 5098  #PDCI 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1262] <- 5096 #FPI
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1263] <- 7335 #UDPCI

#PE measure
merged_r5_data$numparties[merged_r5_data$COUNTRY == 27] <- 4          
merged_r5_data$numgroup[merged_r5_data$COUNTRY == 27] <- 3
merged_r5_data$groupsize1[merged_r5_data$COUNTRY == 27] <- .3881789                       
merged_r5_data$groupsize2[merged_r5_data$COUNTRY == 27] <- .2140575
merged_r5_data$groupsize3[merged_r5_data$COUNTRY == 27] <- .3977636

merged_r5_data$VF[merged_r5_data$COUNTRY == 27] <- .3640377
merged_r5_data$VP[merged_r5_data$COUNTRY == 27] <- .4999045
merged_r5_data$PVF[merged_r5_data$COUNTRY == 27] <- .3653539 
merged_r5_data$PVP[merged_r5_data$COUNTRY == 27] <- .4708088

#Vparty Year 
merged_r5_data$vparty_year[merged_r5_data$COUNTRY== 27] <-  2011        
merged_r5_data$year[merged_r5_data$COUNTRY== 27] <- 2013  #mar 

#Compet
merged_r5_data$proximity[merged_r5_data$COUNTRY==27] <- 2 #2013-2011
merged_r5_data$winning_party_share[merged_r5_data$COUNTRY== 27] <- .5410              
merged_r5_data$second_party_share[merged_r5_data$COUNTRY== 27] <- .459  #AE elections

#   Guinea 28
#Intv date : Mar-Apr/13
merged_r5_data$winner[merged_r5_data$Q99 == 1300] <- 1 

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 1300] <- 1 

#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 1300] <- 4063 #RDR
merged_r5_data$v2paid[merged_r5_data$Q99 == 1301] <- 4274  #UFDG 
merged_r5_data$v2paid[merged_r5_data$Q99 == 1302] <- 4275 #UFR
merged_r5_data$v2paid[merged_r5_data$Q99 == 1303] <- NA #HOPE AND DV
merged_r5_data$v2paid[merged_r5_data$Q99 == 1304] <- NA #NG
merged_r5_data$v2paid[merged_r5_data$Q99 == 1305] <- 4276 #UPR
merged_r5_data$v2paid[merged_r5_data$Q99 == 1306] <- NA #UP
merged_r5_data$v2paid[merged_r5_data$Q99 == 1307] <- NA #GPT
merged_r5_data$v2paid[merged_r5_data$Q99 == 1308] <- NA #RFIDG
merged_r5_data$v2paid[merged_r5_data$Q99 == 1309] <- NA #RDR
merged_r5_data$v2paid[merged_r5_data$Q99 == 1310] <- 4276 #UPR
merged_r5_data$v2paid[merged_r5_data$Q99 == 1311] <- NA #NFD

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1300] <- 4063 #RDR
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1301] <- 4274  #UFDG 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1302] <- 4275 #UFR
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1305] <- 4276 #UPR

#PE measure
merged_r5_data$numparties[merged_r5_data$COUNTRY == 28] <-  4       
merged_r5_data$numgroup[merged_r5_data$COUNTRY == 28] <- 3
merged_r5_data$groupsize1[merged_r5_data$COUNTRY == 28] <- .4212454                        
merged_r5_data$groupsize2[merged_r5_data$COUNTRY == 28] <- .3833944
merged_r5_data$groupsize3[merged_r5_data$COUNTRY == 28] <- .1953602

merged_r5_data$VF[merged_r5_data$COUNTRY == 28] <- .3848225
merged_r5_data$VP[merged_r5_data$COUNTRY == 28] <- .562806
merged_r5_data$PVF[merged_r5_data$COUNTRY == 28] <- .3754984 
merged_r5_data$PVP[merged_r5_data$COUNTRY == 28] <- .5961056

#Vparty Year 
merged_r5_data$vparty_year[merged_r5_data$COUNTRY== 28] <- 2013          
merged_r5_data$year[merged_r5_data$COUNTRY== 28] <- 2013  #mar 

#Compet
merged_r5_data$proximity[merged_r5_data$COUNTRY==28] <- 2 #2015-2013
merged_r5_data$winning_party_share[merged_r5_data$COUNTRY== 28] <- .5252              
merged_r5_data$second_party_share[merged_r5_data$COUNTRY== 28] <- .4748  #AE elections

## Swaziland 30 SKIPPED BECAUSE MISSING VOTING AND PARTY ITEMS


## Algeria      31
#Date inter: JAN-FEB 13
merged_r5_data$winner[merged_r5_data$Q99 == 1420] <- 1 
merged_r5_data$winner[merged_r5_data$Q99 == 1421] <- 1 

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 1420] <- 1
merged_r5_data$winner_party[merged_r5_data$Q89B == 1421] <- 1 

#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 1420] <- 4111 #FLM
merged_r5_data$v2paid[merged_r5_data$Q99 == 1421] <- 4113  #NRD 
merged_r5_data$v2paid[merged_r5_data$Q99 == 1422] <- 4114 #FFS
merged_r5_data$v2paid[merged_r5_data$Q99 == 1423] <- NA #RCD
merged_r5_data$v2paid[merged_r5_data$Q99 == 1424] <- 5622 #PT
merged_r5_data$v2paid[merged_r5_data$Q99 == 1425] <- 6219 #MRI
merged_r5_data$v2paid[merged_r5_data$Q99 == 1426] <- 5221 #MSPP
merged_r5_data$v2paid[merged_r5_data$Q99 == 1427] <- NA #TAJ
merged_r5_data$v2paid[merged_r5_data$Q99 == 1428] <- NA #PAR
merged_r5_data$v2paid[merged_r5_data$Q99 == 1430] <- NA #ND

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1420] <- 4111 #FLM
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1421] <- 4113  #NRD 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1422] <- 4114 #FFS
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1424] <- 5622 #PT
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1425] <- 6219 #MRI
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1426] <- 5221 #MSPP

#EGYPT skip Arab Spring

#Morrocco 33
#APR-MAY 13
merged_r5_data$winner[merged_r5_data$Q99 == 1502] <- 1 
merged_r5_data$winner[merged_r5_data$Q99 == 1501] <- 1 
merged_r5_data$winner[merged_r5_data$Q99 == 1506] <- 1 
merged_r5_data$winner[merged_r5_data$Q99 == 1507] <- 1 

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 1502] <- 1
merged_r5_data$winner_party[merged_r5_data$Q89B == 1501] <- 1 
merged_r5_data$winner_party[merged_r5_data$Q89B == 1506] <- 1 
merged_r5_data$winner_party[merged_r5_data$Q89B == 1507] <- 1 

#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 1500] <- 2324 #USFP
merged_r5_data$v2paid[merged_r5_data$Q99 == 1501] <- 2482  #I 
merged_r5_data$v2paid[merged_r5_data$Q99 == 1502] <- 2479 #PJD
merged_r5_data$v2paid[merged_r5_data$Q99 == 1503] <- 2480 #RNI
merged_r5_data$v2paid[merged_r5_data$Q99 == 1504] <- 2481 #MP
merged_r5_data$v2paid[merged_r5_data$Q99 == 1505] <- NA #PSU
merged_r5_data$v2paid[merged_r5_data$Q99 == 1506] <- 6220 #PPS
merged_r5_data$v2paid[merged_r5_data$Q99 == 1507] <- 5323 #UC
merged_r5_data$v2paid[merged_r5_data$Q99 == 1508] <- 5705 #MDS
merged_r5_data$v2paid[merged_r5_data$Q99 == 1511] <- NA #Pads
merged_r5_data$v2paid[merged_r5_data$Q99 == 1512] <- NA #PC
merged_r5_data$v2paid[merged_r5_data$Q99 == 1513] <- NA #CNI
merged_r5_data$v2paid[merged_r5_data$Q99 == 1517] <- NA #PRE
merged_r5_data$v2paid[merged_r5_data$Q99 == 1519] <- NA #Socialist party although merged later cannot replace. 
merged_r5_data$v2paid[merged_r5_data$Q99 == 1521] <- 5325 #PAM
merged_r5_data$v2paid[merged_r5_data$Q99 == 1525] <- NA #PDS
merged_r5_data$v2paid[merged_r5_data$Q99 == 1526] <- NA #PFSJ

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1500] <- 2324 #USFP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1501] <- 2482  #I 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1502] <- 2479 #PJD
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1503] <- 2480 #RNI
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1504] <- 2481 #MP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1506] <- 6220 #PPS
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1507] <- 5323 #UC
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1508] <- 5705 #MDS
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1521] <- 5325 #PAM

#         Sudan 34
merged_r5_data$winner[merged_r5_data$Q99 == 1540] <- 1 

#Close Party Winner/Loser 
merged_r5_data$winner_party[merged_r5_data$Q89B == 1540] <- 1

#Party Matching Vote
merged_r5_data$v2paid[merged_r5_data$Q99 == -1] <- NA 
merged_r5_data$v2paid[merged_r5_data$Q99 == 1540] <- 5496 #NCP
merged_r5_data$v2paid[merged_r5_data$Q99 == 1541] <- NA  #PCP 
merged_r5_data$v2paid[merged_r5_data$Q99 == 1542] <- 4756 #UMMA
merged_r5_data$v2paid[merged_r5_data$Q99 == 1543] <- NA #SCP
merged_r5_data$v2paid[merged_r5_data$Q99 == 1544] <- NA #PF
merged_r5_data$v2paid[merged_r5_data$Q99 == 1545] <- NA #PSU
merged_r5_data$v2paid[merged_r5_data$Q99 == 1546] <- 4754 #DUOP

#Party Matching Close
merged_r5_data$v2paid_close[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1540] <- 5496 #NCP
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1542] <- 4756 #UMMA
merged_r5_data$v2paid_close[merged_r5_data$Q89B == 1546] <- 4754 #DUOP

#Tunisia Arab Spring

#END Codes 
merged_r5_data$loser_party <- 1 
merged_r5_data$loser_party[merged_r5_data$winner_party == 1] <- 0
merged_r5_data$loser_party[merged_r5_data$nonpartisan == 1] <- 0
merged_r5_data$loser_party[merged_r5_data$Q89B == 9999] <- NA
merged_r5_data$loser_party[merged_r5_data$Q89B == 9998] <- NA
merged_r5_data$loser_party[merged_r5_data$Q89B == -1] <- NA
merged_r5_data$loser_party[merged_r5_data$Q89A == -1] <- NA
merged_r5_data$loser_party[merged_r5_data$Q89A == 8] <- NA
merged_r5_data$loser_party[merged_r5_data$Q89A == 9] <- NA

#Loser
merged_r5_data$loser <- 0 
merged_r5_data$loser[merged_r5_data$winner == 0 & merged_r5_data$didnt_vote == 0] <- 1
merged_r5_data$loser[merged_r5_data$Q99 == 9998] <- NA
merged_r5_data$loser[merged_r5_data$Q99 == 9999] <- NA
merged_r5_data$loser[merged_r5_data$Q99 == -1] <- NA

#____________________________________________________________________________________________
#__________________________WAVE 6 AFRO ________________________________________
#____________________________________________________________________________________________

#Algeria 1 
#Date: May-Jun 2015
merged_r6_data$winner <- 0
merged_r6_data$winner[merged_r6_data$Q99 == 1420] <- 1 #BDP

#Refused to and I don't know are dropped. They did not answer the question.
merged_r6_data$winner[merged_r6_data$Q99 == -1] <- NA
merged_r6_data$winner[merged_r6_data$Q99 == 9998] <- NA 
merged_r6_data$winner[merged_r6_data$Q99 == 9999] <- NA 

#Non Voter 
merged_r6_data$didnt_vote <- 0
merged_r6_data$didnt_vote[merged_r6_data$Q99 == 9997] <- 1
merged_r6_data$didnt_vote[merged_r6_data$Q99 == 9998] <- NA
merged_r6_data$didnt_vote[merged_r6_data$Q99 == 9999] <- NA

#Close Party Winner/Loser 
merged_r6_data$winner_party <- 0 
merged_r6_data$winner_party[merged_r6_data$Q90B == 1420] <- 1 
merged_r6_data$winner_party[merged_r6_data$Q90B == -1] <- NA 
merged_r6_data$winner_party[merged_r6_data$Q90B == 9997] <- 0 
merged_r6_data$winner_party[merged_r6_data$Q90B == 9995] <- 0 
merged_r6_data$winner_party[merged_r6_data$Q90B == 9998] <- NA 
merged_r6_data$winner_party[merged_r6_data$Q90B == 99] <- NA 
merged_r6_data$winner_party[merged_r6_data$Q90B == 9999] <- NA 
merged_r6_data$winner_party[merged_r6_data$Q90A == 9] <- NA 
merged_r6_data$winner_party[merged_r6_data$Q90A == 99] <- NA 
merged_r6_data$winner_party[merged_r6_data$Q90A == 8] <- NA 
merged_r6_data$winner_party[merged_r6_data$Q90A == -1] <- NA 

merged_r6_data$nonpartisan <- 0
merged_r6_data$nonpartisan[merged_r6_data$Q90A == 0] <- 1
merged_r6_data$nonpartisan[merged_r6_data$Q90A == 8] <- NA
merged_r6_data$nonpartisan[merged_r6_data$Q90A == 9] <- NA
merged_r6_data$nonpartisan[merged_r6_data$Q90A == 99] <- NA
merged_r6_data$nonpartisan[merged_r6_data$Q90A == -1] <- NA

merged_r6_data$didnt_party <- 0
merged_r6_data$didnt_party[merged_r6_data$Q90A == 0] <- 1
merged_r6_data$didnt_party[merged_r6_data$Q90A == 8] <- NA
merged_r6_data$didnt_party[merged_r6_data$Q90A == 9] <- NA
merged_r6_data$didnt_party[merged_r6_data$Q90A == 99] <- NA
merged_r6_data$didnt_party[merged_r6_data$Q90A == -1] <- NA

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == -1] <- NA 
merged_r6_data$v2paid[merged_r6_data$Q99 == 1420] <- 4111 #FLN
merged_r6_data$v2paid[merged_r6_data$Q99 == 1421] <- 4113  #NRD
merged_r6_data$v2paid[merged_r6_data$Q99 == 1422] <- 4114 #FFS
merged_r6_data$v2paid[merged_r6_data$Q99 == 1423] <- 5622 #PT
merged_r6_data$v2paid[merged_r6_data$Q99 == 1424] <- 5221 #HMS
merged_r6_data$v2paid[merged_r6_data$Q99 == 1425] <- 6219 #MN
merged_r6_data$v2paid[merged_r6_data$Q99 == 1426] <- NA #TAJ
merged_r6_data$v2paid[merged_r6_data$Q99 == 1427] <- NA #El ADALA
merged_r6_data$v2paid[merged_r6_data$Q99 == 1428] <- NA #MPA
merged_r6_data$v2paid[merged_r6_data$Q99 == 1429] <- NA #PFJ

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == -1] <- NA 
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1420] <- 4111 #FLN
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1421] <- 4113  #NRD
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1422] <- 4114 #FFS
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1423] <- 5622 #PT
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1424] <- 5221 #HMS
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1425] <- 6219 #MN

#Benin 2
#Date: May-Jun 2014
merged_r6_data$winner[merged_r6_data$Q99 == 100] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 100] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == -1] <- NA 
merged_r6_data$v2paid[merged_r6_data$Q99 == 100] <- 2300 #FCBE
merged_r6_data$v2paid[merged_r6_data$Q99 == 101] <- 6569  #UN
merged_r6_data$v2paid[merged_r6_data$Q99 == 102] <- 93518 #RB
merged_r6_data$v2paid[merged_r6_data$Q99 == 103] <- NA #ABT
merged_r6_data$v2paid[merged_r6_data$Q99 == 104] <- NA #ABT
merged_r6_data$v2paid[merged_r6_data$Q99 == 105] <- NA #PIK
merged_r6_data$v2paid[merged_r6_data$Q99 == 106] <- NA #GGR 
merged_r6_data$v2paid[merged_r6_data$Q99 == 107] <- 7060 #UPR
merged_r6_data$v2paid[merged_r6_data$Q99 == 108] <- NA #GAF

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == -1] <- NA 
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 100] <- 2300 #FCBE
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 101] <- 6569  #UN
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 102] <- 93518 #RB
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 107] <- 7060 #UPR

#Botswana 3 
#Date: Jun-Jul 2014
merged_r6_data$winner[merged_r6_data$Q99 == 141] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 141] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 140] <- 2337 #BCP
merged_r6_data$v2paid[merged_r6_data$Q99 == 141] <- 2301  #BDP
merged_r6_data$v2paid[merged_r6_data$Q99 == 142] <- NA #BMD
merged_r6_data$v2paid[merged_r6_data$Q99 == 143] <- 2336 #BNF
merged_r6_data$v2paid[merged_r6_data$Q99 == 145] <- NA #Marx
merged_r6_data$v2paid[merged_r6_data$Q99 == 146] <- 4832 #UDC

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 140] <- 2337 #BCP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 141] <- 2301  #BDP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 143] <- 2336 #BNF
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 146] <- 4832 #UDC

#Burkina Faso 4
#Apr-May 2015

merged_r6_data$winner[merged_r6_data$Q99 == 181] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 181] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 180] <- 4314 #ADF-RDA
merged_r6_data$v2paid[merged_r6_data$Q99 == 181] <- 4313  #CDP
merged_r6_data$v2paid[merged_r6_data$Q99 == 182] <- NA #CFD/B
merged_r6_data$v2paid[merged_r6_data$Q99 == 183] <- NA #AF
merged_r6_data$v2paid[merged_r6_data$Q99 == 184] <- 5769 #MPP
merged_r6_data$v2paid[merged_r6_data$Q99 == 185] <- 4317 #PDS
merged_r6_data$v2paid[merged_r6_data$Q99 == 186] <- 5807 #UNDD
merged_r6_data$v2paid[merged_r6_data$Q99 == 187] <- NA #UNIR/PS
merged_r6_data$v2paid[merged_r6_data$Q99 == 188] <- 4315 #UPC
merged_r6_data$v2paid[merged_r6_data$Q99 == 189] <- NA #UPR
merged_r6_data$v2paid[merged_r6_data$Q99 == 190] <- NA #NAFA
merged_r6_data$v2paid[merged_r6_data$Q99 == 191] <- NA #Aucun Parti
merged_r6_data$v2paid[merged_r6_data$Q99 == 192] <- NA #MK

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 180] <- 4314 #ADF-RDA
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 181] <- 4313  #CDP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 184] <- 5769 #MPP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 185] <- 4317 #PDS
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 186] <- 5807 #UNDD
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 188] <- 4315 #UPC

#Burundi 5
#Sep-Oct 2014

merged_r6_data$winner[merged_r6_data$Q99 == 1180] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 1180] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 1180] <- 5266 #CND-FDD
merged_r6_data$v2paid[merged_r6_data$Q99 == 1181] <- NA  #FNL
merged_r6_data$v2paid[merged_r6_data$Q99 == 1182] <- 5263 #UPRONA
merged_r6_data$v2paid[merged_r6_data$Q99 == 1183] <- 5265 #FRODEBU
merged_r6_data$v2paid[merged_r6_data$Q99 == 1184] <-  NA #CNDD
merged_r6_data$v2paid[merged_r6_data$Q99 == 1185] <- NA #MSD
merged_r6_data$v2paid[merged_r6_data$Q99 == 1186] <- NA #UPD
merged_r6_data$v2paid[merged_r6_data$Q99 == 1187] <- NA #Swahana
merged_r6_data$v2paid[merged_r6_data$Q99 == 1188] <- NA #FNL
merged_r6_data$v2paid[merged_r6_data$Q99 == 1189] <- NA #MRC
merged_r6_data$v2paid[merged_r6_data$Q99 == 1190] <- NA #NAFA

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1180] <- 5266 #CND-FDD
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1182] <- 5263 #UPRONA
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1183] <- 5265 #FRODEBU

#Cameroon 6
#Jan-Feb 2015
merged_r6_data$winner[merged_r6_data$Q99 == 1220] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 1220] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 1220] <- 3774 #CPDM
merged_r6_data$v2paid[merged_r6_data$Q99 == 1221] <- 3682  #SDF
merged_r6_data$v2paid[merged_r6_data$Q99 == 1222] <- 3775 #UNDP
merged_r6_data$v2paid[merged_r6_data$Q99 == 1223] <- NA #UDC
merged_r6_data$v2paid[merged_r6_data$Q99 == 1224] <-  NA #CNDD

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1220] <- 3774 #CPDM
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1221] <- 3682  #SDF
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1222] <- 3775 #UNDP

# 7  Cape Verde SKIPPED BC NO Ethnic Groups
#Nov-Dec 2014

# 8  Cote d'Ivoire 
#Aug-Sep 2014
merged_r6_data$winner[merged_r6_data$Q99 == 1260] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 1260] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 1260] <- 5097 #RDR
merged_r6_data$v2paid[merged_r6_data$Q99 == 1261] <- 5098  #PDCI
merged_r6_data$v2paid[merged_r6_data$Q99 == 1262] <- 5096 #FPI
merged_r6_data$v2paid[merged_r6_data$Q99 == 1263] <- NA #UDPCI
merged_r6_data$v2paid[merged_r6_data$Q99 == 1266] <-  NA #PIT
merged_r6_data$v2paid[merged_r6_data$Q99 == 1267] <-  NA #USD
merged_r6_data$v2paid[merged_r6_data$Q99 == 1268] <-  NA #UPCI

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1260] <- 5097 #RDR
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1261] <- 5098  #PDCI
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1262] <- 5096 #FPI

# 9  Egypt
#Jun-Jul 2015

#Independent President 

#10 Gabon
#Sep-Oct 2015

merged_r6_data$winner[merged_r6_data$Q99 == 1700] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 1700] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 1700] <- 5200 #PDG
merged_r6_data$v2paid[merged_r6_data$Q99 == 1701] <-  NA #UN
merged_r6_data$v2paid[merged_r6_data$Q99 == 1702] <- 5591 #UPG
merged_r6_data$v2paid[merged_r6_data$Q99 == 1703] <- NA #CLR
merged_r6_data$v2paid[merged_r6_data$Q99 == 1704] <-  5592 #RPG
merged_r6_data$v2paid[merged_r6_data$Q99 == 1705] <-  NA #USD

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1700] <- 5200 #PDG
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1702] <- 5591 #UPG
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1704] <-  5592 #RPG

#11 Ghana
#May-Jul 2014

merged_r6_data$winner[merged_r6_data$Q99 == 261] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 261] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 260] <- 3660 #CPP
merged_r6_data$v2paid[merged_r6_data$Q99 == 261] <-  2311 #NDC
merged_r6_data$v2paid[merged_r6_data$Q99 == 262] <- 2312 #NPP
merged_r6_data$v2paid[merged_r6_data$Q99 == 263] <- NA #PNC
merged_r6_data$v2paid[merged_r6_data$Q99 == 264] <-  NA #PPP

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 260] <- 3660 #CPP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 261] <-  2311 #NDC
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 262] <- 2312 #NPP

#12 Guinea
#Mar-Apl 2015

merged_r6_data$winner[merged_r6_data$Q99 == 1300] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 1300] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 1300] <- 4063 #RPG
merged_r6_data$v2paid[merged_r6_data$Q99 == 1301] <- 4276 #UFDG
merged_r6_data$v2paid[merged_r6_data$Q99 == 1302] <- 4275 #UFR
merged_r6_data$v2paid[merged_r6_data$Q99 == 1303] <- NA #PEDN
merged_r6_data$v2paid[merged_r6_data$Q99 == 1304] <-  NA #UPG
merged_r6_data$v2paid[merged_r6_data$Q99 == 1305] <-  NA #RDIG

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1300] <- 4063 #RPG
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1301] <- 4276 #UFDG
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1302] <- 4275 #UFR

#13 Kenya
#Nov-Dec 2014
merged_r6_data$winner[merged_r6_data$Q99 == 305] <- 1 #TNA
merged_r6_data$winner[merged_r6_data$Q99 == 301] <- 1 #NARC-K
merged_r6_data$winner[merged_r6_data$Q99 == 307] <- 1 #URP

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 305] <- 1 
merged_r6_data$winner_party[merged_r6_data$Q90B == 301] <- 1 
merged_r6_data$winner_party[merged_r6_data$Q90B == 307] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 300] <- NA #KSC
merged_r6_data$v2paid[merged_r6_data$Q99 == 301] <- 7970 #NARCK K
merged_r6_data$v2paid[merged_r6_data$Q99 == 302] <- 2360 #ODM
merged_r6_data$v2paid[merged_r6_data$Q99 == 303] <- NA #RBK
merged_r6_data$v2paid[merged_r6_data$Q99 == 304] <-  3850 #SAFINA
merged_r6_data$v2paid[merged_r6_data$Q99 == 305] <-  3867 #TNA
merged_r6_data$v2paid[merged_r6_data$Q99 == 306] <-  NA #UDF
merged_r6_data$v2paid[merged_r6_data$Q99 == 307] <-  3856 #URP
merged_r6_data$v2paid[merged_r6_data$Q99 == 308] <-  2362 #WDM-K
merged_r6_data$v2paid[merged_r6_data$Q99 == 309] <-  3863 #FORD-K

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 301] <- 7970 #NARCK K
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 302] <- 2360 #ODM
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 304] <-  3850 #SAFINA
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 305] <-  3867 #TNA
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 307] <-  3856 #URP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 308] <-  2362 #WDM-K
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 309] <-  3863 #FORD-K

#14 Lesotho 
#https://amp.dw.com/en/lesotho-heads-towards-a-coalition-government/a-15984948
#May 2014

merged_r6_data$winner[merged_r6_data$Q99 == 342] <- 1 
merged_r6_data$winner[merged_r6_data$Q99 == 343] <- 1 
merged_r6_data$winner[merged_r6_data$Q99 == 344] <- 1 
merged_r6_data$winner[merged_r6_data$Q99 == 348] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 342] <- 1 
merged_r6_data$winner_party[merged_r6_data$Q90B == 343] <- 1 
merged_r6_data$winner_party[merged_r6_data$Q90B == 344] <- 1 
merged_r6_data$winner_party[merged_r6_data$Q90B == 348] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 340] <- 4166 #DC
merged_r6_data$v2paid[merged_r6_data$Q99 == 341] <- 3766 #ABC
merged_r6_data$v2paid[merged_r6_data$Q99 == 342] <- 3771 #LCD
merged_r6_data$v2paid[merged_r6_data$Q99 == 343] <- 4171 #BNP
merged_r6_data$v2paid[merged_r6_data$Q99 == 344] <-  NA #PFD
merged_r6_data$v2paid[merged_r6_data$Q99 == 345] <-  4170 #NIP
merged_r6_data$v2paid[merged_r6_data$Q99 == 346] <-  3768 #LPC
merged_r6_data$v2paid[merged_r6_data$Q99 == 348] <-  4172 #MFP
merged_r6_data$v2paid[merged_r6_data$Q99 == 349] <-  4167 #BCP

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 340] <- 4166 #DC
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 341] <- 3766 #ABC
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 342] <- 3771 #LCD
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 343] <- 4171 #BNP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 345] <-  4170 #NIP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 346] <-  3768 #LPC
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 348] <-  4172 #MFP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 349] <-  4167 #BCP

merged_r6_data$v2paid_close[merged_r6_data$Q90B == 347] <-  NA #BDNP

#15 Liberia
#May 2015
merged_r6_data$winner[merged_r6_data$Q99 == 386] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 286] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 380] <- NA #NRP
merged_r6_data$v2paid[merged_r6_data$Q99 == 381] <- NA #FDP
merged_r6_data$v2paid[merged_r6_data$Q99 == 382] <- NA #APD
merged_r6_data$v2paid[merged_r6_data$Q99 == 383] <- 6596 #NDC
merged_r6_data$v2paid[merged_r6_data$Q99 == 384] <-  4139 #LP
merged_r6_data$v2paid[merged_r6_data$Q99 == 385] <-  5837 #TWP
merged_r6_data$v2paid[merged_r6_data$Q99 == 386] <-  4140 #UP
merged_r6_data$v2paid[merged_r6_data$Q99 == 387] <-  4143 #NDPL
merged_r6_data$v2paid[merged_r6_data$Q99 == 388] <-  NA #ULD
merged_r6_data$v2paid[merged_r6_data$Q99 == 389] <-  4136 #CDC
merged_r6_data$v2paid[merged_r6_data$Q99 == 390] <-  NA #LDP
merged_r6_data$v2paid[merged_r6_data$Q99 == 391] <-  NA #PRODEM
merged_r6_data$v2paid[merged_r6_data$Q99 == 392] <-  NA #LINU
merged_r6_data$v2paid[merged_r6_data$Q99 == 393] <-  NA #ALCOP
merged_r6_data$v2paid[merged_r6_data$Q99 == 394] <-  NA #LRP
merged_r6_data$v2paid[merged_r6_data$Q99 == 395] <-  5163 #NUDP
merged_r6_data$v2paid[merged_r6_data$Q99 == 396] <-  NA #NATVIPOL
merged_r6_data$v2paid[merged_r6_data$Q99 == 397] <-  NA #PPP
merged_r6_data$v2paid[merged_r6_data$Q99 == 398] <-  NA #MPC
merged_r6_data$v2paid[merged_r6_data$Q99 == 400] <-  NA #VCP
merged_r6_data$v2paid[merged_r6_data$Q99 == 401] <-  NA #MAPOL
merged_r6_data$v2paid[merged_r6_data$Q99 == 402] <-  NA #Grassroot
merged_r6_data$v2paid[merged_r6_data$Q99 == 403] <-  NA #CUP
merged_r6_data$v2paid[merged_r6_data$Q99 == 406] <-  NA #TLP
merged_r6_data$v2paid[merged_r6_data$Q99 == 408] <-  NA #RP
merged_r6_data$v2paid[merged_r6_data$Q99 == 409] <-  5993 #PUP
merged_r6_data$v2paid[merged_r6_data$Q99 == 410] <-  5988 #ANC


#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 383] <- 6596 #NDC
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 384] <-  4139 #LP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 385] <-  5837 #TWP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 386] <-  4140 #UP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 387] <-  4143 #NDPL
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 389] <-  4136 #CDC
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 395] <-  5163 #NUDP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 409] <-  5993 #PUP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 410] <-  5988 #ANC

#merged_r6_data$v2paid_close[merged_r6_data$Q90B == 399] <-  NA #BDNP

#16 Madagascar #Ind President
#Dec-Jan 2015

merged_r6_data$winner[merged_r6_data$Q99 == 441] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 411] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 420] <- 5369 #AKFM
merged_r6_data$v2paid[merged_r6_data$Q99 == 421] <- NA #AKFM F
merged_r6_data$v2paid[merged_r6_data$Q99 == 423] <- NA #MGP
merged_r6_data$v2paid[merged_r6_data$Q99 == 424] <- 5311 #AREMA
merged_r6_data$v2paid[merged_r6_data$Q99 == 425] <-  5373 #AVI
merged_r6_data$v2paid[merged_r6_data$Q99 == 428] <-  5370 #FANILO
merged_r6_data$v2paid[merged_r6_data$Q99 == 429] <-  NA #mahaleo
merged_r6_data$v2paid[merged_r6_data$Q99 == 431] <-  5838 #MFM
merged_r6_data$v2paid[merged_r6_data$Q99 == 432] <-  NA #MDM
merged_r6_data$v2paid[merged_r6_data$Q99 == 433] <-  NA #Monima
merged_r6_data$v2paid[merged_r6_data$Q99 == 434] <-  NA #MTS
merged_r6_data$v2paid[merged_r6_data$Q99 == 435] <-  NA #RPSD-V
merged_r6_data$v2paid[merged_r6_data$Q99 == 437] <-  NA #TGV
merged_r6_data$v2paid[merged_r6_data$Q99 == 438] <-  5201 #TIM
merged_r6_data$v2paid[merged_r6_data$Q99 == 439] <-  5869 #UNDD
merged_r6_data$v2paid[merged_r6_data$Q99 == 440] <- 8069 #MAPAR
merged_r6_data$v2paid[merged_r6_data$Q99 == 441] <-  NA #HVM

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 420] <- 5369 #AKFM
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 424] <- 5311 #AREMA
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 425] <-  5373 #AVI
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 428] <-  5370 #FANILO
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 431] <-  5838 #MFM
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 438] <-  5201 #TIM
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 439] <-  5869 #UNDD
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 440] <- 8069 #MAPAR
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 410] <-  5988 #ANC

#merged_r6_data$v2paid_close[merged_r6_data$Q90B == 399] <-  NA #BDNP

#17 Malawi
#Mar-Apr 2014
merged_r6_data$winner[merged_r6_data$Q99 == 462] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 462] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 462] <- 4846 #DPP
merged_r6_data$v2paid[merged_r6_data$Q99 == 463] <- NA #Mafunde
merged_r6_data$v2paid[merged_r6_data$Q99 == 464] <- 3732 #MCP
merged_r6_data$v2paid[merged_r6_data$Q99 == 468] <-  NA #NSF
merged_r6_data$v2paid[merged_r6_data$Q99 == 472] <-  4847 #PP
merged_r6_data$v2paid[merged_r6_data$Q99 == 473] <-  NA #PPM
merged_r6_data$v2paid[merged_r6_data$Q99 == 476] <-  3734 #UDF
merged_r6_data$v2paid[merged_r6_data$Q99 == 479] <-  NA #UIP

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 462] <- 4846 #DPP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 464] <- 3732 #MCP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 472] <-  4847 #PP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 476] <-  3734 #UDF

#merged_r6_data$v2paid_close[merged_r6_data$Q90B == 399] <-  NA #BDNP

#18 Mali
#Dec 2014
merged_r6_data$winner[merged_r6_data$Q99 == 516] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 516] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 500] <- 2477 #ADEMA-PASJ
merged_r6_data$v2paid[merged_r6_data$Q99 == 501] <- NA #ADP-M
merged_r6_data$v2paid[merged_r6_data$Q99 == 502] <- NA #ASMA-CFP
merged_r6_data$v2paid[merged_r6_data$Q99 == 503] <-  NA #BDIA
merged_r6_data$v2paid[merged_r6_data$Q99 == 504] <-  NA #CDS
merged_r6_data$v2paid[merged_r6_data$Q99 == 505] <-  NA #CNAS
merged_r6_data$v2paid[merged_r6_data$Q99 == 506] <-  NA #UDF
merged_r6_data$v2paid[merged_r6_data$Q99 == 507] <-  NA #CODEM
merged_r6_data$v2paid[merged_r6_data$Q99 == 508] <-  NA #FARE
merged_r6_data$v2paid[merged_r6_data$Q99 == 510] <-  6085 #MPR
merged_r6_data$v2paid[merged_r6_data$Q99 == 511] <-  6084 #PARENA
merged_r6_data$v2paid[merged_r6_data$Q99 == 513] <-  NA #PDES
merged_r6_data$v2paid[merged_r6_data$Q99 == 514] <-  6448 #PSP
merged_r6_data$v2paid[merged_r6_data$Q99 == 515] <-  NA #RPDM
merged_r6_data$v2paid[merged_r6_data$Q99 == 516] <-  2319 #RPM
merged_r6_data$v2paid[merged_r6_data$Q99 == 517] <-  NA #SADI
merged_r6_data$v2paid[merged_r6_data$Q99 == 518] <-  NA #UDD
merged_r6_data$v2paid[merged_r6_data$Q99 == 519] <-  NA #UM-RDA
merged_r6_data$v2paid[merged_r6_data$Q99 == 520] <-  2476 #URD
merged_r6_data$v2paid[merged_r6_data$Q99 == 521] <- NA #YELEMA

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 500] <- 2477 #ADEMA-PASJ
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 510] <-  6085 #MPR
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 511] <-  6084 #PARENA
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 516] <-  2319 #RPM
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 520] <-  2476 #URD

#merged_r6_data$v2paid_close[merged_r6_data$Q90B == 399] <-  NA #BDNP


#19 Mauritius 
#Jun-Jul 2014
merged_r6_data$winner[merged_r6_data$Q99 == 900] <- 1 
merged_r6_data$winner[merged_r6_data$Q99 == 901] <- 1 
merged_r6_data$winner[merged_r6_data$Q99 == 903] <- 1 


#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 900] <- 1 
merged_r6_data$winner_party[merged_r6_data$Q90B == 901] <- 1 
merged_r6_data$winner_party[merged_r6_data$Q90B == 903] <- 1 


#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 900] <- 2320 #PT
merged_r6_data$v2paid[merged_r6_data$Q99 == 901] <- 3800 #PMSD
merged_r6_data$v2paid[merged_r6_data$Q99 == 903] <- 3798 #MSM
merged_r6_data$v2paid[merged_r6_data$Q99 == 904] <-  NA #FSM
merged_r6_data$v2paid[merged_r6_data$Q99 == 905] <-  2460 #MMM
merged_r6_data$v2paid[merged_r6_data$Q99 == 906] <-  7143 #MR
merged_r6_data$v2paid[merged_r6_data$Q99 == 907] <-  2463 #OPR
merged_r6_data$v2paid[merged_r6_data$Q99 == 908] <-  NA #FPR

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 900] <- 2320 #PT
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 901] <- 3800 #PMSD
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 903] <- 3798 #MSM
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 905] <-  2460 #MMM
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 906] <-  7143 #MR
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 907] <-  2463 #OPR

#merged_r6_data$v2paid_close[merged_r6_data$Q90B == 399] <-  NA #BDNP

#20 Morocco
#Nov 2014
#Jun-Jul 2014
merged_r6_data$winner[merged_r6_data$Q99 == 1500] <- 1 
merged_r6_data$winner[merged_r6_data$Q99 == 1507] <- 1 
merged_r6_data$winner[merged_r6_data$Q99 == 1505] <- 1 
merged_r6_data$winner[merged_r6_data$Q99 == 1502] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 1500] <- 1 
merged_r6_data$winner_party[merged_r6_data$Q90B == 1507] <- 1 
merged_r6_data$winner_party[merged_r6_data$Q90B == 1505] <- 1 
merged_r6_data$winner_party[merged_r6_data$Q90B == 1502] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 1500] <- 2479 #PJD
merged_r6_data$v2paid[merged_r6_data$Q99 == 1501] <- 2482 #I
merged_r6_data$v2paid[merged_r6_data$Q99 == 1502] <- 2480 #NRL
merged_r6_data$v2paid[merged_r6_data$Q99 == 1503] <-  5325 #AMP
merged_r6_data$v2paid[merged_r6_data$Q99 == 1504] <-  2324 #USFP
merged_r6_data$v2paid[merged_r6_data$Q99 == 1505] <-  2481 #MP
merged_r6_data$v2paid[merged_r6_data$Q99 == 1506] <-  2463 #CU
merged_r6_data$v2paid[merged_r6_data$Q99 == 1507] <-  6620 #PPS

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1500] <- 2479 #PJD
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1501] <- 2482 #I
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1502] <- 2480 #NRL
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1503] <-  5325 #AMP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1504] <-  2324 #USFP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1505] <-  2481 #MP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1506] <-  2463 #CU
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1507] <-  6620 #PPS

#21 Mozambique
#Jun-Aug 2015

merged_r6_data$winner[merged_r6_data$Q99 == 540] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 540] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 540] <- 2314 #FREMILO
merged_r6_data$v2paid[merged_r6_data$Q99 == 541] <- 2315 #RENAMO
merged_r6_data$v2paid[merged_r6_data$Q99 == 542] <- 3813 #MDM
merged_r6_data$v2paid[merged_r6_data$Q99 == 543] <-  NA #PDD
merged_r6_data$v2paid[merged_r6_data$Q99 == 544] <-  NA #PIMO

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 540] <- 2314 #FREMILO
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 541] <- 2315 #RENAMO
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 542] <- 3813 #MDM

#22 Namibia
#Aug-Sep 2014

merged_r6_data$winner[merged_r6_data$Q99 == 590] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 590] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 580] <- NA #APP
merged_r6_data$v2paid[merged_r6_data$Q99 == 581] <- 2358 #COD
merged_r6_data$v2paid[merged_r6_data$Q99 == 582] <- 2356 #DTA
merged_r6_data$v2paid[merged_r6_data$Q99 == 583] <- NA #MAG
merged_r6_data$v2paid[merged_r6_data$Q99 == 585] <- NA #NUDO
merged_r6_data$v2paid[merged_r6_data$Q99 == 586] <- NA #NDPD
merged_r6_data$v2paid[merged_r6_data$Q99 == 587] <- 4895 #RDP
merged_r6_data$v2paid[merged_r6_data$Q99 == 588] <- NA #RP
merged_r6_data$v2paid[merged_r6_data$Q99 == 589] <- NA #SWANU
merged_r6_data$v2paid[merged_r6_data$Q99 == 590] <- 2331 #SWAPO
merged_r6_data$v2paid[merged_r6_data$Q99 == 591] <- 2355 #UDF
merged_r6_data$v2paid[merged_r6_data$Q99 == 592] <- NA #CP
merged_r6_data$v2paid[merged_r6_data$Q99 == 594] <- NA #UPM

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 581] <- 2358 #COD
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 582] <- 2356 #DTA
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 587] <- 4895 #RDP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 590] <- 2331 #SWAPO
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 591] <- 2355 #UDF

#23 Niger
#Apr 2015
merged_r6_data$winner[merged_r6_data$Q99 == 1105] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 1105] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 1100] <- 2351 #ANDP
merged_r6_data$v2paid[merged_r6_data$Q99 == 1101] <- 2352 #CDS
merged_r6_data$v2paid[merged_r6_data$Q99 == 1102] <- 2350 #MNSD
merged_r6_data$v2paid[merged_r6_data$Q99 == 1103] <- 5385 #MODEN FA
merged_r6_data$v2paid[merged_r6_data$Q99 == 1104] <- NA #PNA Al'Oumat
merged_r6_data$v2paid[merged_r6_data$Q99 == 1105] <- 2325 #PNDS
merged_r6_data$v2paid[merged_r6_data$Q99 == 1106] <- 5347 #PPN RDA
merged_r6_data$v2paid[merged_r6_data$Q99 == 1107] <- NA #PSDN
merged_r6_data$v2paid[merged_r6_data$Q99 == 1108] <- NA #PUND
merged_r6_data$v2paid[merged_r6_data$Q99 == 1109] <- 5804 #RDP
merged_r6_data$v2paid[merged_r6_data$Q99 == 1110] <- 5348 #RSD-G
merged_r6_data$v2paid[merged_r6_data$Q99 == 1113] <- 5645 #UDR Tabbat

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1100] <- 2351 #ANDP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1101] <- 2352 #CDS
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1102] <- 2350 #MNSD
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1103] <- 5385 #MODEN FA
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1105] <- 2325 #PNDS
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1106] <- 5347 #PPN RDA
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1110] <- 5348 #RSD-G
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1113] <- 5645 #UDR Tabbat

#24 Nigeria
#Dec-Jan 2014-15
merged_r6_data$winner[merged_r6_data$Q99 == 638] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 638] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 620] <- NA #ACD
merged_r6_data$v2paid[merged_r6_data$Q99 == 621] <- 5538 #APC
merged_r6_data$v2paid[merged_r6_data$Q99 == 622] <- 4116 #ACD
merged_r6_data$v2paid[merged_r6_data$Q99 == 623] <- NA #ADC
merged_r6_data$v2paid[merged_r6_data$Q99 == 624] <- 2313 #ANPP
merged_r6_data$v2paid[merged_r6_data$Q99 == 625] <- 934333 #APGA
merged_r6_data$v2paid[merged_r6_data$Q99 == 626] <- 2313 #APP ANPP
merged_r6_data$v2paid[merged_r6_data$Q99 == 628] <- 5539 #CPC
merged_r6_data$v2paid[merged_r6_data$Q99 == 629] <- NA #CPN
merged_r6_data$v2paid[merged_r6_data$Q99 == 630] <- NA #DA
merged_r6_data$v2paid[merged_r6_data$Q99 == 631] <- NA #DPP
merged_r6_data$v2paid[merged_r6_data$Q99 == 633] <- NA #FDP
merged_r6_data$v2paid[merged_r6_data$Q99 == 634] <- NA #LP
merged_r6_data$v2paid[merged_r6_data$Q99 == 636] <- NA #NCP
merged_r6_data$v2paid[merged_r6_data$Q99 == 637] <- NA #ND
merged_r6_data$v2paid[merged_r6_data$Q99 == 638] <- 2354 #PDP
merged_r6_data$v2paid[merged_r6_data$Q99 == 639] <- NA #PPA
merged_r6_data$v2paid[merged_r6_data$Q99 == 640] <- NA #PPP
merged_r6_data$v2paid[merged_r6_data$Q99 == 644] <- NA #UNPP

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 621] <- 5538 #APC
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 622] <- 4116 #ACD
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 624] <- 2313 #ANPP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 625] <- 934333 #APGA
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 626] <- 2313 #APP ANPP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 628] <- 5539 #CPC
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 638] <- 2354 #PDP


#25 São Tomé and Príncipe: NO ETHNIC GROUPS DATA
#Jul-Aug 2015

#26 Senegal
#Nov-Dec 2014
merged_r6_data$winner[merged_r6_data$Q99 == 663] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 663] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 660] <- 2329 #SDP
merged_r6_data$v2paid[merged_r6_data$Q99 == 661] <- 2380 #SP
merged_r6_data$v2paid[merged_r6_data$Q99 == 662] <- 2379 #AFP
merged_r6_data$v2paid[merged_r6_data$Q99 == 663] <- 5766 #AFR
merged_r6_data$v2paid[merged_r6_data$Q99 == 664] <- NA #Rewmi
merged_r6_data$v2paid[merged_r6_data$Q99 == 665] <- 6462 #Union por le Rep
merged_r6_data$v2paid[merged_r6_data$Q99 == 666] <- NA #FS BJ
merged_r6_data$v2paid[merged_r6_data$Q99 == 667] <- NA #PIT
merged_r6_data$v2paid[merged_r6_data$Q99 == 670] <- NA #LD

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 660] <- 2329 #SDP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 661] <- 2380 #SP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 662] <- 2379 #AFP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 663] <- 5766 #AFR
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 665] <- 6462 #Union por le Rep

#27 Sierra Leone
#May-Jun 2015

merged_r6_data$winner[merged_r6_data$Q99 == 931] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 931] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 930] <- 4047 #SLPP
merged_r6_data$v2paid[merged_r6_data$Q99 == 931] <- 4045 #APC
merged_r6_data$v2paid[merged_r6_data$Q99 == 932] <- NA #PMDC
merged_r6_data$v2paid[merged_r6_data$Q99 == 933] <- NA #NDA
merged_r6_data$v2paid[merged_r6_data$Q99 == 934] <- NA #UDM

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 6930] <- 4047 #SLPP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 931] <- 4045 #APC

#28 South Africa
#Aug-Sep 2015 

merged_r6_data$winner[merged_r6_data$Q99 == 702] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 702] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 700] <- NA #ACDP
merged_r6_data$v2paid[merged_r6_data$Q99 == 701] <- NA #AMP
merged_r6_data$v2paid[merged_r6_data$Q99 == 702] <- 1219 #ANC
merged_r6_data$v2paid[merged_r6_data$Q99 == 703] <- NA #AZAPO
merged_r6_data$v2paid[merged_r6_data$Q99 == 704] <- 4546 #COP
merged_r6_data$v2paid[merged_r6_data$Q99 == 705] <- 1038 #DA
merged_r6_data$v2paid[merged_r6_data$Q99 == 706] <- NA #FFP
merged_r6_data$v2paid[merged_r6_data$Q99 == 707] <- NA #ID
merged_r6_data$v2paid[merged_r6_data$Q99 == 708] <- 1630 #IFP
merged_r6_data$v2paid[merged_r6_data$Q99 == 709] <- NA #MF
merged_r6_data$v2paid[merged_r6_data$Q99 == 711] <- 5731 #NNP
merged_r6_data$v2paid[merged_r6_data$Q99 == 712] <- NA #PAN-C
merged_r6_data$v2paid[merged_r6_data$Q99 == 713] <- NA #UCD
merged_r6_data$v2paid[merged_r6_data$Q99 == 714] <- NA #UDM
merged_r6_data$v2paid[merged_r6_data$Q99 == 715] <- NA #UIF
merged_r6_data$v2paid[merged_r6_data$Q99 == 716] <- NA #AIC
merged_r6_data$v2paid[merged_r6_data$Q99 == 717] <- NA #Agang SA
merged_r6_data$v2paid[merged_r6_data$Q99 == 718] <- NA #Al-Jamah
merged_r6_data$v2paid[merged_r6_data$Q99 == 720] <- 4548 #EFF
merged_r6_data$v2paid[merged_r6_data$Q99 == 722] <- NA #FN
merged_r6_data$v2paid[merged_r6_data$Q99 == 725] <- NA #KGM
merged_r6_data$v2paid[merged_r6_data$Q99 == 726] <- NA #NFP

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 702] <- 1219 #ANC
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 704] <- 4546 #COP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 705] <- 1038 #DA
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 708] <- 1630 #IFP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 711] <- 5731 #NNP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 720] <- 4548 #EFF

#29 Sudan
#Jun 2015

merged_r6_data$winner[merged_r6_data$Q99 == 1540] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 1540] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 1540] <- 5496 #NC
merged_r6_data$v2paid[merged_r6_data$Q99 == 1541] <- NA #PC
merged_r6_data$v2paid[merged_r6_data$Q99 == 1542] <- 4756 #UMMA
merged_r6_data$v2paid[merged_r6_data$Q99 == 1543] <- 4754 #DUP
merged_r6_data$v2paid[merged_r6_data$Q99 == 1544] <- NA #CP
merged_r6_data$v2paid[merged_r6_data$Q99 == 1545] <- 5495 #Sudan people's liberation
merged_r6_data$v2paid[merged_r6_data$Q99 == 1546] <- NA #umma renewal 

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1540] <- 5496 #NC
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1542] <- 4756 #UMMA
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1543] <- 4754 #DUP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1545] <- 5495 #Sudan people's liberation

#30 Swaziland  VOTING NOT ASKED IN THIS COUNTRY. Similar to previous survey waves. 
#Apr-May 2015

#31 Tanzania 
#Aug-Oct 2014

merged_r6_data$winner[merged_r6_data$Q99 == 740] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 740] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 740] <- 2328 #CCM
merged_r6_data$v2paid[merged_r6_data$Q99 == 741] <- 2345 #CUF
merged_r6_data$v2paid[merged_r6_data$Q99 == 742] <- 2344 #Chadema
merged_r6_data$v2paid[merged_r6_data$Q99 == 744] <- 3276 #NCCR
merged_r6_data$v2paid[merged_r6_data$Q99 == 746] <- NA #UPDP
merged_r6_data$v2paid[merged_r6_data$Q99 == 748] <- NA #TADEA
merged_r6_data$v2paid[merged_r6_data$Q99 == 749] <- 3553 #TLP
merged_r6_data$v2paid[merged_r6_data$Q99 == 750] <- 6075 #UDP
merged_r6_data$v2paid[merged_r6_data$Q99 == 755] <- NA #PPT

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 740] <- 2328 #CCM
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 741] <- 2345 #CUF
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 742] <- 2344 #Chadema
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 744] <- 3276 #NCCR
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 749] <- 3553 #TLP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 750] <- 6075 #UDP

#32 Togo 
#Oct 2014

merged_r6_data$winner[merged_r6_data$Q99 == 1140] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 1140] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 1140] <- 4129 #UNIR
merged_r6_data$v2paid[merged_r6_data$Q99 == 1141] <- 4130 #UFC
merged_r6_data$v2paid[merged_r6_data$Q99 == 1142] <- 5767 #ANC
merged_r6_data$v2paid[merged_r6_data$Q99 == 1143] <- 4133 #CAR
merged_r6_data$v2paid[merged_r6_data$Q99 == 1144] <- NA #CDPA
merged_r6_data$v2paid[merged_r6_data$Q99 == 1145] <- NA #PRR
merged_r6_data$v2paid[merged_r6_data$Q99 == 1146] <- NA #OBUTS
merged_r6_data$v2paid[merged_r6_data$Q99 == 1148] <- 6075 #ADDI
merged_r6_data$v2paid[merged_r6_data$Q99 == 1149] <- 4132 #CST
merged_r6_data$v2paid[merged_r6_data$Q99 == 1150] <- NA #Arc-en-ciel

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1140] <- 4129 #UNIR
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1141] <- 4130 #UFC
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1142] <- 5767 #ANC
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1143] <- 4133 #CAR
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1148] <- 6075 #ADDI
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1149] <- 4132 #CST

#33 Tunisia
#Apr-May 2015

#Based on the February 2015
#https://www.aljazeera.com/news/2015/2/4/tunisia-pm-essid-announces-unity-government
merged_r6_data$winner[merged_r6_data$Q99 == 1580] <- 1 
merged_r6_data$winner[merged_r6_data$Q99 == 1582] <- 1 
merged_r6_data$winner[merged_r6_data$Q99 == 1581] <- 1 
merged_r6_data$winner[merged_r6_data$Q99 == 1584] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 1580] <- 1 
merged_r6_data$winner_party[merged_r6_data$Q90B == 1582] <- 1 
merged_r6_data$winner_party[merged_r6_data$Q90B == 1581] <- 1 
merged_r6_data$winner_party[merged_r6_data$Q90B == 1584] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 1580] <- 4530 #NT
merged_r6_data$v2paid[merged_r6_data$Q99 == 1581] <- 5832 #Enhadha
merged_r6_data$v2paid[merged_r6_data$Q99 == 1582] <- NA #UPL
merged_r6_data$v2paid[merged_r6_data$Q99 == 1583] <- NA #PF
merged_r6_data$v2paid[merged_r6_data$Q99 == 1584] <- NA #Afek
merged_r6_data$v2paid[merged_r6_data$Q99 == 1585] <- 4532 #CPR
merged_r6_data$v2paid[merged_r6_data$Q99 == 1586] <- NA #Intiative
merged_r6_data$v2paid[merged_r6_data$Q99 == 1587] <- NA #people's movmement
merged_r6_data$v2paid[merged_r6_data$Q99 == 1588] <- 7917 #TD
merged_r6_data$v2paid[merged_r6_data$Q99 == 1589] <- 4534 #COL

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1580] <- 4530 #NT
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1581] <- 5832 #Enhadha
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1585] <- 4532 #CPR
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1588] <- 7917 #TD
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 1589] <- 4534 #COL

#34 Uganda
#May 2015
merged_r6_data$winner[merged_r6_data$Q99 == 780] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 780] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 780] <- 4523 #NRM
merged_r6_data$v2paid[merged_r6_data$Q99 == 781] <- 5389 #FDC
merged_r6_data$v2paid[merged_r6_data$Q99 == 782] <- 4525 #DP
merged_r6_data$v2paid[merged_r6_data$Q99 == 784] <- 4524 #UPC
merged_r6_data$v2paid[merged_r6_data$Q99 == 786] <- NA #UFA
merged_r6_data$v2paid[merged_r6_data$Q99 == 787] <- NA #SDP
merged_r6_data$v2paid[merged_r6_data$Q99 == 788] <- NA #JEEMa
merged_r6_data$v2paid[merged_r6_data$Q99 == 789] <- NA #IPC

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 780] <- 4523 #NRM
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 781] <- 5389 #FDC
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 782] <- 4525 #DP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 784] <- 4524 #UPC

#35 Zambia 
#Oct 2014
merged_r6_data$winner[merged_r6_data$Q99 == 826] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 826] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 820] <- NA #ADD
merged_r6_data$v2paid[merged_r6_data$Q99 == 821] <- 2332 #FDD
merged_r6_data$v2paid[merged_r6_data$Q99 == 822] <- NA #HP
merged_r6_data$v2paid[merged_r6_data$Q99 == 823] <- 2333 #MMD
merged_r6_data$v2paid[merged_r6_data$Q99 == 825] <- NA #NAREP
merged_r6_data$v2paid[merged_r6_data$Q99 == 826] <- 2302 #PF
merged_r6_data$v2paid[merged_r6_data$Q99 == 827] <- 2334 #UNIP
merged_r6_data$v2paid[merged_r6_data$Q99 == 828] <- 2335 #UPND

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 821] <- 2332 #FDD
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 823] <- 2333 #MMD
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 826] <- 2302 #PF
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 827] <- 2334 #UNIP
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 828] <- 2335 #UPND

#36 Zimbabwe 
#Nov 2014
merged_r6_data$winner[merged_r6_data$Q99 == 861] <- 1 

#Close Party Winner/Loser 
merged_r6_data$winner_party[merged_r6_data$Q90B == 861] <- 1 

#Party Matching Vote
merged_r6_data$v2paid[merged_r6_data$Q99 == 860] <- 3559 #MDC-T
merged_r6_data$v2paid[merged_r6_data$Q99 == 861] <- 3305 #ZANU-PF
merged_r6_data$v2paid[merged_r6_data$Q99 == 862] <- NA #MDC-M
merged_r6_data$v2paid[merged_r6_data$Q99 == 863] <- NA #MKD
merged_r6_data$v2paid[merged_r6_data$Q99 == 864] <- NA #ZANU-D
merged_r6_data$v2paid[merged_r6_data$Q99 == 866] <- 2302 #PF

#Party Matching Close
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 860] <- 3559 #MDC-T
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 861] <- 3305 #ZANU-PF
merged_r6_data$v2paid_close[merged_r6_data$Q90B == 866] <- 2302 #PF

#END Codes
merged_r6_data$loser_party <- 1 
merged_r6_data$loser_party[merged_r6_data$winner_party == 1] <- 0
merged_r6_data$loser_party[merged_r6_data$nonpartisan == 1] <- 0
merged_r6_data$loser_party[merged_r6_data$Q89B == 9999] <- NA
merged_r6_data$loser_party[merged_r6_data$Q89B == 9998] <- NA
merged_r6_data$loser_party[merged_r6_data$Q89B == -1] <- NA
merged_r6_data$loser_party[merged_r6_data$Q89A == -1] <- NA
merged_r6_data$loser_party[merged_r6_data$Q89A == 8] <- NA
merged_r6_data$loser_party[merged_r6_data$Q89A == 9] <- NA

#Loser
merged_r6_data$loser <- 0 
merged_r6_data$loser[merged_r6_data$winner == 0 & merged_r6_data$didnt_vote == 0] <- 1
merged_r6_data$loser[merged_r6_data$Q99 == 9998] <- NA
merged_r6_data$loser[merged_r6_data$Q99 == 9999] <- NA
merged_r6_data$loser[merged_r6_data$Q99 == -1] <- NA

#____________________________________________________________________________________________
#__________________________WAVE 6 AFRO ________________________________________
#____________________________________________________________________________________________

#Benin 1 
#Date: dec 2016 - jan 17
merged_r7_data$winner <- 0
merged_r7_data$winner[merged_r7_data$Q99 == 100] <- 1 #Nouveau Depart (Look at item r7 that ask about trust in ruling party)

#Refused to and I don't know are dropped. They did not answer the question.
merged_r7_data$winner[merged_r7_data$Q99 == -1] <- NA
merged_r7_data$winner[merged_r7_data$Q99 == 9998] <- NA 
merged_r7_data$winner[merged_r7_data$Q99 == 9999] <- NA 

#Non Voter 
merged_r7_data$didnt_vote <- 0
merged_r7_data$didnt_vote[merged_r7_data$Q99 == 9997] <- 1
merged_r7_data$didnt_vote[merged_r7_data$Q99 == 9998] <- NA
merged_r7_data$didnt_vote[merged_r7_data$Q99 == 9999] <- NA

#Close Party Winner/Loser 
merged_r7_data$winner_party <- 0 
merged_r7_data$winner_party[merged_r7_data$Q88B == 100] <- 1 
merged_r7_data$winner_party[merged_r7_data$Q88B == -1] <- NA 
merged_r7_data$winner_party[merged_r7_data$Q88B == 9997] <- 0 
merged_r7_data$winner_party[merged_r7_data$Q88B == 9995] <- 0 
merged_r7_data$winner_party[merged_r7_data$Q88B == 9998] <- NA 
merged_r7_data$winner_party[merged_r7_data$Q88B == 99] <- NA 
merged_r7_data$winner_party[merged_r7_data$Q88B == 9999] <- NA 
merged_r7_data$winner_party[merged_r7_data$Q88A == 9] <- NA 
merged_r7_data$winner_party[merged_r7_data$Q88A == 99] <- NA 
merged_r7_data$winner_party[merged_r7_data$Q88A == 8] <- NA 
merged_r7_data$winner_party[merged_r7_data$Q88A == -1] <- NA 

merged_r7_data$nonpartisan <- 0
merged_r7_data$nonpartisan[merged_r7_data$Q88A == 0] <- 1
merged_r7_data$nonpartisan[merged_r7_data$Q88A == 8] <- NA
merged_r7_data$nonpartisan[merged_r7_data$Q88A == 9] <- NA
merged_r7_data$nonpartisan[merged_r7_data$Q88A == 99] <- NA
merged_r7_data$nonpartisan[merged_r7_data$Q88A == -1] <- NA

merged_r7_data$didnt_party <- 0
merged_r7_data$didnt_party[merged_r7_data$Q88A == 0] <- 1
merged_r7_data$didnt_party[merged_r7_data$Q88A == 8] <- NA
merged_r7_data$didnt_party[merged_r7_data$Q88A == 9] <- NA
merged_r7_data$didnt_party[merged_r7_data$Q88A == 99] <- NA
merged_r7_data$didnt_party[merged_r7_data$Q88A == -1] <- NA

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == -1] <- NA 
merged_r7_data$v2paid[merged_r7_data$Q99 == 100] <- NA #ND
merged_r7_data$v2paid[merged_r7_data$Q99 == 101] <- 6569  #UN
merged_r7_data$v2paid[merged_r7_data$Q99 == 102] <- 3832 #RB
merged_r7_data$v2paid[merged_r7_data$Q99 == 103] <- 2365 #PRD
merged_r7_data$v2paid[merged_r7_data$Q99 == 104] <- 2300 #FCBE
merged_r7_data$v2paid[merged_r7_data$Q99 == 105] <- NA #ABT
merged_r7_data$v2paid[merged_r7_data$Q99 == 106] <- NA #PIK-N
merged_r7_data$v2paid[merged_r7_data$Q99 == 107] <- NA #SA

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == -1] <- NA 
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 101] <- 6569  #UN
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 102] <- 3832 #RB
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 103] <- 2365 #PRD
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 104] <- 2300 #FCBE

#2  Botswana 
#6-7/17
merged_r7_data$winner[merged_r7_data$Q99 == 141] <- 1 

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 141] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 140] <- 2337 #BCP
merged_r7_data$v2paid[merged_r7_data$Q99 == 141] <- 2301 #BDP
merged_r7_data$v2paid[merged_r7_data$Q99 == 142] <- NA #BMD
merged_r7_data$v2paid[merged_r7_data$Q99 == 143] <- 2336 #BNF
merged_r7_data$v2paid[merged_r7_data$Q99 == 144] <- 3632 #BPP
merged_r7_data$v2paid[merged_r7_data$Q99 == 145] <- NA #MELS
merged_r7_data$v2paid[merged_r7_data$Q99 == 146] <- 4832 #UDC+

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 140] <- 2337 #BCP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 141] <- 2301 #BDP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 143] <- 2336 #BNF
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 144] <- 3632 #BPP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 146] <- 4832 #UDC+

#3  Burkina Faso
#10/17
merged_r7_data$winner[merged_r7_data$Q99 == 184] <- 1 

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 184] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 180] <- 4314 #ADF/RDA
merged_r7_data$v2paid[merged_r7_data$Q99 == 181] <- 4313 #CDP
merged_r7_data$v2paid[merged_r7_data$Q99 == 182] <- NA #ALTERNATIVE FASO 
merged_r7_data$v2paid[merged_r7_data$Q99 == 183] <- NA #MDA
merged_r7_data$v2paid[merged_r7_data$Q99 == 184] <- 5769 #MPP
merged_r7_data$v2paid[merged_r7_data$Q99 == 185] <- NA #NAFA
merged_r7_data$v2paid[merged_r7_data$Q99 == 186] <- NA #NTD
merged_r7_data$v2paid[merged_r7_data$Q99 == 187] <- NA #ODT
merged_r7_data$v2paid[merged_r7_data$Q99 == 188] <- NA #PAREN
merged_r7_data$v2paid[merged_r7_data$Q99 == 189] <- 4317 #PDS/METBA
merged_r7_data$v2paid[merged_r7_data$Q99 == 192] <- NA #UNIR/PS
merged_r7_data$v2paid[merged_r7_data$Q99 == 192] <- 4315 #UPC



#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 180] <- 4314 #ADF/RDA
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 181] <- 4313 #CDP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 184] <- 5769 #MPP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 189] <- 4317 #PDS/METBA
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 192] <- 4315 #UPC

#4  Cabo Verde SKIP
#11-12/17

#5  Cameroon
#05/18
merged_r7_data$winner[merged_r7_data$Q99 == 1220] <- 1 

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1220] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 1220] <- 3774 #CPDM V RDPC
merged_r7_data$v2paid[merged_r7_data$Q99 == 1221] <- 3682 #SDF
merged_r7_data$v2paid[merged_r7_data$Q99 == 1222] <- 3775 #UNDP
merged_r7_data$v2paid[merged_r7_data$Q99 == 1223] <- 5411 #UDC
merged_r7_data$v2paid[merged_r7_data$Q99 == 1224] <- NA #MRC

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1220] <- 3774 #CPDM V RDPC
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1221] <- 3682 #SDF
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1222] <- 3775 #UNDP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1223] <- 5411 #UDC

#6  Côte d'Ivoire
#12/16-1/17
merged_r7_data$winner[merged_r7_data$Q99 == 1260] <- 1 
merged_r7_data$winner[merged_r7_data$Q99 == 1269] <- 1 
merged_r7_data$winner[merged_r7_data$Q99 == 1261] <- 1 
merged_r7_data$winner[merged_r7_data$Q99 == 1268] <- 1 
merged_r7_data$winner[merged_r7_data$Q99 == 1265] <- 1 
merged_r7_data$winner[merged_r7_data$Q99 == 1263] <- 1 

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1260] <- 1 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1269] <- 1 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1261] <- 1 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1268] <- 1 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1265] <- 1 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1263] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 1260] <- 5097 #RDR
merged_r7_data$v2paid[merged_r7_data$Q99 == 1261] <- 5098 #PDCI
merged_r7_data$v2paid[merged_r7_data$Q99 == 1262] <- 5096 #FPI
merged_r7_data$v2paid[merged_r7_data$Q99 == 1263] <- NA #UNION DEM PAIX
merged_r7_data$v2paid[merged_r7_data$Q99 == 1265] <- NA #MFA
merged_r7_data$v2paid[merged_r7_data$Q99 == 1266] <- NA #PIT
merged_r7_data$v2paid[merged_r7_data$Q99 == 1268] <- NA #UPCI
merged_r7_data$v2paid[merged_r7_data$Q99 == 1269] <- 7607 #RHDP

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1260] <- 5097 #RDR
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1261] <- 5098 #PDCI
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1262] <- 5096 #FPI
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1269] <- 7607 #RHDP

#7  eSwatini Voting Question Not Asked: consistent with previous waves
#3/18


#8  Gabon
#11/17
merged_r7_data$winner[merged_r7_data$Q99 == 1700] <- 1 

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1700] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 1700] <- 5290 #PDG
merged_r7_data$v2paid[merged_r7_data$Q99 == 1701] <- NA #UN
merged_r7_data$v2paid[merged_r7_data$Q99 == 1702] <- 5591 #UPG
merged_r7_data$v2paid[merged_r7_data$Q99 == 1703] <- NA #CLR
merged_r7_data$v2paid[merged_r7_data$Q99 == 1704] <- 5592 #RPG

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1700] <- 5290 #PDG
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1702] <- 5591 #UPG
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1704] <- 5592 #RPG

#9  Gambia
#https://web.archive.org/web/20180727180948/https://jollofnews.com/2016/11/21/gambia-2016-opposition-coalition-confident-of-defeating-jammeh/
#7-8/18
merged_r7_data$winner[merged_r7_data$Q99 == 1743] <- 1 #PDOIS 
merged_r7_data$winner[merged_r7_data$Q99 == 1742] <- 1 #NRP
merged_r7_data$winner[merged_r7_data$Q99 == 1747] <- 1 #GMC
merged_r7_data$winner[merged_r7_data$Q99 == 1744] <- 1 #PPP

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1743] <- 1 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1742] <- 1 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1747] <- 1 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1744] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 1740] <- 3716 #APRC
merged_r7_data$v2paid[merged_r7_data$Q99 == 1741] <- 5954 #GDC
merged_r7_data$v2paid[merged_r7_data$Q99 == 1742] <- 3717 #NRP
merged_r7_data$v2paid[merged_r7_data$Q99 == 1743] <- 3718 #PDOIS
merged_r7_data$v2paid[merged_r7_data$Q99 == 1744] <- 5084 #PPP
merged_r7_data$v2paid[merged_r7_data$Q99 == 1747] <- NA #GMC
merged_r7_data$v2paid[merged_r7_data$Q99 == 1748] <- 3715 #UDP

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1740] <- 3716 #APRC
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1741] <- 5954 #GDC
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1742] <- 3717 #NRP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1743] <- 3718 #PDOIS
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1744] <- 5084 #PPP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1748] <- 3715 #UDP

#10 Ghana
#9/17
merged_r7_data$winner[merged_r7_data$Q99 == 262] <- 1 #NPP 

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 262] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 260] <- 3600 #CPP
merged_r7_data$v2paid[merged_r7_data$Q99 == 261] <- 2311 #NDC
merged_r7_data$v2paid[merged_r7_data$Q99 == 262] <- 2312 #NPP
merged_r7_data$v2paid[merged_r7_data$Q99 == 263] <- NA #PNC
merged_r7_data$v2paid[merged_r7_data$Q99 == 264] <- NA #PPP
merged_r7_data$v2paid[merged_r7_data$Q99 == 267] <- NA #NDP
merged_r7_data$v2paid[merged_r7_data$Q99 == 268] <- NA #APC

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 260] <- 3600 #CPP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 261] <- 2311 #NDC
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 262] <- 2312 #NPP

#11 Guinea   
#5/17

merged_r7_data$winner[merged_r7_data$Q99 == 1300] <- 1 #RPG 

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1300] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 1300] <- 4063 #RPG
merged_r7_data$v2paid[merged_r7_data$Q99 == 1301] <- 4274 #UFDG
merged_r7_data$v2paid[merged_r7_data$Q99 == 1302] <- 4275 #UFR
merged_r7_data$v2paid[merged_r7_data$Q99 == 1303] <- NA #PEDN
merged_r7_data$v2paid[merged_r7_data$Q99 == 1304] <- NA #UPG
merged_r7_data$v2paid[merged_r7_data$Q99 == 1305] <- NA #RDIG
merged_r7_data$v2paid[merged_r7_data$Q99 == 1306] <- NA #BL
merged_r7_data$v2paid[merged_r7_data$Q99 == 1307] <- NA #UDG
merged_r7_data$v2paid[merged_r7_data$Q99 == 1307] <- NA #DADIS


#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1300] <- 4063 #RPG
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1301] <- 4274 #UFDG
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1302] <- 4275 #UFR

#12 Kenya
#9/16
merged_r7_data$winner[merged_r7_data$Q99 == 309] <- 1 #JAP
merged_r7_data$winner[merged_r7_data$Q99 == 305] <- 1 #TNA
merged_r7_data$winner[merged_r7_data$Q99 == 301] <- 1 #NARC
merged_r7_data$winner[merged_r7_data$Q99 == 307] <- 1 #URP

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 309] <- 1 
merged_r7_data$winner_party[merged_r7_data$Q88B == 305] <- 1 
merged_r7_data$winner_party[merged_r7_data$Q88B == 301] <- 1 
merged_r7_data$winner_party[merged_r7_data$Q88B == 307] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 301] <- 7970 #NARC-K
merged_r7_data$v2paid[merged_r7_data$Q99 == 302] <- 2360 #ODM
merged_r7_data$v2paid[merged_r7_data$Q99 == 303] <- NA #RBK
merged_r7_data$v2paid[merged_r7_data$Q99 == 304] <- 3856 #SAFINA
merged_r7_data$v2paid[merged_r7_data$Q99 == 305] <- 3867 #TNA
merged_r7_data$v2paid[merged_r7_data$Q99 == 306] <- NA #UDF
merged_r7_data$v2paid[merged_r7_data$Q99 == 307] <- 3856 #URP
merged_r7_data$v2paid[merged_r7_data$Q99 == 308] <- 2362 #WDM-K
merged_r7_data$v2paid[merged_r7_data$Q99 == 309] <- 6912 #JAP

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 301] <- 7970 #NARC-K
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 302] <- 2360 #ODM
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 304] <- 3856 #SAFINA
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 305] <- 3867 #TNA
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 307] <- 3856 #URP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 308] <- 2362 #WDM-K
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 309] <- 6912 #JAP

#13 Lesotho SKIPPED BECAUSE OF NO ETHNIC GROUPS
#11-12/17


#14 Liberia
#6-7/18
merged_r7_data$winner[merged_r7_data$Q99 == 389] <- 1 #CDC

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 389] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 380] <- NA #NRP
merged_r7_data$v2paid[merged_r7_data$Q99 == 382] <- NA #APD (UPP& LPP)
merged_r7_data$v2paid[merged_r7_data$Q99 == 383] <- 6596 #NDC
merged_r7_data$v2paid[merged_r7_data$Q99 == 384] <- 4139 #LP
merged_r7_data$v2paid[merged_r7_data$Q99 == 386] <- 4140 #UP
merged_r7_data$v2paid[merged_r7_data$Q99 == 387] <- 4143 #NDPL
merged_r7_data$v2paid[merged_r7_data$Q99 == 389] <- 4136 #CDC
merged_r7_data$v2paid[merged_r7_data$Q99 == 393] <- NA  #ALCOP
merged_r7_data$v2paid[merged_r7_data$Q99 == 395] <- 5163 #NUDP
merged_r7_data$v2paid[merged_r7_data$Q99 == 398] <- NA #MPC
merged_r7_data$v2paid[merged_r7_data$Q99 == 399] <- NA #OCP
merged_r7_data$v2paid[merged_r7_data$Q99 == 401] <- NA #MAPOL
merged_r7_data$v2paid[merged_r7_data$Q99 == 408] <- 5986 #ALP
merged_r7_data$v2paid[merged_r7_data$Q99 == 409] <- 5993 #PUP
merged_r7_data$v2paid[merged_r7_data$Q99 == 410] <- 5988 #ANC

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 383] <- 6596 #NDC
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 384] <- 4139 #LP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 386] <- 4140 #UP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 387] <- 4143 #NDPL
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 389] <- 4136 #CDC
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 395] <- 5163 #NUDP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 408] <- 5986 #ALP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 409] <- 5993 #PUP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 410] <- 5988 #ANC

#15 Madagascar  
#1-2/18
merged_r7_data$winner[merged_r7_data$Q99 == 441] <- 1 #Hery VaoVao

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 441] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 422] <- NA #AME
merged_r7_data$v2paid[merged_r7_data$Q99 == 424] <- 5311 #AREMA
merged_r7_data$v2paid[merged_r7_data$Q99 == 425] <- NA #AVI
merged_r7_data$v2paid[merged_r7_data$Q99 == 428] <- 5370 #Leader-Fanilo
merged_r7_data$v2paid[merged_r7_data$Q99 == 429] <- NA #MAhaleo
merged_r7_data$v2paid[merged_r7_data$Q99 == 433] <- NA #Monima 
merged_r7_data$v2paid[merged_r7_data$Q99 == 437] <- NA #TGV
merged_r7_data$v2paid[merged_r7_data$Q99 == 438] <- 5201  #TIM
merged_r7_data$v2paid[merged_r7_data$Q99 == 440] <- NA #MAPAR
merged_r7_data$v2paid[merged_r7_data$Q99 == 441] <- NA #HVM

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 424] <- 5311 #AREMA
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 428] <- 5370 #Leader-Fanilo
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 438] <- 5201  #TIM

#16 Malawi
#12-1/17
merged_r7_data$winner[merged_r7_data$Q99 == 461] <- 1 #DPP 

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 461] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 461] <- 4846 #DPP
merged_r7_data$v2paid[merged_r7_data$Q99 == 462] <- NA #MAFUNDE
merged_r7_data$v2paid[merged_r7_data$Q99 == 463] <- 3732 #MCP
merged_r7_data$v2paid[merged_r7_data$Q99 == 465] <- NA #NARC
merged_r7_data$v2paid[merged_r7_data$Q99 == 467] <- 4847 #PP
merged_r7_data$v2paid[merged_r7_data$Q99 == 468] <- NA #PPM 
merged_r7_data$v2paid[merged_r7_data$Q99 == 469] <- NA #PETRA
merged_r7_data$v2paid[merged_r7_data$Q99 == 470] <- 3737  #RP
merged_r7_data$v2paid[merged_r7_data$Q99 == 471] <- 3734 #UDF
merged_r7_data$v2paid[merged_r7_data$Q99 == 474] <- NA #UIP

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 461] <- 4846 #DPP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 463] <- 3732 #MCP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 467] <- 4847 #PP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 470] <- 3737  #RP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 471] <- 3734 #UDF

#17 Mali
#2/17
merged_r7_data$winner[merged_r7_data$Q99 == 512] <- 1 #RPM 

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 512] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 500] <- 2477 #ADEMA
merged_r7_data$v2paid[merged_r7_data$Q99 == 501] <- NA #ADP
merged_r7_data$v2paid[merged_r7_data$Q99 == 502] <- NA #ASMA
merged_r7_data$v2paid[merged_r7_data$Q99 == 503] <- NA #CDS
merged_r7_data$v2paid[merged_r7_data$Q99 == 504] <- NA #CNAS
merged_r7_data$v2paid[merged_r7_data$Q99 == 505] <- 2378 #CNID 
merged_r7_data$v2paid[merged_r7_data$Q99 == 506] <- NA #CODEM
merged_r7_data$v2paid[merged_r7_data$Q99 == 507] <- NA  #FARE
merged_r7_data$v2paid[merged_r7_data$Q99 == 508] <- NA #MIRIA
merged_r7_data$v2paid[merged_r7_data$Q99 == 509] <- 6085 #MPR
merged_r7_data$v2paid[merged_r7_data$Q99 == 510] <- 6084 #PARENA
merged_r7_data$v2paid[merged_r7_data$Q99 == 511] <- NA #PDES
merged_r7_data$v2paid[merged_r7_data$Q99 == 512] <- 2319 #RPM
merged_r7_data$v2paid[merged_r7_data$Q99 == 513] <- NA #SADI
merged_r7_data$v2paid[merged_r7_data$Q99 == 514] <- NA #UDD
merged_r7_data$v2paid[merged_r7_data$Q99 == 515] <- NA #UM-RDA
merged_r7_data$v2paid[merged_r7_data$Q99 == 516] <- 2476 #URD
merged_r7_data$v2paid[merged_r7_data$Q99 == 517] <- NA #YELEMA

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 500] <- 2477 #ADEMA
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 505] <- 2378 #CNID 
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 509] <- 6085 #MPR
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 510] <- 6084 #PARENA
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 512] <- 2319 #RPM
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 516] <- 2476 #URD


#18 Mauritius
#10/17
merged_r7_data$winner[merged_r7_data$Q99 == 900] <- 1 #MSM 
merged_r7_data$winner[merged_r7_data$Q99 == 902] <- 1 #PMSD 
merged_r7_data$winner[merged_r7_data$Q99 == 901] <- 1 #ML 

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 900] <- 1 
merged_r7_data$winner_party[merged_r7_data$Q88B == 901] <- 1 
merged_r7_data$winner_party[merged_r7_data$Q88B == 902] <- 1 


#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 900] <- 3798 #MSM
merged_r7_data$v2paid[merged_r7_data$Q99 == 901] <- NA #ML
merged_r7_data$v2paid[merged_r7_data$Q99 == 902] <- 3800 #PMSD
merged_r7_data$v2paid[merged_r7_data$Q99 == 903] <- 2320 #LP
merged_r7_data$v2paid[merged_r7_data$Q99 == 904] <- 2460 #MMM
merged_r7_data$v2paid[merged_r7_data$Q99 == 905] <- NA #MP 
merged_r7_data$v2paid[merged_r7_data$Q99 == 906] <- NA #FSM
merged_r7_data$v2paid[merged_r7_data$Q99 == 907] <- NA  #REFORM PARTY
merged_r7_data$v2paid[merged_r7_data$Q99 == 908] <- NA #OPR
merged_r7_data$v2paid[merged_r7_data$Q99 == 909] <- NA #MR
merged_r7_data$v2paid[merged_r7_data$Q99 == 910] <- NA #FPR
merged_r7_data$v2paid[merged_r7_data$Q99 == 911] <- NA #Rezistans ek Alternativ 

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 900] <- 3798 #MSM
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 902] <- 3800 #PMSD
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 903] <- 2320 #LP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 904] <- 2460 #MMM

#19 Morocco 
#May 18
merged_r7_data$winner[merged_r7_data$Q99 == 1500] <- 1 #PJC 
merged_r7_data$winner[merged_r7_data$Q99 == 1503] <- 1 #RNI 
merged_r7_data$winner[merged_r7_data$Q99 == 1504] <- 1 #MP 
merged_r7_data$winner[merged_r7_data$Q99 == 1506] <- 1 #UC 
merged_r7_data$winner[merged_r7_data$Q99 == 1507] <- 1 #PPS 
merged_r7_data$winner[merged_r7_data$Q99 == 1505] <- 1 #ussp 

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1500] <- 1 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1503] <- 1 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1504] <- 1 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1506] <- 1 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1507] <- 1 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1505] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 1500] <- 2479 #PJD
merged_r7_data$v2paid[merged_r7_data$Q99 == 1501] <- 5325 #AMP
merged_r7_data$v2paid[merged_r7_data$Q99 == 1502] <- 2482 #PI
merged_r7_data$v2paid[merged_r7_data$Q99 == 1503] <- 2480 #RNI
merged_r7_data$v2paid[merged_r7_data$Q99 == 1504] <- 2481 #MP
merged_r7_data$v2paid[merged_r7_data$Q99 == 1505] <- 2324 #USSP 
merged_r7_data$v2paid[merged_r7_data$Q99 == 1506] <- 5323 #UC
merged_r7_data$v2paid[merged_r7_data$Q99 == 1507] <- 6620  #PPS
merged_r7_data$v2paid[merged_r7_data$Q99 == 1508] <- 5707 #MDS

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1500] <- 2479 #PJD
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1501] <- 5325 #AMP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1503] <- 2480 #RNI
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1504] <- 2481 #MP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1505] <- 2324 #USSP 
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1506] <- 5323 #UC
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1507] <- 6620  #PPS
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1508] <- 5707 #MDS

#20 Mozambique
#6-9/18
merged_r7_data$winner[merged_r7_data$Q99 == 540] <- 1 #FREMILO 

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 540] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 540] <- 2314 #FREMILO
merged_r7_data$v2paid[merged_r7_data$Q99 == 541] <- 2315 #RENAMO
merged_r7_data$v2paid[merged_r7_data$Q99 == 542] <- 3813 #MDM

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 540] <- 2314 #FREMILO
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 541] <- 2315 #RENAMO
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 542] <- 3813 #MDM

#21 Namibia 
#11-12/17
merged_r7_data$winner[merged_r7_data$Q99 == 592] <- 1 #SWAPO 

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 592] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 580] <- NA #APP
merged_r7_data$v2paid[merged_r7_data$Q99 == 582] <- 2315 #COD
merged_r7_data$v2paid[merged_r7_data$Q99 == 583] <- NA #DPN
merged_r7_data$v2paid[merged_r7_data$Q99 == 584] <- 2356 #DTA
merged_r7_data$v2paid[merged_r7_data$Q99 == 585] <- NA #MAG
merged_r7_data$v2paid[merged_r7_data$Q99 == 586] <- NA #NDP
merged_r7_data$v2paid[merged_r7_data$Q99 == 588] <- NA #NUDO
merged_r7_data$v2paid[merged_r7_data$Q99 == 589] <- 4895 #RDP
merged_r7_data$v2paid[merged_r7_data$Q99 == 590] <- NA #RP
merged_r7_data$v2paid[merged_r7_data$Q99 == 591] <- NA #SWANU
merged_r7_data$v2paid[merged_r7_data$Q99 == 592] <- 2331 #SWAPO
merged_r7_data$v2paid[merged_r7_data$Q99 == 594] <- 2335 #UDF

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 582] <- 2315 #COD
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 584] <- 2356 #DTA
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 589] <- 4895 #RDP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 592] <- 2331 #SWAPO
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 594] <- 2335 #UDF

#22 Niger
#4/18
merged_r7_data$winner[merged_r7_data$Q99 == 1104] <- 1 #PNDS 

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1104] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 1100] <- 2351 #ANDP
merged_r7_data$v2paid[merged_r7_data$Q99 == 1101] <- 2352 #CDS
merged_r7_data$v2paid[merged_r7_data$Q99 == 1102] <- 2350 #MNSD
merged_r7_data$v2paid[merged_r7_data$Q99 == 1103] <- 2356 #DTA
merged_r7_data$v2paid[merged_r7_data$Q99 == 1104] <- 2325 #PNDS
merged_r7_data$v2paid[merged_r7_data$Q99 == 1105] <- NA #PNA
merged_r7_data$v2paid[merged_r7_data$Q99 == 1106] <- 5804 #RDP
merged_r7_data$v2paid[merged_r7_data$Q99 == 1107] <- NA #UDPS
merged_r7_data$v2paid[merged_r7_data$Q99 == 1109] <- NA #MPN
merged_r7_data$v2paid[merged_r7_data$Q99 == 1110] <- NA #MPR
merged_r7_data$v2paid[merged_r7_data$Q99 == 1111] <- NA #I


#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1100] <- 2351 #ANDP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1101] <- 2352 #CDS
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1102] <- 2350 #MNSD
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1103] <- 2356 #DTA
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1104] <- 2325 #PNDS
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1106] <- 5804 #RDP

#23 Nigeria
#4-5/17
merged_r7_data$winner[merged_r7_data$Q99 == 621] <- 1 #APC 

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 621] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 620] <- NA #ACD
merged_r7_data$v2paid[merged_r7_data$Q99 == 621] <- 5538 #APC
merged_r7_data$v2paid[merged_r7_data$Q99 == 622] <- 4116 #AD
merged_r7_data$v2paid[merged_r7_data$Q99 == 623] <- NA #ADC
merged_r7_data$v2paid[merged_r7_data$Q99 == 624] <- 2313 #ANPP
merged_r7_data$v2paid[merged_r7_data$Q99 == 625] <- NA #APGA
merged_r7_data$v2paid[merged_r7_data$Q99 == 626] <- NA #APP
merged_r7_data$v2paid[merged_r7_data$Q99 == 628] <- 5539 #CPC
merged_r7_data$v2paid[merged_r7_data$Q99 == 630] <- NA #DA
merged_r7_data$v2paid[merged_r7_data$Q99 == 633] <- NA #FDP
merged_r7_data$v2paid[merged_r7_data$Q99 == 634] <- NA #LP
merged_r7_data$v2paid[merged_r7_data$Q99 == 637] <- NA #ND
merged_r7_data$v2paid[merged_r7_data$Q99 == 638] <- 2354 #PDP
merged_r7_data$v2paid[merged_r7_data$Q99 == 640] <- NA #PPP
merged_r7_data$v2paid[merged_r7_data$Q99 == 643] <- NA #SDMP

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 621] <- 5538 #APC
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 622] <- 4116 #AD
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 624] <- 2313 #ANPP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 628] <- 5539 #CPC
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 638] <- 2354 #PDP

#24 São Tomé and Príncipe SKIP
#6-7/18

#25 Senegal 
#12/17
merged_r7_data$winner[merged_r7_data$Q99 == 663] <- 1 #APR 
merged_r7_data$winner[merged_r7_data$Q99 == 679] <- 1 #Benno Bokk Yakaar 


#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 663] <- 1 
merged_r7_data$winner_party[merged_r7_data$Q88B == 679] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 660] <- 2329 #PDS
merged_r7_data$v2paid[merged_r7_data$Q99 == 661] <- 2380 #SP
merged_r7_data$v2paid[merged_r7_data$Q99 == 662] <- 2379 #AFP
merged_r7_data$v2paid[merged_r7_data$Q99 == 663] <- 5766 #APR
merged_r7_data$v2paid[merged_r7_data$Q99 == 664] <- NA #REWMI
merged_r7_data$v2paid[merged_r7_data$Q99 == 665] <- 6462 #URP
merged_r7_data$v2paid[merged_r7_data$Q99 == 669] <- NA #JEFJEL
merged_r7_data$v2paid[merged_r7_data$Q99 == 670] <- NA #LD
merged_r7_data$v2paid[merged_r7_data$Q99 == 671] <- NA #UCS
merged_r7_data$v2paid[merged_r7_data$Q99 == 672] <- NA #GP
merged_r7_data$v2paid[merged_r7_data$Q99 == 674] <- NA #BN
merged_r7_data$v2paid[merged_r7_data$Q99 == 677] <- NA #ACT
merged_r7_data$v2paid[merged_r7_data$Q99 == 678] <- NA #PAStef
merged_r7_data$v2paid[merged_r7_data$Q99 == 679] <- 5766 #BBY
merged_r7_data$v2paid[merged_r7_data$Q99 == 684] <- NA #PVD
merged_r7_data$v2paid[merged_r7_data$Q99 == 685] <- NA #PUR
merged_r7_data$v2paid[merged_r7_data$Q99 == 685] <- 93588 #MANKO TaXawou

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 660] <- 2329 #PDS
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 661] <- 2380 #SP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 662] <- 2379 #AFP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 663] <- 5766 #APR
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 665] <- 6462 #URP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 679] <- 5766 #BBY
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 685] <- 93588 #MANKO TaXawou

#26 Sierra Leone
#7/18 #Election year The new president (Bio) won the second round 3/31 assumed office 4/4
merged_r7_data$winner[merged_r7_data$Q99 == 930] <- 1 #SLPP 

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 930] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 930] <- 4047 #SLPP
merged_r7_data$v2paid[merged_r7_data$Q99 == 931] <- 4045 #APC
merged_r7_data$v2paid[merged_r7_data$Q99 == 932] <- NA #PMDC
merged_r7_data$v2paid[merged_r7_data$Q99 == 933] <- NA #NDA
merged_r7_data$v2paid[merged_r7_data$Q99 == 935] <- NA #ADP
merged_r7_data$v2paid[merged_r7_data$Q99 == 936] <- 7649 #C4C
merged_r7_data$v2paid[merged_r7_data$Q99 == 937] <- 7651 #NGC

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 930] <- 4047 #SLPP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 931] <- 4045 #APC
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 936] <- 7649 #C4C
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 937] <- 7651 #NGC

#27 South Africa
#7-9/18
merged_r7_data$winner[merged_r7_data$Q99 == 702] <- 1 #ANC 

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 702] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 700] <- NA #ACDP
merged_r7_data$v2paid[merged_r7_data$Q99 == 702] <- 1219 #ANC
merged_r7_data$v2paid[merged_r7_data$Q99 == 704] <- 4546 #COPE
merged_r7_data$v2paid[merged_r7_data$Q99 == 705] <- 1038 #DA
merged_r7_data$v2paid[merged_r7_data$Q99 == 706] <- NA #VF
merged_r7_data$v2paid[merged_r7_data$Q99 == 707] <- NA #ID
merged_r7_data$v2paid[merged_r7_data$Q99 == 708] <- 1630 #IFP
merged_r7_data$v2paid[merged_r7_data$Q99 == 709] <- NA #MF
merged_r7_data$v2paid[merged_r7_data$Q99 == 711] <- 5731 #NNP
merged_r7_data$v2paid[merged_r7_data$Q99 == 712] <- NA #PAC
merged_r7_data$v2paid[merged_r7_data$Q99 == 713] <- NA #UCDP
merged_r7_data$v2paid[merged_r7_data$Q99 == 714] <- NA #UDM
merged_r7_data$v2paid[merged_r7_data$Q99 == 716] <- 4548 #EFF
merged_r7_data$v2paid[merged_r7_data$Q99 == 721] <- NA #FNLA
merged_r7_data$v2paid[merged_r7_data$Q99 == 726] <- NA #NFP
merged_r7_data$v2paid[merged_r7_data$Q99 == 728] <- NA #PA

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 702] <- 1219 #ANC
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 704] <- 4546 #COPE
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 705] <- 1038 #DA
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 708] <- 1630 #IFP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 711] <- 5731 #NNP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 716] <- 4548 #EFF

#28 Sudan
#7-8/18
merged_r7_data$winner[merged_r7_data$Q99 == 1540] <- 1 #NC 

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1540] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 1540] <- 5496 #NC
merged_r7_data$v2paid[merged_r7_data$Q99 == 1541] <- 4756 #UMMA
merged_r7_data$v2paid[merged_r7_data$Q99 == 1542] <- 4754 #DUP
merged_r7_data$v2paid[merged_r7_data$Q99 == 1543] <- NA #PCP
merged_r7_data$v2paid[merged_r7_data$Q99 == 1544] <- NA #CP
merged_r7_data$v2paid[merged_r7_data$Q99 == 1545] <- NA #SCP
merged_r7_data$v2paid[merged_r7_data$Q99 == 1546] <- NA #NM

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1540] <- 5496 #NC
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1541] <- 4756 #UMMA
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1542] <- 4754 #DUP

#29 Tanzania
#4-6/17
merged_r7_data$winner[merged_r7_data$Q99 == 740] <- 1 #CCM

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 740] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 740] <- 2328 #CCM
merged_r7_data$v2paid[merged_r7_data$Q99 == 741] <- 2345 #CUF v CCW
merged_r7_data$v2paid[merged_r7_data$Q99 == 742] <- 2344 #CHADEMA
merged_r7_data$v2paid[merged_r7_data$Q99 == 744] <- 3276 #NCCR-M
merged_r7_data$v2paid[merged_r7_data$Q99 == 754] <- NA #DP
merged_r7_data$v2paid[merged_r7_data$Q99 == 757] <- NA #SAU
merged_r7_data$v2paid[merged_r7_data$Q99 == 758] <- NA #ACT

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 740] <- 2328 #CCM
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 741] <- 2345 #CUF v CCW
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 742] <- 2344 #CHADEMA
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 744] <- 3276 #NCCR-M

#30 Togo
#11/17
merged_r7_data$winner[merged_r7_data$Q99 == 1140] <- 1 #UNIR

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1140] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 1140] <- 4129 #UNIR
merged_r7_data$v2paid[merged_r7_data$Q99 == 1141] <- 4130 #UFC
merged_r7_data$v2paid[merged_r7_data$Q99 == 1142] <- 5767 #ANC
merged_r7_data$v2paid[merged_r7_data$Q99 == 1143] <- 4133 #CAR
merged_r7_data$v2paid[merged_r7_data$Q99 == 1144] <- NA #CDPA
merged_r7_data$v2paid[merged_r7_data$Q99 == 1145] <- NA #PRR
merged_r7_data$v2paid[merged_r7_data$Q99 == 1146] <- NA #OBUTS
merged_r7_data$v2paid[merged_r7_data$Q99 == 1147] <- NA #UDPS
merged_r7_data$v2paid[merged_r7_data$Q99 == 1148] <- 8071 #ADDI
merged_r7_data$v2paid[merged_r7_data$Q99 == 1149] <- 4132 #CST
merged_r7_data$v2paid[merged_r7_data$Q99 == 1150] <- NA #Arc
merged_r7_data$v2paid[merged_r7_data$Q99 == 1151] <- NA #PNP

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1140] <- 4129 #UNIR
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1141] <- 4130 #UFC
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1142] <- 5767 #ANC
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1143] <- 4133 #CAR
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1148] <- 8071 #ADDI
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1149] <- 4132 #CST

#31 Tunisia
#https://www.aljazeera.com/news/2015/2/4/tunisia-pm-essid-announces-unity-government
#3-5/18
merged_r7_data$winner[merged_r7_data$Q99 == 1580] <- 1 #Nidaa
merged_r7_data$winner[merged_r7_data$Q99 == 1582] <- 1 #UPL V FPU
merged_r7_data$winner[merged_r7_data$Q99 == 1584] <- 1 #Afek
merged_r7_data$winner[merged_r7_data$Q99 == 1581] <- 1 #Ennahdha

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1580] <- 1 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1582] <- 1 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1584] <- 1 
merged_r7_data$winner_party[merged_r7_data$Q88B == 1581] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 1580] <- 4530 #Nidda
merged_r7_data$v2paid[merged_r7_data$Q99 == 1581] <- 5832 #Ennahdha
merged_r7_data$v2paid[merged_r7_data$Q99 == 1582] <- NA #FREE Pat
merged_r7_data$v2paid[merged_r7_data$Q99 == 1583] <- NA #PF
merged_r7_data$v2paid[merged_r7_data$Q99 == 1584] <- NA #Afek
merged_r7_data$v2paid[merged_r7_data$Q99 == 1585] <- NA #Hirak
merged_r7_data$v2paid[merged_r7_data$Q99 == 1586] <- NA #I
merged_r7_data$v2paid[merged_r7_data$Q99 == 1587] <- NA #PM
merged_r7_data$v2paid[merged_r7_data$Q99 == 1588] <- 7917 #TD
merged_r7_data$v2paid[merged_r7_data$Q99 == 1589] <- NA #mashroo3

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1580] <- 4530 #Nidda
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1581] <- 5832 #Ennahdha
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 1588] <- 7917 #TD

#32 Uganda
#12-1/17
merged_r7_data$winner[merged_r7_data$Q99 == 780] <- 1 #NRM

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 780] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 780] <- 4523 #NRM
merged_r7_data$v2paid[merged_r7_data$Q99 == 781] <- 5389 #FDC
merged_r7_data$v2paid[merged_r7_data$Q99 == 782] <- 4525 #DP
merged_r7_data$v2paid[merged_r7_data$Q99 == 784] <- 4524 #UPC
merged_r7_data$v2paid[merged_r7_data$Q99 == 788] <- NA #JEEMA
merged_r7_data$v2paid[merged_r7_data$Q99 == 790] <- NA #Forward
merged_r7_data$v2paid[merged_r7_data$Q99 == 791] <- NA #Farmer's party

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 780] <- 4523 #NRM
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 781] <- 5389 #FDC
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 782] <- 4525 #DP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 784] <- 4524 #UPC

#33 Zambia 
#4/17
merged_r7_data$winner[merged_r7_data$Q99 == 826] <- 1 #NRM

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 826] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 821] <- 2332 #FDD
merged_r7_data$v2paid[merged_r7_data$Q99 == 823] <- 2333 #MMD
merged_r7_data$v2paid[merged_r7_data$Q99 == 825] <- NA #NAREP
merged_r7_data$v2paid[merged_r7_data$Q99 == 826] <- 2302 #PF
merged_r7_data$v2paid[merged_r7_data$Q99 == 827] <- 2334 #UNIP
merged_r7_data$v2paid[merged_r7_data$Q99 == 828] <- 2335 #UPND
merged_r7_data$v2paid[merged_r7_data$Q99 == 830] <- NA #PP
merged_r7_data$v2paid[merged_r7_data$Q99 == 831] <- NA #Green Party
merged_r7_data$v2paid[merged_r7_data$Q99 == 832] <- NA #UPP

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 821] <- 2332 #FDD
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 823] <- 2333 #MMD
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 826] <- 2302 #PF
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 827] <- 2334 #UNIP
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 828] <- 2335 #UPND

#34 Zimbabwe 
#1-2/17
merged_r7_data$winner[merged_r7_data$Q99 == 861] <- 1 #

#Close Party Winner/Loser 
merged_r7_data$winner_party[merged_r7_data$Q88B == 861] <- 1 

#Party Matching Vote
merged_r7_data$v2paid[merged_r7_data$Q99 == 860] <- 3559 #MDC-T
merged_r7_data$v2paid[merged_r7_data$Q99 == 861] <- 3305 #ZANU-PF
merged_r7_data$v2paid[merged_r7_data$Q99 == 862] <- 3560 #MDC-Mutambara he is Ncube
merged_r7_data$v2paid[merged_r7_data$Q99 == 863] <- NA #MKD
merged_r7_data$v2paid[merged_r7_data$Q99 == 864] <- 6615 #ZAPU-D
merged_r7_data$v2paid[merged_r7_data$Q99 == 866] <- 7986 #MDC R
merged_r7_data$v2paid[merged_r7_data$Q99 == 867] <- 7988 #ZPF

#Party Matching Close
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 860] <- 3559 #MDC-T
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 861] <- 3305 #ZANU-PF
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 862] <- 3560 #MDC-Mutambara he is Ncube
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 864] <- 6615 #ZAPU-D
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 866] <- 7986 #MDC R
merged_r7_data$v2paid_close[merged_r7_data$Q88B == 867] <- 7988 #ZPF

#END Codes
merged_r7_data$loser_party <- 1 
merged_r7_data$loser_party[merged_r7_data$winner_party == 1] <- 0
merged_r7_data$loser_party[merged_r7_data$nonpartisan == 1] <- 0
merged_r7_data$loser_party[merged_r7_data$Q88B == 9999] <- NA
merged_r7_data$loser_party[merged_r7_data$Q88B == 9998] <- NA
merged_r7_data$loser_party[merged_r7_data$Q88B == -1] <- NA
merged_r7_data$loser_party[merged_r7_data$Q88A == -1] <- NA
merged_r7_data$loser_party[merged_r7_data$Q88A == 8] <- NA
merged_r7_data$loser_party[merged_r7_data$Q88A == 9] <- NA

#Loser
merged_r7_data$loser <- 0 
merged_r7_data$loser[merged_r7_data$winner == 0 & merged_r7_data$didnt_vote == 0] <- 1
merged_r7_data$loser[merged_r7_data$Q99 == 9998] <- NA
merged_r7_data$loser[merged_r7_data$Q99 == 9999] <- NA
merged_r7_data$loser[merged_r7_data$Q99 == -1] <- NA

#Round 2 of AB Winner and Controls Coded Below

#Winner 
merged_r2_data$winner <- 0 
merged_r2_data$winner[merged_r2_data$q87a==242 & merged_r2_data$country == 1] <- 1
merged_r2_data$winner[merged_r2_data$q87a==120 & merged_r2_data$country == 2] <- 1
merged_r2_data$winner[merged_r2_data$q87a==181 & merged_r2_data$country == 3] <- 1    
merged_r2_data$winner[merged_r2_data$q87a==141 & merged_r2_data$country == 4] <- 1    
#MALI: Independent President   5
merged_r2_data$winner[merged_r2_data$q87a==320 & merged_r2_data$country == 6] <- 1    
merged_r2_data$winner[merged_r2_data$q87a==260 & merged_r2_data$country == 7] <- 1    
merged_r2_data$winner[merged_r2_data$q87a==102 & merged_r2_data$country == 8] <- 1    
merged_r2_data$winner[merged_r2_data$q87a==200 & merged_r2_data$country == 9] <- 1    
#Uganda non partisan          10
merged_r2_data$winner[merged_r2_data$q87a==302 & merged_r2_data$country == 11] <- 1    
merged_r2_data$winner[merged_r2_data$q87a==280 & merged_r2_data$country == 12] <- 1    
merged_r2_data$winner[merged_r2_data$q87a==50 & merged_r2_data$country == 13] <- 1    
merged_r2_data$winner[merged_r2_data$q87a==387 & merged_r2_data$country == 14] <- 1    
merged_r2_data$winner[merged_r2_data$q87a==380 & merged_r2_data$country == 14] <- 1   #TWO Parties Represented. 
merged_r2_data$winner[merged_r2_data$q87a==80 & merged_r2_data$country == 15] <- 1    
merged_r2_data$winner[merged_r2_data$q87a==220 & merged_r2_data$country == 16] <- 1    

merged_r2_data$winner[merged_r2_data$q87a==-1] <- NA
merged_r2_data$winner[merged_r2_data$q87a==998] <- NA
merged_r2_data$winner[merged_r2_data$q87a==999] <- NA

#Independent
merged_r2_data$independent <- 0
merged_r2_data$independent[merged_r2_data$q87a == 0] <- 1
merged_r2_data$independent[merged_r2_data$q87a == 998] <- NA
merged_r2_data$independent[merged_r2_data$q87a == 999] <- NA
merged_r2_data$independent[merged_r2_data$q87a == -1] <- NA

merged_r2_data$nonpartisan <- merged_r2_data$independent

merged_r2_data$loser_party <- 0
merged_r2_data$loser_party[merged_r2_data$independent == 0 & merged_r2_data$winner == 0] <- 1


#Extract Years for Each Round
library(stringr)
merged_r7_data[c('Year', 'Month', 'Day')] <- str_split_fixed(merged_r7_data$DATEINTR, '-', 3)

merged_r6_data[c('Year', 'Month', 'Day')] <- str_split_fixed(merged_r6_data$DATEINTR, '-', 3)

merged_r5_data[c('Year', 'Month', 'Day')] <- str_split_fixed(merged_r5_data$DATEINTR, '-', 3)

merged_r4_data[c('Year', 'Month', 'Day')] <- str_split_fixed(merged_r4_data$DATEINTR, '-', 3)

merged_r3_data[c('Year', 'Month', 'Day')] <- str_split_fixed(merged_r3_data$dateintr, '-', 3)

merged_r2_data[c('Year', 'Month', 'Day')] <- str_split_fixed(merged_r2_data$dateintr, '-', 3)


#Afrobarometer Variable Coding

#Elections Year

merged_r2_data$election_year[merged_r2_data$country == 1] <- 1999 #Botswana
merged_r2_data$election_year[merged_r2_data$country == 2] <- 2000 #Ghana    
merged_r2_data$election_year[merged_r2_data$country == 3] <- 2002   #Lesotho
merged_r2_data$election_year[merged_r2_data$country == 4] <- 1999   #Malawi
merged_r2_data$election_year[merged_r2_data$country == 5] <- 2002 #Mali
merged_r2_data$election_year[merged_r2_data$country == 6] <- 1999  #Namibia
merged_r2_data$election_year[merged_r2_data$country == 7] <- 1999  #Nigeria
merged_r2_data$election_year[merged_r2_data$country == 8] <- 1994 #South Africa
merged_r2_data$election_year[merged_r2_data$country == 9] <- 2000 #Tanzania
merged_r2_data$election_year[merged_r2_data$country == 10] <- 2001 #Uganda
merged_r2_data$election_year[merged_r2_data$country == 11] <- 2001 #Zambia
merged_r2_data$election_year[merged_r2_data$country == 12] <- 2002 #Zimbabwe
merged_r2_data$election_year[merged_r2_data$country == 13] <- 2001 #Cape Verde    
merged_r2_data$election_year[merged_r2_data$country == 14] <- 2002 #Kenya    
merged_r2_data$election_year[merged_r2_data$country == 15] <- 1999 #Mozambique    
merged_r2_data$election_year[merged_r2_data$country == 16] <- 2000 #Senegal       

merged_r2_data$years_since_election = as.numeric(merged_r2_data$Year) - merged_r2_data$election_year


# Year
merged_r3_data$election_year[merged_r3_data$country == 2] <- 2004 #Botswana
merged_r3_data$election_year[merged_r3_data$country == 4] <- 2004 #Ghana    
merged_r3_data$election_year[merged_r3_data$country == 6] <- 2002   #Lesotho
merged_r3_data$election_year[merged_r3_data$country == 8] <- 2004   #Malawi
merged_r3_data$election_year[merged_r3_data$country == 9] <- 2002 #Mali
merged_r3_data$election_year[merged_r3_data$country == 11] <- 2004  #Namibia
merged_r3_data$election_year[merged_r3_data$country == 12] <- 2003  #Nigeria
merged_r3_data$election_year[merged_r3_data$country == 14] <- 2004 #South Africa
merged_r3_data$election_year[merged_r3_data$country == 15] <- 2000 #Tanzania
merged_r3_data$election_year[merged_r3_data$country == 16] <- 2002 #Uganda
merged_r3_data$election_year[merged_r3_data$country == 17] <- 2001 #Zambia
merged_r3_data$election_year[merged_r3_data$country == 18] <- 2005 #Zimbabwe
merged_r3_data$election_year[merged_r3_data$country == 3] <- 2001 #Cape Verde    
merged_r3_data$election_year[merged_r3_data$country == 5] <- 2002 #Kenya    
merged_r3_data$election_year[merged_r3_data$country == 10] <- 2004 #Mozambique    
merged_r3_data$election_year[merged_r3_data$country == 13] <- 2000 #Senegal   
merged_r3_data$election_year[merged_r3_data$country == 7] <- 2001 #Madagascar
merged_r3_data$election_year[merged_r3_data$country == 1] <- 2001 #Benin

merged_r3_data$years_since_election = as.numeric(merged_r3_data$Year) - merged_r3_data$election_year

#EDUCATION

#Wave 3 q90
#ten categories from no formal (0) to post-grad (9)

merged_r2_data$q84 <- recode(merged_r2_data$q84, "0=0")
merged_r2_data$q84 <- recode(merged_r2_data$q84, "98=NA")
merged_r2_data$q84 <- recode(merged_r2_data$q84, "99=NA")
merged_r2_data$q84 <- recode(merged_r2_data$q84, "-1=NA")
merged_r2_data$education <- merged_r2_data$q84

merged_r3_data$education <- merged_r3_data$q90
merged_r3_data$education[merged_r3_data$q90 == 98] <- NA
merged_r3_data$education[merged_r3_data$q90 == 99] <- NA
merged_r3_data$education[merged_r3_data$q90 == -1] <- NA

#Wave 4 
#ten categories from no formal (0) to post-grad (9)
merged_r4_data$education <- merged_r4_data$Q89
merged_r4_data$education[merged_r4_data$Q89 == 998] <- NA
merged_r4_data$education[merged_r4_data$Q89 == 99] <- NA
merged_r4_data$education[merged_r4_data$Q89 == -1] <- NA

#Wave 5 
#ten categories from no formal (0) to post-grad (9)
merged_r5_data$education <- merged_r5_data$Q97
merged_r5_data$education[merged_r5_data$Q97 == 998] <- NA
merged_r5_data$education[merged_r5_data$Q97 == 99] <- NA
merged_r5_data$education[merged_r5_data$Q97 == -1] <- NA

#Wave 6 
#ten categories from no formal (0) to post-grad (9)
merged_r6_data$education <- merged_r6_data$Q97
merged_r6_data$education[merged_r6_data$Q97 == 98] <- NA
merged_r6_data$education[merged_r6_data$Q97 == 99] <- NA
merged_r6_data$education[merged_r6_data$Q97 == -1] <- NA

#Wave 7 
#ten categories from no formal (0) to post-grad (9)
merged_r7_data$education <- merged_r7_data$Q97
merged_r7_data$education[merged_r7_data$Q97 == 98] <- NA
merged_r7_data$education[merged_r7_data$Q97 == 99] <- NA
merged_r7_data$education[merged_r7_data$Q97 == -1] <- NA

#SOCIAL TRUST

# WAVE 7 Q87B 
#For each of the following types of people, please tell me whether you would like having people from this group as neighbors, dislike it, or not care: People from other ethnic groups
#5 category and availible in 6 & 7 only 

merged_r7_data$social_trust <- merged_r7_data$Q87B
merged_r7_data$social_trust[merged_r7_data$Q87B == 9] <- NA
merged_r7_data$social_trust[merged_r7_data$Q87B == 98] <- NA
merged_r7_data$social_trust[merged_r7_data$Q87B == -1] <- NA

#Wave 6
merged_r6_data$social_trust <- merged_r6_data$Q89B
merged_r6_data$social_trust[merged_r6_data$Q89B == 9] <- NA
merged_r6_data$social_trust[merged_r6_data$Q89B == 98] <- NA
merged_r6_data$social_trust[merged_r6_data$Q89B == -1] <- NA

#AGE 

merged_r2_data$q80 <- recode(merged_r2_data$q80, "-1=NA")
merged_r2_data$q80 <- recode(merged_r2_data$q80, "998=NA")
merged_r2_data$q80 <- recode(merged_r2_data$q80, "999=NA") 
merged_r2_data$age <- merged_r2_data$q80

merged_r3_data$age <- merged_r3_data$q1
merged_r3_data$age[merged_r3_data$q1 == 998] <- NA
merged_r3_data$age[merged_r3_data$q1 == 999] <- NA
merged_r3_data$age[merged_r3_data$q1 == -1] <- NA

merged_r4_data$age <- merged_r4_data$Q1
merged_r4_data$age[merged_r4_data$Q1 == 998] <- NA
merged_r4_data$age[merged_r4_data$Q1 == 999] <- NA
merged_r4_data$age[merged_r4_data$Q1 == -1] <- NA

merged_r5_data$age <- merged_r5_data$Q1
merged_r5_data$age[merged_r5_data$Q1 == 998] <- NA
merged_r5_data$age[merged_r5_data$Q1 == 999] <- NA
merged_r5_data$age[merged_r5_data$Q1 == -1] <- NA

merged_r6_data$age <- merged_r6_data$Q1
merged_r6_data$age[merged_r6_data$Q1 == 998] <- NA
merged_r6_data$age[merged_r6_data$Q1 == 999] <- NA
merged_r6_data$age[merged_r6_data$Q1 == -1] <- NA

merged_r7_data$age <- merged_r7_data$Q1
merged_r7_data$age[merged_r7_data$Q1 == 998] <- NA
merged_r7_data$age[merged_r7_data$Q1 == 999] <- NA
merged_r7_data$age[merged_r7_data$Q1 == -1] <- NA

#Income (Personal Living Conditions)

merged_r2_data$income <- merged_r2_data$q1b
merged_r2_data$income[merged_r2_data$q1b == 9] <- NA
merged_r2_data$income[merged_r2_data$q1b == 98] <- NA
merged_r2_data$income[merged_r2_data$q1b == -1] <- NA

merged_r3_data$income <- merged_r3_data$q4b
merged_r3_data$income[merged_r3_data$q4b == 9] <- NA
merged_r3_data$income[merged_r3_data$q4b == 998] <- NA
merged_r3_data$income[merged_r3_data$q4b == -1] <- NA

merged_r4_data$income <- merged_r4_data$Q4B
merged_r4_data$income[merged_r4_data$Q4B == 9] <- NA
merged_r4_data$income[merged_r4_data$Q4B == 998] <- NA
merged_r4_data$income[merged_r4_data$Q4B == -1] <- NA

merged_r5_data$income <- merged_r5_data$Q3B
merged_r5_data$income[merged_r5_data$Q3B == 9] <- NA
merged_r5_data$income[merged_r5_data$Q3B == 998] <- NA
merged_r5_data$income[merged_r5_data$Q3B == -1] <- NA

merged_r6_data$income <- merged_r6_data$Q4B
merged_r6_data$income[merged_r6_data$Q4B == 9] <- NA
merged_r6_data$income[merged_r6_data$Q4B == 98] <- NA
merged_r6_data$income[merged_r6_data$Q4B == -1] <- NA

merged_r7_data$income <- merged_r7_data$Q4B
merged_r7_data$income[merged_r7_data$Q4B == 9] <- NA
merged_r7_data$income[merged_r7_data$Q4B == 8] <- NA
merged_r7_data$income[merged_r7_data$Q4B == -1] <- NA

#Employment Status (Collapsed the looking dimension for two reasons. 1- I don't need it. 2-Consistency see wave 5)
merged_r2_data$employment <- NA 
merged_r2_data$employment[merged_r2_data$q89 == 0] <- 0   
merged_r2_data$employment[merged_r2_data$q89 == 1] <- 0  #Not Employed

merged_r2_data$employment <- NA 
merged_r2_data$employment[merged_r2_data$q89 == 2] <- 1   
merged_r2_data$employment[merged_r2_data$q89 == 3] <- 1  #Part-Time

merged_r2_data$employment <- NA 
merged_r2_data$employment[merged_r2_data$q89 == 4] <- 2   
merged_r2_data$employment[merged_r2_data$q89 == 5] <- 2  #Part-Time

merged_r3_data$employment <- NA 
merged_r3_data$employment[merged_r3_data$q94 == 0] <- 0   
merged_r3_data$employment[merged_r3_data$q94 == 1] <- 0  #Not Employed 

merged_r3_data$employment[merged_r3_data$q94 == 2] <- 1   
merged_r3_data$employment[merged_r3_data$q94 == 3] <- 1  #Part-time

merged_r3_data$employment[merged_r3_data$q94 == 4] <- 2   
merged_r3_data$employment[merged_r3_data$q94 == 5] <- 2  #Full-Time

merged_r4_data$employment <- NA 
merged_r4_data$employment[merged_r4_data$Q94 == 0] <- 0   
merged_r4_data$employment[merged_r4_data$Q94 == 1] <- 0  #Not Employed 

merged_r4_data$employment[merged_r4_data$Q94 == 2] <- 1   
merged_r4_data$employment[merged_r4_data$Q94 == 3] <- 1  #Part-time

merged_r4_data$employment[merged_r4_data$Q94 == 4] <- 2   
merged_r4_data$employment[merged_r4_data$Q94 == 5] <- 2  #Full-Time

merged_r5_data$employment <- NA 
merged_r5_data$employment[merged_r5_data$Q96 == 0] <- 0   
merged_r5_data$employment[merged_r5_data$Q96 == 1] <- 0  #Not Employed 

merged_r5_data$employment[merged_r5_data$Q96 == 2] <- 1  #Part-time

merged_r5_data$employment[merged_r5_data$Q96 == 3] <- 2  #Full-Time

merged_r6_data$employment <- NA 
merged_r6_data$employment[merged_r6_data$Q95 == 0] <- 0   
merged_r6_data$employment[merged_r6_data$Q95 == 1] <- 0  #Not Employed 

merged_r6_data$employment[merged_r6_data$Q95 == 2] <- 1   #Part-time

merged_r6_data$employment[merged_r6_data$Q95 == 3] <- 2   #Full-Time

merged_r7_data$employment <- NA 
merged_r7_data$employment[merged_r7_data$Q94 == 0] <- 0   
merged_r7_data$employment[merged_r7_data$Q94 == 1] <- 0  #Not Employed 

merged_r7_data$employment[merged_r7_data$Q94 == 2] <- 1   #Part-time

merged_r7_data$employment[merged_r7_data$Q94 == 3] <- 2   #Full-Time  

#GENDER
merged_r2_data$female <- NA
merged_r2_data$female[merged_r2_data$q96 == 1] <- 0
merged_r2_data$female[merged_r2_data$q96 == 2] <- 1

merged_r3_data$female <- NA
merged_r3_data$female[merged_r3_data$q101 == 1] <- 0
merged_r3_data$female[merged_r3_data$q101 == 2] <- 1

merged_r4_data$female <- NA
merged_r4_data$female[merged_r4_data$Q101 == 1] <- 0
merged_r4_data$female[merged_r4_data$Q101 == 2] <- 1

merged_r5_data$female <- NA
merged_r5_data$female[merged_r5_data$Q101 == 1] <- 0
merged_r5_data$female[merged_r5_data$Q101 == 2] <- 1

merged_r6_data$female <- NA
merged_r6_data$female[merged_r6_data$Q101 == 1] <- 0
merged_r6_data$female[merged_r6_data$Q101 == 2] <- 1

merged_r7_data$female <- NA
merged_r7_data$female[merged_r7_data$Q101 == 1] <- 0
merged_r7_data$female[merged_r7_data$Q101 == 2] <- 1 

#VOTER
merged_r3_data$voter <- 0
merged_r3_data$voter[merged_r3_data$q30 == 1] <- 1 
merged_r3_data$voter[merged_r3_data$q30 == 98] <- NA
merged_r3_data$voter[merged_r3_data$q30 == -1] <- NA
merged_r3_data$voter[merged_r3_data$q30 == 9] <- NA

merged_r4_data$voter <- 0
merged_r4_data$voter[merged_r4_data$Q23D == 1] <- 1 
merged_r4_data$voter[merged_r4_data$Q23D == 998] <- NA
merged_r4_data$voter[merged_r4_data$Q23D == -1] <- NA
merged_r4_data$voter[merged_r4_data$Q23D == 88] <- NA
merged_r4_data$voter[merged_r4_data$Q23D == 77] <- NA
merged_r4_data$voter[merged_r4_data$Q23D == 9] <- NA

merged_r5_data$voter <- 0
merged_r5_data$voter[merged_r5_data$Q27 == 1] <- 1 
merged_r5_data$voter[merged_r5_data$Q27 == 998] <- NA
merged_r4_data$voter[merged_r4_data$Q27 == 9] <- NA
merged_r4_data$voter[merged_r4_data$Q27 == -1] <- NA

merged_r6_data$voter <- 0
merged_r6_data$voter[merged_r6_data$Q21 == 1] <- 1 
merged_r6_data$voter[merged_r6_data$Q21 == 99] <- NA
merged_r6_data$voter[merged_r6_data$Q21 == 98] <- NA
merged_r6_data$voter[merged_r6_data$Q21 == -1] <- NA
merged_r6_data$voter[merged_r6_data$Q21 == 9] <- NA

merged_r7_data$voter <- 0 
merged_r7_data$voter[merged_r7_data$Q22 == 1] <- 1 
merged_r7_data$voter[merged_r7_data$Q22 == 9] <- NA 
merged_r7_data$voter[merged_r7_data$Q22 == 98] <- NA 
merged_r7_data$voter[merged_r7_data$Q22 == -1] <- NA 

#ETHNIC ID (Yes/No)

merged_r3_data$ethnic_ider <- 1
merged_r3_data$ethnic_ider[merged_r3_data$q79 == -1] <- NA
merged_r3_data$ethnic_ider[merged_r3_data$q79 == 999] <- NA
merged_r3_data$ethnic_ider[merged_r3_data$q79 == 997] <- NA
merged_r3_data$ethnic_ider[merged_r3_data$q79 == 998] <- NA
merged_r3_data$ethnic_ider[merged_r3_data$q79 == 990] <- 0

merged_r4_data$ethnic_ider <- 1
merged_r4_data$ethnic_ider[merged_r4_data$Q79 == -1] <- NA
merged_r4_data$ethnic_ider[merged_r4_data$Q79 == 999] <- NA
merged_r4_data$ethnic_ider[merged_r4_data$Q79 == 998] <- NA
merged_r4_data$ethnic_ider[merged_r4_data$Q79 == 990] <- 0

merged_r5_data$ethnic_ider <- 1
merged_r5_data$ethnic_ider[merged_r5_data$Q84 == -1] <- NA
merged_r5_data$ethnic_ider[merged_r5_data$Q84 == 9999] <- NA
merged_r5_data$ethnic_ider[merged_r5_data$Q84 == 9998] <- NA
merged_r5_data$ethnic_ider[merged_r5_data$Q84 == 9997] <- NA
merged_r5_data$ethnic_ider[merged_r5_data$Q84 == 9990] <- 0

merged_r6_data$ethnic_ider <- 1
merged_r6_data$ethnic_ider[merged_r6_data$Q87 == -1] <- NA
merged_r6_data$ethnic_ider[merged_r6_data$Q87 == -9999] <- NA
merged_r6_data$ethnic_ider[merged_r6_data$Q87 == 9998] <- NA
merged_r6_data$ethnic_ider[merged_r6_data$Q87 == 9990] <- 0

merged_r7_data$ethnic_ider <- 1
merged_r7_data$ethnic_ider[merged_r7_data$Q84 == -1] <- NA
merged_r7_data$ethnic_ider[merged_r7_data$Q84 == 9999] <- NA
merged_r7_data$ethnic_ider[merged_r7_data$Q84 == 9998] <- NA
merged_r7_data$ethnic_ider[merged_r7_data$Q84 == 9997] <- NA
merged_r7_data$ethnic_ider[merged_r7_data$Q84 == 9996] <- NA
merged_r7_data$ethnic_ider[merged_r7_data$Q84 == 9990] <- 0






