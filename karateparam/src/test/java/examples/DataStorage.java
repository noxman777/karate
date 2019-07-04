package examples;

        import java.io.FileInputStream;
        import java.io.FileOutputStream;
        import java.io.IOException;
        import java.util.Map;
        import java.util.Properties;

public class DataStorage {

    Properties prop = new Properties();

    public void write(Map<String, Object> config) throws IOException {
        String key = (String) config.get("key");
        FileOutputStream output = new FileOutputStream("C:/Users/cy0099/IdeaProjects/karateparam/src/test/java/examples/config.properties");
        prop.setProperty("categoryId", key);
        prop.store(output, null);
        System.out.println("The categoryId is"+key);
    }

    public String read(String key) throws IOException {
        FileInputStream input = new FileInputStream("C:/Users/cy0099/IdeaProjects/karateparam/src/test/java/examples/config.properties");
        prop.load(input);
        return prop.getProperty(key);
    }
}
