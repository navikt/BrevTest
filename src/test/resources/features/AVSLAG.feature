Feature: Verifisere AVSLAG Brev - TODO

  Scenario Outline: Verify if the AVSLAG Brev meets the baseline for Scenario <Scenario> in Language <Language>
    Given we have baselines for the brevmål <BrevMål> and brevtype <BrevType> and language <Language>
    And we construct a brev xml with language <Language>
    And with behandlingsType <BehandlingsType>
    And with vilkaarType <VilkaarType>
    And with antallBarn <AntallBarn>
    And with avslagsÅrsak <AvslagsÅrsak>
    And with gjelderFoedsel <GjelderFoedsel>
    And with skjaeringstidspunktPassert <SkjaeringstidspunktPassert>
    When we generate brev based on the xml from ezbrev for the scenario <Scenario>
    Then the result brev must meet the baseline for that scenario

    @Regression
    Examples:
      | BrevMål  | BrevType | Scenario | Language |  BehandlingsType |  VilkaarType | AntallBarn |AvslagsÅrsak | GjelderFoedsel | SkjaeringstidspunktPassert |
      | "000051" | "AVSLAG" | "SC1"    | "NB"     |  "SØKNAD"        | "FP_VK_2"    | "2"        |   "1031"    | "true"         |   "false"                  |


