#Brev Akseptansetesting

Vi bruker Cucumber Datatables for å kjøre brev xml mot EZBrev Endpoint. Fyll opp username og password i test.properties fil

Man kan finne sample BrevXML fra `dokument_felles` tabell i fpformidling database  

##Funksjonell Beskrivelse av Alle Brev i Confluence
https://confluence.adeo.no/display/BOA/Foreldrepengerbrev+-+Funksjonell+beskrivelse

##Implementert Brev Tests

* INNHEN
* POSVED
* HENLEG
* AVSLAG
* UENDRE
* REVURD
* FORLEN
* FORLME
* KLAGAV
* KLAGVE
* KLAGNY
* KLAGOV
* INSSKR
* INNVFP
* OPPHOR
* INNTID
* AVSLFP
* FRITKS
* FORLTS
* FOROPT
* INNLYS
* INAFOR
* INNSVP
* VEDMED
* ANKEBO
* VEDOGA

##Vise diff mellom PDF i GUI mode 
For å vise diff mellom PDF i GUI mode 

`diff-pdf --view  scenarios/output/foreldrepenger/FORLEN/NB/000056_FORLEN_NB_SC10.pdf scenarios/baseline/foreldrepenger/FORLEN/NB/000056_FORLEN_NB_SC10.pdf`
