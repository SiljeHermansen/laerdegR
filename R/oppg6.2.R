oppg6.2<-function(){

  variabel<-c("Telle", "regne", "lese", "skrive", "8000")


  koder<-list(grep("\\d", variabel),
              grep("[[:alpha:]]", variabel),
              grep("[[:upper:]]", variabel),
              grep("s", variabel),
              grep("^s", variabel))
  koder<-paste("observasjon", gsub(":", " til ", koder))
  names(koder)<-paste("Svar", 1:5)

  return(as.list(koder))
}
