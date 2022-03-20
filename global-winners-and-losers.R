
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

WVS_TimeSeries_1981_2020_spss_v2_0$country_wave <- str_c(WVS_TimeSeries_1981_2020_spss_v2_0$country, "_", WVS_TimeSeries_1981_2020_spss_v2_0$wave)


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

#For all items change values to numeric:

Latino_Baro_r2020$trust_courts <- NA #Judicial Branch
Latino_Baro_r2020$trust_courts[Latino_Baro_r2020$p13st_c == "No trust"] <- 1
Latino_Baro_r2020$trust_courts[Latino_Baro_r2020$p13st_c == "Little"] <- 2
Latino_Baro_r2020$trust_courts[Latino_Baro_r2020$p13st_c == "Some"] <- 3
Latino_Baro_r2020$trust_courts[Latino_Baro_r2020$p13st_c == "A lot"] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2020$trust_police <- NA
Latino_Baro_r2020$trust_police[Latino_Baro_r2020$P13STGBS_B == "No trust"] <- 1
Latino_Baro_r2020$trust_police[Latino_Baro_r2020$P13STGBS_B == "Little"] <- 2
Latino_Baro_r2020$trust_police[Latino_Baro_r2020$P13STGBS_B == "Some"] <- 3
Latino_Baro_r2020$trust_police[Latino_Baro_r2020$P13STGBS_B == "A lot"] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2020$trust_president <- NA
Latino_Baro_r2020$trust_president[Latino_Baro_r2020$p13st_i == "No trust"] <- 1
Latino_Baro_r2020$trust_president[Latino_Baro_r2020$p13st_i == "Little"] <- 2
Latino_Baro_r2020$trust_president[Latino_Baro_r2020$p13st_i == "Some"] <- 3
Latino_Baro_r2020$trust_president[Latino_Baro_r2020$p13st_i == "A lot"] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2020$trust_parliament <- NA
Latino_Baro_r2020$trust_parliament[Latino_Baro_r2020$p13st_d == "No trust"] <- 1
Latino_Baro_r2020$trust_parliament[Latino_Baro_r2020$p13st_d == "Little"] <- 2
Latino_Baro_r2020$trust_parliament[Latino_Baro_r2020$p13st_d == "Some"] <- 3
Latino_Baro_r2020$trust_parliament[Latino_Baro_r2020$p13st_d == "A lot"] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2020$trust_electoral <- NA
Latino_Baro_r2020$trust_electoral[Latino_Baro_r2020$p13st_h == "No trust"] <- 1
Latino_Baro_r2020$trust_electoral[Latino_Baro_r2020$p13st_h == "Little"] <- 2
Latino_Baro_r2020$trust_electoral[Latino_Baro_r2020$p13st_h == "Some"] <- 3
Latino_Baro_r2020$trust_electoral[Latino_Baro_r2020$p13st_h == "A lot"] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2020$trust_parties  <- NA
Latino_Baro_r2020$trust_parties[Latino_Baro_r2020$p13st_g == "No trust"] <- 1
Latino_Baro_r2020$trust_parties[Latino_Baro_r2020$p13st_g == "Little"] <- 2
Latino_Baro_r2020$trust_parties[Latino_Baro_r2020$p13st_g == "Some"] <- 3
Latino_Baro_r2020$trust_parties[Latino_Baro_r2020$p13st_g == "A lot"] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2020$trust_army <- NA
Latino_Baro_r2020$trust_army[Latino_Baro_r2020$P13STGBS_A == "No trust"] <- 1
Latino_Baro_r2020$trust_army[Latino_Baro_r2020$P13STGBS_A == "Little"] <- 2
Latino_Baro_r2020$trust_army[Latino_Baro_r2020$P13STGBS_A == "Some"] <- 3
Latino_Baro_r2020$trust_army[Latino_Baro_r2020$P13STGBS_A == "A lot"] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

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
Latino_Baro_r2015$idenpa <- NA

Latino_Baro_r2015$idenpa[Latino_Baro_r2015$IDENPA == 32] <- 'Argentina'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$IDENPA == 68] <- 'Bolivia'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$IDENPA == 76] <- 'Brazil'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$IDENPA == 152] <- 'Chile'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$IDENPA == 170] <- 'Colombia'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$IDENPA == 188] <- 'Costa Rica'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$IDENPA == 214] <- 'Dominican Rep.'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$IDENPA == 218] <- 'Ecuador'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$IDENPA == 222] <- 'El Salvador'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$IDENPA == 320] <- 'Guatemala'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$IDENPA == 340] <- 'Honduras'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$IDENPA == 484] <- 'Mexico'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$IDENPA == 558] <- 'Nicaragua'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$IDENPA == 591] <- 'Panama'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$IDENPA == 600] <- 'Paraguay'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$IDENPA == 604] <- 'Peru'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$IDENPA == 858] <- 'Uruguay'
Latino_Baro_r2015$idenpa[Latino_Baro_r2015$IDENPA == 862] <- 'Venezuela'

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
Latino_Baro_r2013$idenpa <- NA

Latino_Baro_r2013$idenpa[Latino_Baro_r2013$IDENPA == 32] <- 'Argentina'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$IDENPA == 68] <- 'Bolivia'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$IDENPA == 76] <- 'Brazil'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$IDENPA == 152] <- 'Chile'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$IDENPA == 170] <- 'Colombia'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$IDENPA == 188] <- 'Costa Rica'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$IDENPA == 214] <- 'Dominican Rep.'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$IDENPA == 218] <- 'Ecuador'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$IDENPA == 222] <- 'El Salvador'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$IDENPA == 320] <- 'Guatemala'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$IDENPA == 340] <- 'Honduras'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$IDENPA == 484] <- 'Mexico'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$IDENPA == 558] <- 'Nicaragua'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$IDENPA == 591] <- 'Panama'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$IDENPA == 600] <- 'Paraguay'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$IDENPA == 604] <- 'Peru'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$IDENPA == 858] <- 'Uruguay'
Latino_Baro_r2013$idenpa[Latino_Baro_r2013$IDENPA == 862] <- 'Venezuela'

Latino_Baro_r2013$cowcode <- countryname(Latino_Baro_r2013$idenpa, destination = 'cowc', warn = TRUE)

#For some reason spain is sampled in this waves. Need to figure out what is going on. 
Latino_Baro_r2013$cowcode[Latino_Baro_r2013$idenpa == 'Dominican Rep.'] <- 'DOM'


Latino_Baro_r2013$country_wave <- NA
Latino_Baro_r2013$wave <- "LATIN13"
library(stringr)
Latino_Baro_r2013$country_wave <- str_c(Latino_Baro_r2013$cowcode, "_", Latino_Baro_r2013$wave)

#LATINOBAROMETRO WAVE 2013 Dependent Variable (high to low code order) 

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

Latino_Baro_r2011$idenpa1 <- Latino_Baro_r2011$idenpa
Latino_Baro_r2011$idenpa <- NA

Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa1 == 32] <- 'Argentina'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa1 == 68] <- 'Bolivia'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa1 == 76] <- 'Brazil'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa1 == 152] <- 'Chile'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa1 == 170] <- 'Colombia'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa1 == 188] <- 'Costa Rica'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa1 == 214] <- 'Dominican Rep.'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa1 == 218] <- 'Ecuador'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa1 == 222] <- 'El Salvador'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa1 == 320] <- 'Guatemala'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa1 == 340] <- 'Honduras'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa1 == 484] <- 'Mexico'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa1 == 558] <- 'Nicaragua'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa1 == 591] <- 'Panama'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa1 == 600] <- 'Paraguay'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa1 == 604] <- 'Peru'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa1 == 858] <- 'Uruguay'
Latino_Baro_r2011$idenpa[Latino_Baro_r2011$idenpa1 == 862] <- 'Venezuela'

Latino_Baro_r2011$cowcode <- countryname(Latino_Baro_r2011$idenpa, destination = 'cowc', warn = TRUE)

#For some reason spain is sampled in this waves. Need to figure out what is going on. 
Latino_Baro_r2011$cowcode[Latino_Baro_r2011$idenpa == 'Dominican Rep.'] <- 'DOM'


