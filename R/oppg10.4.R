oppg10.4<-function(){
  data(kap10)

  #Partivalg modellert som funksjon av inntekt.
  mod2<-glm(formula=FrP~Skepsis+Utgjevn+Inntekt,
            data=kap10,
            family = binomial(link="logit"))

  #Definere hypotetisk datasett
  nyedata<-data.frame(Skepsis=mean(kap10$Skepsis, na.rm=TRUE),
                      Utgjevn=mean(kap10$Utgjevn, na.rm=TRUE),
                      Inntekt=c(9, 10)
  )

  #Predikere sannsynligheter
  preds<-predict(mod2, nyedata, type = "response")
  preds

  #Svar
  paste("Sannsynligheten for a stemme FrP framfor Hoyre synker med",
        round(preds[1]-preds[2],4)*100 ,
        "prosent (fra", round(preds[1],4)*100, "til", round(preds[2],4)*100,
        ") nar inntekt oker fra 9 til 10 mens andre variabler holdes konstant.")

}

