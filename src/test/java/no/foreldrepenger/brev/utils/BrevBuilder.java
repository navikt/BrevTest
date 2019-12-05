package no.foreldrepenger.brev.utils;

public class BrevBuilder {

    String brevXML;

    public BrevBuilder(String brevTemplate) {
        this.brevXML = brevTemplate;
    }

    private void setDefaults() {
        setYtelse("FP").setBehandlingsType("FOERSTEGANGSBEHANDLING").setPersonstatus("ANNET").setSprak("NB");
    }

    public BrevBuilder setYtelse(String ytelseType) {
        this.brevXML = brevXML.replace("{ytelseType}", ytelseType);
        return this;
    }

    public BrevBuilder setBehandlingsType(String behandlingsType) {
        this.brevXML = brevXML.replace("{behandlingsType}", behandlingsType);
        return this;
    }

    public BrevBuilder setPersonstatus(String personstatus) {
        if (personstatus.equals("DEFAULT"))
            this.brevXML = brevXML.replace("{personstatus}", "ANNET");
        else
            this.brevXML = brevXML.replace("{personstatus}", personstatus);

        return this;
    }

    public BrevBuilder setSprak(String sprakkode) {
        this.brevXML = brevXML.replace("{sprakkode}", sprakkode);
        return this;
    }

    public String build() {
        setDefaults();
        return brevXML;
    }

    public BrevBuilder setOpphavType(String opphavType) {
        if (opphavType.equals("NULL"))
            this.brevXML = brevXML.replace("<opphavType>{opphavType}</opphavType>", "");
        else
            this.brevXML = brevXML.replace("{opphavType}", opphavType);

        return this;
    }

    public BrevBuilder setAntallBarn(String antallBarn) {
        if (antallBarn.equals("NULL"))
            this.brevXML = brevXML.replace("<antallBarn>{antallBarn}</antallBarn>", "");
        else
            this.brevXML = brevXML.replace("{antallBarn}", antallBarn);

        return this;
    }

    public BrevBuilder setVariant(String variant) {
        if (variant.equals("NULL"))
            this.brevXML = brevXML.replace("<variant>{variant}</variant>", "");
        else
            this.brevXML = brevXML.replace("{variant}", variant);

        return this;
    }

    public BrevBuilder setInnsynReslutatType(String innsynReslutatType) {
        this.brevXML = brevXML.replace("{innsynReslutatType}", innsynReslutatType);
        return this;
    }

    public BrevBuilder setAutomatiskBehandlet(String automatiskBehandlet) {
        this.brevXML = brevXML.replace("{automatiskBehandlet}", automatiskBehandlet);
        return this;
    }

    public BrevBuilder setVilkaarType(String vilkaarType) {
        this.brevXML = brevXML.replace("{vilkaarType}", vilkaarType);
        return this;
    }

    public BrevBuilder setAvslagsAarsak(String avslagsAarsak) {
        this.brevXML = brevXML.replace("{avslagsAarsak}", avslagsAarsak);
        return this;
    }

    public BrevBuilder setGjelderFoedsel(String gjelderFoedsel) {
        this.brevXML = brevXML.replace("{gjelderFoedsel}", gjelderFoedsel);
        return this;
    }

    public BrevBuilder setSkjaeringstidspunktPassert(String skjaeringstidspunktPassert) {
        this.brevXML = brevXML.replace("{skjaeringstidspunktPassert}", skjaeringstidspunktPassert);
        return this;
    }

    public BrevBuilder setRelasjonskode(String relasjonskode) {
        this.brevXML = brevXML.replace("{relasjonskode}", relasjonskode);
        return this;
    }

    public BrevBuilder setBehandlingsResultat(String behandlingsResultat) {
        this.brevXML = brevXML.replace("{behandlingsResultat}", behandlingsResultat);
        return this;
    }

    public BrevBuilder setKonsekvensForYtelse(String konsekvensForYtelse) {
        this.brevXML = brevXML.replace("{konsekvensForYtelse}", konsekvensForYtelse);
        return this;
    }

    public BrevBuilder setRegelStatus(String regelStatus) {
        this.brevXML = brevXML.replace("{regelStatus}", regelStatus);
        return this;
    }

    public BrevBuilder setStatus(String status) {
        this.brevXML = brevXML.replace("{status}", status);
        return this;
    }

    public BrevBuilder setÅrsakForPeriode(int periodenummer, String årsak) {
        this.brevXML = brevXML.replace("{årsak" + periodenummer + "}", årsak);
        return this;
    }

    public BrevBuilder setGraderingForPeriode(int periodenummer, String gradering) {
        this.brevXML = brevXML.replace("{gradering" + periodenummer + "}", gradering);
        return this;
    }

    public BrevBuilder setDodsdato(String dodsdato) {
        if (dodsdato.equalsIgnoreCase("true")) {
            this.brevXML = brevXML.replace("{dodsdato}", "2019-11-20");
        } else if (dodsdato.equalsIgnoreCase("false")){
            this.brevXML = brevXML.replace("<dodsdato>{dodsdato}</dodsdato>", "");
        } else {
            throw new IllegalStateException("dodsdato argument needs to be either 'true' or 'false'!");
        }
        return this;
    }

    public BrevBuilder setAnnenForeldreHarRettVurdert(String annenForelderHarRettVurdert) {
        this.brevXML = brevXML.replace("{annenForelderHarRettVurdert}", annenForelderHarRettVurdert);
        return this;
    }

    public BrevBuilder setAleneomsorg(String aleneomsorg) {
        this.brevXML = brevXML.replace("{aleneomsorg}", aleneomsorg);
        return this;
    }

    public BrevBuilder setBarnErFødt(String barnErFødt) {
        this.brevXML = brevXML.replace("{barnErFødt}", barnErFødt);
        return this;
    }


    public BrevBuilder setAntallArbeidsgivere(String antallArbeidsgivere) {
        this.brevXML = brevXML.replace("{antallArbeidsgivere}", antallArbeidsgivere);
        return this;
    }

    public BrevBuilder setAntallAvslag(String antallAvslag) {
        this.brevXML = brevXML.replace("{antallAvslag}", antallAvslag);
        return this;
    }

    public BrevBuilder setAntallTapteDager(int periodenummer, String antallTapteDager) {
        this.brevXML = brevXML.replace("{antallTapteDager" + periodenummer + "}", antallTapteDager);
        return this;
    }
}
