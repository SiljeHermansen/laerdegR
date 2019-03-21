oppg9.1<-function(){
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

  #Inspiser modell
  summary(mod2)

  #Svar
  paste("Vi kan ikke sammenlikne regresjonseffektene direkte, men vi ser blant annet at signifikansen til alder forsvinner. Dette kan tyde pa at alder er en felles bakenforliggende variabel for begge typer skepsis. Forst og fremst ser vi at R2 oker. Forovrig kan man sporre om arsaksretningen mellom kulturell og okonomisk begrunnet innvandringsskepis. Hvilken kommer forst?")
}

