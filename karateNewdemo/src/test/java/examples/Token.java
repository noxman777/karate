package examples;

public class Token {


    public void authorizationToken(String username,String password) throws Exception {

      String token=new BasicTokenProvider().getBasicToken(username , password);

    }
}
