\name{oppg7.1}
\alias{oppg7.1}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Oppgave 7.1
}
\description{
Finn ut hvilke listelementer som finnes i \code{summary(mod1)} ved � bruke \code{names()}-funksjonen.

Trekk ut informasjon om koeffisientene ved � indeksere sammendraget.

Til sist kan du trekke ut residualene og presentere dem i et histogram. Ser de normalfordelte ut?
}
\usage{
oppg7.1()
}

\author{
Silje Synn�ve Lyder Hermansen
}
\examples{
  data(kap7)
  mod1<-lm(formula=Skepsis~Prekaritet,
         data=kap7)
  names(summary(mod1)) #Elementene i listeobjektet
  summary(mod1)$coefficients #Informasjon om koeffisientene
  hist(summary(mod1)$residuals) #Histogram av residualene
}
