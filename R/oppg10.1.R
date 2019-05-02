oppg10.1<-function(){
  data(kap10, envir = environment())
  kap10 <- kap10

  #Partivalg modellert som funksjon av skepsis og utjevn.
  mod1<-glm(formula=FrP~Skepsis+Utjevn,
            data=kap10,
            family = binomial(link="logit"))

  #Partivalg modellert som funksjon av inntekt.
  mod2<-glm(formula=FrP~Skepsis+Utjevn+Inntekt,
            data=kap10,
            family = binomial(link="logit"))

  #Inspiser resultatet
  summary(mod1)
  summary(mod2)

  #Sjekk korrelasjon mellom inntekt og utjevn, samt inntekt og partivalg
  cor.test(kap10$Utjevn, kap10$Inntekt, na.rm=T)
  cor.test(kap10$FrP, kap10$Inntekt, na.rm=T)

  #Svar
  paste("Effekten av holdning til inntektsutjevning svekkes og er ikke lenger signifikant. Dette er fordi respondenter med lavere inntekt er mer positive til utjevnende tiltak samtidig som Fremskrittspartiets velgere i gjennomsnitt tjener mindre enn Hoyre-velgerne.")
}

