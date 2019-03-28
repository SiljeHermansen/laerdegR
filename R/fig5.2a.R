fig5.2a<-function(){
  #Last inn data
  data(kap5, envir = environment())
  kap5 <- kap5

  #Lag histogram
  hist(kap5$Skepsis,
       xlab = "Innvandringsskepsis",
       ylab = "Frekvens (antall respondenter)",
       main = "HISTOGRAM \nover innvandringsskepsis",
       col = "gray",
       sub = "(a)")
}
