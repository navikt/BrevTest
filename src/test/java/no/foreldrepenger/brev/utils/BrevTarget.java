package no.foreldrepenger.brev.utils;

public enum BrevTarget {
    ALENEOMSORG ("aleneomsorg", "false"),
    ANNEN_FORELDER_HAR_RETT_VURDERT ("annenForelderHarRettVurdert", "true"),
    ANTALL_ARBEIDSGIVERE ("antallArbeidsgivere", "1"),
    ANTALL_ARBEIDSGIVERE_I_BEREGNING_UTEN_ETTERLØNN_SLUTTPAKKE ("antallArbeidsgivereIBeregningUtenEtterlønnSluttpakke", "1"),
    ANTALL_AVSLAG ("antallAvslag", "0"),
    ANTALL_BARN ("antallBarn", "1"),
    ANTALL_TAPTE_DAGER ("antallTapteDager", "1"),
    AUTOMATISK_BEHANDLET ("automatiskBehandlet", "false"),
    AVSLAGSÅRSAK ("avslagsAarsak", "4099"),
    BARN_ER_FØDT ("barnErFødt", "false"),
    BEHANDLINGSRESULTAT ("behandlingsResultat", "INNVILGET"),
    BEHANDLINGSTYPE ("behandlingsType", "FOERSTEGANGSBEHANDLING"),
    DAGSATS ("dagsats", "2304"),
    DØDSDATO ("dodsdato", "2019-11-20"),
    ETTERLØNN_SLUTTPAKKE ( "etterlønnSluttpakke", "false"),
    FOR_MYE_UTBETALT ("forMyeUtbetalt", "false"),
    FØDSELSHENDELSE ("fødselsHendelse", "false"),
    GJELDER_FØDSEL ("gjelderFoedsel", "false"),
    GRADERING ("gradering", "false"),
    INNSYN_RESULTAT_TYPE ("innsynReslutatType", "INNVILGET"),
    KONSEKVENS_FOR_YTELSE ("konsekvensForYtelse", "ENDRING_I_UTTAK"),
    OPPHAVTYPE ("opphavType", "FAMPEN"),
    PERSONSTATUS ("personstatus", "ANNET"),
    REGELSTATUS ("regelStatus", "ARBEIDSTAKER"),
    RELASJONSKODE ("relasjonskode", "FAR"),
    SKJÆRINGSTIDSPUNKT_PASSERT ("skjaeringstidspunktPassert", "false"),
    SPRÅKKODE ("sprakkode", "NB"),
    STATUS ("status", "ARBEIDSTAKER"),
    VARIANT ("variant", "FORLENGET"),
    VILKÅR_TYPE ("vilkaarType", "FP_VK_2"),
    YTELSE ("ytelseType", "FP"),
    ÅRSAK ("årsak", "2001");

    private String label;
    private String defaultValue;

    BrevTarget (String label, String defaultValue) {
        this.label = label;
        this.defaultValue = defaultValue;
    }

    public String getLabel() {
        return label;
    }

    public String getDefaultValue() {
        return defaultValue;
    }
}
