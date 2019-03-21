\name{fig9.2}
\alias{fig9.2}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Figur 9.2
}
\description{
Replikasjonskode for grafikk 9.2.
}
\usage{
fig9.2()
}
%- maybe also 'usage' for other objects documented here.
\arguments{

}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Silje Synnøve Lyder Hermansen
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
  #Last inn data
  data(kap9)

  #Estimer modell
  mod<-lm(Skepsis~Inntekt+
                      Alder+Alder2+
                      Prekaritet*Innvandrer,
                    data=kap9,
                    na.action = "na.exclude")
  #Predikerte verdier
  kap9$Prediksjoner<-predict(mod)

  #Sett opp spredningsdiagram
  plot(kap9$Skepsis,
       kap9$Prediksjoner,
       ylim = c(0,10),
       xlab = "Observert innvandringsskepsis",
       ylab = "Predikert innvandringsskepsis",
       main = "Korrelasjon mellom \npredikerte og observerte y-verdier")

  #Legg til hjelpelinje
  abline(a = 0,
         b = 1,
         lty = 2)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
