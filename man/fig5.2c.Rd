\name{fig5.2c}
\alias{fig5.2c}

\title{
Figur 5.2c
}
\description{
Replikasjonskode for histogram med tetthetsgrafikk.
}
\usage{
fig5.2c()
}
\author{
Silje Synnøve Lyder Hermansen
}

\examples{
  #Last inn data
  data(kap5)

  #Lag diagram
  hist(kap5$Skepsis,
       xlab = "Innvandringsskepsis",
       ylab = "Frekvens (antall respondenter)",
       main = "HISTOGRAM \nover innvandringsskepsis",
       col = "gray",
       probability = TRUE,
       sub = "(c)")

  #Legg til tetthet
  lines(density(kap5$Skepsis, na.rm = TRUE))

}
