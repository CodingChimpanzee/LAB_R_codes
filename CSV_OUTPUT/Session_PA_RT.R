# See phasic alertness RT in session period

#import library
library(data.table)
setwd("C:/Users/Biocomputing/Documents")

#import files
S1_N <- list.files("CSV_DATA/Session_1_N")
S1_PPC <- list.files("CSV_DATA/Session_1_PPC")

S2_N <- list.files("CSV_DATA/Session_2_N")
S2_PPC <- list.files("CSV_DATA/Session_2_PPC")

S3_N <- list.files("CSV_DATA/Session_3_N")
S3_PPC <- list.files("CSV_DATA/Session_3_PPC")

S4_N <- list.files("CSV_DATA/Session_4_N")
S4_PPC <- list.files("CSV_DATA/Session_4_PPC")

S5_N <- list.files("CSV_DATA/Session_5_N")
S5_PPC <- list.files("CSV_DATA/Session_5_PPC")

S6_N <- list.files("CSV_DATA/Session_6_N")
S6_PPC <- list.files("CSV_DATA/Session_6_PPC")

#Phasic Alertness tendency

#Total PA value in Session
PAS <- NULL

#PPC tDCS PA RT value in Session
PAS_PPC <- NULL

#Sham tDCS PA RT value in Session
PAS_N <- NULL


#------------------------------------------------------------------------------#
# For Session 1
S1_PART_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_1_N")
for(file in S1_N){
  temp <- fread(file, header=T)
  temp <- (temp)[(PracStimulus.ACC==1)&(Correct!="SPACE"),
                 .(mean_by_warn_sound = mean(PracStimulus.RT)),
                 by = Warnsound]
  S1_PART_N <- rbind(S1_PART_N, temp)
}
PAS <- rbind(PAS, S1_PART_N)
PAS_N <- rbind(PAS_N, S1_PART_N)


S1_PART_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_1_PPC")
for(file in S1_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[(PracStimulus.ACC==1)&(Correct!="SPACE"),
                 .(mean_by_warn_sound = mean(PracStimulus.RT)),
                 by = Warnsound]
  S1_PART_PPC <- rbind(S1_PART_PPC, temp)
}
PAS <- rbind(PAS, S1_PART_PPC)
PAS_PPC <- rbind(PAS_PPC, S1_PART_PPC)
#------------------------------------------------------------------------------#
# For Session 2
S2_PART_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_2_N")
for(file in S2_N){
  temp <- fread(file, header=T)
  temp <- (temp)[(PracStimulus.ACC==1)&(Correct!="SPACE"),
                 .(mean_by_warn_sound = mean(PracStimulus.RT)),
                 by = Warnsound]
  S2_PART_N <- rbind(S2_PART_N, temp)
}
PAS <- rbind(PAS, S2_PART_N)
PAS_N <- rbind(PAS_N, S2_PART_N)


S2_PART_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_2_PPC")
for(file in S2_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[(PracStimulus.ACC==1)&(Correct!="SPACE"),
                 .(mean_by_warn_sound = mean(PracStimulus.RT)),
                 by = Warnsound]
  S2_PART_PPC <- rbind(S2_PART_PPC, temp)
}
PAS <- rbind(PAS, S2_PART_PPC)
PAS_PPC <- rbind(PAS_PPC, S2_PART_PPC)
#------------------------------------------------------------------------------#
# For Session 3
S3_PART_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_3_N")
for(file in S3_N){
  temp <- fread(file, header=T)
  temp <- (temp)[(PracStimulus.ACC==1)&(Correct!="SPACE"),
                 .(mean_by_warn_sound = mean(PracStimulus.RT)),
                 by = Warnsound]
  S3_PART_N <- rbind(S3_PART_N, temp)
}
PAS <- rbind(PAS, S3_PART_N)
PAS_N <- rbind(PAS_N, S3_PART_N)


S3_PART_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_3_PPC")
for(file in S3_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[(PracStimulus.ACC==1)&(Correct!="SPACE"),
                 .(mean_by_warn_sound = mean(PracStimulus.RT)),
                 by = Warnsound]
  S3_PART_PPC <- rbind(S3_PART_PPC, temp)
}
PAS <- rbind(PAS, S3_PART_PPC)
PAS_PPC <- rbind(PAS_PPC, S3_PART_PPC)
#------------------------------------------------------------------------------#
# For Session 4
S4_PART_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_4_N")
for(file in S4_N){
  temp <- fread(file, header=T)
  temp <- (temp)[(PracStimulus.ACC==1)&(Correct!="SPACE"),
                 .(mean_by_warn_sound = mean(PracStimulus.RT)),
                 by = Warnsound]
  S4_PART_N <- rbind(S4_PART_N, temp)
}
PAS <- rbind(PAS, S4_PART_N)
PAS_N <- rbind(PAS_N, S4_PART_N)


