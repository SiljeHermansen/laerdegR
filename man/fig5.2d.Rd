\name{fig5.2d}
\alias{fig5.2d}

\title{
Figur 5.2d
}
\description{
Replikasjonskode for histogram med tetthetsgrafikk.
}
\usage{
fig5.2d()
}

\author{
Silje Synnøve Lyder Hermansen
}

\examples{
  #Last inn data
  data(kap5)

  #Fordeling 1
  plot(density(kap5$Skepsis,
               na.rm = TRUE),
       xlab = "Innvandringsskepsis",
       ylab = "Sannsynlighet",
       main = "TETTHETSGRAFIKK \n over innvandringsskepsis",
       bty = "n",
       sub = "(d)"
  )

  #Legg til fordeling 2
  lines(density(kap5$KultSkepsis, na.rm = TRUE), lty=2)

  #Legg til forklarende tekst
  legend("topright",
         lty = c(1,2),
         legend = c("Okonomiske", "Kulturelle"),
         title = "Argumenter mot innvandring",
         bty = "n")

}
