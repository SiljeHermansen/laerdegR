fig5.2c<-function(){
  #Last inn data
  data(kap5, envir = environment())
  kap5 <- kap5

  #Lag diagram
  hist(data$Skepsis,
       xlab = "Innvandringsskepsis",
       ylab = "Frekvens (antall respondenter)",
       main = "HISTOGRAM \nover innvandringsskepsis",
       col = "gray",
       probability = TRUE,
       sub = "(c)")

  #Legg til tetthet
  lines(density(data$Skepsis, na.rm = T))
}
