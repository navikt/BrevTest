package no.foreldrepenger.brev.utils;

public class BrevBuilder {

    String brevXML;

    public BrevBuilder(String brevTemplate) {
        this.brevXML = brevTemplate;
    }

    private void setDefaults() {
        setYtelse("FP").setBehandlingsType("FOERSTEGANGSBEHANDLING").setPersonStatus("ANNET").setSprak("NB");
    }

    public BrevBuilder setYtelse(String ytelseType) {
        this.brevXML = brevXML.replace("{ytelseType}", ytelseType);
        return this;
    }

    public BrevBuilder setBehandlingsType(String behandlingsType) {
        this.brevXML = brevXML.replace("{behandlingsType}", behandlingsType);
        return this;
    }

    public BrevBuilder setPersonStatus(String personstatus) {
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
}
