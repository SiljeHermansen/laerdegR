\name{fig9.8}
\alias{fig9.8}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Figur 9.8
}
\description{
Replikasjonskode for grafikk 9.8. Krever \code{car}-pakken.
}
\usage{
fig9.8()
}
\author{
Silje Synnøve Lyder Hermansen
}
\examples{
  #Last inn data
  data(kap9)

  #Estimer modell
  mod<-lm(Skepsis~Inntekt+
                      Alder+Alder2+
                      Prekaritet*Innvandrer,
                    data=kap9,
                    na.action = "na.exclude")

  #Hent in pakke fra biblioteket
  #library(car)

  #Lag boblegrafikk
  car::influencePlot(mod,
                main = "Boblegrafikk med innflytelsesrike uteliggere",
                x = "Hatverdier",
                y = "Studentiserte residualer")
}
