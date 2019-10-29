Feature: Verifisere KLAGOV Brev

  Scenario Outline: Verify if the KLAGOV Brev meets the baseline for Scenario <Scenario> and Language <Language>
    Given we have baselines for the brevmål <BrevMål> and brevtype <BrevType> and language <Language>
    And we construct a brev xml with the language <Language>
    And with the ytelse <Ytelse>
    When we generate brev based on the xml from ezbrev for the scenario <Scenario>
    Then the result brev must meet the baseline for that scenario

    @Regression
    Examples:
      | BrevMål  | BrevType | Scenario | Language | Ytelse |
      | "000060" | "KLAGOV" | "SC1"    | "NB"     | "ES"   |
      | "000060" | "KLAGOV" | "SC2"    | "NB"     | "FP"   |
      | "000060" | "KLAGOV" | "SC3"    | "NB"     | "SVP"  |
