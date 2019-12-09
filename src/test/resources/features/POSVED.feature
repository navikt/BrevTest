Feature: Verifisere POSVED Brev

  Scenario Outline: Verify if the POSVED Brev meets the baseline for Scenario <Scenario> and Language <Language>
    Given we have baselines for the brevmål <BrevMål> and brevtype <BrevType> and language <Language>
    And we construct a brev xml with language <Language>
    And with personstatus <Personstatus>
    And with behandlingsType <BehandlingsType>
    And with automatiskBehandlet <AutomatiskBehandlet>
    When we generate brev based on the xml from ezbrev for the scenario <Scenario>
    Then the result brev must meet the baseline for that scenario

    @Regression
    Examples:
      | BrevMål  | BrevType | Scenario | Language | Personstatus |       BehandlingsType      |  AutomatiskBehandlet  |
      | "000048" | "POSVED" | "SC1"    | "NB"     | "ANNET"      | "FOERSTEGANGSBEHANDLING"   |     "true"            |
      | "000048" | "POSVED" | "SC2"    | "NB"     | "ANNET"      | "REVURDERING"              |     "false"           |
      | "000048" | "POSVED" | "SC3"    | "NB"     | "DOD"        | "REVURDERING"              |     "false"           |
      | "000048" | "POSVED" | "SC4"    | "NB"     | "ANNET"      | "MEDHOLD"                  |     "false"           |
      | "000048" | "POSVED" | "SC5"    | "NB"     | "DOD"        | "MEDHOLD"                  |     "false"           |

      | "000048" | "POSVED" | "SC1"    | "NN"     | "ANNET"      | "FOERSTEGANGSBEHANDLING"   |     "true"            |
      | "000048" | "POSVED" | "SC2"    | "NN"     | "ANNET"      | "REVURDERING"              |     "false"           |
      | "000048" | "POSVED" | "SC3"    | "NN"     | "DOD"        | "REVURDERING"              |     "false"           |
      | "000048" | "POSVED" | "SC4"    | "NN"     | "ANNET"      | "MEDHOLD"                  |     "false"           |
      | "000048" | "POSVED" | "SC5"    | "NN"     | "DOD"        | "MEDHOLD"                  |     "false"           |

      | "000048" | "POSVED" | "SC1"    | "EN"     | "ANNET"      | "FOERSTEGANGSBEHANDLING"   |     "true"            |
      | "000048" | "POSVED" | "SC2"    | "EN"     | "ANNET"      | "REVURDERING"              |     "false"           |
      | "000048" | "POSVED" | "SC3"    | "EN"     | "DOD"        | "REVURDERING"              |     "false"           |
      | "000048" | "POSVED" | "SC4"    | "EN"     | "ANNET"      | "MEDHOLD"                  |     "false"           |
      | "000048" | "POSVED" | "SC5"    | "EN"     | "DOD"        | "MEDHOLD"                  |     "false"           |

