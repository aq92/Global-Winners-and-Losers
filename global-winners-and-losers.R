
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

#AFROBAROMETER WAVE 2 DEPENDENT VARIABLE
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

merged_r5_data <- merged_round_5_data_34_countries_2011_2013_last_update_july_2015
merged_r5_data <- read_sav("merged_r2_data.sav")

#Create a County-Wave Identifier

library("countrycode")

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

#World Values Survey

WVS_TimeSeries_1981_2020_spss_v2_0 <- read_sav("WVS_TimeSeries_1981_2020_spss_v2_0.sav")


#country
#cowcode 
#country_wave

WVS_TimeSeries_1981_2020_spss_v2_0$cowcode <- NA
WVS_TimeSeries_1981_2020_spss_v2_0$cowcode <- WVS_TimeSeries_1981_2020_spss_v2_0$COW_NUM 
WVS_TimeSeries_1981_2020_spss_v2_0$country <- NA
WVS_TimeSeries_1981_2020_spss_v2_0$country <- WVS_TimeSeries_1981_2020_spss_v2_0$COUNTRY_ALPHA

WVS_TimeSeries_1981_2020_spss_v2_0$country_wave <- NA

WVS_TimeSeries_1981_2020_spss_v2_0$WVS <- "WVS"
WVS_TimeSeries_1981_2020_spss_v2_0$wave2 <- WVS_TimeSeries_1981_2020_spss_v2_0$S002VS
WVS_TimeSeries_1981_2020_spss_v2_0$wave <- str_c(WVS_TimeSeries_1981_2020_spss_v2_0$WVS, "", WVS_TimeSeries_1981_2020_spss_v2_0$wave2)

#Here we a new variable, wave, that show what survey AND wave the respondent is from. For example 'WV2'

WVS_TimeSeries_1981_2020_spss_v2_0$country_wave <- str_c(WVS_TimeSeries_1981_2020_spss_v2_0$cowcode, "_", WVS_TimeSeries_1981_2020_spss_v2_0$wave)


#World Values Survey Dependent Variable (Please note that, according to the variable and equivalences excel file, that item are coded from high confidence to low in the WVS)
WVS_TimeSeries_1981_2020_spss_v2_0$trust_courts <- NA
WVS_TimeSeries_1981_2020_spss_v2_0$trust_courts[WVS_TimeSeries_1981_2020_spss_v2_0$E069_17 == 4] <- 1
WVS_TimeSeries_1981_2020_spss_v2_0$trust_courts[WVS_TimeSeries_1981_2020_spss_v2_0$E069_17 == 3] <- 2
WVS_TimeSeries_1981_2020_spss_v2_0$trust_courts[WVS_TimeSeries_1981_2020_spss_v2_0$E069_17 == 2] <- 3
WVS_TimeSeries_1981_2020_spss_v2_0$trust_courts[WVS_TimeSeries_1981_2020_spss_v2_0$E069_17 == 1] <- 4

WVS_TimeSeries_1981_2020_spss_v2_0$trust_police <- NA
WVS_TimeSeries_1981_2020_spss_v2_0$trust_police[WVS_TimeSeries_1981_2020_spss_v2_0$E069_06 == 4] <- 1
WVS_TimeSeries_1981_2020_spss_v2_0$trust_police[WVS_TimeSeries_1981_2020_spss_v2_0$E069_06 == 3] <- 2
WVS_TimeSeries_1981_2020_spss_v2_0$trust_police[WVS_TimeSeries_1981_2020_spss_v2_0$E069_06 == 2] <- 3
WVS_TimeSeries_1981_2020_spss_v2_0$trust_police[WVS_TimeSeries_1981_2020_spss_v2_0$E069_06 == 1] <- 4

WVS_TimeSeries_1981_2020_spss_v2_0$trust_president <- NA #Confidence in Government 
WVS_TimeSeries_1981_2020_spss_v2_0$trust_president[WVS_TimeSeries_1981_2020_spss_v2_0$E069_11 == 4] <- 1
WVS_TimeSeries_1981_2020_spss_v2_0$trust_president[WVS_TimeSeries_1981_2020_spss_v2_0$E069_11 == 3] <- 2
WVS_TimeSeries_1981_2020_spss_v2_0$trust_president[WVS_TimeSeries_1981_2020_spss_v2_0$E069_11 == 2] <- 3
WVS_TimeSeries_1981_2020_spss_v2_0$trust_president[WVS_TimeSeries_1981_2020_spss_v2_0$E069_11 == 1] <- 4

WVS_TimeSeries_1981_2020_spss_v2_0$trust_parliament <- NA  
WVS_TimeSeries_1981_2020_spss_v2_0$trust_parliament[WVS_TimeSeries_1981_2020_spss_v2_0$E069_07 == 4] <- 1
WVS_TimeSeries_1981_2020_spss_v2_0$trust_parliament[WVS_TimeSeries_1981_2020_spss_v2_0$E069_07 == 3] <- 2
WVS_TimeSeries_1981_2020_spss_v2_0$trust_parliament[WVS_TimeSeries_1981_2020_spss_v2_0$E069_07 == 2] <- 3
WVS_TimeSeries_1981_2020_spss_v2_0$trust_parliament[WVS_TimeSeries_1981_2020_spss_v2_0$E069_07 == 1] <- 4

#No confidence in the electoral commission item. 

WVS_TimeSeries_1981_2020_spss_v2_0$trust_army <- NA  
WVS_TimeSeries_1981_2020_spss_v2_0$trust_army[WVS_TimeSeries_1981_2020_spss_v2_0$E069_02 == 4] <- 1
WVS_TimeSeries_1981_2020_spss_v2_0$trust_army[WVS_TimeSeries_1981_2020_spss_v2_0$E069_02 == 3] <- 2
WVS_TimeSeries_1981_2020_spss_v2_0$trust_army[WVS_TimeSeries_1981_2020_spss_v2_0$E069_02 == 2] <- 3
WVS_TimeSeries_1981_2020_spss_v2_0$trust_army[WVS_TimeSeries_1981_2020_spss_v2_0$E069_02 == 1] <- 4

#LATINOBAROMETRO WAVE 2020  

library(foreign)
Latino_Baro_r2020 <- read.dta("Latinobarometro_2020_Eng_Stata_v1_0.dta")

Latino_Baro_r2020$cowcode <- NA
Latino_Baro_r2020$cowcode <- countryname(Latino_Baro_r2020$idenpa, destination = 'cowc', warn = TRUE)
#The command identifies problems with matching: Brasil,  Rep. Dominicana,  México,  Panamá,  Perú. We will add the cow charater manually here. 
Latino_Baro_r2020$cowcode[Latino_Baro_r2020$idenpa == 'Brasil'] <- 'BRA'
Latino_Baro_r2020$cowcode[Latino_Baro_r2020$idenpa == 'Rep. Dominicana'] <- 'DOM'
Latino_Baro_r2020$cowcode[Latino_Baro_r2020$idenpa == 'México'] <- 'MEX'
Latino_Baro_r2020$cowcode[Latino_Baro_r2020$idenpa == 'Panamá'] <- 'PAN'
Latino_Baro_r2020$cowcode[Latino_Baro_r2020$idenpa == 'Perú'] <- 'PER'

Latino_Baro_r2020$country_wave <- NA
Latino_Baro_r2020$wave <- "LATIN20"
library(stringr)
Latino_Baro_r2020$country_wave <- str_c(Latino_Baro_r2020$cowcode, "_", Latino_Baro_r2020$wave)

#LATINOBAROMETRO WAVE 2020 Dependent Variable (high to low code order) 

