\name{oppg10.3}
\alias{oppg10.3}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Oppgave 10.3
}
\description{
Hvordan endrer sannsynligheten for � stemme Fremskrittspartiet seg n�r inntekt �ker fra 5 til 6, mens andre variabler holdes konstant p� gjennomsnittet?
}
\usage{
oppg10.3()
}

\author{
Silje Synn�ve Lyder Hermansen
}

\examples{
  #Last inn data
  data(kap10)

  #Partivalg modellert som funksjon av inntekt.
  mod2<-glm(formula=FrP~Skepsis+Utjevn+Inntekt,
            data=kap10,
            family = binomial(link="logit"))

  #Definere hypotetisk datasett
  nyedata<-data.frame(Skepsis=mean(kap10$Skepsis, na.rm=TRUE),
                      Utjevn=mean(kap10$Utjevn, na.rm=TRUE),
                      Inntekt=c(5, 6)
  )

  #Predikere sannsynligheter
  preds<-predict(mod2, nyedata, type = "response")
  preds
}