Latino_Baro_r2011$country_wave <- NA
Latino_Baro_r2011$wave <- "LATIN11"
library(stringr)
Latino_Baro_r2011$country_wave <- str_c(Latino_Baro_r2011$cowcode, "_", Latino_Baro_r2011$wave)

#LATINOBAROMETRO WAVE 2011 Dependent Variable (high to low code order) 

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
Latino_Baro_r2010$idenpa <- NA

Latino_Baro_r2010$idenpa[Latino_Baro_r2010$IDENPA == 32] <- 'Argentina'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$IDENPA == 68] <- 'Bolivia'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$IDENPA == 76] <- 'Brazil'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$IDENPA == 152] <- 'Chile'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$IDENPA == 170] <- 'Colombia'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$IDENPA == 188] <- 'Costa Rica'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$IDENPA == 214] <- 'Dominican Rep.'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$IDENPA == 218] <- 'Ecuador'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$IDENPA == 222] <- 'El Salvador'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$IDENPA == 320] <- 'Guatemala'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$IDENPA == 340] <- 'Honduras'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$IDENPA == 484] <- 'Mexico'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$IDENPA == 558] <- 'Nicaragua'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$IDENPA == 591] <- 'Panama'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$IDENPA == 600] <- 'Paraguay'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$IDENPA == 604] <- 'Peru'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$IDENPA == 858] <- 'Uruguay'
Latino_Baro_r2010$idenpa[Latino_Baro_r2010$IDENPA == 862] <- 'Venezuela'

Latino_Baro_r2010$cowcode <- countryname(Latino_Baro_r2010$idenpa, destination = 'cowc', warn = TRUE)

#For some reason spain is sampled in this waves. Need to figure out what is going on. 
Latino_Baro_r2010$cowcode[Latino_Baro_r2010$idenpa == 'Dominican Rep.'] <- 'DOM'


Latino_Baro_r2010$country_wave <- NA
Latino_Baro_r2010$wave <- "LATIN10"
library(stringr)
Latino_Baro_r2010$country_wave <- str_c(Latino_Baro_r2010$cowcode, "_", Latino_Baro_r2010$wave)

#LATINOBAROMETRO WAVE 2010 Dependent Variable (high to low code order) 

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
Latino_Baro_r2010$trust_parties[Latino_Baro_r2010$P20ST.C == 4] <- 1
Latino_Baro_r2010$trust_parties[Latino_Baro_r2010$P20ST.C == 3] <- 2
Latino_Baro_r2010$trust_parties[Latino_Baro_r2010$P20ST.C == 2] <- 3
Latino_Baro_r2010$trust_parties[Latino_Baro_r2010$P20ST.C == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#LATINOBAROMETRO WAVE 2009

Latino_Baro_r2009 <- read_sav("Latinobarometro_2009_datos_eng_v2014_06_27.sav")

Latino_Baro_r2009$cowcode <- NA

Latino_Baro_r2009$idenpa1 <- Latino_Baro_r2009$idenpa

Latino_Baro_r2009$idenpa <- NA
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa1 == 32] <- 'Argentina'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa1 == 68] <- 'Bolivia'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa1 == 76] <- 'Brazil'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa1 == 152] <- 'Chile'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa1 == 170] <- 'Colombia'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa1 == 188] <- 'Costa Rica'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa1 == 214] <- 'Dominican Rep.'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa1 == 218] <- 'Ecuador'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa1 == 222] <- 'El Salvador'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa1 == 320] <- 'Guatemala'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa1 == 340] <- 'Honduras'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa1 == 484] <- 'Mexico'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa1 == 558] <- 'Nicaragua'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa1 == 591] <- 'Panama'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa1 == 600] <- 'Paraguay'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa1 == 604] <- 'Peru'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa1 == 858] <- 'Uruguay'
Latino_Baro_r2009$idenpa[Latino_Baro_r2009$idenpa1 == 862] <- 'Venezuela'

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

Latino_Baro_r2008$idenpa1 <- Latino_Baro_r2008$idenpa

Latino_Baro_r2008$idenpa <- NA
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa1 == 32] <- 'Argentina'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa1 == 68] <- 'Bolivia'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa1 == 76] <- 'Brazil'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa1 == 152] <- 'Chile'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa1 == 170] <- 'Colombia'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa1 == 188] <- 'Costa Rica'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa1 == 214] <- 'Dominican Rep.'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa1 == 218] <- 'Ecuador'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa1 == 222] <- 'El Salvador'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa1 == 320] <- 'Guatemala'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa1 == 340] <- 'Honduras'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa1 == 484] <- 'Mexico'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa1 == 558] <- 'Nicaragua'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa1 == 591] <- 'Panama'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa1 == 600] <- 'Paraguay'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa1 == 604] <- 'Peru'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa1 == 858] <- 'Uruguay'
Latino_Baro_r2008$idenpa[Latino_Baro_r2008$idenpa1 == 862] <- 'Venezuela'

Latino_Baro_r2008$cowcode <- countryname(Latino_Baro_r2008$idenpa, destination = 'cowc', warn = TRUE)

#For some reason spain is sampled in this waves. Need to figure out what is going on. 
Latino_Baro_r2008$cowcode[Latino_Baro_r2008$idenpa == 'Dominican Rep.'] <- 'DOM'


Latino_Baro_r2008$country_wave <- NA
Latino_Baro_r2008$wave <- "LATIN08"
library(stringr)
Latino_Baro_r2008$country_wave <- str_c(Latino_Baro_r2008$cowcode, "_", Latino_Baro_r2008$wave)

