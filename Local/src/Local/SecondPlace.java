package Local;
import java.net.URLConnection;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.io.InputStreamReader;
import java.io.BufferedReader;
import java.io.IOException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathFactory;
import javax.xml.xpath.XPathConstants;
import org.w3c.dom.Document;

public class SecondPlace
{
  public static void main(String[] args) throws Exception 
  {
	  SecondPlace ps=new SecondPlace();
  ps.sendlocation("Pune, Maharashtra, India");
	  
    /*BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
    
    System.out.println("Plz enter your location:");
    String postcode1=reader.readLine();
    String latLongs1[] = getLatLongPositions(postcode1);
    System.out.println("Latitude: "+latLongs1[0]+" and Longitude: "+latLongs1[1]);*/
   
   /* System.out.println("Plz enter your destination:");
    String postcode2=reader.readLine();
    String latLongs2[] = getLatLongPositions(postcode2);
    System.out.println("Latitude: "+latLongs2[0]+" and Longitude: "+latLongs2[1]);
    */
    /*DistanceCalculator3.sendBoth(latLongs1[0],latLongs2[0],latLongs1[1],latLongs2[1]);*/
   /* DistanceCalculator3 d=new DistanceCalculator3();
    		DistanceCalculator3.sendBoth(latLongs1[0],latLongs2[0],latLongs1[1],latLongs2[1]);
    */
  }
  public  String sendlocation(String city) throws Exception
  {
	/*  BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
	    */
	   /* System.out.println("Plz enter your location:");
	    String postcode1=reader.readLine();*/
	    String latLongs1[] = getLatLongPositions(city);
	    System.out.println("Latitude: "+latLongs1[0]+" and Longitude: "+latLongs1[1]);
		return city;
	   
	  
  }
  public static String[] getLatLongPositions(String address) throws Exception
  {
    int responseCode = 0;
    String api = "http://maps.googleapis.com/maps/api/geocode/xml?address=" + URLEncoder.encode(address, "UTF-8") + "&sensor=true";
    URL url = new URL(api);
    HttpURLConnection httpConnection = (HttpURLConnection)url.openConnection();
    httpConnection.connect();
    responseCode = httpConnection.getResponseCode();
    if(responseCode == 200)
    {
      DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();;
      Document document = builder.parse(httpConnection.getInputStream());
      XPathFactory xPathfactory = XPathFactory.newInstance();
      XPath xpath = xPathfactory.newXPath();
      XPathExpression expr = xpath.compile("/GeocodeResponse/status");
      String status = (String)expr.evaluate(document, XPathConstants.STRING);
      if(status.equals("OK"))
      {
         expr = xpath.compile("//geometry/location/lat");
         String latitude = (String)expr.evaluate(document, XPathConstants.STRING);
         expr = xpath.compile("//geometry/location/lng");
         String longitude = (String)expr.evaluate(document, XPathConstants.STRING);
         return new String[] {latitude, longitude};
      }
      else
      {
         throw new Exception("Error from the API - response status: "+status);
      }
    }
    return null;
  }
}