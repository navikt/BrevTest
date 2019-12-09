Feature: Verifisere INNLYS Brev

  Scenario Outline: Verify if the INNLYS Brev meets the baseline for Scenario <Scenario> and Language <Language>
    Given we have baselines for the brevmål <BrevMål> and brevtype <BrevType> and language <Language>
    And we construct a brev xml with language <Language>
    And with ytelse <Ytelse>
    When we generate brev based on the xml from ezbrev for the scenario <Scenario>
    Then the result brev must meet the baseline for that scenario

    @Regression
    Examples:
      | BrevMål  | BrevType | Scenario | Language | Ytelse |
      | "000096" | "INNLYS" | "SC1"    | "NB"     | "ES"   |

      | "000096" | "INNLYS" | "SC1"    | "NN"     | "ES"   |

      | "000096" | "INNLYS" | "SC1"    | "EN"     | "ES"   |

