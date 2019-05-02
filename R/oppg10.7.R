oppg10.7<-function(){
  data(kap10, envir = environment())
  kap10 <- kap10

  #Partivalg modellert som funksjon av inntekt.
  mod2<-glm(formula=FrP~Skepsis+Utjevn+Inntekt,
            data=kap10,
            family = binomial(link="logit"))

  #definer kuttpunkt
  kutt<-mean(kap10$FrP)

  #regn ut predikerte sannsynligheter
  kap10$FrP.p<-predict(mod2,
                       kap10,
                       type = "response")

  #beregn predikerte utfall
  kap10$FrP.pred=as.numeric(kap10$FrP.p>kutt)

  #Regn ut andel utfall som er riktig predikert
  andel.riktig<-mean(kap10$FrP==kap10$FrP.pred, na.rm=TRUE)

  #Lag krysstabell med andel korrekte utfall for hver av kategoriene
  tabell<-table(kap10$FrP.pred, kap10$FrP)
  tabell<-prop.table(tabell,2)

  #Svar:
  paste("Andelen korrekt predikerte utfall er ", round(andel.riktig,3), ", mens andel korrekte prediksjoner for positive og negative tellinger er hhv. ", round(tabell[2,2],3),  " og ", round(tabell[1,1],3), " (med kuttverdi definert til gjennomsnittet blant respondentene (", round(kutt,3), ")).", sep="")
}
