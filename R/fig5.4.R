fig5.4<-function(){
  #Last inn data
  data(kap5, envir = environment())
  kap5 <- kap5

  #Lag krysstabell
  krysstabell<-krysstabell<-table(kap5[, c("Innvandrer", "Prekaritet")])

  #Legg rad og kolonnenavn til i tabellen
  rownames(krysstabell)<-c("Majoritetsbefolkning", "Innvandrerbakgrunn")
  colnames(krysstabell)<-c("Ikke-prekaer", "Prekaer")

  mosaicplot(krysstabell,
             xlab = "Bakgrunn",
             ylab = "Arbeidssituasjon",
             main = "MOSAIKKDIAGRAM\n Arbeidssituasjon og innvandrerbakgrunn")
}
