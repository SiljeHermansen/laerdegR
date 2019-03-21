fig9.8<-function(){
  #Last inn data
  data(kap9, envir = environment())
  kap9 <- kap9

  #Estimer modell
  mod<-lm(Skepsis~Inntekt+
                      Alder+Alder2+
                      Prekaritet*Innvandrer,
                    data=kap9,
                    na.action = "na.exclude")

  #Hent in pakke fra biblioteket
  #library(car)

  #Lag boblegrafikk
  car::influencePlot(mod,
                main = "Boblegrafikk med innflytelsesrike uteliggere",
                x = "Hatverdier",
                y = "Studentiserte residualer")
}
