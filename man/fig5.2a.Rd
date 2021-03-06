\name{fig5.2a}
\alias{fig5.2a}

\title{
Figur 5.2a
}
\description{
Replikasjonskode for histogram.
}
\usage{
fig5.2a()
}

\author{
Silje Synn�ve Lyder Hermansen
}

\examples{
 #Last inn data
  data(kap5)

  #Lag histogram
  hist(kap5$Skepsis,
       xlab = "Innvandringsskepsis",
       ylab = "Frekvens (antall respondenter)",
       main = "HISTOGRAM \nover innvandringsskepsis",
       col = "gray",
       sub = "(a)")

}
