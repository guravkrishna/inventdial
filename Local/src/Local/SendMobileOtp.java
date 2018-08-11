/*package Local;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class SendMobileOtp {
	public static void main(String[] args) {
		SendMobileOtp s=new SendMobileOtp();
		s.sendSms("8970001950", "hello","how are you");
	}
	public  String sendSms(String to, String sub,String msg) {
		try {
			// Construct data
			String apiKey = "apikey=" + "+qBvR65nTrc-xXxtyfp8wOjsJfAmkSTY94rQMdfYSX";
			String message = "&message=" + sub +msg;
			String sender = "&sender=" + "TXTLCL";
			String numbers = "&numbers=" + "919916571300"+"919632562031";
			String numbers ="&numbers="+to;
			System.out.println(numbers);
			
			// Send data
			HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
			String data = apiKey + message + numbers + sender;
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
			conn.getOutputStream().write(data.getBytes("UTF-8"));
			final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			final StringBuffer stringBuffer = new StringBuffer();
			String line;
			while ((line = rd.readLine()) != null) {
				stringBuffer.append(line);
			}
			rd.close();
			
			return stringBuffer.toString();
		} catch (Exception e) {
			System.out.println("Error SMS "+e);
			return "Error "+e;
		}
	}
}


*/














package Local;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class SendMobileOtp {
	public static void main(String[] args) {
		SendMobileOtp s=new SendMobileOtp();
		s.sendSms("8970001950", "hello","how are you");
	}
	public  String sendSms(String to, String sub,String msg) {
		try {
			// Construct data
			String apiKey = "apikey=" + "+ff409f71-9d8d-4f70-86be-fcde212533d2";
			String message = "&message=" + sub +msg;
			String sender = "&sender=" + "AQUASM";
		/*	String numbers = "&numbers=" + "919916571300"+"919632562031";*/
			String numbers ="&numbers="+to;
			System.out.println(numbers);
			
			// Send data
			HttpURLConnection conn = (HttpURLConnection) new URL("http://login.aquasms.com/sendSMS?").openConnection();
			String data = apiKey + message + numbers + sender;
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
			conn.getOutputStream().write(data.getBytes("UTF-8"));
			final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			final StringBuffer stringBuffer = new StringBuffer();
			String line;
			while ((line = rd.readLine()) != null) {
				stringBuffer.append(line);
			}
			rd.close();
			
			return stringBuffer.toString();
		} catch (Exception e) {
			System.out.println("Error SMS "+e);
			return "Error "+e;
		}
	}
}


