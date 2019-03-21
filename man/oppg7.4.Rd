\name{oppg7.4}
\alias{oppg7.4}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Oppgave 7.4
}
\description{
Tolk konfidensintervallet i modellen fra foregående oppgave ved hjelp av tall og tegning. Hva er konfidensintervallet til stigningskoeffisienten?

Hvordan kan man presentere dette grafisk?
}
\usage{
oppg7.4()
oppg7.4
}

\author{
Silje Synnøve Lyder Hermansen
}
\note{
Konfidensintervallet til regresjonskoeffisientene overlapper ikke null.

Konfidensintervallet kan representeres ved hjelp av et koeffisientplot. \code{arm}-pakken inneholder blant annet \code{coefplot()}-funksjonen. Her kan man se visuelt om konfidensintervallet overlapper (eller tangerer null).
}

\examples{
  #Last inn data#
  data(kap7)

  #Innvandringsskepsis modellert som funksjon av utdanning.#
  mod.utd<-lm(formula=Skepsis~Utdanning,
              data=kap7)

  #95 prosent konfidensintervall for samtlige regresjonskoeffisienter#
  confint(mod.utd)
}


