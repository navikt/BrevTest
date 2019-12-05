# Brev Akseptansetesting

Vi bruker Cucumber Datatables for å kjøre brev xml mot EZBrev Endpoint. Fyll opp username og password i test.properties fil

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
* INNVFP - Implementert (mangler testscenario og baseline)
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
