oppg9.4<-function(){
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

  #Beregn Cooks distansemal
  CooksD<-cooks.distance(mod2)

  #Beregn grenseverdi
  N=length(na.omit(CooksD))
  k=length(coefficients(mod2)-1)
  grense=4/(N-k-1)

  sum(CooksD>=grense, na.rm=T)

  #Svar
  paste(sum(CooksD>=grense, na.rm=T), "enheter har en Cooks D-verdi over den kritiske grensen")
}


