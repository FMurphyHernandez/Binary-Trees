tableux<-function(T){
	UN<-unique(T)
	RES<-c()
	for(i in 1:length(T)){
		RES<-rbind(RES,as.numeric(UN==T[i]))
		}
	for(i in 1:ncol(RES)){
		RES[,i]<-cumsum(RES[,i])
		}
	colnames(RES)<-UN	
	return(RES)
	}
