loc<-function(x){
if(x==1)
return(1)
n<-ceiling(log(abs(x)+1,2))-1
E=x
if(x>3){
for(i in (n-1):1){
x<-(2^i-1)+ceiling(x/2-(2^i-.5))
E<-c(x,E)
}
}
return(c(1,E))
}
