oppg7.5<-function(){
  data(kap7, envir = environment())
  kap7 <- kap7

  #Innvandringsskepsis modellert som funksjon av utdanning.
  mod.utd<-lm(formula=Skepsis~Utdanning,
              data=kap7)

  #Opprett nytt datasett med utdanning innen realistiske rammer
  nyedata<-data.frame(Utdanning=0:30)

  #Prediker verdier med konfidensintervall#
  predikerte<-predict(mod.utd,
                      newdata = nyedata,
                      interval = "confidence")

  #Opprett grafikk med predikert effekt
  plot(x = 0:30,
       y = predikerte[,"fit"],
       type = "l",
       ylim = c(0,10),
       xlab = "Ar med utdanning",
       ylab = "Innvandringsskepsis",
       bty = "n",
       main = "Effekten av utdanning  \n pa innvandringsskepsis")

  #Legg til linjer med konfidensintervallet
  lines(x = 0:30,
        y = predikerte[,"lwr"],
        lty=2)

  lines(x = 0:30,
        y = predikerte[,"upr"],
        lty=2)
}
