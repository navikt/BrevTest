Feature: Verifisere INNVFP Brev

  Scenario Outline: Verify if the INNVFP Brev meets the baseline for Scenario <Scenario> and Language <Language>
    Given we have baselines for the brevmål <BrevMål> and brevtype <BrevType> and language <Language>
    And we construct a brev xml with the language <Language>
    And with the behandlingsType <BehandlingsType>
    And with behandlingsResultat <BehandlingsResultat>
    And with the antallBarn <AntallBarn>
    And with relasjonskode <Relasjonskode>
    And with annenForelderHarRettVurdert <AnnenForeldreHarRettVurdert>
    And with aleneomsorg <AleneOmsorg>
    And with barnErFødt <BarnErFødt>
    And with GjelderFoedsel <GjelderFødsel>
    And with the personStatus <Personstatus>
    And with konsekvensForYtelse <KonsekvensForYtelse>
    And with dodsdato <Dodsdato>
    And with regelStatus <RegelStatus>
    And with status <Status>
    And with antallArbeidsgivere <AntallArbeidsgivere>
    And with antallAvslag <AntallAvslag>
    And periode 1 with årsak <Årsak1>, gradering <Gradering1> og antallTapteDager <TapteDager1>
    And periode 2 with årsak <Årsak2>, gradering = false og antallTapteDager <TapteDager2>
    And periode 3 with årsak <Årsak3>, gradering = false og antallTapteDager <TapteDager3>
    And periode 4 with årsak <Årsak4>, gradering = false og antallTapteDager <TapteDager4>
    And periode 5 with årsak <Årsak5>, gradering = false og antallTapteDager <TapteDager5>
    When we generate brev based on the xml from ezbrev for the scenario <Scenario>
    Then the result brev must meet the baseline for that scenario

    @Regression
    Examples:
      | BrevMål  | BrevType | Scenario | Language | BehandlingsType |   BehandlingsResultat   | AntallBarn | AntallArbeidsgivere| AntallAvslag | Relasjonskode | AnnenForeldreHarRettVurdert |  AleneOmsorg  | BarnErFødt | GjelderFødsel | Personstatus | KonsekvensForYtelse  | Dodsdato  |   RegelStatus  |      Status    | Årsak1 |Gradering1| Årsak2 | Årsak3 | Årsak4 | Årsak5 |TapteDager1|TapteDager2|TapteDager3|TapteDager4|TapteDager5|
      # Testscenario FØR blokk: Utbetaling
      | "000061" | "INNVFP" | "SC1"    | "NB"     | "REVURDERING"   | "INNVILGET"             | "1"        | "1"                | "0"          | "FAR"         | "IKKE_VURDERT"              | "IKKE_VURDERT"| "true"     | "true"        | "ANNET"      | "ENDRING_I_UTTAK"    | "false"   | "ARBEIDSTAKER" | "ARBEIDSTAKER" | "2001" | "false"  | "2010" | "2011" | "2012" | "2013" | "1"       | "1"       | "2"       | "1"       | "1"       |
      | "000061" | "INNVFP" | "SC2"    | "NB"     | "REVURDERING"   | "INGEN_ENDRING"         | "1"        | "1"                | "0"          | "FAR"         | "IKKE_VURDERT"              | "IKKE_VURDERT"| "true"     | "true"        | "ANNET"      | "ENDRING_I_BEREGNING"| "true"    | "ARBEIDSTAKER" | "ARBEIDSTAKER" | "2001" | "false"  | "2001" | "2001" | "2001" | "2001" | "1"       | "1"       | "2"       | "1"       | "1"       |
      | "000061" | "INNVFP" | "SC3"    | "NB"     | "REVURDERING"   | "FORELDREPENGER_ENDRET" | "1"        | "1"                | "0"          | "FAR"         | "IKKE_VURDERT"              | "IKKE_VURDERT"| "true"     | "true"        | "ANNET"      | "ENDRING_I_BEREGNING"| "true"    | "ARBEIDSTAKER" | "ARBEIDSTAKER" | "2001" | "false"  | "2001" | "2001" | "2001" | "2001" | "1"       | "1"       | "2"       | "1"       | "1"       |
      # Testscenario for blokk: Ikke Dødt Barn
      | "000061" | "INNVFP" | "SC4"    | "NB"     | "REVURDERING"   | "INNVILGET"             | "2"        | "2"                | "0"          | "MOR"         | "NEI"                       | "JA"          | "false"    | "true"        | "ANNET"      | "ENDRING_I_BEREGNING"| "false"   | "ARBEIDSTAKER" | "ARBEIDSTAKER" | "4095" | "false"  | "2001" | "2001" | "2001" | "2001" | "1"       | "1"       | "2"       | "1"       | "1"       |
      | "000061" | "INNVFP" | "SC5"    | "NB"     | "REVURDERING"   | "INNVILGET"             | "2"        | "2"                | "0"          | "FAR"         | "JA"                        | "NEI"         | "false"    | "true"        | "ANNET"      | "ENDRING_I_UTTAK"    | "false"   | "ARBEIDSTAKER" | "ARBEIDSTAKER" | "4503" | "true"   | "2014" | "2020" | "2022" | "2021" | "1"       | "1"       | "2"       | "1"       | "1"       |
      | "000061" | "INNVFP" | "SC6"    | "NB"     | "REVURDERING"   | "INNVILGET"             | "2"        | "1"                | "0"          | "MOR"         | "IKKE_VURDERT"              | "JA"          | "true"     | "true"        | "ANNET"      | "ENDRING_I_UTTAK"    | "false"   | "ARBEIDSTAKER" | "ARBEIDSTAKER" | "4080" | "true"   | "2023" | "2001" | "2001" | "2001" | "1"       | "1"       | "2"       | "1"       | "1"       |
      | "000061" | "INNVFP" | "SC7"    | "NB"     | "REVURDERING"   | "INNVILGET"             | "2"        | "1"                | "0"          | "MOR"         | "IKKE_VURDERT"              | "NEI"         | "true"     | "true"        | "ANNET"      | "ENDRING_I_BEREGNING"| "false"   | "ARBEIDSTAKER" | "ARBEIDSTAKER" | "2001" | "false"  | "2001" | "2001" | "2001" | "2001" | "1"       | "1"       | "2"       | "1"       | "1"       |
      | "000061" | "INNVFP" | "SC8"    | "NB"     | "REVURDERING"   | "INNVILGET"             | "2"        | "1"                | "4"          | "MOR"         | "NEI"                       | "JA"          | "true"     | "false"       | "ANNET"      | "ENDRING_I_UTTAK"    | "false"   | "ARBEIDSTAKER" | "ARBEIDSTAKER" | "4504" | "true"   | "4077" | "4020" | "4020" | "4005" | "1"       | "1"       | "2"       | "1"       | "1"       |
      | "000061" | "INNVFP" | "SC9"    | "NB"     | "REVURDERING"   | "INNVILGET"             | "2"        | "1"                | "4"          | "MOR"         | "JA"                        | "NEI"         | "true"     | "false"       | "ANNET"      | "ENDRING_I_UTTAK"    | "false"   | "ARBEIDSTAKER" | "ARBEIDSTAKER" | "2001" | "false"  | "4005" | "2001" | "2001" | "2001" | "1"       | "1"       | "2"       | "1"       | "1"       |
      # Testscenario for blokk:
      | "000061" | "INNVFP" | "SC11"    | "NB"     | "REVURDERING"   | "INNVILGET"             | "1"       | "1"                | "0"          | "FAR"         | "IKKE_VURDERT"              | "IKKE_VURDERT"| "true"     | "true"        | "ANNET"      | "ENDRING_I_UTTAK"    | "false"   | "ARBEIDSTAKER" | "ARBEIDSTAKER" | "2001" | "false"  | "2001" | "2001" | "2001" | "2001" | "1"       | "1"       | "2"       | "1"       | "1"       |


