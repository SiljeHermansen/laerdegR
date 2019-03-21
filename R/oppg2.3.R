oppg2.3<-function(){
  data(kap2, envir = environment()) #hent opp datasett
  kap2 <- kap2

  viktighet<-c(6.67, 5.67, 7.33, 4.33, 3.33, 5.33, 5.67, 5.67) #lag vektor med viktigheten av politikkomradet
  data<-cbind(kap2, viktighet) #bind den nye variabelen til datasettet
  data[order(data$viktighet),] #sorter datasettet fra lavest til hoyest viktighet
}
