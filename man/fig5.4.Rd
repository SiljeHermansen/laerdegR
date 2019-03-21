\name{fig5.4}
\alias{fig5.4}

\title{
Figur 5.4
}
\description{
Replikasjonskode for moasikkdiagram.
}
\usage{
fig5.4()
}

\author{
Silje Synnøve Lyder Hermansen
}

\examples{
  #Last inn data
  data(kap5)

  #Lag krysstabell
  krysstabell<-krysstabell<-table(kap5[, c("Innvandrer", "Prekaritet")])

  #Legg rad og kolonnenavn til i tabellen
  rownames(krysstabell)<-c("Majoritetsbefolkning", "Innvandrerbakgrunn")
  colnames(krysstabell)<-c("Ikke-prekaer", "Prekaer")

  mosaicplot(krysstabell,
             xlab = "Bakgrunn",
             ylab = "Arbeidssituasjon",
             main = "MOSAIKKDIAGRAM\n Arbeidssituasjon og innvandrerbakgrunn")

}