Latino_Baro_r2020$trust_courts <- NA #Judicial Branch
Latino_Baro_r2020$trust_courts[Latino_Baro_r2020$p13st_c == 4] <- 1
Latino_Baro_r2020$trust_courts[Latino_Baro_r2020$p13st_c == 3] <- 2
Latino_Baro_r2020$trust_courts[Latino_Baro_r2020$p13st_c == 2] <- 3
Latino_Baro_r2020$trust_courts[Latino_Baro_r2020$p13st_c == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2020$trust_police <- NA
Latino_Baro_r2020$trust_police[Latino_Baro_r2020$P13STGBS_B == 4] <- 1
Latino_Baro_r2020$trust_police[Latino_Baro_r2020$P13STGBS_B == 3] <- 2
Latino_Baro_r2020$trust_police[Latino_Baro_r2020$P13STGBS_B == 2] <- 3
Latino_Baro_r2020$trust_police[Latino_Baro_r2020$P13STGBS_B == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2020$trust_president <- NA
Latino_Baro_r2020$trust_president[Latino_Baro_r2020$p13st_i == 4] <- 1
Latino_Baro_r2020$trust_president[Latino_Baro_r2020$p13st_i == 3] <- 2
Latino_Baro_r2020$trust_president[Latino_Baro_r2020$p13st_i == 2] <- 3
Latino_Baro_r2020$trust_president[Latino_Baro_r2020$p13st_i == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2020$trust_parliament <- NA
Latino_Baro_r2020$trust_parliament[Latino_Baro_r2020$p13st_d == 4] <- 1
Latino_Baro_r2020$trust_parliament[Latino_Baro_r2020$p13st_d == 3] <- 2
Latino_Baro_r2020$trust_parliament[Latino_Baro_r2020$p13st_d == 2] <- 3
Latino_Baro_r2020$trust_parliament[Latino_Baro_r2020$p13st_d == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2020$trust_electoral <- NA
Latino_Baro_r2020$trust_electoral[Latino_Baro_r2020$p13st_h == 4] <- 1
Latino_Baro_r2020$trust_electoral[Latino_Baro_r2020$p13st_h == 3] <- 2
Latino_Baro_r2020$trust_electoral[Latino_Baro_r2020$p13st_h == 2] <- 3
Latino_Baro_r2020$trust_electoral[Latino_Baro_r2020$p13st_h == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2020$trust_parties  <- NA
Latino_Baro_r2020$trust_parties[Latino_Baro_r2020$p13st_g == 4] <- 1
Latino_Baro_r2020$trust_parties[Latino_Baro_r2020$p13st_g == 3] <- 2
Latino_Baro_r2020$trust_parties[Latino_Baro_r2020$p13st_g == 2] <- 3
Latino_Baro_r2020$trust_parties[Latino_Baro_r2020$p13st_g == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2020$trust_army <- NA
Latino_Baro_r2020$trust_army[Latino_Baro_r2020$P13STGBS_A == 4] <- 1
Latino_Baro_r2020$trust_army[Latino_Baro_r2020$P13STGBS_A == 3] <- 2
Latino_Baro_r2020$trust_army[Latino_Baro_r2020$P13STGBS_A == 2] <- 3
Latino_Baro_r2020$trust_army[Latino_Baro_r2020$P13STGBS_A == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#LATINOBAROMETRO WAVE 2018 NO CODEBOOK FOR 2018. I CAN FIGURE THE CODING OUT BY LOOKING AT LABEL. BUT THE LABELS ARE IN SPANISH.

#LATINOBAROMETRO WAVE 2017

Latino_Baro_r2017 <- read_sav("Latinobarometro2017Eng_v20180117.sav")

Latino_Baro_r2017$cowcode <- NA
Latino_Baro_r2017$idenpa <- NA

Latino_Baro_r2017$idenpa[Latino_Baro_r2017$IDENPA == 32] <- 'Argentina'
Latino_Baro_r2017$idenpa[Latino_Baro_r2017$IDENPA == 68] <- 'Bolivia'
Latino_Baro_r2017$idenpa[Latino_Baro_r2017$IDENPA == 76] <- 'Brazil'
Latino_Baro_r2017$idenpa[Latino_Baro_r2017$IDENPA == 152] <- 'Chile'
Latino_Baro_r2017$idenpa[Latino_Baro_r2017$IDENPA == 170] <- 'Colombia'
Latino_Baro_r2017$idenpa[Latino_Baro_r2017$IDENPA == 188] <- 'Costa Rica'
Latino_Baro_r2017$idenpa[Latino_Baro_r2017$IDENPA == 214] <- 'Dominican Rep.'
Latino_Baro_r2017$idenpa[Latino_Baro_r2017$IDENPA == 218] <- 'Ecuador'
Latino_Baro_r2017$idenpa[Latino_Baro_r2017$IDENPA == 222] <- 'El Salvador'
Latino_Baro_r2017$idenpa[Latino_Baro_r2017$IDENPA == 320] <- 'Guatemala'
Latino_Baro_r2017$idenpa[Latino_Baro_r2017$IDENPA == 340] <- 'Honduras'
Latino_Baro_r2017$idenpa[Latino_Baro_r2017$IDENPA == 484] <- 'Mexico'
Latino_Baro_r2017$idenpa[Latino_Baro_r2017$IDENPA == 558] <- 'Nicaragua'
Latino_Baro_r2017$idenpa[Latino_Baro_r2017$IDENPA == 591] <- 'Panama'
Latino_Baro_r2017$idenpa[Latino_Baro_r2017$IDENPA == 600] <- 'Paraguay'
Latino_Baro_r2017$idenpa[Latino_Baro_r2017$IDENPA == 604] <- 'Peru'
Latino_Baro_r2017$idenpa[Latino_Baro_r2017$IDENPA == 858] <- 'Uruguay'
Latino_Baro_r2017$idenpa[Latino_Baro_r2017$IDENPA == 862] <- 'Venezuela'

Latino_Baro_r2017$cowcode <- countryname(Latino_Baro_r2017$idenpa, destination = 'cowc', warn = TRUE)

Latino_Baro_r2017$cowcode[Latino_Baro_r2017$idenpa == 'Dominican Rep.'] <- 'DOM'


Latino_Baro_r2017$country_wave <- NA
Latino_Baro_r2017$wave <- "LATIN17"
library(stringr)
Latino_Baro_r2017$country_wave <- str_c(Latino_Baro_r2017$cowcode, "_", Latino_Baro_r2017$wave)

#LATINOBAROMETRO WAVE 2017 Dependent Variable (high to low code order) 

Latino_Baro_r2017$trust_courts <- NA #Judicial Branch
Latino_Baro_r2017$trust_courts[Latino_Baro_r2017$P14ST.F == 4] <- 1
Latino_Baro_r2017$trust_courts[Latino_Baro_r2017$P14ST.F == 3] <- 2
Latino_Baro_r2017$trust_courts[Latino_Baro_r2017$P14ST.F == 2] <- 3
Latino_Baro_r2017$trust_courts[Latino_Baro_r2017$P14ST.F == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2017$trust_police <- NA
Latino_Baro_r2017$trust_police[Latino_Baro_r2017$P14STGBS.B == 4] <- 1
Latino_Baro_r2017$trust_police[Latino_Baro_r2017$P14STGBS.B == 3] <- 2
Latino_Baro_r2017$trust_police[Latino_Baro_r2017$P14STGBS.B == 2] <- 3
Latino_Baro_r2017$trust_police[Latino_Baro_r2017$P14STGBS.B == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2017$trust_president <- NA
Latino_Baro_r2017$trust_president[Latino_Baro_r2017$P14ST.E == 4] <- 1
Latino_Baro_r2017$trust_president[Latino_Baro_r2017$P14ST.E == 3] <- 2
Latino_Baro_r2017$trust_president[Latino_Baro_r2017$P14ST.E == 2] <- 3
Latino_Baro_r2017$trust_president[Latino_Baro_r2017$P14ST.E == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2017$trust_parliament <- NA
Latino_Baro_r2017$trust_parliament[Latino_Baro_r2017$P14ST.D == 4] <- 1
Latino_Baro_r2017$trust_parliament[Latino_Baro_r2017$P14ST.D == 3] <- 2
Latino_Baro_r2017$trust_parliament[Latino_Baro_r2017$P14ST.D == 2] <- 3
Latino_Baro_r2017$trust_parliament[Latino_Baro_r2017$P14ST.D == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2017$trust_electoral <- NA
Latino_Baro_r2017$trust_electoral[Latino_Baro_r2017$P14ST.H == 4] <- 1
Latino_Baro_r2017$trust_electoral[Latino_Baro_r2017$P14ST.H == 3] <- 2
Latino_Baro_r2017$trust_electoral[Latino_Baro_r2017$P14ST.H == 2] <- 3
Latino_Baro_r2017$trust_electoral[Latino_Baro_r2017$P14ST.H == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2017$trust_army <- NA
Latino_Baro_r2017$trust_army[Latino_Baro_r2017$P14STGBS.A == 4] <- 1
Latino_Baro_r2017$trust_army[Latino_Baro_r2017$P14STGBS.A == 3] <- 2
Latino_Baro_r2017$trust_army[Latino_Baro_r2017$P14STGBS.A == 2] <- 3
Latino_Baro_r2017$trust_army[Latino_Baro_r2017$P14STGBS.A == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2017$trust_parties  <- NA
Latino_Baro_r2017$trust_parties[Latino_Baro_r2017$P14ST.G == 4] <- 1
Latino_Baro_r2017$trust_parties[Latino_Baro_r2017$P14ST.G == 3] <- 2
Latino_Baro_r2017$trust_parties[Latino_Baro_r2017$P14ST.G == 2] <- 3
Latino_Baro_r2017$trust_parties[Latino_Baro_r2017$P14ST.G == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#LATINOBAROMETRO WAVE 2016

Latino_Baro_r2016 <- read_sav("Latinobarometro2016Eng_v20170205.sav")

Latino_Baro_r2016$cowcode <- NA
Latino_Baro_r2016$idenpa <- NA

Latino_Baro_r2016$idenpa[Latino_Baro_r2016$IDENPA == 32] <- 'Argentina'
Latino_Baro_r2016$idenpa[Latino_Baro_r2016$IDENPA == 68] <- 'Bolivia'
Latino_Baro_r2016$idenpa[Latino_Baro_r2016$IDENPA == 76] <- 'Brazil'
Latino_Baro_r2016$idenpa[Latino_Baro_r2016$IDENPA == 152] <- 'Chile'
Latino_Baro_r2016$idenpa[Latino_Baro_r2016$IDENPA == 170] <- 'Colombia'
Latino_Baro_r2016$idenpa[Latino_Baro_r2016$IDENPA == 188] <- 'Costa Rica'
Latino_Baro_r2016$idenpa[Latino_Baro_r2016$IDENPA == 214] <- 'Dominican Rep.'
Latino_Baro_r2016$idenpa[Latino_Baro_r2016$IDENPA == 218] <- 'Ecuador'
Latino_Baro_r2016$idenpa[Latino_Baro_r2016$IDENPA == 222] <- 'El Salvador'
Latino_Baro_r2016$idenpa[Latino_Baro_r2016$IDENPA == 320] <- 'Guatemala'
Latino_Baro_r2016$idenpa[Latino_Baro_r2016$IDENPA == 340] <- 'Honduras'
Latino_Baro_r2016$idenpa[Latino_Baro_r2016$IDENPA == 484] <- 'Mexico'
Latino_Baro_r2016$idenpa[Latino_Baro_r2016$IDENPA == 558] <- 'Nicaragua'
Latino_Baro_r2016$idenpa[Latino_Baro_r2016$IDENPA == 591] <- 'Panama'
Latino_Baro_r2016$idenpa[Latino_Baro_r2016$IDENPA == 600] <- 'Paraguay'
Latino_Baro_r2016$idenpa[Latino_Baro_r2016$IDENPA == 604] <- 'Peru'
Latino_Baro_r2016$idenpa[Latino_Baro_r2016$IDENPA == 858] <- 'Uruguay'
Latino_Baro_r2016$idenpa[Latino_Baro_r2016$IDENPA == 862] <- 'Venezuela'

Latino_Baro_r2016$cowcode <- countryname(Latino_Baro_r2016$idenpa, destination = 'cowc', warn = TRUE)

Latino_Baro_r2016$cowcode[Latino_Baro_r2016$idenpa == 'Dominican Rep.'] <- 'DOM'


Latino_Baro_r2016$country_wave <- NA
Latino_Baro_r2016$wave <- "LATIN16"
library(stringr)
Latino_Baro_r2016$country_wave <- str_c(Latino_Baro_r2016$cowcode, "_", Latino_Baro_r2016$wave)

#LATINOBAROMETRO WAVE 2016 Dependent Variable (high to low code order) 

Latino_Baro_r2016$trust_courts <- NA #Judicial Branch
Latino_Baro_r2016$trust_courts[Latino_Baro_r2016$P13STF == 4] <- 1
Latino_Baro_r2016$trust_courts[Latino_Baro_r2016$P13STF == 3] <- 2
Latino_Baro_r2016$trust_courts[Latino_Baro_r2016$P13STF == 2] <- 3
Latino_Baro_r2016$trust_courts[Latino_Baro_r2016$P13STF == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2016$trust_police <- NA
Latino_Baro_r2016$trust_police[Latino_Baro_r2016$P13STGBSB == 4] <- 1
Latino_Baro_r2016$trust_police[Latino_Baro_r2016$P13STGBSB == 3] <- 2
Latino_Baro_r2016$trust_police[Latino_Baro_r2016$P13STGBSB == 2] <- 3
Latino_Baro_r2016$trust_police[Latino_Baro_r2016$P13STGBSB == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2016$trust_president <- NA
Latino_Baro_r2016$trust_president[Latino_Baro_r2016$P13STE == 4] <- 1
Latino_Baro_r2016$trust_president[Latino_Baro_r2016$P13STE == 3] <- 2
Latino_Baro_r2016$trust_president[Latino_Baro_r2016$P13STE == 2] <- 3
Latino_Baro_r2016$trust_president[Latino_Baro_r2016$P13STE == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2016$trust_parliament <- NA
Latino_Baro_r2016$trust_parliament[Latino_Baro_r2016$P13STD == 4] <- 1
Latino_Baro_r2016$trust_parliament[Latino_Baro_r2016$P13STD == 3] <- 2
Latino_Baro_r2016$trust_parliament[Latino_Baro_r2016$P13STD == 2] <- 3
Latino_Baro_r2016$trust_parliament[Latino_Baro_r2016$P13STD == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2016$trust_electoral <- NA
Latino_Baro_r2016$trust_electoral[Latino_Baro_r2016$P13STH == 4] <- 1
Latino_Baro_r2016$trust_electoral[Latino_Baro_r2016$P13STH == 3] <- 2
Latino_Baro_r2016$trust_electoral[Latino_Baro_r2016$P13STH == 2] <- 3
Latino_Baro_r2016$trust_electoral[Latino_Baro_r2016$P13STH == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2016$trust_army <- NA
Latino_Baro_r2016$trust_army[Latino_Baro_r2016$P13STGBSA == 4] <- 1
Latino_Baro_r2016$trust_army[Latino_Baro_r2016$P13STGBSA == 3] <- 2
Latino_Baro_r2016$trust_army[Latino_Baro_r2016$P13STGBSA == 2] <- 3
Latino_Baro_r2016$trust_army[Latino_Baro_r2016$P13STGBSA == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2016$trust_parties  <- NA
Latino_Baro_r2016$trust_parties[Latino_Baro_r2016$P13STG == 4] <- 1
Latino_Baro_r2016$trust_parties[Latino_Baro_r2016$P13STG == 3] <- 2
Latino_Baro_r2016$trust_parties[Latino_Baro_r2016$P13STG == 2] <- 3
Latino_Baro_r2016$trust_parties[Latino_Baro_r2016$P13STG == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#LATINOBAROMETRO WAVE 2015

Latino_Baro_r2015 <- read_sav("Latinobarometro_2015_Eng.sav")

Latino_Baro_r2015$cowcode <- NA
Latino_Baro_r2015$idenpa <- Latino_Baro_r2015$IDENPA 

Latino_Baro_r2015$idenpa[Latino_Baro_r2015$idenpa == 32] <- 'Argentina'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$idenpa == 68] <- 'Bolivia'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$idenpa == 76] <- 'Brazil'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$idenpa == 152] <- 'Chile'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$idenpa == 170] <- 'Colombia'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$idenpa == 188] <- 'Costa Rica'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$idenpa == 214] <- 'Dominican Rep.'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$idenpa == 218] <- 'Ecuador'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$idenpa == 222] <- 'El Salvador'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$idenpa == 320] <- 'Guatemala'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$idenpa == 340] <- 'Honduras'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$idenpa == 484] <- 'Mexico'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$idenpa == 558] <- 'Nicaragua'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$idenpa == 591] <- 'Panama'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$idenpa == 600] <- 'Paraguay'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$idenpa == 604] <- 'Peru'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$idenpa == 858] <- 'Uruguay'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$idenpa == 862] <- 'Venezuela'

Latino_Baro_r2015$cowcode <- countryname(Latino_Baro_r2015$idenpa, destination = 'cowc', warn = TRUE)

Latino_Baro_r2015$cowcode[Latino_Baro_r2015$idenpa == 'Dominican Rep.'] <- 'DOM'


Latino_Baro_r2015$country_wave <- NA
Latino_Baro_r2015$wave <- "LATIN15"
library(stringr)
Latino_Baro_r2015$country_wave <- str_c(Latino_Baro_r2015$cowcode, "_", Latino_Baro_r2015$wave)

#LATINOBAROMETRO WAVE 2016 Dependent Variable (high to low code order) 

Latino_Baro_r2015$trust_courts <- NA #Judicial Branch
Latino_Baro_r2015$trust_courts[Latino_Baro_r2015$P16ST.H == 4] <- 1
Latino_Baro_r2015$trust_courts[Latino_Baro_r2015$P16ST.H == 3] <- 2
Latino_Baro_r2015$trust_courts[Latino_Baro_r2015$P16ST.H == 2] <- 3
Latino_Baro_r2015$trust_courts[Latino_Baro_r2015$P16ST.H == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2015$trust_police <- NA
Latino_Baro_r2015$trust_police[Latino_Baro_r2015$P16TGB.B == 4] <- 1
Latino_Baro_r2015$trust_police[Latino_Baro_r2015$P16TGB.B == 3] <- 2
Latino_Baro_r2015$trust_police[Latino_Baro_r2015$P16TGB.B == 2] <- 3
Latino_Baro_r2015$trust_police[Latino_Baro_r2015$P16TGB.B == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2015$trust_president <- NA
Latino_Baro_r2015$trust_president[Latino_Baro_r2015$P16ST.G == 4] <- 1
Latino_Baro_r2015$trust_president[Latino_Baro_r2015$P16ST.G == 3] <- 2
Latino_Baro_r2015$trust_president[Latino_Baro_r2015$P16ST.G == 2] <- 3
Latino_Baro_r2015$trust_president[Latino_Baro_r2015$P16ST.G == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2015$trust_parliament <- NA
Latino_Baro_r2015$trust_parliament[Latino_Baro_r2015$P16ST.F == 4] <- 1
Latino_Baro_r2015$trust_parliament[Latino_Baro_r2015$P16ST.F == 3] <- 2
Latino_Baro_r2015$trust_parliament[Latino_Baro_r2015$P16ST.F == 2] <- 3
Latino_Baro_r2015$trust_parliament[Latino_Baro_r2015$P16ST.F == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#No Electoral Commission Item

Latino_Baro_r2015$trust_army <- NA
Latino_Baro_r2015$trust_army[Latino_Baro_r2015$P16TGB.A == 4] <- 1
Latino_Baro_r2015$trust_army[Latino_Baro_r2015$P16TGB.A == 3] <- 2
Latino_Baro_r2015$trust_army[Latino_Baro_r2015$P16TGB.A == 2] <- 3
Latino_Baro_r2015$trust_army[Latino_Baro_r2015$P16TGB.A == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#No Parties Item Included in the Wave. 


#LATINOBAROMETRO WAVE 2013

Latino_Baro_r2013 <- read_sav("Latinobarometro2013Eng.sav")

Latino_Baro_r2013$cowcode <- NA
Latino_Baro_r2013$idenpa <- Latino_Baro_r2013$IDENPA 

Latino_Baro_r2013$idenpa[Latino_Baro_r2013$idenpa == 32] <- 'Argentina'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$idenpa == 68] <- 'Bolivia'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$idenpa == 76] <- 'Brazil'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$idenpa == 152] <- 'Chile'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$idenpa == 170] <- 'Colombia'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$idenpa == 188] <- 'Costa Rica'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$idenpa == 214] <- 'Dominican Rep.'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$idenpa == 218] <- 'Ecuador'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$idenpa == 222] <- 'El Salvador'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$idenpa == 320] <- 'Guatemala'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$idenpa == 340] <- 'Honduras'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$idenpa == 484] <- 'Mexico'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$idenpa == 558] <- 'Nicaragua'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$idenpa == 591] <- 'Panama'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$idenpa == 600] <- 'Paraguay'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$idenpa == 604] <- 'Peru'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$idenpa == 858] <- 'Uruguay'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$idenpa == 862] <- 'Venezuela'

