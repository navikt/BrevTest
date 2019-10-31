Feature: Verifisere KLAGAV Brev - TODO

  Scenario Outline: Verify if the KLAGAV Brev meets the baseline for Scenario <Scenario> in Language <Language>
    Given we have baselines for the brevmål <BrevMål> and brevtype <BrevType> and language <Language>
    And we construct a brev xml with the language <Language>
    When we generate brev based on the xml from ezbrev for the scenario <Scenario>
    Then the result brev must meet the baseline for that scenario

    @Regression
    Examples:
      | BrevMål  | BrevType | Scenario | Language |
      | "000054" | "KLAGAV" | "SC1"    | "NB"     |

      | "000054" | "KLAGAV" | "SC1"    | "NN"     |

      | "000054" | "KLAGAV" | "SC1"    | "EN"     |
