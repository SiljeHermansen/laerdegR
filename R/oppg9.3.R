oppg9.3 <- function(){

  #Last inn data
  data(kap9, envir = environment())
  kap9 <- kap9

  #Utvid modell
  mod2<-lm(Skepsis~KultSkepsis+
             Inntekt+
             Alder+Alder2+
             Prekaritet*Innvandrer,
           data=kap9,
           na.action = "na.exclude")

  #Hent inn car-pakken
  #library(car)
  loadNamespace("car")

  #Opprett grafikk
  car::residualPlot(mod2)
}
