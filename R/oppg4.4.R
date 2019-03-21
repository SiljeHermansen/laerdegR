oppg4.4<-function(){
  library(laerdegR)
  data(kap4, envir = environment())
  kap4 <- kap4

  write.table(x = kap4,
              file = "kap4_ny.txt",
              sep = ";",
              row.names = FALSE
  )
}
