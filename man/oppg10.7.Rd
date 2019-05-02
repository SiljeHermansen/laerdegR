\name{oppg10.7}
\alias{oppg10.7}

\title{
Oppgave 10.7
}
\description{
I hvor stor andel av tilfellene predikerer modellen riktig? Hvor stor andel av de positive tellingene er predikert riktig?
}
\usage{
oppg10.7()
}

\author{
Silje Synnøve Lyder Hermansen
}

\examples{
  data(kap10)
  kap10 <- kap10

  #Partivalg modellert som funksjon av inntekt.
  mod2<-glm(formula=FrP~Skepsis+Utjevn+Inntekt,
            data=kap10,
            family = binomial(link="logit"))

  #definer kuttpunkt
  kutt<-mean(kap10$FrP)

  #regn ut predikerte sannsynligheter
  kap10$FrP.p<-predict(mod2,
                       kap10,
                       type = "response")

  #beregn predikerte utfall
  kap10$FrP.pred=as.numeric(kap10$FrP.p>kutt)

  #Regn ut andel utfall som er riktig predikert
  andel.riktig<-mean(kap10$FrP==kap10$FrP.pred, na.rm=TRUE)

  #Lag krysstabell med andel korrekte utfall for hver av kategoriene
  tabell<-table(kap10$FrP.pred, kap10$FrP)
  tabell<-prop.table(tabell,2)
}

