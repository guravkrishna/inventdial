package Local;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;

public class BulkSMS {

final static String URL_HOST="http://login.aquasms.com";

    public static String SMSSender(String mobile,String message,String otp)
    {
        String strTemp = "";
        try {
            // Construct The Post Data
            String data = "/sendSMS?username="+"GLOBAL";
            data += "&" + "apikey="+"598f2b3a-308b-40c0-8bf4-633076d8dbf5";
            data += "&" + "smstype="+"TRANS";
            data += "&" + "sendername="+"ABCDEF";
            data += "&" + "numbers="+mobile;
           /* data += "&" + "message=" + URLEncoder.encode(message, "UTF-8");*/
            data += "&" + "message=" +URLEncoder.encode(message+otp,"UTF-8");


            System.out.println("Sending:"+data);
                        URL url = new URL(URL_HOST+data);
                        BufferedReader br = new BufferedReader(new InputStreamReader(url.openStream()));

                          String line;
                           while ((line = br.readLine()) != null) {

                strTemp += line;
            }
                           
                           System.out.println("REceived:"+strTemp);

                } catch (Exception ex) {
                        ex.printStackTrace();
                }


        return  strTemp;
    }

    public static void main(String[] args) {

        String response = SMSSender(  "9960345975", "OTP","78964");
        System.out.println(response);
    }
}