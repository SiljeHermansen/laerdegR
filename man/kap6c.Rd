\name{kap6c}
\alias{kap6c}
\docType{data}
\title{
Datasett for kapittel 6
}
\description{
Aggregert datasett med partiers holdning til innvandring.
}
\usage{data("kap6c")}
\format{
  Et datasett med 8 observasjoner på følgende 2 variabler.
  \describe{
    \item{\code{party_name}}{det politiske partiet eksperten utaler seg om: \code{A}, \code{FrP}, \code{H}, \code{KrF}, \code{MDG}, \code{SV}, \code{Sp} og \code{V}.}
    \item{\code{immigrate_policy}}{rapporterer hvordan hvert parti i gjennomsnitt rangeres av eksperter på en skala fra
0 (negativ til restriktiv innvandringspolitikk) til 10 (positiv).}
  }
}

\source{
Polk, Jonathan, Jan Rovny, Ryan Bakker, Erica Edwards, Liesbet Hooghe, Seth Jolly, Jelle Koedam, Filip Kostelka, Gary Marks, Gijs Schumacher, Marco Steenbergen, Milada Vachudova and Marko Zilovic. 2017. "Explaining the salience of anti-elitism and reducing political corruption for political parties in Europe with the 2014 Chapel Hill Expert Survey data," Research & Politics (January-March): 1-9.

Komplette data og kodebok tilgjengelig på: \url{https://www.chesdata.eu/2014-chapel-hill-expert-survey}
}

\examples{
data(kap6b)
head(kap6b)
}
\keyword{datasets}
