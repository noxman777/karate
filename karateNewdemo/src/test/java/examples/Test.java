package examples;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;

public class Test {

    public void property() throws IOException {
        FileInputStream in = new FileInputStream("First.properties");
        Properties props = new Properties();
        props.load(in);
        in.close();

        FileOutputStream out = new FileOutputStream("First.properties");
        props.setProperty("country", "america");
        props.store(out, null);
        out.close();
    }
}