Latino_Baro_r2013$cowcode <- countryname(Latino_Baro_r2013$idenpa, destination = 'cowc', warn = TRUE)

#For some reason spain is sampled in this waves. Need to figure out what is going on. 
Latino_Baro_r2013$cowcode[Latino_Baro_r2013$idenpa == 'Dominican Rep.'] <- 'DOM'


Latino_Baro_r2013$country_wave <- NA
Latino_Baro_r2013$wave <- "LATIN15"
library(stringr)
Latino_Baro_r2013$country_wave <- str_c(Latino_Baro_r2013$cowcode, "_", Latino_Baro_r2013$wave)

#LATINOBAROMETRO WAVE 2016 Dependent Variable (high to low code order) 

Latino_Baro_r2013$trust_courts <- NA #Judicial Branch
Latino_Baro_r2013$trust_courts[Latino_Baro_r2013$P26TGB.E == 4] <- 1
Latino_Baro_r2013$trust_courts[Latino_Baro_r2013$P26TGB.E == 3] <- 2
Latino_Baro_r2013$trust_courts[Latino_Baro_r2013$P26TGB.E == 2] <- 3
Latino_Baro_r2013$trust_courts[Latino_Baro_r2013$P26TGB.E == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2013$trust_police <- NA
Latino_Baro_r2013$trust_police[Latino_Baro_r2013$P28TGB.B == 4] <- 1
Latino_Baro_r2013$trust_police[Latino_Baro_r2013$P28TGB.B == 3] <- 2
Latino_Baro_r2013$trust_police[Latino_Baro_r2013$P28TGB.B == 2] <- 3
Latino_Baro_r2013$trust_police[Latino_Baro_r2013$P28TGB.B == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Unlike more recent waves, Police and Armed forces are asked along with other "non-political" items. 

Latino_Baro_r2013$trust_president <- NA
Latino_Baro_r2013$trust_president[Latino_Baro_r2013$P26TGB.A == 4] <- 1
Latino_Baro_r2013$trust_president[Latino_Baro_r2013$P26TGB.A == 3] <- 2
Latino_Baro_r2013$trust_president[Latino_Baro_r2013$P26TGB.A == 2] <- 3
Latino_Baro_r2013$trust_president[Latino_Baro_r2013$P26TGB.A == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2013$trust_parliament <- NA
Latino_Baro_r2013$trust_parliament[Latino_Baro_r2013$P26TGB.C == 4] <- 1
Latino_Baro_r2013$trust_parliament[Latino_Baro_r2013$P26TGB.C == 3] <- 2
Latino_Baro_r2013$trust_parliament[Latino_Baro_r2013$P26TGB.C == 2] <- 3
Latino_Baro_r2013$trust_parliament[Latino_Baro_r2013$P26TGB.C == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#No Electoral Commission Item

Latino_Baro_r2013$trust_army <- NA
Latino_Baro_r2013$trust_army[Latino_Baro_r2013$P28TGB.B == 4] <- 1
Latino_Baro_r2013$trust_army[Latino_Baro_r2013$P28TGB.B == 3] <- 2
Latino_Baro_r2013$trust_army[Latino_Baro_r2013$P28TGB.B == 2] <- 3
Latino_Baro_r2013$trust_army[Latino_Baro_r2013$P28TGB.B == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2013$trust_parties  <- NA
Latino_Baro_r2013$trust_parties[Latino_Baro_r2013$P26TGB.G == 4] <- 1
Latino_Baro_r2013$trust_parties[Latino_Baro_r2013$P26TGB.G == 3] <- 2
Latino_Baro_r2013$trust_parties[Latino_Baro_r2013$P26TGB.G == 2] <- 3
Latino_Baro_r2013$trust_parties[Latino_Baro_r2013$P26TGB.G == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   


#LATINOBAROMETRO WAVE 2011

Latino_Baro_r2011 <- read_dta("Latinobarometro_2011_eng.dta")

Latino_Baro_r2011$cowcode <- NA
Latino_Baro_r2011$idenpa <- Latino_Baro_r2011$idenpa 

Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa == 32] <- 'Argentina'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa == 68] <- 'Bolivia'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa == 76] <- 'Brazil'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa == 152] <- 'Chile'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa == 170] <- 'Colombia'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa == 188] <- 'Costa Rica'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa == 214] <- 'Dominican Rep.'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa == 218] <- 'Ecuador'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa == 222] <- 'El Salvador'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa == 320] <- 'Guatemala'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa == 340] <- 'Honduras'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa == 484] <- 'Mexico'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa == 558] <- 'Nicaragua'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa == 591] <- 'Panama'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa == 600] <- 'Paraguay'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa == 604] <- 'Peru'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa == 858] <- 'Uruguay'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa == 862] <- 'Venezuela'

Latino_Baro_r2011$cowcode <- countryname(Latino_Baro_r2011$idenpa, destination = 'cowc', warn = TRUE)

#For some reason spain is sampled in this waves. Need to figure out what is going on. 
Latino_Baro_r2011$cowcode[Latino_Baro_r2011$idenpa == 'Dominican Rep.'] <- 'DOM'


Latino_Baro_r2011$country_wave <- NA
Latino_Baro_r2011$wave <- "LATIN11"
library(stringr)
Latino_Baro_r2011$country_wave <- str_c(Latino_Baro_r2011$cowcode, "_", Latino_Baro_r2011$wave)

#LATINOBAROMETRO WAVE 20@@ Dependent Variable (high to low code order) 

