Feature: Verifisere REVURD Brev - TODO

  Scenario Outline: Verify if the REVURD Brev meets the baseline for Scenario <Scenario> in Language <Language>
    Given we have baselines for the brevmål <BrevMål> and brevtype <BrevType> and language <Language>
    And we construct a brev xml with the language <Language>
    And with the ytelse <Ytelse>
    When we generate brev based on the xml from ezbrev for the scenario <Scenario>
    Then the result brev must meet the baseline for that scenario

    @Regression
    Examples:
      | BrevMål  | BrevType | Scenario | Language | Ytelse |
      | "000058" | "REVURD" | "SC1"    | "NB"     | "ES"   |
      | "000058" | "REVURD" | "SC2"    | "NB"     | "FP"   |
      | "000058" | "REVURD" | "SC3"    | "NB"     | "SVP"  |

      | "000058" | "REVURD" | "SC1"    | "NN"     | "ES"   |
      | "000058" | "REVURD" | "SC2"    | "NN"     | "FP"   |
      | "000058" | "REVURD" | "SC3"    | "NN"     | "SVP"  |

      | "000058" | "REVURD" | "SC1"    | "EN"     | "ES"   |
      | "000058" | "REVURD" | "SC2"    | "EN"     | "FP"   |
      | "000058" | "REVURD" | "SC3"    | "EN"     | "SVP"  |
