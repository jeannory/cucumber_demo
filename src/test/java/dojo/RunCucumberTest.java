package dojo;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

//https://isabelle-blasquez.developpez.com/tutoriels/java/cucumber-test-bdd/

@RunWith(Cucumber.class)
//@CucumberOptions(features = "src/test/resources", strict = true, monochrome = true, plugin = { "pretty", "html:target/site/cucumber", "junit:target/xml/cucumber.xml", "json:target/json/cucumber.json"})
@CucumberOptions(features = "src/test/resources", strict = true, monochrome = true, plugin = {"pretty", "json:target/cucumber.json"})
public class RunCucumberTest {
}