Latino_Baro_r2011$trust_courts <- NA #Judicial Branch
Latino_Baro_r2011$trust_courts[Latino_Baro_r2011$P22ST_B == 4] <- 1
Latino_Baro_r2011$trust_courts[Latino_Baro_r2011$P22ST_B == 3] <- 2
Latino_Baro_r2011$trust_courts[Latino_Baro_r2011$P22ST_B == 2] <- 3
Latino_Baro_r2011$trust_courts[Latino_Baro_r2011$P22ST_B == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2011$trust_police <- NA
Latino_Baro_r2011$trust_police[Latino_Baro_r2011$P20ST_C == 4] <- 1
Latino_Baro_r2011$trust_police[Latino_Baro_r2011$P20ST_C == 3] <- 2
Latino_Baro_r2011$trust_police[Latino_Baro_r2011$P20ST_C == 2] <- 3
Latino_Baro_r2011$trust_police[Latino_Baro_r2011$P20ST_C == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Unlike more recent waves, Police and Armed forces are asked along with other "non-political" items. 

#Instead of Trust in "President" this item is trust in government.
Latino_Baro_r2011$trust_president <- NA
Latino_Baro_r2011$trust_president[Latino_Baro_r2011$P20ST_A == 4] <- 1
Latino_Baro_r2011$trust_president[Latino_Baro_r2011$P20ST_A == 3] <- 2
Latino_Baro_r2011$trust_president[Latino_Baro_r2011$P20ST_A == 2] <- 3
Latino_Baro_r2011$trust_president[Latino_Baro_r2011$P20ST_A == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2011$trust_parliament <- NA
Latino_Baro_r2011$trust_parliament[Latino_Baro_r2011$P22ST_A == 4] <- 1
Latino_Baro_r2011$trust_parliament[Latino_Baro_r2011$P22ST_A == 3] <- 2
Latino_Baro_r2011$trust_parliament[Latino_Baro_r2011$P22ST_A == 2] <- 3
Latino_Baro_r2011$trust_parliament[Latino_Baro_r2011$P22ST_A == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#No Electoral Commission Item

Latino_Baro_r2011$trust_army <- NA
Latino_Baro_r2011$trust_army[Latino_Baro_r2011$P22ST_D == 4] <- 1
Latino_Baro_r2011$trust_army[Latino_Baro_r2011$P22ST_D == 3] <- 2
Latino_Baro_r2011$trust_army[Latino_Baro_r2011$P22ST_D == 2] <- 3
Latino_Baro_r2011$trust_army[Latino_Baro_r2011$P22ST_D == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2011$trust_parties  <- NA
Latino_Baro_r2011$trust_parties[Latino_Baro_r2011$P22ST_C == 4] <- 1
Latino_Baro_r2011$trust_parties[Latino_Baro_r2011$P22ST_C == 3] <- 2
Latino_Baro_r2011$trust_parties[Latino_Baro_r2011$P22ST_C == 2] <- 3
Latino_Baro_r2011$trust_parties[Latino_Baro_r2011$P22ST_C == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#LATINOBAROMETRO WAVE 2010

Latino_Baro_r2010 <- read_sav("Latinobarometro_2010_datos_eng_v2014_06_27.sav")

Latino_Baro_r2010$cowcode <- NA
Latino_Baro_r2010$idenpa <- Latino_Baro_r2010$IDENPA 

Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 32] <- 'Argentina'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 68] <- 'Bolivia'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 76] <- 'Brazil'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 152] <- 'Chile'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 170] <- 'Colombia'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 188] <- 'Costa Rica'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 214] <- 'Dominican Rep.'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 218] <- 'Ecuador'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 222] <- 'El Salvador'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 320] <- 'Guatemala'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 340] <- 'Honduras'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 484] <- 'Mexico'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 558] <- 'Nicaragua'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 591] <- 'Panama'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 600] <- 'Paraguay'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 604] <- 'Peru'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 858] <- 'Uruguay'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 862] <- 'Venezuela'

Latino_Baro_r2010$cowcode <- countryname(Latino_Baro_r2010$idenpa, destination = 'cowc', warn = TRUE)

#For some reason spain is sampled in this waves. Need to figure out what is going on. 
Latino_Baro_r2010$cowcode[Latino_Baro_r2010$idenpa == 'Dominican Rep.'] <- 'DOM'


Latino_Baro_r2010$country_wave <- NA
Latino_Baro_r2010$wave <- "LATIN10"
library(stringr)
Latino_Baro_r2010$country_wave <- str_c(Latino_Baro_r2010$cowcode, "_", Latino_Baro_r2010$wave)

#LATINOBAROMETRO WAVE 20@@ Dependent Variable (high to low code order) 

Latino_Baro_r2010$trust_courts <- NA #Judicial Branch
Latino_Baro_r2010$trust_courts[Latino_Baro_r2010$P20ST.B == 4] <- 1
Latino_Baro_r2010$trust_courts[Latino_Baro_r2010$P20ST.B == 3] <- 2
Latino_Baro_r2010$trust_courts[Latino_Baro_r2010$P20ST.B == 2] <- 3
Latino_Baro_r2010$trust_courts[Latino_Baro_r2010$P20ST.B == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2010$trust_police <- NA
Latino_Baro_r2010$trust_police[Latino_Baro_r2010$P18ST.C == 4] <- 1
Latino_Baro_r2010$trust_police[Latino_Baro_r2010$P18ST.C == 3] <- 2
Latino_Baro_r2010$trust_police[Latino_Baro_r2010$P18ST.C == 2] <- 3
Latino_Baro_r2010$trust_police[Latino_Baro_r2010$P18ST.C == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Unlike more recent waves, Police and Armed forces are asked along with other "non-political" items. 

#Instead of Trust in "President" this item is trust in government.
Latino_Baro_r2010$trust_president <- NA
Latino_Baro_r2010$trust_president[Latino_Baro_r2010$P18ST.A == 4] <- 1
Latino_Baro_r2010$trust_president[Latino_Baro_r2010$P18ST.A == 3] <- 2
Latino_Baro_r2010$trust_president[Latino_Baro_r2010$P18ST.A == 2] <- 3
Latino_Baro_r2010$trust_president[Latino_Baro_r2010$P18ST.A == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2010$trust_parliament <- NA
Latino_Baro_r2010$trust_parliament[Latino_Baro_r2010$P20ST.A == 4] <- 1
Latino_Baro_r2010$trust_parliament[Latino_Baro_r2010$P20ST.A == 3] <- 2
Latino_Baro_r2010$trust_parliament[Latino_Baro_r2010$P20ST.A == 2] <- 3
Latino_Baro_r2010$trust_parliament[Latino_Baro_r2010$P20ST.A == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#No Electoral Commission Item

Latino_Baro_r2010$trust_army <- NA
Latino_Baro_r2010$trust_army[Latino_Baro_r2010$P20ST.D == 4] <- 1
Latino_Baro_r2010$trust_army[Latino_Baro_r2010$P20ST.D == 3] <- 2
Latino_Baro_r2010$trust_army[Latino_Baro_r2010$P20ST.D == 2] <- 3
Latino_Baro_r2010$trust_army[Latino_Baro_r2010$P20ST.D == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2010$trust_parties  <- NA
Latino_Baro_r2010$trust_parties[Latino_Baro_r2010$P20ST_C == 4] <- 1
Latino_Baro_r2010$trust_parties[Latino_Baro_r2010$P20ST_C == 3] <- 2
Latino_Baro_r2010$trust_parties[Latino_Baro_r2010$P20ST_C == 2] <- 3
Latino_Baro_r2010$trust_parties[Latino_Baro_r2010$P20ST_C == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   


#LATINOBAROMETRO WAVE 2010

Latino_Baro_r2010 <- read_sav("Latinobarometro_2010_datos_eng_v2014_06_27.sav")

Latino_Baro_r2010$cowcode <- NA
Latino_Baro_r2010$idenpa <- Latino_Baro_r2010$IDENPA 

Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 32] <- 'Argentina'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 68] <- 'Bolivia'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 76] <- 'Brazil'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 152] <- 'Chile'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 170] <- 'Colombia'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 188] <- 'Costa Rica'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 214] <- 'Dominican Rep.'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 218] <- 'Ecuador'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 222] <- 'El Salvador'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 320] <- 'Guatemala'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 340] <- 'Honduras'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 484] <- 'Mexico'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 558] <- 'Nicaragua'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 591] <- 'Panama'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 600] <- 'Paraguay'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 604] <- 'Peru'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 858] <- 'Uruguay'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$idenpa == 862] <- 'Venezuela'

Latino_Baro_r2010$cowcode <- countryname(Latino_Baro_r2010$idenpa, destination = 'cowc', warn = TRUE)

#For some reason spain is sampled in this waves. Need to figure out what is going on. 
Latino_Baro_r2010$cowcode[Latino_Baro_r2010$idenpa == 'Dominican Rep.'] <- 'DOM'


Latino_Baro_r2010$country_wave <- NA
Latino_Baro_r2010$wave <- "LATIN10"
library(stringr)
Latino_Baro_r2010$country_wave <- str_c(Latino_Baro_r2010$cowcode, "_", Latino_Baro_r2010$wave)

#LATINOBAROMETRO WAVE 20@@ Dependent Variable (high to low code order) 

Latino_Baro_r2010$trust_courts <- NA #Judicial Branch
Latino_Baro_r2010$trust_courts[Latino_Baro_r2010$P20ST.B == 4] <- 1
Latino_Baro_r2010$trust_courts[Latino_Baro_r2010$P20ST.B == 3] <- 2
Latino_Baro_r2010$trust_courts[Latino_Baro_r2010$P20ST.B == 2] <- 3
Latino_Baro_r2010$trust_courts[Latino_Baro_r2010$P20ST.B == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2010$trust_police <- NA
Latino_Baro_r2010$trust_police[Latino_Baro_r2010$P18ST.C == 4] <- 1
Latino_Baro_r2010$trust_police[Latino_Baro_r2010$P18ST.C == 3] <- 2
Latino_Baro_r2010$trust_police[Latino_Baro_r2010$P18ST.C == 2] <- 3
Latino_Baro_r2010$trust_police[Latino_Baro_r2010$P18ST.C == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Unlike more recent waves, Police and Armed forces are asked along with other "non-political" items. 

#Instead of Trust in "President" this item is trust in government.
Latino_Baro_r2010$trust_president <- NA
Latino_Baro_r2010$trust_president[Latino_Baro_r2010$P18ST.A == 4] <- 1
Latino_Baro_r2010$trust_president[Latino_Baro_r2010$P18ST.A == 3] <- 2
Latino_Baro_r2010$trust_president[Latino_Baro_r2010$P18ST.A == 2] <- 3
Latino_Baro_r2010$trust_president[Latino_Baro_r2010$P18ST.A == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2010$trust_parliament <- NA
Latino_Baro_r2010$trust_parliament[Latino_Baro_r2010$P20ST.A == 4] <- 1
Latino_Baro_r2010$trust_parliament[Latino_Baro_r2010$P20ST.A == 3] <- 2
Latino_Baro_r2010$trust_parliament[Latino_Baro_r2010$P20ST.A == 2] <- 3
Latino_Baro_r2010$trust_parliament[Latino_Baro_r2010$P20ST.A == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#No Electoral Commission Item

Latino_Baro_r2010$trust_army <- NA
Latino_Baro_r2010$trust_army[Latino_Baro_r2010$P20ST.D == 4] <- 1
Latino_Baro_r2010$trust_army[Latino_Baro_r2010$P20ST.D == 3] <- 2
Latino_Baro_r2010$trust_army[Latino_Baro_r2010$P20ST.D == 2] <- 3
Latino_Baro_r2010$trust_army[Latino_Baro_r2010$P20ST.D == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2010$trust_parties  <- NA
Latino_Baro_r2010$trust_parties[Latino_Baro_r2010$P20ST_C == 4] <- 1
Latino_Baro_r2010$trust_parties[Latino_Baro_r2010$P20ST_C == 3] <- 2
Latino_Baro_r2010$trust_parties[Latino_Baro_r2010$P20ST_C == 2] <- 3
Latino_Baro_r2010$trust_parties[Latino_Baro_r2010$P20ST_C == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#LATINOBAROMETRO WAVE 2009

Latino_Baro_r2009 <- read_sav("Latinobarometro_2009_datos_eng_v2014_06_27.sav")

Latino_Baro_r2009$cowcode <- NA
Latino_Baro_r2009$idenpa <- Latino_Baro_r2009$IDENPA 

Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa == 32] <- 'Argentina'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa == 68] <- 'Bolivia'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa == 76] <- 'Brazil'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa == 152] <- 'Chile'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa == 170] <- 'Colombia'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa == 188] <- 'Costa Rica'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa == 214] <- 'Dominican Rep.'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa == 218] <- 'Ecuador'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa == 222] <- 'El Salvador'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa == 320] <- 'Guatemala'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa == 340] <- 'Honduras'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa == 484] <- 'Mexico'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa == 558] <- 'Nicaragua'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa == 591] <- 'Panama'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa == 600] <- 'Paraguay'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa == 604] <- 'Peru'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa == 858] <- 'Uruguay'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa == 862] <- 'Venezuela'

Latino_Baro_r2009$cowcode <- countryname(Latino_Baro_r2009$idenpa, destination = 'cowc', warn = TRUE)

#For some reason spain is sampled in this waves. Need to figure out what is going on. 
Latino_Baro_r2009$cowcode[Latino_Baro_r2009$idenpa == 'Dominican Rep.'] <- 'DOM'


Latino_Baro_r2009$country_wave <- NA
Latino_Baro_r2009$wave <- "LATIN09"
library(stringr)
Latino_Baro_r2009$country_wave <- str_c(Latino_Baro_r2009$cowcode, "_", Latino_Baro_r2009$wave)

#LATINOBAROMETRO WAVE 20@@ Dependent Variable (high to low code order) 

