

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import cucumber.api.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
//@KarateOptions(tags = {"@valid"})
@CucumberOptions(plugin= {"pretty","html:target","json:target/cucumber.json"}, tags= {"@valid"})
public class TestRunner {

}
