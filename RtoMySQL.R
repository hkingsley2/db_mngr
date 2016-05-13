if(!require(RMySQL)){
  install.packages("RMySQL")
  library(RMySQL) #for getting data from database
}

if(!require(ggplot2)){
  install.packages("ggplot2")
  library(ggplot2) #for plotting data from database
}

#Set database parameters
mydb = dbConnect(MySQL(), user='your_username', password='your_credentials', dbname='borum_practice', host='if-srvv-borum')

#Create a Query
myQuery <- "select * from borum_practice.daily_intake;"

#Store the data in an object
myData<-dbGetQuery(mydb, myQuery)

#Create a plot
ggplot(myData, aes(Date, Data_Quality)) + geom_bar(stat="identity")