Latino_Baro_r2009$trust_courts <- NA #Judicial Branch
Latino_Baro_r2009$trust_courts[Latino_Baro_r2009$p26st.b == 4] <- 1
Latino_Baro_r2009$trust_courts[Latino_Baro_r2009$p26st.b == 3] <- 2
Latino_Baro_r2009$trust_courts[Latino_Baro_r2009$p26st.b == 2] <- 3
Latino_Baro_r2009$trust_courts[Latino_Baro_r2009$p26st.b == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2009$trust_police <- NA
Latino_Baro_r2009$trust_police[Latino_Baro_r2009$p24st.c == 4] <- 1
Latino_Baro_r2009$trust_police[Latino_Baro_r2009$p24st.c == 3] <- 2
Latino_Baro_r2009$trust_police[Latino_Baro_r2009$p24st.c == 2] <- 3
Latino_Baro_r2009$trust_police[Latino_Baro_r2009$p24st.c == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Unlike more recent waves, Police and Armed forces are asked along with other "non-political" items. 

#Instead of Trust in "President" this item is trust in government.
Latino_Baro_r2009$trust_president <- NA
Latino_Baro_r2009$trust_president[Latino_Baro_r2009$p24st.a == 4] <- 1
Latino_Baro_r2009$trust_president[Latino_Baro_r2009$p24st.a == 3] <- 2
Latino_Baro_r2009$trust_president[Latino_Baro_r2009$p24st.a == 2] <- 3
Latino_Baro_r2009$trust_president[Latino_Baro_r2009$p24st.a == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2009$trust_parliament <- NA
Latino_Baro_r2009$trust_parliament[Latino_Baro_r2009$p26st.a == 4] <- 1
Latino_Baro_r2009$trust_parliament[Latino_Baro_r2009$p26st.a == 3] <- 2
Latino_Baro_r2009$trust_parliament[Latino_Baro_r2009$p26st.a == 2] <- 3
Latino_Baro_r2009$trust_parliament[Latino_Baro_r2009$p26st.a == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#No Electoral Commission Item

Latino_Baro_r2009$trust_army <- NA
Latino_Baro_r2009$trust_army[Latino_Baro_r2009$p26st.d == 4] <- 1
Latino_Baro_r2009$trust_army[Latino_Baro_r2009$p26st.d == 3] <- 2
Latino_Baro_r2009$trust_army[Latino_Baro_r2009$p26st.d == 2] <- 3
Latino_Baro_r2009$trust_army[Latino_Baro_r2009$p26st.d == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2009$trust_parties  <- NA
Latino_Baro_r2009$trust_parties[Latino_Baro_r2009$p26st.c == 4] <- 1
Latino_Baro_r2009$trust_parties[Latino_Baro_r2009$p26st.c == 3] <- 2
Latino_Baro_r2009$trust_parties[Latino_Baro_r2009$p26st.c == 2] <- 3
Latino_Baro_r2009$trust_parties[Latino_Baro_r2009$p26st.c == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#LATINOBAROMETRO WAVE 2008

Latino_Baro_r2008 <- read_sav("Latinobarometro_2008_datos_eng_v2014_06_27.sav")

Latino_Baro_r2008$cowcode <- NA
Latino_Baro_r2008$idenpa <- Latino_Baro_r2008$IDENPA 

Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa == 32] <- 'Argentina'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa == 68] <- 'Bolivia'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa == 76] <- 'Brazil'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa == 152] <- 'Chile'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa == 170] <- 'Colombia'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa == 188] <- 'Costa Rica'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa == 214] <- 'Dominican Rep.'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa == 218] <- 'Ecuador'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa == 222] <- 'El Salvador'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa == 320] <- 'Guatemala'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa == 340] <- 'Honduras'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa == 484] <- 'Mexico'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa == 558] <- 'Nicaragua'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa == 591] <- 'Panama'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa == 600] <- 'Paraguay'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa == 604] <- 'Peru'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa == 858] <- 'Uruguay'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa == 862] <- 'Venezuela'

Latino_Baro_r2008$cowcode <- countryname(Latino_Baro_r2008$idenpa, destination = 'cowc', warn = TRUE)

#For some reason spain is sampled in this waves. Need to figure out what is going on. 
Latino_Baro_r2008$cowcode[Latino_Baro_r2008$idenpa == 'Dominican Rep.'] <- 'DOM'


Latino_Baro_r2008$country_wave <- NA
Latino_Baro_r2008$wave <- "LATIN08"
library(stringr)
Latino_Baro_r2008$country_wave <- str_c(Latino_Baro_r2008$cowcode, "_", Latino_Baro_r2008$wave)

#LATINOBAROMETRO WAVE 20@@ Dependent Variable (high to low code order) 

Latino_Baro_r2008$trust_courts <- NA #Judicial Branch
Latino_Baro_r2008$trust_courts[Latino_Baro_r2008$p28st.b == 4] <- 1
Latino_Baro_r2008$trust_courts[Latino_Baro_r2008$p28st.b == 3] <- 2
Latino_Baro_r2008$trust_courts[Latino_Baro_r2008$p28st.b == 2] <- 3
Latino_Baro_r2008$trust_courts[Latino_Baro_r2008$p28st.b == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2008$trust_police <- NA
Latino_Baro_r2008$trust_police[Latino_Baro_r2008$p31st.c == 4] <- 1
Latino_Baro_r2008$trust_police[Latino_Baro_r2008$p31st.c == 3] <- 2
Latino_Baro_r2008$trust_police[Latino_Baro_r2008$p31st.c == 2] <- 3
Latino_Baro_r2008$trust_police[Latino_Baro_r2008$p31st.c == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Unlike more recent waves, Police and Armed forces are asked along with other "non-political" items. 

#Instead of Trust in "President" this item is trust in government.
Latino_Baro_r2008$trust_president <- NA
Latino_Baro_r2008$trust_president[Latino_Baro_r2008$p28st.a == 4] <- 1
Latino_Baro_r2008$trust_president[Latino_Baro_r2008$p28st.a == 3] <- 2
Latino_Baro_r2008$trust_president[Latino_Baro_r2008$p28st.a == 2] <- 3
Latino_Baro_r2008$trust_president[Latino_Baro_r2008$p28st.a == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2008$trust_parliament <- NA
Latino_Baro_r2008$trust_parliament[Latino_Baro_r2008$p31s.ta == 4] <- 1 #error in coding. confirmed by looking at label.
Latino_Baro_r2008$trust_parliament[Latino_Baro_r2008$p31s.ta == 3] <- 2
Latino_Baro_r2008$trust_parliament[Latino_Baro_r2008$p31s.ta == 2] <- 3
Latino_Baro_r2008$trust_parliament[Latino_Baro_r2008$p31s.ta == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#No Electoral Commission Item

Latino_Baro_r2008$trust_army <- NA
Latino_Baro_r2008$trust_army[Latino_Baro_r2008$p28st.d == 4] <- 1
Latino_Baro_r2008$trust_army[Latino_Baro_r2008$p28st.d == 3] <- 2
Latino_Baro_r2008$trust_army[Latino_Baro_r2008$p28st.d == 2] <- 3
Latino_Baro_r2008$trust_army[Latino_Baro_r2008$p28st.d == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2008$trust_parties  <- NA
Latino_Baro_r2008$trust_parties[Latino_Baro_r2008$p28st.c == 4] <- 1
Latino_Baro_r2008$trust_parties[Latino_Baro_r2008$p28st.c == 3] <- 2
Latino_Baro_r2008$trust_parties[Latino_Baro_r2008$p28st.c == 2] <- 3
Latino_Baro_r2008$trust_parties[Latino_Baro_r2008$p28st.c == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Latinobarometro 2007

Latino_Baro_r2007 <- read_sav("Latinobarometro_2007_datos_eng_v2014_06_27.sav")

Latino_Baro_r2007$cowcode <- NA

Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa == 32] <- 'Argentina'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa == 68] <- 'Bolivia'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa == 76] <- 'Brazil'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa == 152] <- 'Chile'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa == 170] <- 'Colombia'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa == 188] <- 'Costa Rica'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa == 214] <- 'Dominican Rep.'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa == 218] <- 'Ecuador'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa == 222] <- 'El Salvador'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa == 320] <- 'Guatemala'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa == 340] <- 'Honduras'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa == 484] <- 'Mexico'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa == 558] <- 'Nicaragua'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa == 591] <- 'Panama'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa == 600] <- 'Paraguay'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa == 604] <- 'Peru'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa == 858] <- 'Uruguay'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa == 862] <- 'Venezuela'

Latino_Baro_r2007$cowcode <- countryname(Latino_Baro_r2007$idenpa, destination = 'cowc', warn = TRUE)

#For some reason spain is sampled in this waves. Need to figure out what is going on. 
Latino_Baro_r2007$cowcode[Latino_Baro_r2007$idenpa == 'Dominican Rep.'] <- 'DOM'


Latino_Baro_r2007$country_wave <- NA
Latino_Baro_r2007$wave <- "LATIN07"
library(stringr)
Latino_Baro_r2007$country_wave <- str_c(Latino_Baro_r2007$cowcode, "_", Latino_Baro_r2007$wave)

#LATINOBAROMETRO WAVE 2007 Dependent Variable (high to low code order) 

Latino_Baro_r2007$trust_courts <- NA #Judicial Branch
Latino_Baro_r2007$trust_courts[Latino_Baro_r2007$p24st.d == 4] <- 1
Latino_Baro_r2007$trust_courts[Latino_Baro_r2007$p24st.d == 3] <- 2
Latino_Baro_r2007$trust_courts[Latino_Baro_r2007$p24st.d == 2] <- 3
Latino_Baro_r2007$trust_courts[Latino_Baro_r2007$p24st.d == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2007$trust_police <- NA
Latino_Baro_r2007$trust_police[Latino_Baro_r2007$p27st.f == 4] <- 1
Latino_Baro_r2007$trust_police[Latino_Baro_r2007$p27st.f == 3] <- 2
Latino_Baro_r2007$trust_police[Latino_Baro_r2007$p27st.f == 2] <- 3
Latino_Baro_r2007$trust_police[Latino_Baro_r2007$p27st.f == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Unlike more recent waves, Police and Armed forces are asked along with other "non-political" items. 

#Instead of Trust in "President" this item is trust in government.
Latino_Baro_r2007$trust_president <- NA
Latino_Baro_r2007$trust_president[Latino_Baro_r2007$p24st.a == 4] <- 1
Latino_Baro_r2007$trust_president[Latino_Baro_r2007$p24st.a == 3] <- 2
Latino_Baro_r2007$trust_president[Latino_Baro_r2007$p24st.a == 2] <- 3
Latino_Baro_r2007$trust_president[Latino_Baro_r2007$p24st.a == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2007$trust_parliament <- NA
Latino_Baro_r2007$trust_parliament[Latino_Baro_r2007$p24st.f == 4] <- 1 #error in coding. confirmed by looking at label.
Latino_Baro_r2007$trust_parliament[Latino_Baro_r2007$p24st.f == 3] <- 2
Latino_Baro_r2007$trust_parliament[Latino_Baro_r2007$p24st.f == 2] <- 3
Latino_Baro_r2007$trust_parliament[Latino_Baro_r2007$p24st.f == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#No Electoral Commission Item

Latino_Baro_r2007$trust_army <- NA
Latino_Baro_r2007$trust_army[Latino_Baro_r2007$p27st.d == 4] <- 1
Latino_Baro_r2007$trust_army[Latino_Baro_r2007$p27st.d == 3] <- 2
Latino_Baro_r2007$trust_army[Latino_Baro_r2007$p27st.d == 2] <- 3
Latino_Baro_r2007$trust_army[Latino_Baro_r2007$p27st.d == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2007$trust_parties  <- NA
Latino_Baro_r2007$trust_parties[Latino_Baro_r2007$p27st.e == 4] <- 1
Latino_Baro_r2007$trust_parties[Latino_Baro_r2007$p27st.e == 3] <- 2
Latino_Baro_r2007$trust_parties[Latino_Baro_r2007$p27st.e == 2] <- 3
Latino_Baro_r2007$trust_parties[Latino_Baro_r2007$p27st.e == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Latinobarometro 2006

Latino_Baro_r2006 <- read_sav("Latinobarometro_2006_datos_eng_v2014_06_27.sav")

Latino_Baro_r2006$cowcode <- NA

Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa == 32] <- 'Argentina'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa == 68] <- 'Bolivia'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa == 76] <- 'Brazil'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa == 152] <- 'Chile'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa == 170] <- 'Colombia'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa == 188] <- 'Costa Rica'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa == 214] <- 'Dominican Rep.'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa == 218] <- 'Ecuador'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa == 222] <- 'El Salvador'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa == 320] <- 'Guatemala'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa == 340] <- 'Honduras'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa == 484] <- 'Mexico'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa == 558] <- 'Nicaragua'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa == 591] <- 'Panama'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa == 600] <- 'Paraguay'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa == 604] <- 'Peru'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa == 858] <- 'Uruguay'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa == 862] <- 'Venezuela'

