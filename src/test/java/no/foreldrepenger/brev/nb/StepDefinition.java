package no.foreldrepenger.brev.nb;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import com.testautomationguru.utility.PDFUtil;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import no.foreldrepenger.brev.utils.BrevBuilder;
import no.foreldrepenger.brev.utils.Util;

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
        String scenarioMappe = "foreldrepenger/" + brevType + "/";
        inputFormidlingXML = "scenarios/input/foreldrepenger/"+brevType+"/" + brevMal + "_" + brevType + "_Template.xml";
        baselineScenarioMappe = "scenarios/baseline/" + scenarioMappe + "/" + language + "/";
        inputScenarioMappe = "scenarios/input/" + scenarioMappe + "/" + language + "/";
        outputScenarioMappe = "scenarios/output/" + scenarioMappe + "/" + language + "/";
    }

    @Given("we construct a brev xml with the language {string}")
    public void we_construct_a_brev_xml_with_the_language(String language) throws IOException {
        //Bygge BrevXML
        String brevTemplate = Util.lesFormidlingXML(inputFormidlingXML);
        brevBuilder = new BrevBuilder(brevTemplate).setSprak(language);
    }


    @Given("with the ytelse {string}")
    public void with_the_ytelse_ytelse(String ytelse) {
        brevBuilder = brevBuilder.setYtelse(ytelse);
    }

    @Given("with the behandlingsType {string}")
    public void with_the_behandlingsType_behandlingsType(String behandlingsType) {
        brevBuilder = brevBuilder.setBehandlingsType(behandlingsType);
    }

    @Given("with the personStatus {string}")
    public void with_the_personStatus(String personStatus) {
       brevBuilder.setPersonStatus(personStatus);
    }

    @Given("with the OpphavType {string}")
    public void with_the_opphavType(String OpphavType) {
        brevBuilder.setOpphavType(OpphavType);
    }

    @And("with the antallBarn {string}")
    public void withTheAntallBarn(String antallBarn) {
        brevBuilder.setAntallBarn(antallBarn);
    }

    @And("with the variant {string}")
    public void withTheVariant(String variant) {
        brevBuilder.setVariant(variant);
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
        assertEquals(true, pdfCompare);
    }

    @And("with the innsynReslutatType {string}")
    public void withTheInnsynReslutatType(String innsynReslutatType) {
        brevBuilder.setInnsynReslutatType(innsynReslutatType);
    }
}
