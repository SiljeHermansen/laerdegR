oppg9.2<-function(){
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

  #Sett grafiske innstillinger til to grafikker
  par(mfrow=c(1,2))

  #Opprett histogram
  hist(rstandard(mod2),
       probability = TRUE,
       xlab = "Standardskarer",
       main="Histogram med de  \nstandardiserte residualene fra modell 2")

  #Legg til hjelpelinje
  lines(density(rnorm(n=100000,
                      mean = 0,
                      sd = 1)),
        lty=2,
        col="red")

  #Opprett en kvantil-kvantilgrafikk
  qqnorm(rstandard(mod2),
         main="Kvantil-kvantilgrafikk")

  #Legg til hjelpelinje
  abline(a=0,
         b=1,
         lty=2,
         col="red")

  #Tilbakestill grafisk visning
  par(mfrow=c(1,1))
  }

