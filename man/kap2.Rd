\name{kap2}
\alias{kap2}
\docType{data}
\title{
Datasett til kapittel 2
}
\description{
Datasett for å løse oppgavene i kapittel 2.
}
\usage{data("kap2")}
\format{
  Et datasett med 8 observasjoner på følgende 4 variabler.
  \describe{
    \item{\code{parti}}{en faktor med følgende nivåer \code{Ap}; \code{FrP}; \code{H}; \code{KrF}; \code{MDG}; \code{SV}; \code{Sp}; \code{V}}
    \item{\code{hoyre}}{en numerisk variabel. Partiers høyreorientering (fra 0 til 10)}
  }
}


\references{
Det originale datasettet er trukket fra:

Ryan Bakker, Erica Edwards, Liesbet Hooghe, Seth Jolly, Gary Marks, Jonathan Polk, Jan Rovny, Marco Steenbergen, and Milada Vachudova (2015) "2014 Chapel Hill Expert Survey." Version 2015.1. Chapel Hill, NC: University of North Carolina, Chapel Hill.

Data: \url{http://chesdata.eu}.

Kodebok: \url{https://www.chesdata.eu/2014-chapel-hill-expert-survey}
}
\examples{
data(kap2)
%## maybe str(kap2) ; plot(kap2) ...
}
\keyword{datasets}