#LATINOBAROMETRO WAVE 2008 Dependent Variable (high to low code order) 

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
Latino_Baro_r2007$idenpa1 <- Latino_Baro_r2007$idenpa
Latino_Baro_r2007$idenpa <- NA

Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa1 == 32] <- 'Argentina'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa1 == 68] <- 'Bolivia'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa1 == 76] <- 'Brazil'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa1 == 152] <- 'Chile'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa1 == 170] <- 'Colombia'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa1 == 188] <- 'Costa Rica'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa1 == 214] <- 'Dominican Rep.'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa1 == 218] <- 'Ecuador'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa1 == 222] <- 'El Salvador'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa1 == 320] <- 'Guatemala'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa1 == 340] <- 'Honduras'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa1 == 484] <- 'Mexico'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa1 == 558] <- 'Nicaragua'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa1 == 591] <- 'Panama'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa1 == 600] <- 'Paraguay'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa1 == 604] <- 'Peru'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa1 == 858] <- 'Uruguay'
Latino_Baro_r2007$idenpa[Latino_Baro_r2007$idenpa1 == 862] <- 'Venezuela'

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
Latino_Baro_r2006$idenpa1 <- Latino_Baro_r2006$idenpa
Latino_Baro_r2006$idenpa <- NA

Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa1 == 32] <- 'Argentina'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa1 == 68] <- 'Bolivia'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa1 == 76] <- 'Brazil'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa1 == 152] <- 'Chile'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa1 == 170] <- 'Colombia'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa1 == 188] <- 'Costa Rica'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa1 == 214] <- 'Dominican Rep.'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa1 == 218] <- 'Ecuador'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa1 == 222] <- 'El Salvador'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa1 == 320] <- 'Guatemala'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa1 == 340] <- 'Honduras'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa1 == 484] <- 'Mexico'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa1 == 558] <- 'Nicaragua'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa1 == 591] <- 'Panama'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa1 == 600] <- 'Paraguay'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa1 == 604] <- 'Peru'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa1 == 858] <- 'Uruguay'
Latino_Baro_r2006$idenpa[Latino_Baro_r2006$idenpa1 == 862] <- 'Venezuela'

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
Latino_Baro_r2006$trust_electoral[Latino_Baro_r2006$p35st.d == 4] <- 1
Latino_Baro_r2006$trust_electoral[Latino_Baro_r2006$p35st.d == 3] <- 2
Latino_Baro_r2006$trust_electoral[Latino_Baro_r2006$p35st.d == 2] <- 3
Latino_Baro_r2006$trust_electoral[Latino_Baro_r2006$p35st.d == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

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
Latino_Baro_r2005$idenpa1 <- Latino_Baro_r2005$idenpa
Latino_Baro_r2005$idenpa <- NA

Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa1 == 32] <- 'Argentina'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa1 == 68] <- 'Bolivia'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa1 == 76] <- 'Brazil'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa1 == 152] <- 'Chile'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa1 == 170] <- 'Colombia'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa1 == 188] <- 'Costa Rica'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa1== 214] <- 'Dominican Rep.'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa1 == 218] <- 'Ecuador'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa1 == 222] <- 'El Salvador'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa1 == 320] <- 'Guatemala'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa1 == 340] <- 'Honduras'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa1 == 484] <- 'Mexico'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa1 == 558] <- 'Nicaragua'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa1 == 591] <- 'Panama'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa1 == 600] <- 'Paraguay'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa1 == 604] <- 'Peru'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa1 == 858] <- 'Uruguay'
Latino_Baro_r2005$idenpa[Latino_Baro_r2005$idenpa1 == 862] <- 'Venezuela'

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
Latino_Baro_r2005$trust_army[Latino_Baro_r2005$p42stb == 4] <- 1
Latino_Baro_r2005$trust_army[Latino_Baro_r2005$p42stb == 3] <- 2
Latino_Baro_r2005$trust_army[Latino_Baro_r2005$p42stb == 2] <- 3
Latino_Baro_r2005$trust_army[Latino_Baro_r2005$p42stb == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r2005$trust_parties  <- NA
Latino_Baro_r2005$trust_parties[Latino_Baro_r2005$p45stb == 4] <- 1
Latino_Baro_r2005$trust_parties[Latino_Baro_r2005$p45stb == 3] <- 2
Latino_Baro_r2005$trust_parties[Latino_Baro_r2005$p45stb == 2] <- 3
Latino_Baro_r2005$trust_parties[Latino_Baro_r2005$p45stb == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Latinobarometro 2004

Latino_Baro_r2004 <- read_sav("Latinobarometro_2004_datos_eng_v2014_06_27.sav")
Latino_Baro_r2004$cowcode <- NA
Latino_Baro_r2004$idenpa1 <- Latino_Baro_r2004$idenpa
Latino_Baro_r2004$idenpa <- NA


Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa1 == 32] <- 'Argentina'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa1 == 68] <- 'Bolivia'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa1 == 76] <- 'Brazil'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa1 == 152] <- 'Chile'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa1 == 170] <- 'Colombia'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa1 == 188] <- 'Costa Rica'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa1 == 214] <- 'Dominican Rep.'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa1 == 218] <- 'Ecuador'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa1 == 222] <- 'El Salvador'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa1 == 320] <- 'Guatemala'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa1 == 340] <- 'Honduras'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa1 == 484] <- 'Mexico'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa1 == 558] <- 'Nicaragua'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa1 == 591] <- 'Panama'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa1 == 600] <- 'Paraguay'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa1 == 604] <- 'Peru'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa1 == 858] <- 'Uruguay'
Latino_Baro_r2004$idenpa[Latino_Baro_r2004$idenpa1 == 862] <- 'Venezuela'

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
Latino_Baro_r2003$idenpa1 <- Latino_Baro_r2003$idenpa
Latino_Baro_r2003$idenpa <- NA

Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa1 == 32] <- 'Argentina'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa1 == 68] <- 'Bolivia'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa1 == 76] <- 'Brazil'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa1 == 152] <- 'Chile'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa1 == 170] <- 'Colombia'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa1 == 188] <- 'Costa Rica'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa1 == 214] <- 'Dominican Rep.'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa1 == 218] <- 'Ecuador'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa1 == 222] <- 'El Salvador'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa1 == 320] <- 'Guatemala'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa1 == 340] <- 'Honduras'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa1 == 484] <- 'Mexico'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa1 == 558] <- 'Nicaragua'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa1 == 591] <- 'Panama'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa1 == 600] <- 'Paraguay'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa1 == 604] <- 'Peru'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa1 == 858] <- 'Uruguay'
Latino_Baro_r2003$idenpa[Latino_Baro_r2003$idenpa1 == 862] <- 'Venezuela'

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
Latino_Baro_r2002$idenpa1 <- Latino_Baro_r2002$idenpa
Latino_Baro_r2002$idenpa <- NA

Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa1 == 32] <- 'Argentina'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa1 == 68] <- 'Bolivia'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa1 == 76] <- 'Brazil'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa1 == 152] <- 'Chile'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa1 == 170] <- 'Colombia'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa1 == 188] <- 'Costa Rica'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa1 == 214] <- 'Dominican Rep.'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa1 == 218] <- 'Ecuador'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa1 == 222] <- 'El Salvador'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa1 == 320] <- 'Guatemala'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa1 == 340] <- 'Honduras'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa1 == 484] <- 'Mexico'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa1 == 558] <- 'Nicaragua'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa1 == 591] <- 'Panama'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa1 == 600] <- 'Paraguay'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa1 == 604] <- 'Peru'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa1 == 858] <- 'Uruguay'
Latino_Baro_r2002$idenpa[Latino_Baro_r2002$idenpa1 == 862] <- 'Venezuela'

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
Latino_Baro_r2001$idenpa1 <- Latino_Baro_r2001$idenpa
Latino_Baro_r2001$idenpa <- NA

Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa1 == 32] <- 'Argentina'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa1 == 68] <- 'Bolivia'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa1 == 76] <- 'Brazil'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa1 == 152] <- 'Chile'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa1 == 170] <- 'Colombia'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa1 == 188] <- 'Costa Rica'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa1 == 214] <- 'Dominican Rep.'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa1 == 218] <- 'Ecuador'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa1 == 222] <- 'El Salvador'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa1 == 320] <- 'Guatemala'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa1 == 340] <- 'Honduras'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa1 == 484] <- 'Mexico'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa1 == 558] <- 'Nicaragua'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa1 == 591] <- 'Panama'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa1 == 600] <- 'Paraguay'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa1 == 604] <- 'Peru'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa1 == 858] <- 'Uruguay'
Latino_Baro_r2001$idenpa[Latino_Baro_r2001$idenpa1 == 862] <- 'Venezuela'

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
Latino_Baro_r2000$idenpa <- NA

Latino_Baro_r2000$idenpa[Latino_Baro_r2000$IDENPA == 32] <- 'Argentina'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$IDENPA == 68] <- 'Bolivia'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$IDENPA == 76] <- 'Brazil'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$IDENPA == 152] <- 'Chile'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$IDENPA == 170] <- 'Colombia'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$IDENPA == 188] <- 'Costa Rica'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$IDENPA == 214] <- 'Dominican Rep.'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$IDENPA == 218] <- 'Ecuador'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$IDENPA == 222] <- 'El Salvador'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$IDENPA == 320] <- 'Guatemala'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$IDENPA == 340] <- 'Honduras'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$IDENPA == 484] <- 'Mexico'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$IDENPA == 558] <- 'Nicaragua'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$IDENPA == 591] <- 'Panama'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$IDENPA == 600] <- 'Paraguay'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$IDENPA == 604] <- 'Peru'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$IDENPA == 858] <- 'Uruguay'
Latino_Baro_r2000$idenpa[Latino_Baro_r2000$IDENPA == 862] <- 'Venezuela'

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
Latino_Baro_r1998$idenpa1 <- Latino_Baro_r1998$idenpa
Latino_Baro_r1998$idenpa <- NA 

Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa1 == 32] <- 'Argentina'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa1 == 68] <- 'Bolivia'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa1 == 76] <- 'Brazil'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa1 == 152] <- 'Chile'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa1 == 170] <- 'Colombia'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa1 == 188] <- 'Costa Rica'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa1 == 214] <- 'Dominican Rep.'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa1 == 218] <- 'Ecuador'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa1 == 222] <- 'El Salvador'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa1 == 320] <- 'Guatemala'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa1 == 340] <- 'Honduras'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa1 == 484] <- 'Mexico'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa1 == 558] <- 'Nicaragua'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa1 == 591] <- 'Panama'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa1 == 600] <- 'Paraguay'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa1 == 604] <- 'Peru'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa1 == 858] <- 'Uruguay'
Latino_Baro_r1998$idenpa[Latino_Baro_r1998$idenpa1 == 862] <- 'Venezuela'

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

