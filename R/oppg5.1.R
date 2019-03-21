oppg5.1<-function(){
  #Last inn data
  data(kap5, envir = environment())
  kap5 <- kap5

  Binare<-c("Innvandrer", "Kvinne")
  Kontinuerlige<-c("Skepsis", "KultSkepsis")
  Heltall<-c("Inntekt", "Utdanning")

  tabell<-rbind(Binare, Kontinuerlige, Heltall)
  tabell<-cbind(tabell, c("Kake eller soylediagram",
                          "Historam",
                          "Kake, soylediagram eller histogram"))
  colnames(tabell)<-c("Eks. 1", "Eks. 2", "Grafisk fremstilling")

  return(tabell)
}
