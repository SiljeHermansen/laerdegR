\name{oppg10.4}
\alias{oppg10.4}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Oppgave 10.4
}
\description{
Hvordan endrer sannsynligheten for å stemme Fremskrittspartiet seg når inntekt øker fra 9 til 10, mens andre variabler holdes konstant på gjennomsnittet?
}
\usage{
oppg10.4()
}

\author{
Silje Synnøve Lyder Hermansen
}

\examples{
  #Last inn data
  data(kap10)
  kap10 <- kap10

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
}
