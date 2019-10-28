Feature: Verifisere VEDMED Brev

  Scenario Outline: Verify if the VEDMED Brev meets the baseline for Scenario <Scenario> and Language <Language>
    Given we have baselines for the brevmål <BrevMål> and brevtype <BrevType> and language <Language>
    And we construct a brev xml with the language <Language>
    And with the ytelse <Ytelse>
    And with the OpphavType <OpphavType>
    When we generate brev based on the xml from ezbrev for the scenario <Scenario>
    Then the result brev must meet the baseline for that scenario

    @Regression
    Examples:
      | BrevMål  | BrevType | Scenario | Language | Ytelse | OpphavType |
      | "000114" | "VEDMED" | "SC1"    | "NB"     | "FP"   | "FAMPEN"   |
      | "000114" | "VEDMED" | "SC2"    | "NB"     | "ES"   | "FAMPEN"   |
      | "000114" | "VEDMED" | "SC3"    | "NB"     | "SVP"  | "FAMPEN"   |
      | "000114" | "VEDMED" | "SC4"    | "NB"     | "FP"   | "KLAGE"    |
      | "000114" | "VEDMED" | "SC5"    | "NB"     | "ES"   | "KLAGE"    |
      | "000114" | "VEDMED" | "SC7"    | "NB"     | "SVP"  | "KLAGE"    |
      | "000114" | "VEDMED" | "SC8"    | "NB"     | "FP"   | "FAMPEN"   |

      | "000114" | "VEDMED" | "SC1"    | "NN"     | "FP"   | "FAMPEN"   |
      | "000114" | "VEDMED" | "SC2"    | "NN"     | "ES"   | "FAMPEN"   |
      | "000114" | "VEDMED" | "SC3"    | "NN"     | "SVP"  | "FAMPEN"   |
      | "000114" | "VEDMED" | "SC4"    | "NN"     | "FP"   | "KLAGE"    |
      | "000114" | "VEDMED" | "SC5"    | "NN"     | "ES"   | "KLAGE"    |
      | "000114" | "VEDMED" | "SC7"    | "NN"     | "SVP"  | "KLAGE"    |
      | "000114" | "VEDMED" | "SC8"    | "NN"     | "FP"   | "FAMPEN"   |

      | "000114" | "VEDMED" | "SC1"    | "EN"     | "FP"   | "FAMPEN"   |
      | "000114" | "VEDMED" | "SC2"    | "EN"     | "ES"   | "FAMPEN"   |
      | "000114" | "VEDMED" | "SC3"    | "EN"     | "SVP"  | "FAMPEN"   |
      | "000114" | "VEDMED" | "SC4"    | "EN"     | "FP"   | "KLAGE"    |
      | "000114" | "VEDMED" | "SC5"    | "EN"     | "ES"   | "KLAGE"    |
      | "000114" | "VEDMED" | "SC7"    | "EN"     | "SVP"  | "KLAGE"    |
      | "000114" | "VEDMED" | "SC8"    | "EN"     | "FP"   | "FAMPEN"   |
