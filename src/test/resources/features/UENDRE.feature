Feature: Verifisere UENDRE Brev

  Scenario Outline: Verify if the UENDRE Brev meets the baseline for Scenario <Scenario> in Language <Language>
    Given we have baselines for the brevmål <BrevMål> and brevtype <BrevType> and language <Language>
    And we construct a brev xml with language <Language>
    And with ytelse <Ytelse>
    When we generate brev based on the xml from ezbrev for the scenario <Scenario>
    Then the result brev must meet the baseline for that scenario

    @Regression
    Examples:
      | BrevMål  | BrevType | Scenario | Language | Ytelse |
      | "000052" | "UENDRE" | "SC1"    | "NB"     | "ES"   |
      | "000052" | "UENDRE" | "SC2"    | "NB"     | "FP"   |
      | "000052" | "UENDRE" | "SC3"    | "NB"     | "SVP"  |

      | "000052" | "UENDRE" | "SC1"    | "NN"     | "ES"   |
      | "000052" | "UENDRE" | "SC2"    | "NN"     | "FP"   |
      | "000052" | "UENDRE" | "SC3"    | "NN"     | "SVP"  |

      | "000052" | "UENDRE" | "SC1"    | "EN"     | "ES"   |
      | "000052" | "UENDRE" | "SC2"    | "EN"     | "FP"   |
      | "000052" | "UENDRE" | "SC3"    | "EN"     | "SVP"  |