S4_PART_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_4_PPC")
for(file in S4_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[(PracStimulus.ACC==1)&(Correct!="SPACE"),
                 .(mean_by_warn_sound = mean(PracStimulus.RT)),
                 by = Warnsound]
  S4_PART_PPC <- rbind(S4_PART_PPC, temp)
}
PAS <- rbind(PAS, S4_PART_PPC)
PAS_PPC <- rbind(PAS_PPC, S4_PART_PPC)
#------------------------------------------------------------------------------#
# For Session 5
S5_PART_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_5_N")
for(file in S5_N){
  temp <- fread(file, header=T)
  temp <- (temp)[(PracStimulus.ACC==1)&(Correct!="SPACE"),
                 .(mean_by_warn_sound = mean(PracStimulus.RT)),
                 by = Warnsound]
  S5_PART_N <- rbind(S5_PART_N, temp)
}
PAS <- rbind(PAS, S5_PART_N)
PAS_N <- rbind(PAS_N, S5_PART_N)


S5_PART_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_5_PPC")
for(file in S5_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[(PracStimulus.ACC==1)&(Correct!="SPACE"),
                 .(mean_by_warn_sound = mean(PracStimulus.RT)),
                 by = Warnsound]
  S5_PART_PPC <- rbind(S5_PART_PPC, temp)
}
PAS <- rbind(PAS, S5_PART_PPC)
PAS_PPC <- rbind(PAS_PPC, S5_PART_PPC)
#------------------------------------------------------------------------------#
# For Session 6
S6_PART_N <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_6_N")
for(file in S6_N){
  temp <- fread(file, header=T)
  temp <- (temp)[(PracStimulus.ACC==1)&(Correct!="SPACE"),
                 .(mean_by_warn_sound = mean(PracStimulus.RT)),
                 by = Warnsound]
  S6_PART_N <- rbind(S6_PART_N, temp)
}
PAS <- rbind(PAS, S6_PART_N)
PAS_N <- rbind(PAS_N, S6_PART_N)


S6_PART_PPC <- NULL
setwd("C:/Users/Biocomputing/Documents/CSV_DATA/Session_6_PPC")
for(file in S6_PPC){
  temp <- fread(file, header=T)
  temp <- (temp)[(PracStimulus.ACC==1)&(Correct!="SPACE"),
                 .(mean_by_warn_sound = mean(PracStimulus.RT)),
                 by = Warnsound]
  S6_PART_PPC <- rbind(S6_PART_PPC, temp)
}
PAS <- rbind(PAS, S6_PART_PPC)
PAS_PPC <- rbind(PAS_PPC, S6_PART_PPC)
#------------------------------------------------------------------------------#
# Get the total mean
PAS <- PAS[, 
         .(mean_by_warn_sound = mean(mean_by_warn_sound)),
         by = Warnsound]
PAS_PPC <- PAS_PPC[, 
                 .(mean_by_warn_sound = mean(mean_by_warn_sound)),
                 by = Warnsound]
PAS_N <- PAS_N[, 
             .(mean_by_warn_sound = mean(mean_by_warn_sound)),
             by = Warnsound]
#------------------------------------------------------------------------------#
# Get the RT in session period
S1_PART_N <- S1_PART_N[, 
           .(mean_by_warn_sound = mean(mean_by_warn_sound)),
           by = Warnsound]
S1_PART_PPC <- S1_PART_PPC[, 
                       .(mean_by_warn_sound = mean(mean_by_warn_sound)),
                       by = Warnsound]

S2_PART_N <- S2_PART_N[, 
                       .(mean_by_warn_sound = mean(mean_by_warn_sound)),
                       by = Warnsound]
S2_PART_PPC <- S2_PART_PPC[, 
                           .(mean_by_warn_sound = mean(mean_by_warn_sound)),
                           by = Warnsound]

S3_PART_N <- S3_PART_N[, 
                       .(mean_by_warn_sound = mean(mean_by_warn_sound)),
                       by = Warnsound]
S3_PART_PPC <- S3_PART_PPC[, 
                           .(mean_by_warn_sound = mean(mean_by_warn_sound)),
                           by = Warnsound]

S4_PART_N <- S4_PART_N[, 
                       .(mean_by_warn_sound = mean(mean_by_warn_sound)),
                       by = Warnsound]
S4_PART_PPC <- S4_PART_PPC[, 
                           .(mean_by_warn_sound = mean(mean_by_warn_sound)),
                           by = Warnsound]

S5_PART_N <- S5_PART_N[, 
                       .(mean_by_warn_sound = mean(mean_by_warn_sound)),
                       by = Warnsound]
S5_PART_PPC <- S5_PART_PPC[, 
                           .(mean_by_warn_sound = mean(mean_by_warn_sound)),
                           by = Warnsound]

S6_PART_N <- S6_PART_N[, 
                       .(mean_by_warn_sound = mean(mean_by_warn_sound)),
                       by = Warnsound]
S6_PART_PPC <- S6_PART_PPC[, 
                           .(mean_by_warn_sound = mean(mean_by_warn_sound)),
                           by = Warnsound]
#------------------------------------------------------------------------------#
# RT tendency between sessions