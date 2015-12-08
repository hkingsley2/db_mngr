################################
########Deidentify Data#########
################################

#You will need to modify as appropriate to translate your MR IDs into deidentified IDs

if(!require(RODBC)){
  install.packages("RODBC")
  library(RODBC) #for formatting structure of data
}

##########
#Get Data#
##########
db <- file.path("G:/Access Databases_A/KetoGator Database/Final Database/KetoGator Population ListKetoGator Population List.mdb")
myconn <- odbcConnectAccess2007(db, pwd=.rs.askForPassword("Please give password =)"))
patdat <- sqlFetch(myconn, "Patient List")
patdat <- as.data.frame(patdat)
close(myconn)
rm(patdat)
