\name{fig5.2b}
\alias{fig5.2b}

\title{
Figur 5.2b
}
\description{
Replikasjonskode for tetthetsgrafikk.
}
\usage{
fig5.2b()
}
\author{
Silje Synnøve Lyder Hermansen
}

\examples{
  #Last inn data
  data(kap5)


  plot(density(kap5$Skepsis,
               na.rm = TRUE),
       xlab = "Innvandringsskepsis",
       ylab = "Sannsynlighet",
       main = "TETTHETSGRAFIKK \n over innvandringsskepsis",
       col = "gray",
       bty = "n",
       sub = "(b)"
  )

}

