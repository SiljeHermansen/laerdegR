\name{oppg3.2}
\alias{oppg3.2}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Oppgave 3.2
}
\description{
Tilrettelegg spredningsdiagrammet fra oppg3.1 ved å spesifisere navn og grenseverdier for aksene samt tittel for grafikken.
}
\usage{
oppg3.2()
oppg3.2
}
%- maybe also 'usage' for other objects documented here.
\details{
Jeg har valgt grenseverdier i spennet 0 til 10 fordi dette er svaralternativene til respondentene i 2014-runden av Chapel Hill Expert Survey.
}
\references{
Ryan Bakker, Erica Edwards, Liesbet Hooghe, Seth Jolly, Gary Marks, Jonathan Polk, Jan Rovny, Marco Steenbergen, and Milada Vachudova (2015) "2014 Chapel Hill Expert Survey." Version 2015.1. Chapel Hill, NC: University of North Carolina, Chapel Hill.

Data: \url{http://chesdata.eu}.
Kodebok: \url{https://www.chesdata.eu/2014-chapel-hill-expert-survey}
}
\author{
Silje Synnøve Lyder Hermansen
}


\examples{
    data(kap3)
    plot(x = kap3$hoyre, y = kap3$omfordeling, xlim = c(0, 10),
        ylim = c(0, 10), xlab = "Hoyreorientering", ylab = "Omfordeling",
        main = "Partiers hoyreorientering \nog preferanser for omfordeling")
}
