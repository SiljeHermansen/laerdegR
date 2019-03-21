oppg6.4<-function(){
  #Last inn data
  data(kap6, envir = environment())
  kap6 <- kap6

  #Opprett vektor:
  cut(kap6$Utdanning,
      breaks = c(0,10,20,30),
      labels = c("lav", "middels", "hoy"))

}
