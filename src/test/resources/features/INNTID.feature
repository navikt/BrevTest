Feature: Verifisere INNTID Brev - TODO

  Scenario Outline: Verify if the INNTID Brev meets the baseline for Scenario <Scenario> in Language <Language>
    Given we have baselines for the brevmål <BrevMål> and brevtype <BrevType> and language <Language>
    And we construct a brev xml with the language <Language>
    And with the ytelse <Ytelse>
    And with the behandlingsType <BehandlingsType>
    When we generate brev based on the xml from ezbrev for the scenario <Scenario>
    Then the result brev must meet the baseline for that scenario

    @Regression
    Examples:
      | BrevMål  | BrevType | Scenario | Language | Ytelse  |   BehandlingsType         |
      | "000091" | "INNTID" | "SC1"    | "NB"     | "SVP"   | "FOERSTEGANGSBEHANDLING"  |
      | "000091" | "INNTID" | "SC2"    | "NB"     | "FP"    | "FOERSTEGANGSBEHANDLING"  |
      | "000091" | "INNTID" | "SC3"    | "NB"     | "SVP"   | "REVURDERING"             |
      | "000091" | "INNTID" | "SC4"    | "NB"     | "FP"    | "REVURDERING"             |

      | "000091" | "INNTID" | "SC1"    | "NN"     | "SVP"   | "FOERSTEGANGSBEHANDLING"  |
      | "000091" | "INNTID" | "SC2"    | "NN"     | "FP"    | "FOERSTEGANGSBEHANDLING"  |
      | "000091" | "INNTID" | "SC3"    | "NN"     | "SVP"   | "REVURDERING"             |
      | "000091" | "INNTID" | "SC4"    | "NN"     | "FP"    | "REVURDERING"             |

      | "000091" | "INNTID" | "SC1"    | "EN"     | "SVP"   | "FOERSTEGANGSBEHANDLING"  |
      | "000091" | "INNTID" | "SC2"    | "EN"     | "FP"    | "FOERSTEGANGSBEHANDLING"  |
      | "000091" | "INNTID" | "SC3"    | "EN"     | "SVP"   | "REVURDERING"             |
      | "000091" | "INNTID" | "SC4"    | "EN"     | "FP"    | "REVURDERING"             |
