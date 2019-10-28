Feature: Verifisere HENLEG Brev

  Scenario Outline: Verify if the HENLEG Brev meets the baseline for Scenario <Scenario> in Language <Language>
    Given we have baselines for the brevmål <BrevMål> and brevtype <BrevType> and language <Language>
    And we construct a brev xml with the language <Language>
    And with the ytelse <Ytelse>
    And with the behandlingsType <BehandlingsType>
    And with the OpphavType <OpphavType>
    When we generate brev based on the xml from ezbrev for the scenario <Scenario>
    Then the result brev must meet the baseline for that scenario

    @Regression
    Examples:
      | BrevMål  | BrevType | Scenario | Language | Ytelse | BehandlingsType     | OpphavType |
      | "000050" | "HENLEG" | "SC1"    | "NB"     | "ES"   | "ENDRINGSSØKNAD"    | "NULL"     |
      | "000050" | "HENLEG" | "SC2"    | "NB"     | "ES"   | "FØRSTEGANGSSØKNAD" | "NULL"     |
      | "000050" | "HENLEG" | "SC3"    | "NB"     | "FP"   | "ENDRINGSSØKNAD"    | "NULL"     |
      | "000050" | "HENLEG" | "SC4"    | "NB"     | "FP"   | "FØRSTEGANGSSØKNAD" | "NULL"     |
      | "000050" | "HENLEG" | "SC5"    | "NB"     | "FP"   | "REVURDERING"       | "NULL"     |
      | "000050" | "HENLEG" | "SC7"    | "NB"     | "ES"   | "KLAGE"             | "FAMPEN"   |
      | "000050" | "HENLEG" | "SC8"    | "NB"     | "FP"   | "KLAGE"             | "FAMPEN"   |
      | "000050" | "HENLEG" | "SC9"    | "NB"     | "ES"   | "INNSYN"            | "NULL"     |
      | "000050" | "HENLEG" | "SC10"   | "NB"     | "FP"   | "INNSYN"            | "NULL"     |
      | "000050" | "HENLEG" | "SC11"   | "NB"     | "ES"   | "KLAGE"             | "KLAGE"    |
      | "000050" | "HENLEG" | "SC12"   | "NB"     | "FP"   | "KLAGE"             | "KLAGE"    |

      | "000050" | "HENLEG" | "SC1"    | "NN"     | "ES"   | "ENDRINGSSØKNAD"    | "NULL"     |
      | "000050" | "HENLEG" | "SC2"    | "NN"     | "ES"   | "FØRSTEGANGSSØKNAD" | "NULL"     |
      | "000050" | "HENLEG" | "SC3"    | "NN"     | "FP"   | "ENDRINGSSØKNAD"    | "NULL"     |
      | "000050" | "HENLEG" | "SC4"    | "NN"     | "FP"   | "FØRSTEGANGSSØKNAD" | "NULL"     |
      | "000050" | "HENLEG" | "SC5"    | "NN"     | "FP"   | "REVURDERING"       | "NULL"     |
      | "000050" | "HENLEG" | "SC7"    | "NN"     | "ES"   | "KLAGE"             | "FAMPEN"   |
      | "000050" | "HENLEG" | "SC8"    | "NN"     | "FP"   | "KLAGE"             | "FAMPEN"   |
      | "000050" | "HENLEG" | "SC9"    | "NN"     | "ES"   | "INNSYN"            | "NULL"     |
      | "000050" | "HENLEG" | "SC10"   | "NN"     | "FP"   | "INNSYN"            | "NULL"     |
      | "000050" | "HENLEG" | "SC11"   | "NN"     | "ES"   | "KLAGE"             | "KLAGE"    |
      | "000050" | "HENLEG" | "SC12"   | "NN"     | "FP"   | "KLAGE"             | "KLAGE"    |

      | "000050" | "HENLEG" | "SC1"    | "EN"     | "ES"   | "ENDRINGSSØKNAD"    | "NULL"     |
      | "000050" | "HENLEG" | "SC2"    | "EN"     | "ES"   | "FØRSTEGANGSSØKNAD" | "NULL"     |
      | "000050" | "HENLEG" | "SC3"    | "EN"     | "FP"   | "ENDRINGSSØKNAD"    | "NULL"     |
      | "000050" | "HENLEG" | "SC4"    | "EN"     | "FP"   | "FØRSTEGANGSSØKNAD" | "NULL"     |
      | "000050" | "HENLEG" | "SC5"    | "EN"     | "FP"   | "REVURDERING"       | "NULL"     |
      | "000050" | "HENLEG" | "SC7"    | "EN"     | "ES"   | "KLAGE"             | "FAMPEN"   |
      | "000050" | "HENLEG" | "SC8"    | "EN"     | "FP"   | "KLAGE"             | "FAMPEN"   |
      | "000050" | "HENLEG" | "SC9"    | "EN"     | "ES"   | "INNSYN"            | "NULL"     |
      | "000050" | "HENLEG" | "SC10"   | "EN"     | "FP"   | "INNSYN"            | "NULL"     |
      | "000050" | "HENLEG" | "SC11"   | "EN"     | "ES"   | "KLAGE"             | "KLAGE"    |
      | "000050" | "HENLEG" | "SC12"   | "EN"     | "FP"   | "KLAGE"             | "KLAGE"    |