#Latinobarometro 1997

Latino_Baro_r1997 <- read_sav("Latinobarometro_1997_datos_english_spss_v2014_06_27.sav")

Latino_Baro_r1997$cowcode <- NA
Latino_Baro_r1997$idenpa1 <- Latino_Baro_r1997$idenpa
Latino_Baro_r1997$idenpa <- NA

Latino_Baro_r1997$idenpa[Latino_Baro_r1997$idenpa1 == 32] <- 'Argentina'
Latino_Baro_r1997$idenpa[Latino_Baro_r1997$idenpa1 == 68] <- 'Bolivia'
Latino_Baro_r1997$idenpa[Latino_Baro_r1997$idenpa1 == 76] <- 'Brazil'
Latino_Baro_r1997$idenpa[Latino_Baro_r1997$idenpa1 == 152] <- 'Chile'
Latino_Baro_r1997$idenpa[Latino_Baro_r1997$idenpa1 == 170] <- 'Colombia'
Latino_Baro_r1997$idenpa[Latino_Baro_r1997$idenpa1 == 188] <- 'Costa Rica'
Latino_Baro_r1997$idenpa[Latino_Baro_r1997$idenpa1 == 214] <- 'Dominican Rep.'
Latino_Baro_r1997$idenpa[Latino_Baro_r1997$idenpa1 == 218] <- 'Ecuador'
Latino_Baro_r1997$idenpa[Latino_Baro_r1997$idenpa1 == 222] <- 'El Salvador'
Latino_Baro_r1997$idenpa[Latino_Baro_r1997$idenpa1 == 320] <- 'Guatemala'
Latino_Baro_r1997$idenpa[Latino_Baro_r1997$idenpa1 == 340] <- 'Honduras'
Latino_Baro_r1997$idenpa[Latino_Baro_r1997$idenpa1 == 484] <- 'Mexico'
Latino_Baro_r1997$idenpa[Latino_Baro_r1997$idenpa1 == 558] <- 'Nicaragua'
Latino_Baro_r1997$idenpa[Latino_Baro_r1997$idenpa1 == 591] <- 'Panama'
Latino_Baro_r1997$idenpa[Latino_Baro_r1997$idenpa1 == 600] <- 'Paraguay'
Latino_Baro_r1997$idenpa[Latino_Baro_r1997$idenpa1 == 604] <- 'Peru'
Latino_Baro_r1997$idenpa[Latino_Baro_r1997$idenpa1 == 858] <- 'Uruguay'
Latino_Baro_r1997$idenpa[Latino_Baro_r1997$idenpa1 == 862] <- 'Venezuela'

Latino_Baro_r1997$cowcode <- countryname(Latino_Baro_r1997$idenpa, destination = 'cowc', warn = TRUE)

#For some reason spain is sampled in this waves. Need to figure out what is going on. 
Latino_Baro_r1997$cowcode[Latino_Baro_r1997$idenpa == 'Dominican Rep.'] <- 'DOM'


Latino_Baro_r1997$country_wave <- NA
Latino_Baro_r1997$wave <- "LATIN97"
library(stringr)
Latino_Baro_r1997$country_wave <- str_c(Latino_Baro_r1997$cowcode, "_", Latino_Baro_r1997$wave)

#LATINOBAROMETRO WAVE 1997 Dependent Variable (high to low code order) 
#Unlike previous survey rounds, this survey ask about confidence 

