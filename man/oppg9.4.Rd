\name{oppg9.4}
\alias{oppg9.4}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Oppgave 9.4
}
\description{
Hvor mange av observasjonene i modell 2 har forhøyede Cook's D-verdier?
}
\usage{
oppg9.4()
oppg9.4
}


\author{
Silje Synnøve Lyder Hermansen
}

\examples{
  #Last inn data
  data(kap9)

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

  #Svar
  sum(CooksD>=grense, na.rm=TRUE)
}

