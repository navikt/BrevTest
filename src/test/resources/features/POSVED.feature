Feature: Verifisere POSVED Brev - TODO

  Scenario Outline: Verify if the POSVED Brev meets the baseline for Scenario <Scenario> and Language <Language>
    Given we have baselines for the brevmål <BrevMål> and brevtype <BrevType> and language <Language>
    And we construct a brev xml with the language <Language>
    When we generate brev based on the xml from ezbrev for the scenario <Scenario>
    Then the result brev must meet the baseline for that scenario

    @Regression
    Examples:
      | BrevMål  | BrevType | Scenario | Language |
      | "000048" | "POSVED" | "SC1"    | "NB"     |
      | "000048" | "POSVED" | "SC2"    | "NB"     |

      | "000048" | "POSVED" | "SC1"    | "NN"     |
      | "000048" | "POSVED" | "SC2"    | "NN"     |

      | "000048" | "POSVED" | "SC1"    | "EN"     |
      | "000048" | "POSVED" | "SC2"    | "EN"     |
