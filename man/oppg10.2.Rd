\name{oppg10.2}
\alias{oppg10.2}

\title{
Oppgave 10.2
}
\description{
Hvordan endrer oddsen for å stemme Fremskrittspartiet seg når inntekt øker med én skalaenhet (ett desil, i dette tilfellet)?
}
\usage{
oppg10.2()
}

\author{
Silje Synnøve Lyder Hermansen
}

\examples{
  #Last inn data
  data(kap10)

  #Partivalg modellert som funksjon av inntekt.
  mod2<-glm(formula=FrP~Skepsis+Utgjevn+Inntekt,
            data=kap10,
            family = binomial(link="logit"))

  #Regne ut endring i odds
  exp(coef(mod2)[4])-1


}
