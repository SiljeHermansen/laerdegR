fig5.3a<-function(){
  #Last inn data
  data(kap5, envir = environment())
  kap5 <- kap5

  krysstabell<-table(kap5[, c("Innvandrer", "Prekaritet")])

  barplot(krysstabell,
          col = c(gray(0.4), gray(0.7)),
          names.arg = c("Ikke-prekaer \narbeidssituasjon", "Prekaer \narbeidssituasjon"),
          main = "SOYLEDIAGRAM \n Arbeidssituasjon og innvandrerbakgrunn (absolutte tall)",
          sub = "(a)")
  legend("topright",
         bty = "n",
         legend = c("Majoritetsbefolkningen", "Innvandrerbakgrunn"),
         fill = c(gray(0.4), gray(0.7))
  )
}
