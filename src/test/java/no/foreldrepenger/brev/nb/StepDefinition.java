package no.foreldrepenger.brev.nb;

import com.testautomationguru.utility.PDFUtil;
import de.redsix.pdfcompare.PdfComparator;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import no.foreldrepenger.brev.utils.BrevBuilder;
import no.foreldrepenger.brev.utils.Util;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import static org.junit.jupiter.api.Assertions.fail;

public class StepDefinition {

    private String language;
    private String brevMal;
    private String brevType;
    private String inputFormidlingXML;
    private PDFUtil pdfUtil = new PDFUtil();
    private String baselineScenarioMappe;
    private String inputScenarioMappe;
    private String outputScenarioMappe;
    private Boolean pdfCompare;
    private String scenarioNavn;
    private String baselinePDF;
    private String testPDF;
    private BrevBuilder brevBuilder;

    @Given("we have baselines for the brevmål {string} and brevtype {string} and language {string}")
    public void we_have_baselines_for_the_brevmål_and_brevtype(String inputbrevMal, String inputbrevType, String inputlanguage) {
        language = inputlanguage;
        brevMal = inputbrevMal;
        brevType = inputbrevType;
        String scenarioMappe = "foreldrepenger/" + brevType;
        inputFormidlingXML = "scenarios/input/foreldrepenger/"+brevType+"/" + brevMal + "_" + brevType + "_Template.xml";
        baselineScenarioMappe = "scenarios/baseline/" + scenarioMappe + "/" + language + "/";
        inputScenarioMappe = "scenarios/input/" + scenarioMappe + "/" + language + "/";
        outputScenarioMappe = "scenarios/output/" + scenarioMappe + "/" + language + "/";
    }

    @Given("we construct a brev xml with language {string}")
    public void we_construct_a_brev_xml_with_the_language(String language) throws IOException {
        //Bygge BrevXML
        String brevTemplate = Util.lesFormidlingXML(inputFormidlingXML);
        brevBuilder = new BrevBuilder(brevTemplate).setSpråkkode(language);
    }

    @And("with andel.dagsats {string}")
    public void withDagsats(String dagsats) {
        brevBuilder.setDagsats(dagsats);
    }

    @And("with annenForelderHarRettVurdert {string}")
    public void withAnnenForelderHarRettVurdert(String annenForelderHarRettVurdert) {
        brevBuilder.setAnnenForeldreHarRettVurdert(annenForelderHarRettVurdert);
    }

    @And("with antallArbeidsgivere {string}")
    public void withAntallArbeidsgivere(String antallArbeidsgivere) {
        brevBuilder.setAntallArbeidsgivere(antallArbeidsgivere);
    }

    @And("with antallAvslag {string}")
    public void withAntallAvslag(String antallAvslag) {
        brevBuilder.setAntallAvslag(antallAvslag);
    }

    @And("with antallArbeidsgivereIBeregningUtenEtterlønnSluttpakke {string}")
    public void withAntallArbeidsgivereIBeregningUtenEtterlønnSluttpakke(String antallArbeidsgivereIBeregningUtenEtterlønnSluttpakke) {
        brevBuilder.setAntallArbeidsgivereIBeregningUtenEtterlønnSluttpakke(antallArbeidsgivereIBeregningUtenEtterlønnSluttpakke);
    }

    @And("with antallBarn {string}")
    public void withAntallBarn(String antallBarn) {
        brevBuilder.setAntallBarn(antallBarn);
    }

    @And("with aleneomsorg {string}")
    public void withAleneomsorg(String aleneomsorg) {
        brevBuilder.setAleneomsorg(aleneomsorg);
    }

    @And("with automatiskBehandlet {string}")
    public void withAutomatiskBehandlet(String automatiskBehandlet) {
        brevBuilder.setAutomatiskBehandlet(automatiskBehandlet);
    }

    @And("with avslagsÅrsak {string}")
    public void withAvslagsÅrsakAvslagsÅrsak(String avslagsAarsak) {
        brevBuilder.setAvslagsAarsak(avslagsAarsak);
    }

    @And("with barnErFødt {string}")
    public void withBarnErFødt(String barnErFødt) {
        brevBuilder.setBarnErFødt(barnErFødt);
    }

    @And("with behandlingsResultat {string}")
    public void withBehandlingsResultat(String behandlingsResultat) {
        brevBuilder.setBehandlingsResultat(behandlingsResultat);
    }

    @Given("with behandlingsType {string}")
    public void withbehandlingsType(String behandlingsType) {
        brevBuilder = brevBuilder.setBehandlingsType(behandlingsType);
    }

    @And("with dodsdato {string}")
    public void withDodsdato(String dodsdato) {
        brevBuilder.setDodsdato(dodsdato);
    }

    @And("with etterlønnSluttpakke {string}")
    public void withEtterlønnsluttpakke(String etterlønnSluttpakke) {
        brevBuilder.setEtterlønnsluttpakke(etterlønnSluttpakke);
    }

