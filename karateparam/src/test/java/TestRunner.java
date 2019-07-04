

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import cucumber.api.CucumberOptions;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
//@KarateOptions(tags = {"@feature1","@feature12"})
@CucumberOptions(plugin= {"pretty","html:testoutput","json:target/cucumber.json"}, tags= {"@valid"})
public class TestRunner {

//    @BeforeClass
//    public static void before() {
//        System.setProperty("karate.env", "stage");
//    }

}
