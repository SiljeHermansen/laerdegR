oppg10.3<-function(){
  data(kap10, envir = environment())
  kap10 <- kap10

  #Partivalg modellert som funksjon av inntekt.
  mod2<-glm(formula=FrP~Skepsis+Utjevn+Inntekt,
            data=kap10,
            family = binomial(link="logit"))

  #Definere hypotetisk datasett
  nyedata<-data.frame(Skepsis=mean(kap10$Skepsis, na.rm=T),
                      Utjevn=mean(kap10$Utjevn, na.rm=T),
                      Inntekt=c(5, 6)
  )

  #Predikere sannsynligheter
  preds<-predict(mod2, nyedata, type = "response")
  preds

  #Svar
  paste("Sannsynligheten for a stemme FrP framfor Hoyre synker med",
        round(preds[1]-preds[2],3)*100 ,
        "prosent (fra", round(preds[1],3)*100, "til", round(preds[2],3)*100,
        ") nar inntekt oker fra 5 til 6 mens andre variabler holdes konstant.")

}