    @And("with forMyeUtbetalt {string}")
    public void withForMyeUtbetalt(String forMyeUtbetalt) {
        brevBuilder.setForMyeUtbetalt(forMyeUtbetalt);
    }

    @And("with fødselsHendelse {string}")
    public void withFødselshendelse(String fødselshendelse) {
        brevBuilder.setFødselshendelse(fødselshendelse);
    }

    @And("with gjelderFoedsel {string}")
    public void withGjelderFoedsel(String gjelderFoedsel) {
        brevBuilder.setGjelderFoedsel(gjelderFoedsel);
    }

    @And("with innsynReslutatType {string}")
    public void withInnsynReslutatType(String innsynReslutatType) {
        brevBuilder.setInnsynReslutatType(innsynReslutatType);
    }

    @And("with konsekvensForYtelse {string}")
    public void withKonsekvensForYtelse(String konsekvensForYtelse) {
        brevBuilder.setKonsekvensForYtelse(konsekvensForYtelse);
    }

    @Given("with OpphavType {string}")
    public void withOpphavtype(String OpphavType) {
        brevBuilder.setOpphavType(OpphavType);
    }

    @Given("with personstatus {string}")
    public void withPersonstatus(String personstatus) {
       brevBuilder.setPersonstatus(personstatus);
    }

    @And("with periode {int} with årsak {string}, gradering {string} og antallTapteDager {string}")
    public void periodeWithÅrsakGraderingOgAntallTapteDager(int periodenummer, String årsak, String gradering, String antallTapteDager) {
        brevBuilder.setÅrsakForPeriode(periodenummer, årsak);
        brevBuilder.setGraderingForPeriode(periodenummer, gradering);
        brevBuilder.setAntallTapteDager(periodenummer, antallTapteDager);
    }

    @And("with periode {int} with årsak {string}, gradering = false og antallTapteDager {string}")
    public void periodeWithÅrsakogAntallTapteDager(int periodenummer, String årsak, String antallTapteDager) {
        brevBuilder.setÅrsakForPeriode(periodenummer, årsak);
        brevBuilder.setGraderingForPeriode(periodenummer, "false");
        brevBuilder.setAntallTapteDager(periodenummer, antallTapteDager);
    }

    @And("with regelStatus {string}")
    public void withRegelStatus(String regelStatus) {
        brevBuilder.setRegelStatus(regelStatus);
    }

    @And("with relasjonskode {string}")
    public void withRelasjonskode(String relasjonskode) {
        brevBuilder.setRelasjonskode(relasjonskode);
    }

    @And("with skjaeringstidspunktPassert {string}")
    public void withSkjaeringstidspunktPassertSkjaeringstidspunktPassert(String skjaeringstidspunktPassert) {
        brevBuilder.setSkjaeringstidspunktPassert(skjaeringstidspunktPassert);
    }

    @And("with status {string}")
    public void withStatus(String status) {
        brevBuilder.setStatus(status);
    }

    @And("with variant {string}")
    public void withVariant(String variant) {
        brevBuilder.setVariant(variant);
    }

    @And("with vilkaarType {string}")
    public void withVilkaarTypeVilkaarType(String vilkaarType) {
        brevBuilder.setVilkaarType(vilkaarType);
    }

    @Given("with ytelse {string}")
    public void withYtelse(String ytelse) {
        brevBuilder = brevBuilder.setYtelse(ytelse);
    }

    @When("we generate brev based on the xml from ezbrev for the scenario {string}")
    public void we_generate_brev_based_on_the_xml_from_ezbrev(String scenario) {

        scenarioNavn = brevMal + "_" + brevType + "_" + language + "_" + scenario;
        baselinePDF = baselineScenarioMappe + scenarioNavn + ".pdf";
        testPDF = outputScenarioMappe + scenarioNavn + ".pdf";

        Map<String, Object> requestBody = new HashMap<String, Object>();
        requestBody.put("brevmal", brevMal);
        requestBody.put("xml", brevBuilder.build());
        requestBody.put("rediger", false);
        requestBody.put("utledRegisterInfo", false);
        Util.lagPDF(testPDF, Util.henteBase64Dokument(requestBody));
    }

    @Then("the result brev must meet the baseline for that scenario")
    public void we_receive_a_PDF_that_meets_the_baseline() throws IOException {
        pdfUtil.excludeText("\\d+");
        pdfCompare = pdfUtil.compare(baselinePDF, testPDF);

        if (pdfCompare.equals(false)) {
            new PdfComparator(baselinePDF, testPDF).compare().writeTo("C:\\Prosjekter\\Differences\\" + scenarioNavn);
            fail("Output for '" + scenarioNavn + "' matcher ikke baseline. Sjekk C:\\Prosjekter\\Differences\\" + scenarioNavn + ".pdf for differanse");
        }
    }
}
