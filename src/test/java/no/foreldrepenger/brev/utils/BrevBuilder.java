package no.foreldrepenger.brev.utils;

import static no.foreldrepenger.brev.utils.BrevTarget.*;

public class BrevBuilder {

    String brevXML;

    public BrevBuilder(String brevTemplate) {
        this.brevXML = brevTemplate;
    }

    private void setDefaults() {
        replace(YTELSE, "DEFAULT").replace(BEHANDLINGSTYPE, "DEFAULT")
                .replace(PERSONSTATUS, "DEFAULT").replace(SPRÅKKODE, "DEFAULT");
    }

    public BrevBuilder replace(BrevTarget brevTarget, String value) {
        if (value.equalsIgnoreCase("NULL")){
            this.brevXML = brevXML.replace(labelToField(brevTarget.getLabel()), "");
        } else if (value.equalsIgnoreCase("DEFAULT")) {
            this.brevXML = brevXML.replace(labelToTarget(brevTarget.getLabel()), brevTarget.getDefaultValue());
        } else {
            this.brevXML = brevXML.replace(labelToTarget(brevTarget.getLabel()), value);
        }
        return this;
    }

    private String labelToTarget(String label) {
        return "{" + label + "}";
    }

    private String labelToField(String label) {
        return "<" + label + ">" + labelToTarget(label) + "</" + label + ">";
    }


    public BrevBuilder setAntallTapteDager(int periodenummer, String antallTapteDager) {
        this.brevXML = brevXML.replace("{antallTapteDager" + periodenummer + "}", antallTapteDager);
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

    public BrevBuilder setÅrsakForPeriode(int periodenummer, String årsak) {
        this.brevXML = brevXML.replace("{årsak" + periodenummer + "}", årsak);
        return this;
    }

    public String build() {
        setDefaults();
        return brevXML;
    }
}


