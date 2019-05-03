# laerdegR
"Lær deg R" er en innføringsbok i statistikkprogrammet R utgitt av Fagbokforlaget (2019). 

`laerdegR` er en nettressurs som gir deg tilgang til datasett og oppgaveløsninger som hører til boka. Nettressursen kommer som en egen R-pakke som du kan installere her.

## Installere pakken
Pakken kan installeres på to måter.

### Installere fra lokal fil
Denne løsningen gjøres i to skritt. 
* I nettleseren: Last ned pakken ved å klikke .tar.gz-filen (`laerdegR_0.1.0.tar.gz`). Om du er Windows-bruker, kan du også benytte deg av .zip-filen. Øverst til høyre i vinduet som åpner seg, kan du laste ned filen ved å klikke på ``download``. Filen vil da lastes ned på din maskin. Om du ikke har spesifisert annet, vil den ligge i mappen som kalles ``Downloads``. 
* I RStudio: Installer filen i R-biblioteket. Klikk på fanen som kalles ``Packages`` i vinduet nederst til høyre. Klikk så på ``Install``. I kommunikasjonsvinduet som så åpner seg, skal du velge `Install from: Package Archive File`. Under `Package archive:` må du deretter klikke på `Browse` og navigere deg fram til filen du nettopp lastet ned. Klikk så på ``Install``. Nå skrives installasjonskommandoen til R, og R skal i rask rekkefølge gi deg beskjed i rød skrift om at pakken installeres, og i svart skrift at `package ‘laerdegR’ successfully unpacked and MD5 sums checked`.

Om møter på feilmeldinger, bør du sjekke at tilleggsargumentene i installasjonskoden er korrekte. Filadressa (`C:/Downloads/`) vil åpenbart variere fra maskin til maskin.

Om du har valgt tar.gz-fil, må koden se slik ut.
``` 
install.packages("C:/Downloads/laerdegR_0.1.0.tar.gz", repos = NULL, type = "source")
```

Om du har valgt zip-fil, må koden se slik ut.
``` 
install.packages("C:/Downloads/laerdegR_0.1.0.zip", repos = NULL, type = "binary")
```



### Installere direkte fra GitHub
Denne løsningen krever flere R-installasjoner.
* I nettleseren: Begynn med å laste ned og installere [RTools](https://cran.r-project.org/bin/windows/Rtools/) uten å åpne RStudio.
* I RStudio: installere `devtools`-pakken og hent den inn fra biblioteket.
```
install.packages('devtools')
library(devtools)
```
* Nå kan du laste ned og installere nettressursen direkte fra GitHubs sider.
```
install_github("SiljeHermansen/laerdegR")
```
