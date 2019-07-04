package examples;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import net.masterthought.cucumber.Reportable;

import java.io.File;
import java.util.*;

public class ReportUtility {

    public void generateReport(String reportFilePath,String buildNumber,String projectName){
        String userDir = System.getProperty("user.dir");

        File reportOutputDirectory = new File(userDir+reportFilePath);

        List<String> jsonFiles = new ArrayList<>();
        jsonFiles.add(userDir+"/target/cucumber.json");
//        jsonFiles.add("cucumber.json");

//        String buildNumber = "1";
//        String projectName = "cucumberProject";
        boolean runWithJenkins = false;

        Configuration configuration = new Configuration(reportOutputDirectory, projectName);
// optional configuration - check javadoc
        configuration.setRunWithJenkins(runWithJenkins);
        configuration.setBuildNumber(buildNumber);
// addidtional metadata presented on main page
        configuration.addClassifications("Platform", "Windows");
        configuration.addClassifications("Browser", "Firefox");
        configuration.addClassifications("Branch", "release/1.0");

        // optionally add metadata presented on main page via properties file
//        List<String> classificationFiles = new ArrayList<>();
//        classificationFiles.add("properties-1.properties");
//        classificationFiles.add("properties-2.properties");
//        configuration.addClassificationFiles(classificationFiles);

        ReportBuilder reportBuilder = new ReportBuilder(jsonFiles, configuration);
        Reportable result = reportBuilder.generateReports();
    }

    public static void main(String[] args) {

        ReportUtility re=new ReportUtility();
        re.generateReport("/src/test/Report/","1","MH");

    }
    }




