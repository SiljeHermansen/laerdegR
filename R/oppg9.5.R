oppg9.5<-function(){
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

  #Opprett grafikk
  if (requireNamespace("car", quietly = TRUE)) {
    car::influencePlot(mod2,
                       main = "Hvor er de kritiske uteliggerne? \n(Boblegrafikk)")
    }
}
