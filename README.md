# Brev Akseptansetesting

Vi bruker Cucumber Datatables for å kjøre brev xml mot EZBrev Endpoint. Dette gjør det mulig for å teste mange ulike scenarior.

Hvert scenario bygger opp en brev xml som sendes inn til EZBrev endepunkt. Endepunktet returnerer brev pdf som korresponderer til den innsendte brev

## For å ta i bruk
Opprett en *ezbrev.properties* fil under *BrevTest/src/test/resources/ezbrev.properties* og skriv inn følgende:

ezbrev.username=W157126
ezbrev.password=EspmontriNav2502
ezbrev.url=https://ezbrev-backend-q4.nais.preprod.local/rest/bestill/t4

Man kan finne sample BrevXML fra `dokument_felles` tabell i fpformidling database  

**Status av Implementert Brev Tests**
* ANKEBO - Ikke påbegynt
* AVSLAG - Påbegynt (Mangler korrekt baseline)
* AVSLFP - Ikke påbegynt
* FOROPT - Ikke påbegynt
* FORLEN - Påbegynt (Mangler korrekt baseline. Mangler riktig dokumentasjon for dette.)
* FORLME - Ikke påbegynt
* FORLTS - Ikke påbegynt
* FRITKS - Ikke påbegynt
* HENLEG - Done (Baseline oppdatert 18.11.19)
* INAFOR - Ikke påbegynt
* INNHEN - Done (Baseline oppdatert 18.11.19)
* INNLYS - Påbegynt
* INNSVP - Ikke påbegynt
* INNTID - Påbegynt
* INNVFP - Done (Baseline oppdatert 06.02.20)
* INSSKR - Done (Baseline oppdatert 18.11.19)
* KLAGAV - Påbegynt
* KLAGNY - Påbegynt
* KLAGOV - Påbegynt
* KLAGVE - Påbegynt
* OPPHOR - Påbegynt
* POSVED - Done (Baseline oppdatert 18.11.19)
* REVURD - Påbegynt 
* UENDRE - Påbegynt
* VEDMED - Done (Baseline oppdatert 18.11.19)
* VEDOGA - Ikke påbegynt

Baseline for engleske (EN) brev er ikke korrekt ettersom dokumenttjenesten ikke støtter engelsk. Baseline for engelske brev 
må defineres når dette er tilgjengelig.

## Funksjonell Beskrivelse av Alle Brev i Confluence
https://confluence.adeo.no/display/BOA/Foreldrepengerbrev+-+Funksjonell+beskrivelse

## Vise diff mellom PDF i GUI mode 
For å vise diff mellom PDF i GUI mode 

`diff-pdf --view  scenarios/output/foreldrepenger/FORLEN/NB/000056_FORLEN_NB_SC10.pdf scenarios/baseline/foreldrepenger/FORLEN/NB/000056_FORLEN_NB_SC10.pdf`
