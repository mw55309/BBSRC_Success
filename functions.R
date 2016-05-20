library(RColorBrewer)





plot.rank <- function(meeting="", committee="") {


	x <- lst[[meeting]][["rank"]][[committee]]

	x <- x[order(x$Priority),]

	classes <- unique(x$Outcome)

	colours <- brewer.pal(length(classes), "Set1")

	df <- data.frame(Outcome=classes, colour=colours, stringsAsFactors=FALSE)

	mx <- merge(x, df)

	mx <- mx[order(mx$Priority),]

	par(mar=c(6,4,3,2))
	barplot(mx$Priority, col=mx$colour, main=paste(meeting, committee))

	bx <- barplot(mx$Priority, col=mx$colour, plot=FALSE)

	axis(side=1, at=bx[,1], labels=mx$Priority, line=0, cex.axis=0.6, lty=0, las=2)
	axis(side=1, at=bx[,1], labels=mx$NI, line=1, lty=0, cex.axis=0.6, las=2) 
	axis(side=1, at=bx[,1], labels=mx$GPA, line=2, lty=0, cex.axis=0.6, las=2) 
	axis(side=1, at=bx[,1], labels=mx$IPA, line=3, lty=0, cex.axis=0.6, las=2) 
	axis(side=1, at=bx[,1], labels=mx$LINK, line=4, lty=0, cex.axis=0.6, las=2) 

	axis(side=1, at=-1, labels="NI", line=0.5, cex.axis=0.6, lty=0)
	axis(side=1, at=-1, labels="GPA", line=1.5, cex.axis=0.6, lty=0)
	axis(side=1, at=-1, labels="IPA", line=2.5, cex.axis=0.6, lty=0)
	axis(side=1, at=-1, labels="LINK", line=3.5, cex.axis=0.6, lty=0)

	legend(2,max(mx$Priority)-10, legend=df$Outcome, fill=df$colour, cex=0.8)

}