Latino_Baro_r2006$cowcode <- countryname(Latino_Baro_r2006$idenpa, destination = 'cowc', warn = TRUE)

#For some reason spain is sampled in this waves. Need to figure out what is going on. 
Latino_Baro_r2006$cowcode[Latino_Baro_r2006$idenpa == 'Dominican Rep.'] <- 'DOM'


Latino_Baro_r2006$country_wave <- NA
Latino_Baro_r2006$wave <- "LATIN06"
library(stringr)
Latino_Baro_r2006$country_wave <- str_c(Latino_Baro_r2006$cowcode, "_", Latino_Baro_r2006$wave)

#LATINOBAROMETRO WAVE 2007 Dependent Variable (high to low code order) 
#Unlike previous survey rounds, this survey asks about CONFIDENCE not trust.  

Latino_Baro_r2006$trust_courts <- NA #Judicial Branch
Latino_Baro_r2006$trust_courts[Latino_Baro_r2006$p24st.a == 4] <- 1
Latino_Baro_r2006$trust_courts[Latino_Baro_r2006$p24st.a == 3] <- 2
Latino_Baro_r2006$trust_courts[Latino_Baro_r2006$p24st.a == 2] <- 3
Latino_Baro_r2006$trust_courts[Latino_Baro_r2006$p24st.a == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2006$trust_police <- NA
Latino_Baro_r2006$trust_police[Latino_Baro_r2006$p24st.d == 4] <- 1
Latino_Baro_r2006$trust_police[Latino_Baro_r2006$p24st.d == 3] <- 2
Latino_Baro_r2006$trust_police[Latino_Baro_r2006$p24st.d == 2] <- 3
Latino_Baro_r2006$trust_police[Latino_Baro_r2006$p24st.d == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Unlike more recent waves, Police and Armed forces are asked along with other "non-political" items. 

#Instead of Trust in "President" this item is trust in government.
Latino_Baro_r2006$trust_president <- NA
Latino_Baro_r2006$trust_president[Latino_Baro_r2006$p24st.b == 4] <- 1
Latino_Baro_r2006$trust_president[Latino_Baro_r2006$p24st.b == 3] <- 2
Latino_Baro_r2006$trust_president[Latino_Baro_r2006$p24st.b == 2] <- 3
Latino_Baro_r2006$trust_president[Latino_Baro_r2006$p24st.b == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2006$trust_parliament <- NA
Latino_Baro_r2006$trust_parliament[Latino_Baro_r2006$p24st.f == 4] <- 1 #error in coding. confirmed by looking at label.
Latino_Baro_r2006$trust_parliament[Latino_Baro_r2006$p24st.f == 3] <- 2
Latino_Baro_r2006$trust_parliament[Latino_Baro_r2006$p24st.f == 2] <- 3
Latino_Baro_r2006$trust_parliament[Latino_Baro_r2006$p24st.f == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2006$trust_electoral <- NA
Latino_Baro_r2006$trust_electoral[Latino_Baro_r2006$p13st_h == 4] <- 1
Latino_Baro_r2006$trust_electoral[Latino_Baro_r2006$p13st_h == 3] <- 2
Latino_Baro_r2006$trust_electoral[Latino_Baro_r2006$p13st_h == 2] <- 3
Latino_Baro_r2006$trust_electoral[Latino_Baro_r2006$p13st_h == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2006$trust_army <- NA
Latino_Baro_r2006$trust_army[Latino_Baro_r2006$p32st.e == 4] <- 1
Latino_Baro_r2006$trust_army[Latino_Baro_r2006$p32st.e == 3] <- 2
Latino_Baro_r2006$trust_army[Latino_Baro_r2006$p32st.e == 2] <- 3
Latino_Baro_r2006$trust_army[Latino_Baro_r2006$p32st.e == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2006$trust_parties  <- NA
Latino_Baro_r2006$trust_parties[Latino_Baro_r2006$p24st.c == 4] <- 1
Latino_Baro_r2006$trust_parties[Latino_Baro_r2006$p24st.c == 3] <- 2
Latino_Baro_r2006$trust_parties[Latino_Baro_r2006$p24st.c == 2] <- 3
Latino_Baro_r2006$trust_parties[Latino_Baro_r2006$p24st.c == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Latinobarometro 2005

Latino_Baro_r2005 <- read_sav("Latinobarometro_2005_datos_eng_v2014_06_27.sav")

Latino_Baro_r2005$cowcode <- NA

Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa == 32] <- 'Argentina'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa == 68] <- 'Bolivia'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa == 76] <- 'Brazil'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa == 152] <- 'Chile'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa == 170] <- 'Colombia'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa == 188] <- 'Costa Rica'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa == 214] <- 'Dominican Rep.'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa == 218] <- 'Ecuador'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa == 222] <- 'El Salvador'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa == 320] <- 'Guatemala'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa == 340] <- 'Honduras'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa == 484] <- 'Mexico'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa == 558] <- 'Nicaragua'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa == 591] <- 'Panama'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa == 600] <- 'Paraguay'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa == 604] <- 'Peru'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa == 858] <- 'Uruguay'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa == 862] <- 'Venezuela'

Latino_Baro_r2005$cowcode <- countryname(Latino_Baro_r2005$idenpa, destination = 'cowc', warn = TRUE)

#For some reason spain is sampled in this waves. Need to figure out what is going on. 
Latino_Baro_r2005$cowcode[Latino_Baro_r2005$idenpa == 'Dominican Rep.'] <- 'DOM'


Latino_Baro_r2005$country_wave <- NA
Latino_Baro_r2005$wave <- "LATIN05"
library(stringr)
Latino_Baro_r2005$country_wave <- str_c(Latino_Baro_r2005$cowcode, "_", Latino_Baro_r2005$wave)

#LATINOBAROMETRO WAVE 2005 Dependent Variable (high to low code order) 
#Unlike previous survey rounds, this survey asks about CONFIDENCE not trust.  

Latino_Baro_r2005$trust_courts <- NA #Judicial Branch
Latino_Baro_r2005$trust_courts[Latino_Baro_r2005$p42stb == 4] <- 1
Latino_Baro_r2005$trust_courts[Latino_Baro_r2005$p42stb == 3] <- 2
Latino_Baro_r2005$trust_courts[Latino_Baro_r2005$p42stb == 2] <- 3
Latino_Baro_r2005$trust_courts[Latino_Baro_r2005$p42stb == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2005$trust_police <- NA
Latino_Baro_r2005$trust_police[Latino_Baro_r2005$p42stf == 4] <- 1
Latino_Baro_r2005$trust_police[Latino_Baro_r2005$p42stf == 3] <- 2
Latino_Baro_r2005$trust_police[Latino_Baro_r2005$p42stf == 2] <- 3
Latino_Baro_r2005$trust_police[Latino_Baro_r2005$p42stf == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Unlike more recent waves, Police and Armed forces are asked along with other "non-political" items. 

#Instead of Trust in "President" this item is trust in government.
Latino_Baro_r2005$trust_president <- NA
Latino_Baro_r2005$trust_president[Latino_Baro_r2005$p45stc == 4] <- 1
Latino_Baro_r2005$trust_president[Latino_Baro_r2005$p45stc == 3] <- 2
Latino_Baro_r2005$trust_president[Latino_Baro_r2005$p45stc == 2] <- 3
Latino_Baro_r2005$trust_president[Latino_Baro_r2005$p45stc == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2005$trust_parliament <- NA
Latino_Baro_r2005$trust_parliament[Latino_Baro_r2005$p45sta == 4] <- 1 
Latino_Baro_r2005$trust_parliament[Latino_Baro_r2005$p45sta == 3] <- 2
Latino_Baro_r2005$trust_parliament[Latino_Baro_r2005$p45sta == 2] <- 3
Latino_Baro_r2005$trust_parliament[Latino_Baro_r2005$p45sta == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2005$trust_army <- NA
Latino_Baro_r2005$trust_army[Latino_Baro_r2005$p32st.e == 4] <- 1
Latino_Baro_r2005$trust_army[Latino_Baro_r2005$p32st.e == 3] <- 2
Latino_Baro_r2005$trust_army[Latino_Baro_r2005$p32st.e == 2] <- 3
Latino_Baro_r2005$trust_army[Latino_Baro_r2005$p32st.e == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2005$trust_parties  <- NA
Latino_Baro_r2005$trust_parties[Latino_Baro_r2005$p45stb == 4] <- 1
Latino_Baro_r2005$trust_parties[Latino_Baro_r2005$p45stb == 3] <- 2
Latino_Baro_r2005$trust_parties[Latino_Baro_r2005$p45stb == 2] <- 3
Latino_Baro_r2005$trust_parties[Latino_Baro_r2005$p45stb == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Latinobarometro 2004

Latino_Baro_r2004 <- read_sav("Latinobarometro_2004_datos_eng_v2014_06_27.sav")

Latino_Baro_r2004$cowcode <- NA

Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa == 32] <- 'Argentina'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa == 68] <- 'Bolivia'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa == 76] <- 'Brazil'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa == 152] <- 'Chile'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa == 170] <- 'Colombia'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa == 188] <- 'Costa Rica'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa == 214] <- 'Dominican Rep.'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa == 218] <- 'Ecuador'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa == 222] <- 'El Salvador'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa == 320] <- 'Guatemala'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa == 340] <- 'Honduras'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa == 484] <- 'Mexico'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa == 558] <- 'Nicaragua'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa == 591] <- 'Panama'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa == 600] <- 'Paraguay'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa == 604] <- 'Peru'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa == 858] <- 'Uruguay'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa == 862] <- 'Venezuela'

Latino_Baro_r2004$cowcode <- countryname(Latino_Baro_r2004$idenpa, destination = 'cowc', warn = TRUE)

#For some reason spain is sampled in this waves. Need to figure out what is going on. 
Latino_Baro_r2004$cowcode[Latino_Baro_r2004$idenpa == 'Dominican Rep.'] <- 'DOM'


Latino_Baro_r2004$country_wave <- NA
Latino_Baro_r2004$wave <- "LATIN04"
library(stringr)
Latino_Baro_r2004$country_wave <- str_c(Latino_Baro_r2004$cowcode, "_", Latino_Baro_r2004$wave)

#LATINOBAROMETRO WAVE 2004 Dependent Variable (high to low code order) 
#Unlike previous survey rounds, this survey asks about CONFIDENCE not trust.  

