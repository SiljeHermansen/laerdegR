oppg10.2<-function(){
  data(kap10, envir = environment())
  kap10 <- kap10

  #Partivalg modellert som funksjon av inntekt.
  mod2<-glm(formula=FrP~Skepsis+Utjevn+Inntekt,
            data=kap10,
            family = binomial(link="logit"))

  #Regne ut endring i odds
  exp(coef(mod2)[4])-1

  #Svar
  paste("Oddsen for a stemme FrP synker med", abs(round(exp(coef(mod2)[4])-1,3))*100, "prosent nar inntekt oker med ett desil.")

}

