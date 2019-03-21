\name{oppg10.2}
\alias{oppg10.2}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Oppgave 10.2
}
\description{
Hvordan endrer oddsen for å stemme Fremskrittspartiet seg når inntekt øker med én skalaenhet (ett desil, i dette tilfellet)?
}
\usage{
oppg10.2()
}
%- maybe also 'usage' for other objects documented here.
\details{

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
  data(kap10)

  #Partivalg modellert som funksjon av inntekt.
  mod2<-glm(formula=FrP~Skepsis+Utgjevn+Inntekt,
            data=kap10,
            family = binomial(link="logit"))

  #Regne ut endring i odds
  exp(coef(mod2)[4])-1


}
