Head<- scan("C:\\Users\\TekBots\ 1\\Desktop\\R-Parser\\2002\\checklists.csv",what="numeric",nlines=1,sep=',',skip=0,quiet=TRUE)
outHead<-NULL
for (i in 1:19)
{
	outHead<-append(outHead,Head[i])
}
out <- NULL
out <- append(out, list(outHead))
#while (Data<- scan("C:\\Users\\TekBots\ 1\\Desktop\\2002\\checklists.csv",what="numeric",nlines=1,sep=',',skip=0,quiet=TRUE))
for (i in 1:10)
{
	Data <- scan("C:\\Users\\TekBots\ 1\\Desktop\\R-Parser\\2002\\checklists.csv",what="numeric",nlines=1,sep=',',skip=i,quiet=TRUE)
	line <- NULL
	for(i in 1:19)
		line <-append(line, Data[i])
	out <- append(out, list(line))
}
out

write.csv(out, file = "C:\\Users\\TekBots\ 1\\Desktop\\R-Parser\\Output.csv")