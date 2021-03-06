fig9.2<-function(){
  #Last inn data
  data(kap9, envir = environment())
  kap9 <- kap9

  #Estimer modell
  mod<-lm(Skepsis~Inntekt+
                      Alder+Alder2+
                      Prekaritet*Innvandrer,
                    data=kap9,
                    na.action = "na.exclude")
  #Predikerte verdier
  kap9$Prediksjoner<-predict(mod)

  #Sett opp spredningsdiagram
  plot(kap9$Skepsis,
       kap9$Prediksjoner,
       ylim = c(0,10),
       xlab = "Observert innvandringsskepsis",
       ylab = "Predikert innvandringsskepsis",
       main = "Korrelasjon mellom \npredikerte og observerte y-verdier")

  #Legg til hjelpelinje
  abline(a = 0,
         b = 1,
         lty = 2)

}
