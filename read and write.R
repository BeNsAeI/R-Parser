install.packages("odbc")
install.packages("RMySQL")

Data <- read.csv("C:\\Users\\TekBots\ 1\\Desktop\\RSTUDIO\ TEST\\1.csv",header=TRUE, sep=",");
#                    ^ Address                                                ^           ^
#                                                          First Row is Title |           |
#                                                                         Comma seperated |
Data;
modData = Data;
# Modify the modData (create quesries etc.)
library(odbc)
library(DBI)
library(RMySQL)
con <- dbConnect(MySQL(),
			dbname = "test",
			host = "localhost",
			user = "Ben",
			password = "1234",
			Port = 3306)

# Using a DSN
con <- dbConnect(odbc::odbc(), "mydbalias")

# Query
modData <- dbSendQuery(con, "create table data(street varchar(255),
								city varchar(255),
								zip int,
								state varchar(255),
								beds int,
								baths int,
								sq__ft int,
								type varchar(255),
								sale_date date,
								price int,
								latitude int,
								longitude int
											);")
modData <- dbSendQuery(con, "select * from data")

write.csv(modData,file="C:\\Users\\TekBots\ 1\\Desktop\\RSTUDIO\ TEST\\NewCSV.csv",sep=',',col.names=TRUE,row.names=FALSE);