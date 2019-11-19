Feature: Verifisere FORLEN Brev

  Scenario Outline: Verify if the FORLEN Brev meets the baseline for Scenario <Scenario> in Language <Language>
    Given we have baselines for the brevmål <BrevMål> and brevtype <BrevType> and language <Language>
    And we construct a brev xml with the language <Language>
    And with the ytelse <Ytelse>
    And with the variant <Variant>
    And with the antallBarn <AntallBarn>
    And with the personStatus <Personstatus>
    When we generate brev based on the xml from ezbrev for the scenario <Scenario>
    Then the result brev must meet the baseline for that scenario

    @Regression
    Examples:
      | BrevMål  | BrevType | Scenario | Language | Ytelse | Variant      | AntallBarn | Personstatus |
      | "000056" | "FORLEN" | "SC1"    | "NB"     | "ES"   | "FORLENGET"  | "1"        | "Annet"      |
      | "000056" | "FORLEN" | "SC2"    | "NB"     | "FP"   | "MEDLEM"     | "2"        | "Annet"      |
      | "000056" | "FORLEN" | "SC3"    | "NB"     | "SVP"  | "NULL"       | "NULL"     | "Annet"      |
      | "000056" | "FORLEN" | "SC4"    | "NB"     | "ES"   | "KLAGE"      | "NULL"     | "Annet"      |
      | "000056" | "FORLEN" | "SC5"    | "NB"     | "FP"   | "KLAGE"      | "NULL"     | "Annet"      |
      | "000056" | "FORLEN" | "SC6"    | "NB"     | "SVP"  | "KLAGE"      | "NULL"     | "Annet"      |
      | "000056" | "FORLEN" | "SC7"    | "NB"     | "FP"   | "FORTIDLIG"  | "NULL"     | "Annet"      |
      | "000056" | "FORLEN" | "SC8"    | "NB"     | "SVP"  | "FORTIDLIG"  | "NULL"     | "Annet"      |
      | "000056" | "FORLEN" | "SC9"    | "NB"     | "FP"   | "OPPTJENING" | "NULL"     | "Annet"      |
      | "000056" | "FORLEN" | "SC10"   | "NB"     | "SVP"  | "OPPTJENING" | "NULL"     | "Annet"      |

      | "000056" | "FORLEN" | "SC1"    | "NN"     | "ES"   | "FORLENGET"  | "1"        | "Annet"      |
      | "000056" | "FORLEN" | "SC2"    | "NN"     | "FP"   | "MEDLEM"     | "2"        | "Annet"      |
      | "000056" | "FORLEN" | "SC3"    | "NN"     | "SVP"  | "NULL"       | "NULL"     | "Annet"      |
      | "000056" | "FORLEN" | "SC4"    | "NN"     | "ES"   | "KLAGE"      | "NULL"     | "Annet"      |
      | "000056" | "FORLEN" | "SC5"    | "NN"     | "FP"   | "KLAGE"      | "NULL"     | "Annet"      |
      | "000056" | "FORLEN" | "SC6"    | "NN"     | "SVP"  | "KLAGE"      | "NULL"     | "Annet"      |
      | "000056" | "FORLEN" | "SC7"    | "NN"     | "FP"   | "FORTIDLIG"  | "NULL"     | "Annet"      |
      | "000056" | "FORLEN" | "SC8"    | "NN"     | "SVP"  | "FORTIDLIG"  | "NULL"     | "Annet"      |
      | "000056" | "FORLEN" | "SC9"    | "NN"     | "FP"   | "OPPTJENING" | "NULL"     | "Annet"      |
      | "000056" | "FORLEN" | "SC10"   | "NN"     | "SVP"  | "OPPTJENING" | "NULL"     | "Annet"      |

      | "000056" | "FORLEN" | "SC1"    | "EN"     | "ES"   | "FORLENGET"  | "1"        | "Annet"      |
      | "000056" | "FORLEN" | "SC2"    | "EN"     | "FP"   | "MEDLEM"     | "2"        | "Annet"      |
      | "000056" | "FORLEN" | "SC3"    | "EN"     | "SVP"  | "NULL"       | "NULL"     | "Annet"      |
      | "000056" | "FORLEN" | "SC4"    | "EN"     | "ES"   | "KLAGE"      | "NULL"     | "Annet"      |
      | "000056" | "FORLEN" | "SC5"    | "EN"     | "FP"   | "KLAGE"      | "NULL"     | "Annet"      |
      | "000056" | "FORLEN" | "SC6"    | "EN"     | "SVP"  | "KLAGE"      | "NULL"     | "Annet"      |
      | "000056" | "FORLEN" | "SC7"    | "EN"     | "FP"   | "FORTIDLIG"  | "NULL"     | "Annet"      |
      | "000056" | "FORLEN" | "SC8"    | "EN"     | "SVP"  | "FORTIDLIG"  | "NULL"     | "Annet"      |
      | "000056" | "FORLEN" | "SC9"    | "EN"     | "FP"   | "OPPTJENING" | "NULL"     | "Annet"      |
      | "000056" | "FORLEN" | "SC10"   | "EN"     | "SVP"  | "OPPTJENING" | "NULL"     | "Annet"      |
