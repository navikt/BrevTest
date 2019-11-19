package no.foreldrepenger.brev.nb;

import org.junit.runner.RunWith;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(   plugin = {"pretty"},
                    features = "src/test/resources/features",
                    glue = {"no.foreldrepenger.brev.nb"})
public class CucumberTestRunner {

}
