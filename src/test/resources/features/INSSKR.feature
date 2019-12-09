Feature: Verifisere INSSKR Brev

  Scenario Outline: Verify if the INSSKR Brev meets the baseline for Scenario <Scenario> and Language <Language>
    Given we have baselines for the brevmål <BrevMål> and brevtype <BrevType> and language <Language>
    And we construct a brev xml with language <Language>
    And with ytelse <Ytelse>
    And with innsynReslutatType <InnsynReslutatType>
    When we generate brev based on the xml from ezbrev for the scenario <Scenario>
    Then the result brev must meet the baseline for that scenario

    @Regression
    Examples:
      | BrevMål  | BrevType | Scenario | Language | Ytelse | InnsynReslutatType |
      | "000071" | "INSSKR" | "SC1"    | "NB"     | "ES"   | "INNVILGET"        |
      | "000071" | "INSSKR" | "SC2"    | "NB"     | "FP"   | "DELVISINNVILGET"  |
      | "000071" | "INSSKR" | "SC3"    | "NB"     | "FP"   | "AVVIST"           |
      | "000071" | "INSSKR" | "SC4"    | "NB"     | "ES"   | "DELVISINNVILGET"  |
      | "000071" | "INSSKR" | "SC5"    | "NB"     | "ES"   | "AVVIST"           |

      | "000071" | "INSSKR" | "SC1"    | "NN"     | "ES"   | "INNVILGET"        |
      | "000071" | "INSSKR" | "SC2"    | "NN"     | "FP"   | "DELVISINNVILGET"  |
      | "000071" | "INSSKR" | "SC3"    | "NN"     | "FP"   | "AVVIST"           |
      | "000071" | "INSSKR" | "SC4"    | "NN"     | "ES"   | "DELVISINNVILGET"  |
      | "000071" | "INSSKR" | "SC5"    | "NN"     | "ES"   | "AVVIST"           |
