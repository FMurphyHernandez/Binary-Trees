loc<-funtion(x){
n<-ceiling(log(abs(x)+1,2))-1
E=x
for(i in (n-1):1){
  x<-2*ceiling(x/2-(2^i))
  E<-c(x,E)
  }
return(E)
}
