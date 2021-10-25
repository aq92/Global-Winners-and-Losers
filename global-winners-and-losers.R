
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
merged_r1_data$country_wave <- append(merged_r1_data$cowcode, 1)
  merged_r1_data$cowcode + 1 #BA39aaaaaaaaaaaaaaaa



#AFROBAROMETER DEPENDENT VARIABLE



