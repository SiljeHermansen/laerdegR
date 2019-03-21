oppg2.4<-function(){
  ##Hent opp datasett##
  data("kap2", envir = environment())
  kap2 <- kap2

  ##Opprett ny variabel - to alternativer##
  kap2$hoyre.omk<-kap2$hoyre #kopier eksisterende variabel
  kap2$hoyre.omk<-NA #opprett variabel uten verdier (NA)

  ##Indeksere for a omkode variabel til kategorier##
  kap2$hoyre.omk[kap2$hoyre<4]="Venstre"
  kap2$hoyre.omk[kap2$hoyre>=4 & kap2$hoyre<=6]="Sentrum"
  kap2$hoyre.omk[kap2$hoyre>6]="Hoyre"

  ##Omdefiner til faktor##
  kap2$hoyre.omk<-as.factor(kap2$hoyre.omk)

  #Hvilke partier er hoyreorienterte?
  kap2$parti[kap2$hoyre.omk=="Hoyre"]
  }
