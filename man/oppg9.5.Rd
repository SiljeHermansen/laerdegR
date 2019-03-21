\name{oppg9.5}
\alias{oppg9.5}
\title{
Oppgave 9.5
}
\description{
Bruk en boblegrafikk for å vurdere hvor kritisk dette er.
}
\usage{
oppg9.5()
oppg9.5
}

\author{
Silje Synnøve Lyder Hermansen
}

\examples{
  #Last inn data
  data(kap9, envir = environment())

  #Utvid modell
  mod2<-lm(Skepsis~KultSkepsis+
             Inntekt+
             Alder+Alder2+
             Prekaritet*Innvandrer,
           data=kap9,
           na.action = "na.exclude")

  #Opprett grafikk
  #library(car)
  #influencePlot(mod2)
}