Latino_Baro_r1997$trust_courts <- NA #Judicial Branch
Latino_Baro_r1997$trust_courts[Latino_Baro_r1997$sp63a == 4] <- 1
Latino_Baro_r1997$trust_courts[Latino_Baro_r1997$sp63a == 3] <- 2
Latino_Baro_r1997$trust_courts[Latino_Baro_r1997$sp63a == 2] <- 3
Latino_Baro_r1997$trust_courts[Latino_Baro_r1997$sp63a == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r1997$trust_police <- NA
Latino_Baro_r1997$trust_police[Latino_Baro_r1997$sp63e == 4] <- 1
Latino_Baro_r1997$trust_police[Latino_Baro_r1997$sp63e == 3] <- 2
Latino_Baro_r1997$trust_police[Latino_Baro_r1997$sp63e == 2] <- 3
Latino_Baro_r1997$trust_police[Latino_Baro_r1997$sp63e == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#This mentions president instead of government. 
Latino_Baro_r1997$trust_president <- NA
Latino_Baro_r1997$trust_president[Latino_Baro_r1997$sp63d == 4] <- 1
Latino_Baro_r1997$trust_president[Latino_Baro_r1997$sp63d == 3] <- 2
Latino_Baro_r1997$trust_president[Latino_Baro_r1997$sp63d == 2] <- 3
Latino_Baro_r1997$trust_president[Latino_Baro_r1997$sp63d == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r1997$trust_parliament <- NA
Latino_Baro_r1997$trust_parliament[Latino_Baro_r1997$sp63f == 4] <- 1 
Latino_Baro_r1997$trust_parliament[Latino_Baro_r1997$sp63f == 3] <- 2
Latino_Baro_r1997$trust_parliament[Latino_Baro_r1997$sp63f == 2] <- 3
Latino_Baro_r1997$trust_parliament[Latino_Baro_r1997$sp63f == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r1997$trust_army <- NA
Latino_Baro_r1997$trust_army[Latino_Baro_r1997$sp63b == 4] <- 1
Latino_Baro_r1997$trust_army[Latino_Baro_r1997$sp63b == 3] <- 2
Latino_Baro_r1997$trust_army[Latino_Baro_r1997$sp63b == 2] <- 3
Latino_Baro_r1997$trust_army[Latino_Baro_r1997$sp63b == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r1997$trust_parties  <- NA
Latino_Baro_r1997$trust_parties[Latino_Baro_r1997$sp63g == 4] <- 1
Latino_Baro_r1997$trust_parties[Latino_Baro_r1997$sp63g == 3] <- 2
Latino_Baro_r1997$trust_parties[Latino_Baro_r1997$sp63g == 2] <- 3
Latino_Baro_r1997$trust_parties[Latino_Baro_r1997$sp63g == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Latinobarometro 1996

Latino_Baro_r1996 <- read_sav("Latinobarometro_1996_datos_english_spss_v2014_06_27.sav")
Latino_Baro_r1996$idenpa <- NA

Latino_Baro_r1996$cowcode <- NA

#Latino_Baro_r1996$idenpa <- Latino_Baro_r1996$IDENPA

Latino_Baro_r1996$idenpa[Latino_Baro_r1996$pais == 32] <- 'Argentina'
Latino_Baro_r1996$idenpa[Latino_Baro_r1996$pais == 68] <- 'Bolivia'
Latino_Baro_r1996$idenpa[Latino_Baro_r1996$pais == 76] <- 'Brazil'
Latino_Baro_r1996$idenpa[Latino_Baro_r1996$pais == 152] <- 'Chile'
Latino_Baro_r1996$idenpa[Latino_Baro_r1996$pais == 170] <- 'Colombia'
Latino_Baro_r1996$idenpa[Latino_Baro_r1996$pais == 188] <- 'Costa Rica'
Latino_Baro_r1996$idenpa[Latino_Baro_r1996$pais == 214] <- 'Dominican Rep.'
Latino_Baro_r1996$idenpa[Latino_Baro_r1996$pais == 218] <- 'Ecuador'
Latino_Baro_r1996$idenpa[Latino_Baro_r1996$pais == 222] <- 'El Salvador'
Latino_Baro_r1996$idenpa[Latino_Baro_r1996$pais == 320] <- 'Guatemala'
Latino_Baro_r1996$idenpa[Latino_Baro_r1996$pais == 340] <- 'Honduras'
Latino_Baro_r1996$idenpa[Latino_Baro_r1996$pais == 484] <- 'Mexico'
Latino_Baro_r1996$idenpa[Latino_Baro_r1996$pais == 558] <- 'Nicaragua'
Latino_Baro_r1996$idenpa[Latino_Baro_r1996$pais == 591] <- 'Panama'
Latino_Baro_r1996$idenpa[Latino_Baro_r1996$pais == 600] <- 'Paraguay'
Latino_Baro_r1996$idenpa[Latino_Baro_r1996$pais == 604] <- 'Peru'
Latino_Baro_r1996$idenpa[Latino_Baro_r1996$pais == 858] <- 'Uruguay'
Latino_Baro_r1996$idenpa[Latino_Baro_r1996$pais == 862] <- 'Venezuela'

Latino_Baro_r1996$cowcode <- countryname(Latino_Baro_r1996$idenpa, destination = 'cowc', warn = TRUE)

#For some reason spain is sampled in this waves. Need to figure out what is going on. 
Latino_Baro_r1996$cowcode[Latino_Baro_r1996$idenpa == 'Dominican Rep.'] <- 'DOM'


Latino_Baro_r1996$country_wave <- NA
Latino_Baro_r1996$wave <- "LATIN96"
library(stringr)
Latino_Baro_r1996$country_wave <- str_c(Latino_Baro_r1996$cowcode, "_", Latino_Baro_r1996$wave)

#LATINOBAROMETRO WAVE 1996 Dependent Variable (high to low code order) 
#Unlike previous survey rounds, this survey ask about confidence 

Latino_Baro_r1996$trust_courts <- NA #Judicial Branch
Latino_Baro_r1996$trust_courts[Latino_Baro_r1996$p33d == 4] <- 1
Latino_Baro_r1996$trust_courts[Latino_Baro_r1996$p33d == 3] <- 2
Latino_Baro_r1996$trust_courts[Latino_Baro_r1996$p33d == 2] <- 3
Latino_Baro_r1996$trust_courts[Latino_Baro_r1996$p33d == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r1996$trust_police <- NA
Latino_Baro_r1996$trust_police[Latino_Baro_r1996$p33h == 4] <- 1
Latino_Baro_r1996$trust_police[Latino_Baro_r1996$p33h == 3] <- 2
Latino_Baro_r1996$trust_police[Latino_Baro_r1996$p33h == 2] <- 3
Latino_Baro_r1996$trust_police[Latino_Baro_r1996$p33h == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#This mentions president instead of government. 
Latino_Baro_r1996$trust_president <- NA
Latino_Baro_r1996$trust_president[Latino_Baro_r1996$p33m == 4] <- 1
Latino_Baro_r1996$trust_president[Latino_Baro_r1996$p33m == 3] <- 2
Latino_Baro_r1996$trust_president[Latino_Baro_r1996$p33m == 2] <- 3
Latino_Baro_r1996$trust_president[Latino_Baro_r1996$p33m == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r1996$trust_parliament <- NA
Latino_Baro_r1996$trust_parliament[Latino_Baro_r1996$p33i == 4] <- 1 
Latino_Baro_r1996$trust_parliament[Latino_Baro_r1996$p33i == 3] <- 2
Latino_Baro_r1996$trust_parliament[Latino_Baro_r1996$p33i == 2] <- 3
Latino_Baro_r1996$trust_parliament[Latino_Baro_r1996$p33i == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r1996$trust_army <- NA
Latino_Baro_r1996$trust_army[Latino_Baro_r1996$p33b == 4] <- 1
Latino_Baro_r1996$trust_army[Latino_Baro_r1996$p33b == 3] <- 2
Latino_Baro_r1996$trust_army[Latino_Baro_r1996$p33b == 2] <- 3
Latino_Baro_r1996$trust_army[Latino_Baro_r1996$p33b == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r1996$trust_parties  <- NA
Latino_Baro_r1996$trust_parties[Latino_Baro_r1996$p33j == 4] <- 1
Latino_Baro_r1996$trust_parties[Latino_Baro_r1996$p33j == 3] <- 2
Latino_Baro_r1996$trust_parties[Latino_Baro_r1996$p33j == 2] <- 3
Latino_Baro_r1996$trust_parties[Latino_Baro_r1996$p33j == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Latinobarometro 1995

Latino_Baro_r1995 <- read_sav("Latinobarometro_1995_data_english_spss_v2014_06_27.sav")
Latino_Baro_r1995$cowcode <- NA
Latino_Baro_r1995$idenpa <- NA

Latino_Baro_r1995$idenpa[Latino_Baro_r1995$pais == 32] <- 'Argentina'
Latino_Baro_r1995$idenpa[Latino_Baro_r1995$pais == 68] <- 'Bolivia'
Latino_Baro_r1995$idenpa[Latino_Baro_r1995$pais == 76] <- 'Brazil'
Latino_Baro_r1995$idenpa[Latino_Baro_r1995$pais == 152] <- 'Chile'
Latino_Baro_r1995$idenpa[Latino_Baro_r1995$pais == 170] <- 'Colombia'
Latino_Baro_r1995$idenpa[Latino_Baro_r1995$pais == 188] <- 'Costa Rica'
Latino_Baro_r1995$idenpa[Latino_Baro_r1995$pais == 214] <- 'Dominican Rep.'
Latino_Baro_r1995$idenpa[Latino_Baro_r1995$pais == 218] <- 'Ecuador'
Latino_Baro_r1995$idenpa[Latino_Baro_r1995$pais == 222] <- 'El Salvador'
Latino_Baro_r1995$idenpa[Latino_Baro_r1995$pais == 320] <- 'Guatemala'
Latino_Baro_r1995$idenpa[Latino_Baro_r1995$pais == 340] <- 'Honduras'
Latino_Baro_r1995$idenpa[Latino_Baro_r1995$pais == 484] <- 'Mexico'
Latino_Baro_r1995$idenpa[Latino_Baro_r1995$pais == 558] <- 'Nicaragua'
Latino_Baro_r1995$idenpa[Latino_Baro_r1995$pais == 591] <- 'Panama'
Latino_Baro_r1995$idenpa[Latino_Baro_r1995$pais == 600] <- 'Paraguay'
Latino_Baro_r1995$idenpa[Latino_Baro_r1995$pais == 604] <- 'Peru'
Latino_Baro_r1995$idenpa[Latino_Baro_r1995$pais == 858] <- 'Uruguay'
Latino_Baro_r1995$idenpa[Latino_Baro_r1995$pais == 862] <- 'Venezuela'

Latino_Baro_r1995$cowcode <- countryname(Latino_Baro_r1995$idenpa, destination = 'cowc', warn = TRUE)

#For some reason spain is sampled in this waves. Need to figure out what is going on. 
Latino_Baro_r1995$cowcode[Latino_Baro_r1995$idenpa == 'Dominican Rep.'] <- 'DOM'


Latino_Baro_r1995$country_wave <- NA
Latino_Baro_r1995$wave <- "LATIN95"
library(stringr)
Latino_Baro_r1995$country_wave <- str_c(Latino_Baro_r1995$cowcode, "_", Latino_Baro_r1995$wave)

#LATINOBAROMETRO WAVE 1995 Dependent Variable (high to low code order) 
#Unlike previous survey rounds, this survey ask about confidence 

Latino_Baro_r1995$trust_courts <- NA #Judicial Branch
Latino_Baro_r1995$trust_courts[Latino_Baro_r1995$p27d == 4] <- 1
Latino_Baro_r1995$trust_courts[Latino_Baro_r1995$p27d == 3] <- 2
Latino_Baro_r1995$trust_courts[Latino_Baro_r1995$p27d == 2] <- 3
Latino_Baro_r1995$trust_courts[Latino_Baro_r1995$p27d == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r1995$trust_police <- NA
Latino_Baro_r1995$trust_police[Latino_Baro_r1995$p27h == 4] <- 1
Latino_Baro_r1995$trust_police[Latino_Baro_r1995$p27h == 3] <- 2
Latino_Baro_r1995$trust_police[Latino_Baro_r1995$p27h == 2] <- 3
Latino_Baro_r1995$trust_police[Latino_Baro_r1995$p27h == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#This mentions president instead of government. 
Latino_Baro_r1995$trust_president <- NA
Latino_Baro_r1995$trust_president[Latino_Baro_r1995$p27m == 4] <- 1
Latino_Baro_r1995$trust_president[Latino_Baro_r1995$p27m == 3] <- 2
Latino_Baro_r1995$trust_president[Latino_Baro_r1995$p27m == 2] <- 3
Latino_Baro_r1995$trust_president[Latino_Baro_r1995$p27m == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r1995$trust_parliament <- NA
Latino_Baro_r1995$trust_parliament[Latino_Baro_r1995$p27i == 4] <- 1 
Latino_Baro_r1995$trust_parliament[Latino_Baro_r1995$p27i == 3] <- 2
Latino_Baro_r1995$trust_parliament[Latino_Baro_r1995$p27i == 2] <- 3
Latino_Baro_r1995$trust_parliament[Latino_Baro_r1995$p27i == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r1995$trust_army <- NA
Latino_Baro_r1995$trust_army[Latino_Baro_r1995$p27b == 4] <- 1
Latino_Baro_r1995$trust_army[Latino_Baro_r1995$p27b == 3] <- 2
Latino_Baro_r1995$trust_army[Latino_Baro_r1995$p27b == 2] <- 3
Latino_Baro_r1995$trust_army[Latino_Baro_r1995$p27b == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

Latino_Baro_r1995$trust_parties  <- NA
Latino_Baro_r1995$trust_parties[Latino_Baro_r1995$p27j == 4] <- 1
Latino_Baro_r1995$trust_parties[Latino_Baro_r1995$p27j == 3] <- 2
Latino_Baro_r1995$trust_parties[Latino_Baro_r1995$p27j == 2] <- 3
Latino_Baro_r1995$trust_parties[Latino_Baro_r1995$p27j == 1] <- 4 #this implies that "do not know," "refused to answer", and "Missing data" are coded as missing.   

#Rbind data for factor analysis after setting control because it requires each data to have the same number of columns. 



#CSES Data

cses_imd <- read_dta("cses_imd.dta")

#Append data to conduct confirmatory factor analysis:

  #Items that were used by Mauk (Government, Parliament, Police, Army) based on coverage in my data it seem that I can include courts. 


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
  merged_r3_data$winner_party[merged_r3_data$q86 == 997] <- NA 
  merged_r3_data$winner_party[merged_r3_data$q86 == 998] <- NA 

  merged_r3_data$didnt_party <- 0
  merged_r3_data$didnt_party[merged_r3_data$q85 == 0] <- 1
  merged_r3_data$didnt_party[merged_r3_data$q85 == 8] <- NA
  merged_r3_data$didnt_party[merged_r3_data$q85 == 9] <- NA
  merged_r3_data$didnt_party[merged_r3_data$q85 == -1] <- NA
  

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

#Refused to and I don't know are dropped. They did not answer the question. 
#merged_r3_data$winner[merged_r3_data$q99 == 998] <- NA 
#merged_r3_data$winner[merged_r3_data$q99 == 999] <- NA 

#Non Voter 
#merged_r3_data$didnt_vote <- 0
#merged_r3_data$didnt_vote[merged_r3_data$q99 == 997] <- 1

#Loser
#merged_r3_data$loser <- 1 
merged_r3_data$loser[merged_r3_data$winner == 0 & merged_r3_data$didnt_vote == 0 & merged_r3_data$country == 2] <- 1

#Close Party Winner/Loser 
#merged_r3_data$winner_party <- 0 
merged_r3_data$winner_party[merged_r3_data$q86 == 142] <- 1 
#merged_r3_data$winner_party[merged_r3_data$q86 == 997] <- NA 
#merged_r3_data$winner_party[merged_r3_data$q86 == 998] <- NA 

#merged_r3_data$loser_party <- 1 
#merged_r3_data$loser_party[merged_r3_data$winner_party == 1] <- 0

#merged_r3_data$didnt_party <- 0
#merged_r3_data$didnt_party[merged_r3_data$q85 == 0] <- 1
#merged_r3_data$didnt_party[merged_r3_data$q85 == 8] <- NA
#merged_r3_data$didnt_party[merged_r3_data$q85 == 9] <- NA
#merged_r3_data$didnt_party[merged_r3_data$q85 == -1] <- NA

#Party Matching
merged_r3_data$v2paid <- NA 
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


##      Cape Verde is dropped because there is not ethnic variation in the EPR dataset.  

##      Ghana

merged_r3_data$numparties[merged_r3_data$country == 4] <- 4  
merged_r3_data$numgroup[merged_r3_data$country == 4] <- 5
merged_r3_data$groupsize1[merged_r3_data$country == 4] <- .2179487
merged_r3_data$groupsize2[merged_r3_data$country == 4] <- .2039627
merged_r3_data$groupsize3[merged_r3_data$country == 4] <- .1561772
merged_r3_data$groupsize4[merged_r3_data$country == 4] <- .0582751
merged_r3_data$groupsize5[merged_r3_data$country == 4] <- .3636364
merged_r3_data$VF[merged_r3_data$country == 4] <- .2001006
merged_r3_data$VP[merged_r3_data$country == 4] <- .1833669
merged_r3_data$PVF[merged_r3_data$country == 4] <- .1305456
merged_r3_data$PVP[merged_r3_data$country == 4] <- .2291155

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

#Refused to and I don't know are dropped. They did not answer the question. 
#merged_r3_data$winner[merged_r3_data$q99 == 998] <- NA 
#merged_r3_data$winner[merged_r3_data$q99 == 999] <- NA 

#Non Voter 
#merged_r3_data$didnt_vote <- 0
#merged_r3_data$didnt_vote[merged_r3_data$q99 == 997] <- 1

#Loser
#merged_r3_data$loser <- 0 
merged_r3_data$loser[merged_r3_data$winner == 0 & merged_r3_data$didnt_vote == 0 & merged_r3_data$country == 4] <- 1

#Close Party Winner/Loser 
#merged_r3_data$winner_party <- 0 
merged_r3_data$winner_party[merged_r3_data$q86 == 142] <- 1 
#merged_r3_data$winner_party[merged_r3_data$q86 == 997] <- NA 
#merged_r3_data$winner_party[merged_r3_data$q86 == 998] <- NA 

#merged_r3_data$loser_party <- 1 
#merged_r3_data$loser_party[merged_r3_data$winner_party == 1] <- 0

#merged_r3_data$didnt_party <- 0
#merged_r3_data$didnt_party[merged_r3_data$q85 == 0] <- 1
#merged_r3_data$didnt_party[merged_r3_data$q85 == 8] <- NA
#merged_r3_data$didnt_party[merged_r3_data$q85 == 9] <- NA
#merged_r3_data$didnt_party[merged_r3_data$q85 == -1] <- NA

#Party Matching Vote
merged_r3_data$v2paid[merged_r3_data$q99 == 140] <- NA 
merged_r3_data$v2paid[merged_r3_data$q99 == 141] <- 2337 #BCP
merged_r3_data$v2paid[merged_r3_data$q99 == 142] <- 2301 #BDP
merged_r3_data$v2paid[merged_r3_data$q99 == 143] <- 2336 #BNF
merged_r3_data$v2paid[merged_r3_data$q99 == 144] <- 3631 #BIP
merged_r3_data$v2paid[merged_r3_data$q99 == 148] <- 3632 #BPP

#Party Matching Close
merged_r3_data$v2paid_close[merged_r3_data$q86 == 140] <- NA 
merged_r3_data$v2paid_close[merged_r3_data$q86 == 141] <- 2337 #BCP
merged_r3_data$v2paid_close[merged_r3_data$q86 == 142] <- 2301 #BDP
merged_r3_data$v2paid_close[merged_r3_data$q86 == 143] <- 2336 #BNF
merged_r3_data$v2paid_close[merged_r3_data$q86 == 144] <- 3631 #BIP
merged_r3_data$v2paid_close[merged_r3_data$q86 == 148] <- 3632 #BPP

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
merged_r3_data$winner[merged_r3_data$q99 == 293] <- 1

#Refused to and I don't know are dropped. They did not answer the question.
merged_r3_data$winner[merged_r3_data$q99 == -1] <- NA
merged_r3_data$winner[merged_r3_data$q99 == 998] <- NA 
merged_r3_data$winner[merged_r3_data$q99 == 999] <- NA 

#Non Voter 
#merged_r3_data$didnt_vote <- 0
#merged_r3_data$didnt_vote[merged_r3_data$q99 == 997] <- 1

#Loser
#merged_r3_data$loser <- 0
merged_r3_data$loser[merged_r3_data$winner == 0 & merged_r3_data$didnt_vote == 0 & merged_r3_data$country == 9] <- 1

#Close Party Winner/Loser 
#merged_r3_data$winner_party <- 0 
merged_r3_data$winner_party[merged_r3_data$q86 == 293] <- 1 
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

merged_r3_data$v2paid_close[merged_r3_data$q86 == -1] <- NA 
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


##          Mozambique not included because languages are the main identifier instead of ethnic group. 

#merged_r3_data$numparties[merged_r3_data$country == 10] <-     
#merged_r3_data$numgroup[merged_r3_data$country == 10] <- 
#merged_r3_data$groupsize1[merged_r3_data$country == 10] <-   
#merged_r3_data$groupsize2[merged_r3_data$country == 10] <- 
#merged_r3_data$groupsize3[merged_r3_data$country == 9] <- 
#merged_r3_data$VF[merged_r3_data$country == 10] <- 
#merged_r3_data$VP[merged_r3_data$country == 10] <- 
#merged_r3_data$PVF[merged_r3_data$country == 10] <- 
#merged_r3_data$PVP[merged_r3_data$country == 10] <- 

#merged_r3_data$to[merged_r3_data$country == 10] <- 2014

#Interview June 2005
#Voter Winner and Loser 
merged_r3_data$winner[merged_r3_data$q99 == 300] <- 1

#Refused to and I don't know are dropped. They did not answer the question.
merged_r3_data$winner[merged_r3_data$q99 == -1] <- NA
merged_r3_data$winner[merged_r3_data$q99 == 998] <- NA 
merged_r3_data$winner[merged_r3_data$q99 == 999] <- NA 

#Non Voter 
#merged_r3_data$didnt_vote <- 0
#merged_r3_data$didnt_vote[merged_r3_data$q99 == 997] <- 1

#Loser
#merged_r3_data$loser <- 0
merged_r3_data$loser[merged_r3_data$winner == 0 & merged_r3_data$didnt_vote == 0 & merged_r3_data$country == 10] <- 1 

#Close Party Winner/Loser 
#merged_r3_data$winner_party <- 0 
merged_r3_data$winner_party[merged_r3_data$q86 == 300] <- 1 
#merged_r3_data$winner_party[merged_r3_data$q86 == -1] <- NA 
#merged_r3_data$winner_party[merged_r3_data$q86 == 997] <- NA 
#merged_r3_data$winner_party[merged_r3_data$q86 == 998] <- NA 

#merged_r3_data$loser_party <- 1 
#merged_r3_data$loser_party[merged_r3_data$winner_party == 1] <- 0

#merged_r3_data$nonpartisan <- 0
#merged_r3_data$nonpartisan[merged_r3_data$q85 == 0] <- 1
#merged_r3_data$nonpartisan[merged_r3_data$q85 == 8] <- NA
#merged_r3_data$nonpartisan[merged_r3_data$q85 == 9] <- NA

#merged_r3_data$didnt_party <- 0
#merged_r3_data$didnt_party[merged_r3_data$q85 == 0] <- 1
#merged_r3_data$didnt_party[merged_r3_data$q85 == 8] <- NA
#merged_r3_data$didnt_party[merged_r3_data$q85 == 9] <- NA
#merged_r3_data$didnt_party[merged_r3_data$q85 == -1] <- NA

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

##          South Africa
#Interview Feb 06
#Voter Winner and Loser 
merged_r3_data$winner[merged_r3_data$q99 == 102] <- 1

#Loser
merged_r3_data$loser[merged_r3_data$winner == 0 & merged_r3_data$didnt_vote == 0 & merged_r3_data$country == 14] <- 1

#Close Party Winner/Loser 
merged_r3_data$winner_party[merged_r3_data$q86 == 102] <- 1 

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

##        Kenya
#Oct-Nov 08 Interview
#Voter Winner and Loser 
merged_r4_data$winner[merged_r4_data$Q97 == 305] <- 1 

#Loser
merged_r4_data$loser[merged_r4_data$winner == 0 & merged_r4_data$didnt_vote == 0 & merged_r4_data$COUNTRY == 6] <- 1

#Close Party Winner/Loser 
merged_r4_data$winner_party[merged_r4_data$Q86 == 305] <- 1 

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

##        Lesotho Dropped No Ethnic Groups

##        Liberia 
#DEC - FEB 08-09 Interview
#Voter Winner and Loser 
merged_r4_data$winner[merged_r4_data$Q97 == 409] <- 1 

#Loser
merged_r4_data$loser[merged_r4_data$winner == 0 & merged_r4_data$didnt_vote == 0 & merged_r4_data$COUNTRY == 8] <- 1

#Close Party Winner/Loser 
merged_r4_data$winner_party[merged_r4_data$Q86 == 409] <- 1 

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

## Malawi
#Interview Oct 08
#Voter Winner and Loser 
merged_r4_data$winner[merged_r4_data$Q97 == 461] <- 1 

#Loser
merged_r4_data$loser[merged_r4_data$winner == 0 & merged_r4_data$didnt_vote == 0 & merged_r4_data$COUNTRY == 10] <- 1

#Close Party Winner/Loser 
merged_r4_data$winner_party[merged_r4_data$Q86 == 461] <- 1 

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

## Mali
#Interview DEC 08
#Voter Winner and Loser 
merged_r4_data$winner[merged_r4_data$Q97 == 515] <- 1 

#Loser
merged_r4_data$loser[merged_r4_data$winner == 0 & merged_r4_data$didnt_vote == 0 & merged_r4_data$COUNTRY == 11] <- 1

#Close Party Winner/Loser 
merged_r4_data$winner_party[merged_r4_data$Q86 == 515] <- 1 

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


#____________________________________________________________________________________________
#__________________________WAVE 5 AFRO AFRO5 ________________________________________
#____________________________________________________________________________________________

#Benin 2
#int date: JUN-JUL/12

merged_r5_data$winner <- 0
merged_r5_data$winner[merged_r5_data$Q99 == 100] <- 1 #BDP

#Refused to and I don't know are dropped. They did not answer the question.
merged_r5_data$winner[merged_r5_data$Q99 == -1] <- NA
merged_r5_data$winner[merged_r5_data$Q99 == 9998] <- NA 
merged_r5_data$winner[merged_r5_data$Q99 == 9999] <- NA 

#Non Voter 
merged_r5_data$didnt_vote <- 0
merged_r5_data$didnt_vote[merged_r5_data$Q99 == 997] <- 1

#Loser
merged_r5_data$loser <- 0 
merged_r5_data$loser[merged_r5_data$winner == 0 & merged_r5_data$didnt_vote == 0 & merged_r5_data$COUNTRY == 1] <- 1

#Close Party Winner/Loser 
merged_r5_data$winner_party <- 0 
merged_r5_data$winner_party[merged_r5_data$Q89B == 100] <- 1 
merged_r5_data$winner_party[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9997] <- 0 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9995] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9998] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9999] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 8] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == -1] <- NA 

merged_r5_data$loser_party <- 1 
merged_r5_data$loser_party[merged_r5_data$winner_party == 1] <- 0

merged_r5_data$nonpartisan <- 0
merged_r5_data$nonpartisan[merged_r5_data$Q89A == 0] <- 1
merged_r5_data$nonpartisan[merged_r5_data$Q89A == 8] <- NA
merged_r5_data$nonpartisan[merged_r5_data$Q89A == 9] <- NA

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

#Botswana 2
#int date: JUN-JUL/12

merged_r5_data$winner <- 0
merged_r5_data$winner[merged_r5_data$Q99 == 141] <- 1 #BDP

#Refused to and I don't know are dropped. They did not answer the question.
merged_r5_data$winner[merged_r5_data$Q99 == -1] <- NA
merged_r5_data$winner[merged_r5_data$Q99 == 9998] <- NA 
merged_r5_data$winner[merged_r5_data$Q99 == 9999] <- NA 

#Non Voter 
merged_r5_data$didnt_vote <- 0
merged_r5_data$didnt_vote[merged_r5_data$Q99 == 997] <- 1

#Loser
merged_r5_data$loser <- 0 
merged_r5_data$loser[merged_r5_data$winner == 0 & merged_r5_data$didnt_vote == 0 & merged_r5_data$COUNTRY == 2] <- 1

#Close Party Winner/Loser 
merged_r5_data$winner_party <- 0 
merged_r5_data$winner_party[merged_r5_data$Q89B == 141] <- 1 
merged_r5_data$winner_party[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9997] <- 0 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9995] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9998] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9999] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 8] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == -1] <- NA 

merged_r5_data$loser_party <- 1 
merged_r5_data$loser_party[merged_r5_data$winner_party == 1] <- 0

merged_r5_data$nonpartisan <- 0
merged_r5_data$nonpartisan[merged_r5_data$Q89A == 0] <- 1
merged_r5_data$nonpartisan[merged_r5_data$Q89A == 8] <- NA
merged_r5_data$nonpartisan[merged_r5_data$Q89A == 9] <- NA

merged_r5_data$didnt_party <- 0
merged_r5_data$didnt_party[merged_r5_data$Q89A == 0] <- 1
merged_r5_data$didnt_party[merged_r5_data$Q89A == 8] <- NA
merged_r5_data$didnt_party[merged_r5_data$Q89A == 9] <- NA
merged_r5_data$didnt_party[merged_r5_data$Q89A == -1] <- NA

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

#Burkina 3
#int date: DEC/12

merged_r5_data$winner <- 0
merged_r5_data$winner[merged_r5_data$Q99 == 181] <- 1 #BDP

#Refused to and I don't know are dropped. They did not answer the question.
merged_r5_data$winner[merged_r5_data$Q99 == -1] <- NA
merged_r5_data$winner[merged_r5_data$Q99 == 9998] <- NA 
merged_r5_data$winner[merged_r5_data$Q99 == 9999] <- NA 

#Non Voter 
merged_r5_data$didnt_vote <- 0
merged_r5_data$didnt_vote[merged_r5_data$Q99 == 997] <- 1

#Loser
merged_r5_data$loser <- 0 
merged_r5_data$loser[merged_r5_data$winner == 0 & merged_r5_data$didnt_vote == 0 & merged_r5_data$COUNTRY == 3] <- 1

#Close Party Winner/Loser 
merged_r5_data$winner_party <- 0 
merged_r5_data$winner_party[merged_r5_data$Q89B == 181] <- 1 
merged_r5_data$winner_party[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9997] <- 0 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9995] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9998] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9999] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 8] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == -1] <- NA 

merged_r5_data$loser_party <- 1 
merged_r5_data$loser_party[merged_r5_data$winner_party == 1] <- 0

merged_r5_data$nonpartisan <- 0
merged_r5_data$nonpartisan[merged_r5_data$Q89A == 0] <- 1
merged_r5_data$nonpartisan[merged_r5_data$Q89A == 8] <- NA
merged_r5_data$nonpartisan[merged_r5_data$Q89A == 9] <- NA

merged_r5_data$didnt_party <- 0
merged_r5_data$didnt_party[merged_r5_data$Q89A == 0] <- 1
merged_r5_data$didnt_party[merged_r5_data$Q89A == 8] <- NA
merged_r5_data$didnt_party[merged_r5_data$Q89A == 9] <- NA
merged_r5_data$didnt_party[merged_r5_data$Q89A == -1] <- NA

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

merged_r5_data$winner <- 0
merged_r5_data$winner[merged_r5_data$Q99 == 261] <- 1 #NDC Looking at 2008 elections because 2012 election was held in Dec. 

#Refused to and I don't know are dropped. They did not answer the question.
merged_r5_data$winner[merged_r5_data$Q99 == -1] <- NA
merged_r5_data$winner[merged_r5_data$Q99 == 9998] <- NA 
merged_r5_data$winner[merged_r5_data$Q99 == 9999] <- NA 

#Non Voter 
merged_r5_data$didnt_vote <- 0
merged_r5_data$didnt_vote[merged_r5_data$Q99 == 997] <- 1

#Loser
merged_r5_data$loser <- 0 
merged_r5_data$loser[merged_r5_data$winner == 0 & merged_r5_data$didnt_vote == 0 & merged_r5_data$COUNTRY == 5] <- 1

#Close Party Winner/Loser 
merged_r5_data$winner_party <- 0 
merged_r5_data$winner_party[merged_r5_data$Q89B == 261] <- 1 
merged_r5_data$winner_party[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9997] <- 0 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9995] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9998] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9999] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 8] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == -1] <- NA 

