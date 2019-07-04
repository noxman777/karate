package examples;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

public class DataStorage {

    Properties prop = new Properties();

    public void write(String key,String value) throws IOException {
        FileInputStream in = new FileInputStream("C:/Users/CY0016/IdeaProjects/karateNewdemo/src/test/java/examples/config.properties");
        prop.load(in);
        in.close();
        FileOutputStream output = new FileOutputStream("C:/Users/CY0016/IdeaProjects/karateNewdemo/src/test/java/examples/config.properties");

            prop.setProperty(key, value);
            prop.store(output, null);
            System.out.println("The "+key+" is"+value);
    }

    public String read(String key) throws IOException {
        FileInputStream input = new FileInputStream("C:/Users/CY0016/IdeaProjects/karateNewdemo/src/test/java/examples/config.properties");
        prop.load(input);
        return prop.getProperty(key);
    }



    public String concatinatedString(String string1,String string2){
        String concate=string1+string2;
        return concate;
   }

   public String formatDate(String dateInString,String dateFormat){
       SimpleDateFormat formatter = new SimpleDateFormat(dateFormat);
       Date date= new Date();
       try {
            date= formatter.parse(dateInString);
       } catch (ParseException e) {
           e.printStackTrace();
       }
       System.out.println(date);
       System.out.println(formatter.format(date));
       return formatter.format(date);

   }
    public static void main(String[] args) throws IOException {
       new DataStorage().write("nam","gh");
    }
}
