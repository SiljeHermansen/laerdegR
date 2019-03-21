\name{fig9.1}
\alias{fig9.1}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Figur 9.1
}
\description{
Replikasjonskode for grafikk 9.1.
}
\usage{
fig9.1()
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

  #Sett de grafiske instillingene til to grafikker
  par(mfrow=c(1,2))

  #Histogram
  hist(kap9$Prediksjoner,
       breaks=20,
       xlim = c(0,10),
       col="grey",
       ylab = "Frekvens",
       xlab = "Predikert innvandringsskepsis",
       main = "Histogram over \nPREDIKERTE verdier",
       sub = "(a)")

  #Histogram
  hist(kap9$Skepsis,
       breaks=20,
       xlim = c(0,10),
       col="grey",
       ylab = "Frekvens",
       xlab = "Observert innvandringsskepsis",
       main = "Histogram over \nOBSERVERTE verdier",
       sub = "(b)")

  #Tilbakestill de grafiske instillingene
  par(mfrow=c(1,1))

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
