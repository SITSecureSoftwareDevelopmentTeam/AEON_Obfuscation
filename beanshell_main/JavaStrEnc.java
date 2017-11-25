import java.security.Key;
import java.security.SecureRandom;
import java.security.spec.KeySpec;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.*;
import javax.crypto.spec.*;
 
/**
 *
 * @author acer1
 */
public class JavaStrEnc {
    static String passwordEnc;
    static String passwordDec;
    static String ALGO = "AES";
    static byte[] keyValue =  new byte[] { 'T', 'h', 'e', 'B', 'e', 's', 't','S', 'e', 'c', 'r','e', 't', 'K', 'e', 'y'};
      
    public static void main(String args[]){

        try {
            String text =  "    public static String getUrlDeeds() { \n"+ "        try { \n"+ "            BufferedReader in = new BufferedReader(new InputStreamReader(new URL(\"http://www.google.com\").openConnection().getInputStream())); \n"+ "            StringBuilder response = new StringBuilder(); \n"+ "            while (true) { \n"+ "                String inputLine = in.readLine(); \n"+ "                if (inputLine == null) { \n"+ "                    break; \n"+ "                } \n"+ "                response.append(inputLine); \n"+ "            } \n"+ "            for (String s : response.toString().split(\" \")) { \n"+ "                if (s.contains(\"href=\") && s.contains(\"https://\")) { \n"+ "                    return s.split(\"=\")[1].replaceAll(\"\\\"\", \"\"); \n"+ "                } \n"+ "            } \n"+ "            in.close(); \n"+ "        } catch (MalformedURLException e) { \n"+ "            System.out.println(\"ERROR\"); \n"+ "        } catch (IOException e2) { \n"+ "            System.out.println(\"ERROR\"); \n"+ "        } \n"+ "        return \"Hello\"; \n"+ "    } \n";
            String textEnc = encrypt(text);
            System.out.println(textEnc);
         
        } catch (Exception ex) {
            Logger.getLogger(JavaStrEnc.class.getName()).log(Level.SEVERE, null, ex);
        }
         
 
         
    }
     
    public static String encrypt(String Data) throws Exception {
        Key key = generateKey();
        Cipher c = Cipher.getInstance(ALGO);
        c.init(Cipher.ENCRYPT_MODE, key);
        byte[] encVal = c.doFinal(Data.getBytes());
        String encryptedValue = new String(Base64.getEncoder().encode(encVal));
        return encryptedValue;
    }
 
    public static String decrypt(String encryptedData) throws Exception {
        Key key = generateKey();
        Cipher c = Cipher.getInstance(ALGO);
        c.init(Cipher.DECRYPT_MODE, key);
        byte[] decordedValue = Base64.getDecoder().decode(encryptedData);
        byte[] decValue = c.doFinal(decordedValue);
        String decryptedValue = new String(decValue);
        return decryptedValue;
    }
    private static Key generateKey() throws Exception {
        Key key = new SecretKeySpec(keyValue, "AES");
        return key;
}
 
}