Latino_Baro_r2004$trust_courts <- NA #Judicial Branch
Latino_Baro_r2004$trust_courts[Latino_Baro_r2004$p34stb == 4] <- 1
Latino_Baro_r2004$trust_courts[Latino_Baro_r2004$p34stb == 3] <- 2
Latino_Baro_r2004$trust_courts[Latino_Baro_r2004$p34stb == 2] <- 3
Latino_Baro_r2004$trust_courts[Latino_Baro_r2004$p34stb == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2004$trust_police <- NA
Latino_Baro_r2004$trust_police[Latino_Baro_r2004$p32stb == 4] <- 1
Latino_Baro_r2004$trust_police[Latino_Baro_r2004$p32stb == 3] <- 2
Latino_Baro_r2004$trust_police[Latino_Baro_r2004$p32stb == 2] <- 3
Latino_Baro_r2004$trust_police[Latino_Baro_r2004$p32stb == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Instead of Trust in "President" this item is trust in government.
Latino_Baro_r2004$trust_president <- NA
Latino_Baro_r2004$trust_president[Latino_Baro_r2004$p32std == 4] <- 1
Latino_Baro_r2004$trust_president[Latino_Baro_r2004$p32std == 3] <- 2
Latino_Baro_r2004$trust_president[Latino_Baro_r2004$p32std == 2] <- 3
Latino_Baro_r2004$trust_president[Latino_Baro_r2004$p32std == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2004$trust_parliament <- NA
Latino_Baro_r2004$trust_parliament[Latino_Baro_r2004$p34stf == 4] <- 1 
Latino_Baro_r2004$trust_parliament[Latino_Baro_r2004$p34stf == 3] <- 2
Latino_Baro_r2004$trust_parliament[Latino_Baro_r2004$p34stf == 2] <- 3
Latino_Baro_r2004$trust_parliament[Latino_Baro_r2004$p34stf == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2004$trust_army <- NA
Latino_Baro_r2004$trust_army[Latino_Baro_r2004$p32stg == 4] <- 1
Latino_Baro_r2004$trust_army[Latino_Baro_r2004$p32stg == 3] <- 2
Latino_Baro_r2004$trust_army[Latino_Baro_r2004$p32stg == 2] <- 3
Latino_Baro_r2004$trust_army[Latino_Baro_r2004$p32stg == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2004$trust_parties  <- NA
Latino_Baro_r2004$trust_parties[Latino_Baro_r2004$p34std == 4] <- 1
Latino_Baro_r2004$trust_parties[Latino_Baro_r2004$p34std == 3] <- 2
Latino_Baro_r2004$trust_parties[Latino_Baro_r2004$p34std == 2] <- 3
Latino_Baro_r2004$trust_parties[Latino_Baro_r2004$p34std == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Latinobarometro 2003

Latino_Baro_r2003 <- read_sav("Latinobarometro_2003_datos_eng_v2014_06_27.sav")

Latino_Baro_r2003$cowcode <- NA

Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa == 32] <- 'Argentina'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa == 68] <- 'Bolivia'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa == 76] <- 'Brazil'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa == 152] <- 'Chile'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa == 170] <- 'Colombia'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa == 188] <- 'Costa Rica'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa == 214] <- 'Dominican Rep.'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa == 218] <- 'Ecuador'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa == 222] <- 'El Salvador'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa == 320] <- 'Guatemala'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa == 340] <- 'Honduras'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa == 484] <- 'Mexico'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa == 558] <- 'Nicaragua'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa == 591] <- 'Panama'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa == 600] <- 'Paraguay'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa == 604] <- 'Peru'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa == 858] <- 'Uruguay'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa == 862] <- 'Venezuela'

Latino_Baro_r2003$cowcode <- countryname(Latino_Baro_r2003$idenpa, destination = 'cowc', warn = TRUE)

#For some reason spain is sampled in this waves. Need to figure out what is going on. 
Latino_Baro_r2003$cowcode[Latino_Baro_r2003$idenpa == 'Dominican Rep.'] <- 'DOM'


Latino_Baro_r2003$country_wave <- NA
Latino_Baro_r2003$wave <- "LATIN03"
library(stringr)
Latino_Baro_r2003$country_wave <- str_c(Latino_Baro_r2003$cowcode, "_", Latino_Baro_r2003$wave)

#LATINOBAROMETRO WAVE 2003 Dependent Variable (high to low code order) 
#Unlike previous survey rounds, this survey asks about CONFIDENCE not trust.  

Latino_Baro_r2003$trust_courts <- NA #Judicial Branch
Latino_Baro_r2003$trust_courts[Latino_Baro_r2003$p21ste == 4] <- 1
Latino_Baro_r2003$trust_courts[Latino_Baro_r2003$p21ste == 3] <- 2
Latino_Baro_r2003$trust_courts[Latino_Baro_r2003$p21ste == 2] <- 3
Latino_Baro_r2003$trust_courts[Latino_Baro_r2003$p21ste == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2003$trust_police <- NA
Latino_Baro_r2003$trust_police[Latino_Baro_r2003$p21stb == 4] <- 1
Latino_Baro_r2003$trust_police[Latino_Baro_r2003$p21stb == 3] <- 2
Latino_Baro_r2003$trust_police[Latino_Baro_r2003$p21stb == 2] <- 3
Latino_Baro_r2003$trust_police[Latino_Baro_r2003$p21stb == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Instead of Trust in "President" this item is trust in government.
Latino_Baro_r2003$trust_president <- NA
Latino_Baro_r2003$trust_president[Latino_Baro_r2003$p23stg == 4] <- 1
Latino_Baro_r2003$trust_president[Latino_Baro_r2003$p23stg == 3] <- 2
Latino_Baro_r2003$trust_president[Latino_Baro_r2003$p23stg == 2] <- 3
Latino_Baro_r2003$trust_president[Latino_Baro_r2003$p23stg == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2003$trust_parliament <- NA
Latino_Baro_r2003$trust_parliament[Latino_Baro_r2003$p21stf == 4] <- 1 
Latino_Baro_r2003$trust_parliament[Latino_Baro_r2003$p21stf == 3] <- 2
Latino_Baro_r2003$trust_parliament[Latino_Baro_r2003$p21stf == 2] <- 3
Latino_Baro_r2003$trust_parliament[Latino_Baro_r2003$p21stf == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2003$trust_army <- NA
Latino_Baro_r2003$trust_army[Latino_Baro_r2003$p21stg == 4] <- 1
Latino_Baro_r2003$trust_army[Latino_Baro_r2003$p21stg == 3] <- 2
Latino_Baro_r2003$trust_army[Latino_Baro_r2003$p21stg == 2] <- 3
Latino_Baro_r2003$trust_army[Latino_Baro_r2003$p21stg == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2003$trust_parties  <- NA
Latino_Baro_r2003$trust_parties[Latino_Baro_r2003$p21std == 4] <- 1
Latino_Baro_r2003$trust_parties[Latino_Baro_r2003$p21std == 3] <- 2
Latino_Baro_r2003$trust_parties[Latino_Baro_r2003$p21std == 2] <- 3
Latino_Baro_r2003$trust_parties[Latino_Baro_r2003$p21std == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Latinobarometro 2002

Latino_Baro_r2002 <- read_sav("Latinobarometro_2002_datos_eng_v2014_06_27.sav")

Latino_Baro_r2002$cowcode <- NA

Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa == 32] <- 'Argentina'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa == 68] <- 'Bolivia'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa == 76] <- 'Brazil'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa == 152] <- 'Chile'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa == 170] <- 'Colombia'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa == 188] <- 'Costa Rica'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa == 214] <- 'Dominican Rep.'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa == 218] <- 'Ecuador'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa == 222] <- 'El Salvador'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa == 320] <- 'Guatemala'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa == 340] <- 'Honduras'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa == 484] <- 'Mexico'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa == 558] <- 'Nicaragua'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa == 591] <- 'Panama'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa == 600] <- 'Paraguay'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa == 604] <- 'Peru'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa == 858] <- 'Uruguay'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa == 862] <- 'Venezuela'

Latino_Baro_r2002$cowcode <- countryname(Latino_Baro_r2002$idenpa, destination = 'cowc', warn = TRUE)

#For some reason spain is sampled in this waves. Need to figure out what is going on. 
Latino_Baro_r2002$cowcode[Latino_Baro_r2002$idenpa == 'Dominican Rep.'] <- 'DOM'


Latino_Baro_r2002$country_wave <- NA
Latino_Baro_r2002$wave <- "LATIN02"
library(stringr)
Latino_Baro_r2002$country_wave <- str_c(Latino_Baro_r2002$cowcode, "_", Latino_Baro_r2002$wave)

#LATINOBAROMETRO WAVE 2002 Dependent Variable (high to low code order) 
#Unlike previous survey rounds, this survey asks about CONFIDENCE not trust.  

Latino_Baro_r2002$trust_courts <- NA #Judicial Branch
Latino_Baro_r2002$trust_courts[Latino_Baro_r2002$p34stc == 4] <- 1
Latino_Baro_r2002$trust_courts[Latino_Baro_r2002$p34stc == 3] <- 2
Latino_Baro_r2002$trust_courts[Latino_Baro_r2002$p34stc == 2] <- 3
Latino_Baro_r2002$trust_courts[Latino_Baro_r2002$p34stc == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2002$trust_police <- NA
Latino_Baro_r2002$trust_police[Latino_Baro_r2002$p36ste == 4] <- 1
Latino_Baro_r2002$trust_police[Latino_Baro_r2002$p36ste == 3] <- 2
Latino_Baro_r2002$trust_police[Latino_Baro_r2002$p36ste == 2] <- 3
Latino_Baro_r2002$trust_police[Latino_Baro_r2002$p36ste == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Instead of Trust in "President" this item is trust in government.
Latino_Baro_r2002$trust_president <- NA
Latino_Baro_r2002$trust_president[Latino_Baro_r2002$p34std == 4] <- 1
Latino_Baro_r2002$trust_president[Latino_Baro_r2002$p34std == 3] <- 2
Latino_Baro_r2002$trust_president[Latino_Baro_r2002$p34std == 2] <- 3
Latino_Baro_r2002$trust_president[Latino_Baro_r2002$p34std == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2002$trust_parliament <- NA
Latino_Baro_r2002$trust_parliament[Latino_Baro_r2002$p36std == 4] <- 1 
Latino_Baro_r2002$trust_parliament[Latino_Baro_r2002$p36std == 3] <- 2
Latino_Baro_r2002$trust_parliament[Latino_Baro_r2002$p36std == 2] <- 3
Latino_Baro_r2002$trust_parliament[Latino_Baro_r2002$p36std == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2002$trust_army <- NA
Latino_Baro_r2002$trust_army[Latino_Baro_r2002$p36stb == 4] <- 1
Latino_Baro_r2002$trust_army[Latino_Baro_r2002$p36stb == 3] <- 2
Latino_Baro_r2002$trust_army[Latino_Baro_r2002$p36stb == 2] <- 3
Latino_Baro_r2002$trust_army[Latino_Baro_r2002$p36stb == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2002$trust_parties  <- NA
Latino_Baro_r2002$trust_parties[Latino_Baro_r2002$p34stf == 4] <- 1
Latino_Baro_r2002$trust_parties[Latino_Baro_r2002$p34stf == 3] <- 2
Latino_Baro_r2002$trust_parties[Latino_Baro_r2002$p34stf == 2] <- 3
Latino_Baro_r2002$trust_parties[Latino_Baro_r2002$p34stf == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Latinobarometro 2001

Latino_Baro_r2001 <- read_sav("Latinobarometro_2001_datos_english_v2014_06_27.sav")

Latino_Baro_r2001$cowcode <- NA

Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa == 32] <- 'Argentina'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa == 68] <- 'Bolivia'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa == 76] <- 'Brazil'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa == 152] <- 'Chile'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa == 170] <- 'Colombia'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa == 188] <- 'Costa Rica'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa == 214] <- 'Dominican Rep.'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa == 218] <- 'Ecuador'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa == 222] <- 'El Salvador'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa == 320] <- 'Guatemala'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa == 340] <- 'Honduras'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa == 484] <- 'Mexico'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa == 558] <- 'Nicaragua'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa == 591] <- 'Panama'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa == 600] <- 'Paraguay'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa == 604] <- 'Peru'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa == 858] <- 'Uruguay'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa == 862] <- 'Venezuela'

Latino_Baro_r2001$cowcode <- countryname(Latino_Baro_r2001$idenpa, destination = 'cowc', warn = TRUE)

#For some reason spain is sampled in this waves. Need to figure out what is going on. 
Latino_Baro_r2001$cowcode[Latino_Baro_r2001$idenpa == 'Dominican Rep.'] <- 'DOM'


