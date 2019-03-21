fig5.3b<-function(){
  #Last inn data
  data(kap5, envir = environment())
  kap5 <- kap5

  krysstabell<-table(kap5[, c("Innvandrer", "Prekaritet")])

  barplot(prop.table(krysstabell,
                     margin=1),
          ylim = c(0,1),
          beside = TRUE,
          names.arg = c("Ikke-prekaer \narbeidssituasjon", "Prekaer \narbeidssituasjon"),
          col = c(gray(0.4), gray(0.7)),
          main = "SOYLEDIAGRAM \n Arbeidssituasjon avhengig av bakgrunn (relative tall)",
          sub = "(b)")
  legend("topright",
         bty = "n",
         legend = c("Majoritetsbefolkningen", "Innvandrerbakgrunn"),
         fill = c(gray(0.4), gray(0.7)))
}
