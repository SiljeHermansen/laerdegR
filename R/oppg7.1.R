oppg7.1<-function(){
  data(kap7)
  kap7 <- kap7

  mod1<-lm(formula=Skepsis~Prekaritet,
         data=kap7)
  names(summary(mod1)) #Elementene i listeobjektet
  summary(mod1)$coefficients #Informasjon om koeffisientene
  hist(summary(mod1)$residuals) #Histogram av residualene
}
