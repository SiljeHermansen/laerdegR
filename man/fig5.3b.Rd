\name{fig5.3b}
\alias{fig5.3b}

\title{
Figur 5.3b
}
\description{
Replikasjonskode for s�ylediagram med flere kategoriske variabler side-om-side.
}
\usage{
fig5.3b()
}
\author{
Silje Synn�ve Lyder Hermansen
}

\examples{
  #Last inn data
  data(kap5)

  krysstabell<-table(kap5[, c("Innvandrer", "Prekaritet")])

  barplot(prop.table(krysstabell,
                     margin=1),
          ylim = c(0,1),
          beside = TRUE,
          names.arg = c("Ikke-prek�r \n arbeidssituasjon", "Prek�r \n arbeidssituasjon"),
          col = c(gray(0.4), gray(0.7)),
          main = "SOYLEDIAGRAM \n Arbeidssituasjon avhengig av bakgrunn (relative tall)",
          sub = "(b)")
  legend("topright",
         bty = "n",
         legend = c("Majoritetsbefolkningen", "Innvandrerbakgrunn"),
         fill = c(gray(0.4), gray(0.7)))
}
