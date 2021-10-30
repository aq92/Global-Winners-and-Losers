
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




