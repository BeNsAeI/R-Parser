start <- as.integer(readline(prompt="Enter starting row: "))
cat ("start set to: ",start)
end <- as.integer(readline(prompt="Enter ending row: "))
cat ("end set to: ",end)
conditionIndex <- as.integer(readline(prompt="Enter the number of the column for condition (0 for no conditions): "))
key <- readline(prompt="Enter Key: ")
start  = 1
end = 500
conditionIndex = 9
key = "United States"
Head<- scan("C:\\Users\\TekBots\ 1\\Desktop\\R-Parser\\2002\\checklists.csv",what="numeric",nlines=1,sep=',',skip=0,quiet=TRUE)
outHead<-NULL
outHead<-append(outHead,"INDEX")
for (i in 1:19)
{
	outHead<-append(outHead,Head[i])
}
out <- NULL
out <- append(out, list(outHead))
#while (Data<- scan("C:\\Users\\TekBots\ 1\\Desktop\\2002\\checklists.csv",what="numeric",nlines=1,sep=',',skip=0,quiet=TRUE))
for (i in start:end)
{
	Data <- scan("C:\\Users\\TekBots\ 1\\Desktop\\R-Parser\\2002\\checklists.csv",what="numeric",nlines=1,sep=',',skip=i,quiet=TRUE)
	if((Data[conditionIndex]==key) || (conditionIndex == 0))
	{
		line <- NULL
		line<-append(line, i+1)
		for(j in 1:19)
			line <-append(line, Data[j])
		out <- append(out, list(line))
	}
}
numCols <- length(outHead)
outMatrix <- matrix(unlist(out), ncol = numCols , byrow = TRUE)
outMatrix 
write.table(outMatrix , file = "C:\\Users\\TekBots\ 1\\Desktop\\R-Parser\\Output.csv",row.names=FALSE, na="",col.names=FALSE, sep=",")