Latino_Baro_r2001$country_wave <- NA
Latino_Baro_r2001$wave <- "LATIN01"
library(stringr)
Latino_Baro_r2001$country_wave <- str_c(Latino_Baro_r2001$cowcode, "_", Latino_Baro_r2001$wave)

#LATINOBAROMETRO WAVE 2001 Dependent Variable (high to low code order) 
#Unlike previous survey rounds, this survey ask about confidence BUT also mentions trust on each showcard.  

#NO CONFIDENCE IN JUDICIARY ITEM! 

Latino_Baro_r2001$trust_police <- NA
Latino_Baro_r2001$trust_police[Latino_Baro_r2001$p61ste == 4] <- 1
Latino_Baro_r2001$trust_police[Latino_Baro_r2001$p61ste == 3] <- 2
Latino_Baro_r2001$trust_police[Latino_Baro_r2001$p61ste == 2] <- 3
Latino_Baro_r2001$trust_police[Latino_Baro_r2001$p61ste == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#This mentions president instead of government. 
Latino_Baro_r2001$trust_president <- NA
Latino_Baro_r2001$trust_president[Latino_Baro_r2001$p61std == 4] <- 1
Latino_Baro_r2001$trust_president[Latino_Baro_r2001$p61std == 3] <- 2
Latino_Baro_r2001$trust_president[Latino_Baro_r2001$p61std == 2] <- 3
Latino_Baro_r2001$trust_president[Latino_Baro_r2001$p61std == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2001$trust_parliament <- NA
Latino_Baro_r2001$trust_parliament[Latino_Baro_r2001$p61stg == 4] <- 1 
Latino_Baro_r2001$trust_parliament[Latino_Baro_r2001$p61stg == 3] <- 2
Latino_Baro_r2001$trust_parliament[Latino_Baro_r2001$p61stg == 2] <- 3
Latino_Baro_r2001$trust_parliament[Latino_Baro_r2001$p61stg == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2001$trust_army <- NA
Latino_Baro_r2001$trust_army[Latino_Baro_r2001$p61stb == 4] <- 1
Latino_Baro_r2001$trust_army[Latino_Baro_r2001$p61stb == 3] <- 2
Latino_Baro_r2001$trust_army[Latino_Baro_r2001$p61stb == 2] <- 3
Latino_Baro_r2001$trust_army[Latino_Baro_r2001$p61stb == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2001$trust_parties  <- NA
Latino_Baro_r2001$trust_parties[Latino_Baro_r2001$p61stg == 4] <- 1
Latino_Baro_r2001$trust_parties[Latino_Baro_r2001$p61stg == 3] <- 2
Latino_Baro_r2001$trust_parties[Latino_Baro_r2001$p61stg == 2] <- 3
Latino_Baro_r2001$trust_parties[Latino_Baro_r2001$p61stg == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Latinobarometro 2000

Latino_Baro_r2000 <- read_sav("Latinobarometro_2000_datos_eng_v2014_06_27.sav")

Latino_Baro_r2000$cowcode <- NA
Latino_Baro_r2000$idenpa <- Latino_Baro_r2000$IDENPA

Latino_Baro_r2000$idenpa[Latino_Baro_r2000$idenpa == 32] <- 'Argentina'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$idenpa == 68] <- 'Bolivia'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$idenpa == 76] <- 'Brazil'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$idenpa == 152] <- 'Chile'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$idenpa == 170] <- 'Colombia'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$idenpa == 188] <- 'Costa Rica'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$idenpa == 214] <- 'Dominican Rep.'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$idenpa == 218] <- 'Ecuador'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$idenpa == 222] <- 'El Salvador'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$idenpa == 320] <- 'Guatemala'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$idenpa == 340] <- 'Honduras'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$idenpa == 484] <- 'Mexico'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$idenpa == 558] <- 'Nicaragua'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$idenpa == 591] <- 'Panama'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$idenpa == 600] <- 'Paraguay'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$idenpa == 604] <- 'Peru'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$idenpa == 858] <- 'Uruguay'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$idenpa == 862] <- 'Venezuela'

Latino_Baro_r2000$cowcode <- countryname(Latino_Baro_r2000$idenpa, destination = 'cowc', warn = TRUE)

#For some reason spain is sampled in this waves. Need to figure out what is going on. 
Latino_Baro_r2000$cowcode[Latino_Baro_r2000$idenpa == 'Dominican Rep.'] <- 'DOM'


Latino_Baro_r2000$country_wave <- NA
Latino_Baro_r2000$wave <- "LATIN00"
library(stringr)
Latino_Baro_r2000$country_wave <- str_c(Latino_Baro_r2000$cowcode, "_", Latino_Baro_r2000$wave)

#LATINOBAROMETRO WAVE 2000 Dependent Variable (high to low code order) 
#Unlike previous survey rounds, this survey ask about confidence 

Latino_Baro_r2000$trust_courts <- NA #Judicial Branch
Latino_Baro_r2000$trust_courts[Latino_Baro_r2000$P35ST.C == 4] <- 1
Latino_Baro_r2000$trust_courts[Latino_Baro_r2000$P35ST.C == 3] <- 2
Latino_Baro_r2000$trust_courts[Latino_Baro_r2000$P35ST.C == 2] <- 3
Latino_Baro_r2000$trust_courts[Latino_Baro_r2000$P35ST.C == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2000$trust_police <- NA
Latino_Baro_r2000$trust_police[Latino_Baro_r2000$P35ST.E == 4] <- 1
Latino_Baro_r2000$trust_police[Latino_Baro_r2000$P35ST.E == 3] <- 2
Latino_Baro_r2000$trust_police[Latino_Baro_r2000$P35ST.E == 2] <- 3
Latino_Baro_r2000$trust_police[Latino_Baro_r2000$P35ST.E == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#This mentions president instead of government. 
Latino_Baro_r2000$trust_president <- NA
Latino_Baro_r2000$trust_president[Latino_Baro_r2000$P35ST.D == 4] <- 1
Latino_Baro_r2000$trust_president[Latino_Baro_r2000$P35ST.D == 3] <- 2
Latino_Baro_r2000$trust_president[Latino_Baro_r2000$P35ST.D == 2] <- 3
Latino_Baro_r2000$trust_president[Latino_Baro_r2000$P35ST.D == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2000$trust_parliament <- NA
Latino_Baro_r2000$trust_parliament[Latino_Baro_r2000$P35ST.F == 4] <- 1 
Latino_Baro_r2000$trust_parliament[Latino_Baro_r2000$P35ST.F == 3] <- 2
Latino_Baro_r2000$trust_parliament[Latino_Baro_r2000$P35ST.F == 2] <- 3
Latino_Baro_r2000$trust_parliament[Latino_Baro_r2000$P35ST.F == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2000$trust_army <- NA
Latino_Baro_r2000$trust_army[Latino_Baro_r2000$P35ST.B == 4] <- 1
Latino_Baro_r2000$trust_army[Latino_Baro_r2000$P35ST.B == 3] <- 2
Latino_Baro_r2000$trust_army[Latino_Baro_r2000$P35ST.B == 2] <- 3
Latino_Baro_r2000$trust_army[Latino_Baro_r2000$P35ST.B == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2000$trust_parties  <- NA
Latino_Baro_r2000$trust_parties[Latino_Baro_r2000$P35ST.G == 4] <- 1
Latino_Baro_r2000$trust_parties[Latino_Baro_r2000$P35ST.G == 3] <- 2
Latino_Baro_r2000$trust_parties[Latino_Baro_r2000$P35ST.G == 2] <- 3
Latino_Baro_r2000$trust_parties[Latino_Baro_r2000$P35ST.G == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Latinobarometro 1998

Latino_Baro_r1998 <- read_sav("Latinobarometro_1998_datos_english_v2014_06_27.sav")

Latino_Baro_r1998$cowcode <- NA
#Latino_Baro_r1998$idenpa <- Latino_Baro_r1998$IDENPA

Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa == 32] <- 'Argentina'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa == 68] <- 'Bolivia'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa == 76] <- 'Brazil'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa == 152] <- 'Chile'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa == 170] <- 'Colombia'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa == 188] <- 'Costa Rica'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa == 214] <- 'Dominican Rep.'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa == 218] <- 'Ecuador'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa == 222] <- 'El Salvador'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa == 320] <- 'Guatemala'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa == 340] <- 'Honduras'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa == 484] <- 'Mexico'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa == 558] <- 'Nicaragua'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa == 591] <- 'Panama'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa == 600] <- 'Paraguay'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa == 604] <- 'Peru'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa == 858] <- 'Uruguay'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa == 862] <- 'Venezuela'

Latino_Baro_r1998$cowcode <- countryname(Latino_Baro_r1998$idenpa, destination = 'cowc', warn = TRUE)

#For some reason spain is sampled in this waves. Need to figure out what is going on. 
Latino_Baro_r1998$cowcode[Latino_Baro_r1998$idenpa == 'Dominican Rep.'] <- 'DOM'


Latino_Baro_r1998$country_wave <- NA
Latino_Baro_r1998$wave <- "LATIN98"
library(stringr)
Latino_Baro_r1998$country_wave <- str_c(Latino_Baro_r1998$cowcode, "_", Latino_Baro_r1998$wave)

#LATINOBAROMETRO WAVE 1998 Dependent Variable (high to low code order) 
#Unlike previous survey rounds, this survey ask about confidence 

Latino_Baro_r1998$trust_courts <- NA #Judicial Branch
Latino_Baro_r1998$trust_courts[Latino_Baro_r1998$sp38c == 4] <- 1
Latino_Baro_r1998$trust_courts[Latino_Baro_r1998$sp38c == 3] <- 2
Latino_Baro_r1998$trust_courts[Latino_Baro_r1998$sp38c == 2] <- 3
Latino_Baro_r1998$trust_courts[Latino_Baro_r1998$sp38c == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r1998$trust_police <- NA
Latino_Baro_r1998$trust_police[Latino_Baro_r1998$sp38e == 4] <- 1
Latino_Baro_r1998$trust_police[Latino_Baro_r1998$sp38e == 3] <- 2
Latino_Baro_r1998$trust_police[Latino_Baro_r1998$sp38e == 2] <- 3
Latino_Baro_r1998$trust_police[Latino_Baro_r1998$sp38e == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#This mentions president instead of government. 
Latino_Baro_r1998$trust_president <- NA
Latino_Baro_r1998$trust_president[Latino_Baro_r1998$sp38d == 4] <- 1
Latino_Baro_r1998$trust_president[Latino_Baro_r1998$sp38d == 3] <- 2
Latino_Baro_r1998$trust_president[Latino_Baro_r1998$sp38d == 2] <- 3
Latino_Baro_r1998$trust_president[Latino_Baro_r1998$sp38d == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r1998$trust_parliament <- NA
Latino_Baro_r1998$trust_parliament[Latino_Baro_r1998$sp38f == 4] <- 1 
Latino_Baro_r1998$trust_parliament[Latino_Baro_r1998$sp38f == 3] <- 2
Latino_Baro_r1998$trust_parliament[Latino_Baro_r1998$sp38f == 2] <- 3
Latino_Baro_r1998$trust_parliament[Latino_Baro_r1998$sp38f == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r1998$trust_army <- NA
Latino_Baro_r1998$trust_army[Latino_Baro_r1998$sp38b == 4] <- 1
Latino_Baro_r1998$trust_army[Latino_Baro_r1998$sp38b == 3] <- 2
Latino_Baro_r1998$trust_army[Latino_Baro_r1998$sp38b == 2] <- 3
Latino_Baro_r1998$trust_army[Latino_Baro_r1998$sp38b == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r1998$trust_parties  <- NA
Latino_Baro_r1998$trust_parties[Latino_Baro_r1998$sp38g == 4] <- 1
Latino_Baro_r1998$trust_parties[Latino_Baro_r1998$sp38g == 3] <- 2
Latino_Baro_r1998$trust_parties[Latino_Baro_r1998$sp38g == 2] <- 3
Latino_Baro_r1998$trust_parties[Latino_Baro_r1998$sp38g == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   




#CSES Data

cses_imd <- read_dta("cses_imd.dta")



