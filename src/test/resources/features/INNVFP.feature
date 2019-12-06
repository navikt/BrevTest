Feature: Verifisere INNVFP Brev

  Scenario Outline: Verify if the INNVFP Brev meets the baseline for Scenario <Scenario> and Language <Language>
    Given we have baselines for the brevmål <BrevMål> and brevtype <BrevType> and language <Language>
    And we construct a brev xml with the language <Language>
    And with the behandlingsType <BehandlingsType>
    And with behandlingsResultat <BehandlingsResultat>
    And with the antallBarn <Barn>
    And with relasjonskode <Relasjonskode>
    And with annenForelderHarRettVurdert <AnnenForeldreHarRettVurdert>
    And with aleneomsorg <AleneOmsorg>
    And with barnErFødt <BarnErFødt>
    And with GjelderFoedsel <GjelderFødsel>
    And with fødselsHendelse <Fødselshendelse>
    And with the personStatus <Personstatus>
    And with konsekvensForYtelse <KonsekvensForYtelse>
    And with dodsdato <Dodsdato>
    And with regelStatus <RegelStatus>
    And with status <Status>
    And with antallAvslag <AntallAvslag>
    And periode 1 with årsak <Årsak1>, gradering <Gradering1> og antallTapteDager <TD1>
    And periode 2 with årsak <Årsak2>, gradering = false og antallTapteDager <TD2>
    And periode 3 with årsak <Årsak3>, gradering = false og antallTapteDager <TD3>
    And periode 4 with årsak <Årsak4>, gradering = false og antallTapteDager <TD4>
    And periode 5 with årsak <Årsak5>, gradering = false og antallTapteDager <TD5>
    And with antallArbeidsgivere <Arbeidsgivere>
    And with antallArbeidsgivereIBeregningUtenEtterlønnSluttpakke <UtenSluttpakke>
    And with etterlønnSluttpakke <EtterlønnSluttpakke>
    And with andel.dagsats <Dagsats>
    And with forMyeUtbetalt <ForMyeUtbetalt>
    And with AutomatiskBehandlet <AutomatiskBehandlet>
    When we generate brev based on the xml from ezbrev for the scenario <Scenario>
    Then the result brev must meet the baseline for that scenario

    @Regression
    Examples:
      | BrevMål  | BrevType | Scenario | Language | BehandlingsType | BehandlingsResultat     | KonsekvensForYtelse   | Barn |Arbeidsgivere|AntallAvslag|Relasjonskode| AnnenForeldreHarRettVurdert | AleneOmsorg    |Fødselshendelse|BarnErFødt|GjelderFødsel|Personstatus| Dodsdato | Dagsats |UtenSluttpakke|EtterlønnSluttpakke|       RegelStatus             |        Status                | Årsak1 | Årsak2 | Årsak3 | Årsak4 | Årsak5 | TD1 | TD2 | TD3 | TD4 | TD5 |Gradering1| ForMyeUtbetalt | AutomatiskBehandlet |
      | "000061" | "INNVFP" | "SC1"    | "NB"     | "REVURDERING"   | "INNVILGET"             | "ENDRING_I_UTTAK"     | "1"  | "1"         | "0"       | "FAR"        | "IKKE_VURDERT"              | "IKKE_VURDERT" | "false"       | "true"   | "true"      | "ANNET"    | "false"  | "2304"  | "1"          | "false"           | "ARBEIDSTAKER"                | "ARBEIDSTAKER"               | "2001" | "2010" | "2011" | "2012" | "2013" | "1" | "1" | "2" | "1" | "1" | "false"  |  "INGEN"       |  "true"             |
      | "000061" | "INNVFP" | "SC2"    | "NB"     | "REVURDERING"   | "INGEN_ENDRING"         | "ENDRING_I_BEREGNING" | "1"  | "1"         | "0"       | "FAR"        | "IKKE_VURDERT"              | "IKKE_VURDERT" | "false"       | "true"   | "true"      | "ANNET"    | "true"   | "2304"  | "1"          | "false"           | "ARBEIDSTAKER"                | "ARBEIDSTAKER"               | "2001" | "2001" | "2001" | "2001" | "2001" | "1" | "1" | "2" | "1" | "1" | "false"  |  "INGEN"       |  "false"            |
      | "000061" | "INNVFP" | "SC3"    | "NB"     | "REVURDERING"   | "FORELDREPENGER_ENDRET" | "ENDRING_I_BEREGNING" | "1"  | "1"         | "0"       | "FAR"        | "IKKE_VURDERT"              | "IKKE_VURDERT" | "false"       | "true"   | "true"      | "ANNET"    | "true"   | "2304"  | "2"          | "false"           | "ARBEIDSTAKER"                | "ARBEIDSTAKER"               | "2001" | "2001" | "2001" | "2001" | "2001" | "1" | "1" | "2" | "1" | "1" | "false"  |  "INGEN"       |  "false"            |
      | "000061" | "INNVFP" | "SC4"    | "NB"     | "REVURDERING"   | "INNVILGET"             | "ENDRING_I_BEREGNING" | "2"  | "2"         | "0"       | "MOR"        | "NEI"                       | "JA"           | "false"       | "false"  | "true"      | "ANNET"    | "false"  | "2304"  | "1"          | "true"            | "KOMBINERT_AT_FL"             | "FRILANSER"                  | "4095" | "2001" | "2001" | "2001" | "2001" | "1" | "1" | "2" | "1" | "1" | "false"  |  "INGEN"       |  "false"            |
      | "000061" | "INNVFP" | "SC5"    | "NB"     | "REVURDERING"   | "INNVILGET"             | "ENDRING_I_UTTAK"     | "2"  | "2"         | "0"       | "FAR"        | "JA"                        | "NEI"          | "false"       | "false"  | "true"      | "ANNET"    | "false"  | "2304"  | "1"          | "false"           | "ARBEIDSTAKER"                | "ARBEIDSTAKER"               | "4503" | "2014" | "2020" | "2022" | "2021" | "1" | "1" | "2" | "1" | "1" | "true"   |  "INGEN"       |  "false"            |
      | "000061" | "INNVFP" | "SC6"    | "NB"     | "REVURDERING"   | "INNVILGET"             | "ENDRING_I_UTTAK"     | "2"  | "1"         | "0"       | "MOR"        | "IKKE_VURDERT"              | "JA"           | "false"       | "true"   | "true"      | "ANNET"    | "false"  | "2304"  | "1"          | "false"           | "ARBEIDSTAKER"                | "ARBEIDSTAKER"               | "4080" | "2023" | "2001" | "2001" | "2001" | "1" | "1" | "2" | "1" | "1" | "true"   |  "INGEN"       |  "false"            |
      | "000061" | "INNVFP" | "SC7"    | "NB"     | "REVURDERING"   | "INNVILGET"             | "ENDRING_I_BEREGNING" | "2"  | "1"         | "0"       | "MOR"        | "IKKE_VURDERT"              | "NEI"          | "false"       | "true"   | "true"      | "ANNET"    | "false"  | "2304"  | "1"          | "false"           | "FRILANSER"                   | "FRILANSER"                  | "2001" | "2001" | "2001" | "2001" | "2001" | "1" | "1" | "2" | "1" | "1" | "false"  |  "INGEN"       |  "false"            |
      | "000061" | "INNVFP" | "SC8"    | "NB"     | "REVURDERING"   | "INNVILGET"             | "ENDRING_I_UTTAK"     | "2"  | "1"         | "4"       | "MOR"        | "NEI"                       | "JA"           | "false"       | "true"   | "false"     | "ANNET"    | "false"  | "2304"  | "1"          | "false"           | "ARBEIDSTAKER"                | "ARBEIDSTAKER"               | "4504" | "4077" | "4020" | "4020" | "4005" | "1" | "1" | "2" | "1" | "1" | "true"   |  "INGEN"       |  "false"            |
      | "000061" | "INNVFP" | "SC9"    | "NB"     | "REVURDERING"   | "INNVILGET"             | "ENDRING_I_UTTAK"     | "2"  | "1"         | "4"       | "MOR"        | "JA"                        | "NEI"          | "false"       | "true"   | "false"     | "ANNET"    | "false"  | "2304"  | "1"          | "false"           | "ARBEIDSTAKER"                | "ARBEIDSTAKER"               | "4005" | "4003" | "4033" | "4041" | "4032" | "1" | "1" | "2" | "1" | "1" | "false"  |  "INGEN"       |  "false"            |
      | "000061" | "INNVFP" | "SC10"   | "NB"     | "REVURDERING"   | "INNVILGET"             | "ENDRING_I_UTTAK"     | "2"  | "1"         | "4"       | "MOR"        | "JA"                        | "NEI"          | "false"       | "true"   | "false"     | "ANNET"    | "false"  | "2304"  | "1"          | "false"           | "ARBEIDSTAKER"                | "ARBEIDSTAKER"               | "4040" | "4039" | "4037" | "4037" | "4023" | "1" | "1" | "2" | "1" | "1" | "false"  |  "INGEN"       |  "false"            |
      | "000061" | "INNVFP" | "SC11"   | "NB"     | "REVURDERING"   | "INNVILGET"             | "ENDRING_I_UTTAK"     | "2"  | "1"         | "4"       | "MOR"        | "JA"                        | "NEI"          | "false"       | "true"   | "false"     | "ANNET"    | "false"  | "2304"  | "1"          | "false"           | "ARBEIDSTAKER"                | "ARBEIDSTAKER"               | "4030" | "4038" | "4082" | "4025" | "4093" | "1" | "1" | "2" | "1" | "1" | "false"  |  "INGEN"       |  "false"            |
      | "000061" | "INNVFP" | "SC12"   | "NB"     | "REVURDERING"   | "INNVILGET"             | "ENDRING_I_UTTAK"     | "2"  | "1"         | "4"       | "MOR"        | "JA"                        | "NEI"          | "false"       | "true"   | "false"     | "ANNET"    | "false"  | "2304"  | "1"          | "false"           | "ARBEIDSTAKER"                | "ARBEIDSTAKER"               | "4084" | "4086" | "4050" | "4051" | "4052" | "1" | "1" | "2" | "1" | "1" | "false"  |  "INGEN"       |  "false"            |
      | "000061" | "INNVFP" | "SC13"   | "NB"     | "REVURDERING"   | "INNVILGET"             | "ENDRING_I_UTTAK"     | "2"  | "1"         | "4"       | "MOR"        | "JA"                        | "NEI"          | "false"       | "true"   | "false"     | "ANNET"    | "false"  | "2304"  | "1"          | "false"           | "ARBEIDSTAKER"                | "ARBEIDSTAKER"               | "4054" | "4055" | "4056" | "4057" | "4007" | "1" | "1" | "2" | "1" | "1" | "false"  |  "INGEN"       |  "false"            |
      | "000061" | "INNVFP" | "SC14"   | "NB"     | "REVURDERING"   | "INNVILGET"             | "ENDRING_I_UTTAK"     | "2"  | "1"         | "4"       | "MOR"        | "JA"                        | "NEI"          | "false"       | "true"   | "false"     | "ANNET"    | "false"  | "2304"  | "1"          | "false"           | "ARBEIDSTAKER"                | "ARBEIDSTAKER"               | "4053" | "4008" | "4092" | "4002" | "4062" | "1" | "1" | "2" | "1" | "1" | "false"  |  "INGEN"       |  "false"            |
      | "000061" | "INNVFP" | "SC15"   | "NB"     | "REVURDERING"   | "INNVILGET"             | "ENDRING_I_UTTAK"     | "2"  | "1"         | "4"       | "MOR"        | "JA"                        | "NEI"          | "false"       | "true"   | "false"     | "ANNET"    | "false"  | "2304"  | "1"          | "false"           | "ARBEIDSTAKER"                | "ARBEIDSTAKER"               | "4094" | "4074" | "4066" | "4013" | "4022" | "1" | "1" | "2" | "1" | "1" | "false"  |  "INGEN"       |  "false"            |
      | "000061" | "INNVFP" | "SC16"   | "NB"     | "REVURDERING"   | "INNVILGET"             | "ENDRING_I_UTTAK"     | "2"  | "1"         | "4"       | "MOR"        | "JA"                        | "NEI"          | "false"       | "true"   | "false"     | "ANNET"    | "false"  | "2304"  | "1"          | "false"           | "ARBEIDSTAKER"                | "ARBEIDSTAKER"               | "4034" | "4035" | "4058" | "4060" | "4081" | "1" | "1" | "2" | "1" | "1" | "false"  |  "INGEN"       |  "false"            |
      | "000061" | "INNVFP" | "SC17"   | "NB"     | "REVURDERING"   | "INNVILGET"             | "ENDRING_I_UTTAK"     | "2"  | "1"         | "4"       | "MOR"        | "JA"                        | "NEI"          | "true"        | "true"   | "false"     | "ANNET"    | "false"  | "2304"  | "1"          | "false"           | "ARBEIDSTAKER"                | "ARBEIDSTAKER"               | "4100" | "4073" | "4075" | "4087" | "2001" | "1" | "1" | "2" | "1" | "1" | "false"  |  "INGEN"       |  "false"            |
      | "000061" | "INNVFP" | "SC18"   | "NB"     | "REVURDERING"   | "INNVILGET"             | "ENDRING_I_BEREGNING" | "2"  | "1"         | "4"       | "MOR"        | "JA"                        | "NEI"          | "true"        | "true"   | "false"     | "ANNET"    | "false"  | "2304"  | "1"          | "false"           | "SELVSTENDIG_NÆRINGSDRIVENDE" | "ARBEIDSTAKER"               | "4100" | "4073" | "4075" | "4087" | "2001" | "1" | "1" | "2" | "1" | "1" | "false"  |  "INGEN"       |  "false"            |
      | "000061" | "INNVFP" | "SC19"   | "NB"     | "REVURDERING"   | "INNVILGET"             | "ENDRING_I_BEREGNING" | "2"  | "1"         | "4"       | "MOR"        | "JA"                        | "NEI"          | "true"        | "true"   | "false"     | "ANNET"    | "false"  | "0"     | "1"          | "false"           | "KOMBINERT_AT_SN"             | "SELVSTENDIG_NÆRINGSDRIVENDE"| "4100" | "4073" | "4075" | "4087" | "2001" | "1" | "1" | "2" | "1" | "1" | "false"  |  "INGEN"       |  "false"            |
      | "000061" | "INNVFP" | "SC20"   | "NB"     | "REVURDERING"   | "INNVILGET"             | "ENDRING_I_BEREGNING" | "2"  | "1"         | "4"       | "MOR"        | "JA"                        | "NEI"          | "true"        | "true"   | "false"     | "ANNET"    | "false"  | "0"     | "1"          | "false"           | "KOMBINERT_FL_SN"             | "SELVSTENDIG_NÆRINGSDRIVENDE"| "4100" | "4073" | "4075" | "4087" | "2001" | "1" | "1" | "2" | "1" | "1" | "false"  |  "INGEN"       |  "false"            |
      | "000061" | "INNVFP" | "SC21"   | "NB"     | "REVURDERING"   | "INNVILGET"             | "ENDRING_I_BEREGNING" | "2"  | "1"         | "4"       | "MOR"        | "JA"                        | "NEI"          | "true"        | "true"   | "false"     | "ANNET"    | "false"  | "0"     | "1"          | "false"           | "KOMBINERT_AT_FL_SN"          | "SELVSTENDIG_NÆRINGSDRIVENDE"| "4100" | "4073" | "4075" | "4087" | "2001" | "1" | "1" | "2" | "1" | "1" | "false"  |  "INGEN"       |  "true"             |
      | "000061" | "INNVFP" | "SC22"   | "NB"     | "REVURDERING"   | "INNVILGET"             | "ENDRING_I_BEREGNING" | "2"  | "1"         | "4"       | "MOR"        | "JA"                        | "NEI"          | "true"        | "true"   | "false"     | "ANNET"    | "false"  | "2304"  | "1"          | "false"           | "MILITÆR_ELLER_SIVIL"         | "ARBEIDSTAKER"               | "4100" | "4073" | "4075" | "4087" | "2001" | "1" | "1" | "2" | "1" | "1" | "false"  |  "INGEN"       |  "false"            |
      | "000061" | "INNVFP" | "SC23"   | "NB"     | "REVURDERING"   | "INNVILGET"             | "ENDRING_I_BEREGNING" | "2"  | "1"         | "4"       | "MOR"        | "JA"                        | "NEI"          | "true"        | "true"   | "false"     | "ANNET"    | "false"  | "2304"  | "1"          | "false"           | "KUN_YTELSE"                  | "ARBEIDSTAKER"               | "4100" | "4073" | "4075" | "4087" | "2001" | "1" | "1" | "2" | "1" | "1" | "false"  |  "INGEN"       |  "false"            |
      | "000061" | "INNVFP" | "SC24"   | "NB"     | "REVURDERING"   | "INNVILGET"             | "ENDRING_I_BEREGNING" | "2"  | "1"         | "4"       | "MOR"        | "JA"                        | "NEI"          | "true"        | "true"   | "false"     | "ANNET"    | "false"  | "2304"  | "1"          | "false"           | "DAGPENGER"                   | "ARBEIDSTAKER"               | "4100" | "4073" | "4075" | "4087" | "2001" | "1" | "1" | "2" | "1" | "1" | "false"  |  "FERIE"       |  "false"            |
      | "000061" | "INNVFP" | "SC25"   | "NB"     | "REVURDERING"   | "INNVILGET"             | "ENDRING_I_BEREGNING" | "2"  | "1"         | "4"       | "MOR"        | "JA"                        | "NEI"          | "true"        | "true"   | "false"     | "ANNET"    | "false"  | "2304"  | "1"          | "false"           | "ARBEIDSAVKLARINGSPENGER"     | "ARBEIDSTAKER"               | "4100" | "4073" | "4075" | "4087" | "2001" | "1" | "1" | "2" | "1" | "1" | "false"  |  "GENERELL"    |  "true"             |