merged_r5_data$loser_party <- 1 
merged_r5_data$loser_party[merged_r5_data$winner_party == 1] <- 0

merged_r5_data$nonpartisan <- 0
merged_r5_data$nonpartisan[merged_r5_data$Q89A == 0] <- 1
merged_r5_data$nonpartisan[merged_r5_data$Q89A == 8] <- NA
merged_r5_data$nonpartisan[merged_r5_data$Q89A == 9] <- NA

merged_r5_data$didnt_party <- 0
merged_r5_data$didnt_party[merged_r5_data$Q89A == 0] <- 1
merged_r5_data$didnt_party[merged_r5_data$Q89A == 8] <- NA
merged_r5_data$didnt_party[merged_r5_data$Q89A == 9] <- NA
merged_r5_data$didnt_party[merged_r5_data$Q89A == -1] <- NA

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

#Kenya 6 
#int date: NOV/11

merged_r5_data$winner <- 0
merged_r5_data$winner[merged_r5_data$Q99 == 302] <- 1 #NDC Looking at 2008 elections because 2012 election was held in Dec. 

#Refused to and I don't know are dropped. They did not answer the question.
merged_r5_data$winner[merged_r5_data$Q99 == -1] <- NA
merged_r5_data$winner[merged_r5_data$Q99 == 9998] <- NA 
merged_r5_data$winner[merged_r5_data$Q99 == 9999] <- NA 

