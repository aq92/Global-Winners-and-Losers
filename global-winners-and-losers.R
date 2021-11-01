
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



