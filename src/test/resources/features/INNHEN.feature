Feature: Verifisere INNHEN Brev

  Scenario Outline: Verify if the INNHEN Brev meets the baseline for Scenario <Scenario> in Language <Language>
    Given we have baselines for the brevmål <BrevMål> and brevtype <BrevType> and language <Language>
    And we construct a brev xml with language <Language>
    And with ytelse <Ytelse>
    And with behandlingsType <BehandlingsType>
    And with personstatus <PersonStatus>
    When we generate brev based on the xml from ezbrev for the scenario <Scenario>
    Then the result brev must meet the baseline for that scenario

    @Regression
    Examples:
      | BrevMål  | BrevType | Scenario | Language | Ytelse | BehandlingsType          | PersonStatus |
      | "000049" | "INNHEN" | "SC1"    | "NB"     | "ES"   | "FOERSTEGANGSBEHANDLING" | "ANNET"      |
      | "000049" | "INNHEN" | "SC2"    | "NB"     | "ES"   | "FOERSTEGANGSBEHANDLING" | "DOD"        |
      | "000049" | "INNHEN" | "SC3"    | "NB"     | "FP"   | "FOERSTEGANGSBEHANDLING" | "ANNET"      |
      | "000049" | "INNHEN" | "SC4"    | "NB"     | "FP"   | "FOERSTEGANGSBEHANDLING" | "DOD"        |
      | "000049" | "INNHEN" | "SC5"    | "NB"     | "ES"   | "REVURDERING"            | "DEFAULT"    |
      | "000049" | "INNHEN" | "SC6"    | "NB"     | "FP"   | "REVURDERING"            | "DEFAULT"    |
      | "000049" | "INNHEN" | "SC7"    | "NB"     | "ES"   | "KLAGE"                  | "ANNET"      |
      | "000049" | "INNHEN" | "SC8"    | "NB"     | "ES"   | "KLAGE"                  | "DOD"        |
      | "000049" | "INNHEN" | "SC9"    | "NB"     | "FP"   | "KLAGE"                  | "ANNET"      |
      | "000049" | "INNHEN" | "SC10"   | "NB"     | "FP"   | "KLAGE"                  | "DOD"        |
      | "000049" | "INNHEN" | "SC11"   | "NB"     | "FP"   | "ENDRINGSSØKNAD"         | "ANNET"      |
      | "000049" | "INNHEN" | "SC12"   | "NB"     | "SVP"  | "FOERSTEGANGSBEHANDLING" | "ANNET"      |
      | "000049" | "INNHEN" | "SC13"   | "NB"     | "SVP"  | "FOERSTEGANGSBEHANDLING" | "DOD"        |
      | "000049" | "INNHEN" | "SC14"   | "NB"     | "SVP"  | "REVURDERING"            | "DEFAULT"    |
      | "000049" | "INNHEN" | "SC15"   | "NB"     | "SVP"  | "KLAGE"                  | "ANNET"      |
      | "000049" | "INNHEN" | "SC16"   | "NB"     | "SVP"  | "KLAGE"                  | "DOD"        |
      | "000049" | "INNHEN" | "SC17"   | "NB"     | "SVP"  | "ENDRINGSSØKNAD"         | "ANNET"      |

      | "000049" | "INNHEN" | "SC1"    | "NN"     | "ES"   | "FOERSTEGANGSBEHANDLING" | "ANNET"      |
      | "000049" | "INNHEN" | "SC2"    | "NN"     | "ES"   | "FOERSTEGANGSBEHANDLING" | "DOD"        |
      | "000049" | "INNHEN" | "SC3"    | "NN"     | "FP"   | "FOERSTEGANGSBEHANDLING" | "ANNET"      |
      | "000049" | "INNHEN" | "SC4"    | "NN"     | "FP"   | "FOERSTEGANGSBEHANDLING" | "DOD"        |
      | "000049" | "INNHEN" | "SC5"    | "NN"     | "ES"   | "REVURDERING"            | "DEFAULT"    |
      | "000049" | "INNHEN" | "SC6"    | "NN"     | "FP"   | "REVURDERING"            | "DEFAULT"    |
      | "000049" | "INNHEN" | "SC7"    | "NN"     | "ES"   | "KLAGE"                  | "ANNET"      |
      | "000049" | "INNHEN" | "SC8"    | "NN"     | "ES"   | "KLAGE"                  | "DOD"        |
      | "000049" | "INNHEN" | "SC9"    | "NN"     | "FP"   | "KLAGE"                  | "ANNET"      |
      | "000049" | "INNHEN" | "SC10"   | "NN"     | "FP"   | "KLAGE"                  | "DOD"        |
      | "000049" | "INNHEN" | "SC11"   | "NN"     | "FP"   | "ENDRINGSSØKNAD"         | "ANNET"      |
      | "000049" | "INNHEN" | "SC12"   | "NN"     | "SVP"  | "FOERSTEGANGSBEHANDLING" | "ANNET"      |
      | "000049" | "INNHEN" | "SC13"   | "NN"     | "SVP"  | "FOERSTEGANGSBEHANDLING" | "DOD"        |
      | "000049" | "INNHEN" | "SC14"   | "NN"     | "SVP"  | "REVURDERING"            | "DEFAULT"    |
      | "000049" | "INNHEN" | "SC15"   | "NN"     | "SVP"  | "KLAGE"                  | "ANNET"      |
      | "000049" | "INNHEN" | "SC16"   | "NN"     | "SVP"  | "KLAGE"                  | "DOD"        |
      | "000049" | "INNHEN" | "SC17"   | "NN"     | "SVP"  | "ENDRINGSSØKNAD"         | "ANNET"      |

      | "000049" | "INNHEN" | "SC1"    | "EN"     | "ES"   | "FOERSTEGANGSBEHANDLING" | "ANNET"      |
      | "000049" | "INNHEN" | "SC2"    | "EN"     | "ES"   | "FOERSTEGANGSBEHANDLING" | "DOD"        |
      | "000049" | "INNHEN" | "SC3"    | "EN"     | "FP"   | "FOERSTEGANGSBEHANDLING" | "ANNET"      |
      | "000049" | "INNHEN" | "SC4"    | "EN"     | "FP"   | "FOERSTEGANGSBEHANDLING" | "DOD"        |
      | "000049" | "INNHEN" | "SC5"    | "EN"     | "ES"   | "REVURDERING"            | "DEFAULT"    |
      | "000049" | "INNHEN" | "SC6"    | "EN"     | "FP"   | "REVURDERING"            | "DEFAULT"    |
      | "000049" | "INNHEN" | "SC7"    | "EN"     | "ES"   | "KLAGE"                  | "ANNET"      |
      | "000049" | "INNHEN" | "SC8"    | "EN"     | "ES"   | "KLAGE"                  | "DOD"        |
      | "000049" | "INNHEN" | "SC9"    | "EN"     | "FP"   | "KLAGE"                  | "ANNET"      |
      | "000049" | "INNHEN" | "SC10"   | "EN"     | "FP"   | "KLAGE"                  | "DOD"        |
      | "000049" | "INNHEN" | "SC11"   | "EN"     | "FP"   | "ENDRINGSSØKNAD"         | "ANNET"      |
      | "000049" | "INNHEN" | "SC12"   | "EN"     | "SVP"  | "FOERSTEGANGSBEHANDLING" | "ANNET"      |
      | "000049" | "INNHEN" | "SC13"   | "EN"     | "SVP"  | "FOERSTEGANGSBEHANDLING" | "DOD"        |
      | "000049" | "INNHEN" | "SC14"   | "EN"     | "SVP"  | "REVURDERING"            | "DEFAULT"    |
      | "000049" | "INNHEN" | "SC15"   | "EN"     | "SVP"  | "KLAGE"                  | "ANNET"      |
      | "000049" | "INNHEN" | "SC16"   | "EN"     | "SVP"  | "KLAGE"                  | "DOD"        |
      | "000049" | "INNHEN" | "SC17"   | "EN"     | "SVP"  | "ENDRINGSSØKNAD"         | "ANNET"      |