#Non Voter 
merged_r5_data$didnt_vote <- 0
merged_r5_data$didnt_vote[merged_r5_data$Q99 == 997] <- 1

#Loser
merged_r5_data$loser <- 0 
merged_r5_data$loser[merged_r5_data$winner == 0 & merged_r5_data$didnt_vote == 0 & merged_r5_data$COUNTRY == 6] <- 1

#Close Party Winner/Loser 
merged_r5_data$winner_party <- 0 
merged_r5_data$winner_party[merged_r5_data$Q89B == 302] <- 1 
merged_r5_data$winner_party[merged_r5_data$Q89B == -1] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9997] <- 0 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9995] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9998] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9999] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 9] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == 8] <- NA 
merged_r5_data$winner_party[merged_r5_data$Q89B == -1] <- NA 

merged_r5_data$loser_party <- 1 
merged_r5_data$loser_party[merged_r5_data$winner_party == 1] <- 0

merged_r5_data$nonpartisan <- 0
merged_r5_data$nonpartisan[merged_r5_data$Q89A == 0] <- 1
merged_r5_data$nonpartisan[merged_r5_data$Q89A == 8] <- NA
merged_r5_data$nonpartisan[merged_r5_data$Q89A == 9] <- NA

merged_r5_data$didnt_party <- 0
merged_r5_data$didnt_party[merged_r5_data$Q89A == 0] <- 1
merged_r5_data$didnt_party[merged_r5_data$Q89A == 8] <- NA
merged_r5_data$didnt_party[merged_r5_data$Q89A == 9] <- NA
merged_r5_data$didnt_party[merged_r5_data$Q89A == -1] <- NA

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







