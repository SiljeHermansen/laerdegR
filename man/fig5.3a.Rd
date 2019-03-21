\name{fig5.3a}
\alias{fig5.3a}

\title{
Figur 5.3a
}
\description{
Replikasjonskode for søylediagram med flere kategoriske variabler plassert oppe på hverandre.
}
\usage{
fig5.3a()
}

\author{
Silje Synnøve Lyder Hermansen
}

\examples{
  #Last inn data
  data(kap5)

  krysstabell<-table(kap5[, c("Innvandrer", "Prekaritet")])

  barplot(krysstabell,
          col = c(gray(0.4), gray(0.7)),
          names.arg = c("Ikke-prekær \n arbeidssituasjon", "Prekær \n arbeidssituasjon"),
          main = "SOYLEDIAGRAM \n Arbeidssituasjon og innvandrerbakgrunn (absolutte tall)",
          sub = "(a)")
  legend("topright",
         bty = "n",
         legend = c("Majoritetsbefolkningen", "Innvandrerbakgrunn"),
         fill = c(gray(0.4), gray(0.7))
  )
}

