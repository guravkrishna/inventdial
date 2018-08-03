///*
// * To change this template, choose Tools | Templates
// * and open the template in the editor.
// */
package Local;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



import java.net.InetAddress;


import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class AlertMail {
    

    public static void sendAlertMail(String to, String sub,String msg) {

        //Get the session object  
        Properties props = new Properties();
        
    /*    props.put("mail.smtp.protocol", "smtp");*/
        props.put("mail.smtp.host", "smtp.gmail.com");
     /*  props.put("mail.transport.protocol", "smtp");*/
        props.put("mail.smtp.port", "465");
      /*  props.put("mail.smtp.starttls.enable","true");*/
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.socketFactory.port", "465");
       props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
       /* props.put("mail.smtp.socketFactory.fallback", "true");*/
        System.out.println("Properties Set");
        
     
        Session session= Session.getDefaultInstance(props,new javax.mail.Authenticator()  {

            
            protected javax.mail.PasswordAuthentication getPasswordAuthentication(){
              return new javax.mail.PasswordAuthentication("arativpawar94@gmail.com", "aratu2394");   
            }

    }); 

        //compose message  
        try {
            MimeMessage message = new MimeMessage(session);
            System.out.println(message);
            message.setFrom(new InternetAddress("arativpawar94@gmail.com"));//change accordingly  
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(sub);
            message.setText(msg);
            //send message  
           /* Transport transport = session.getTransport("smtp");*/
            Transport.send(message);
            System.out.println("message sent successfully");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }

    }
    public static void main(String[] args) {
       AlertMail.sendAlertMail("vilasshinde1310@gmail.com", "hello","how are you");
    
}
}
//
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.Properties;
//import javax.mail.Authenticator;
//import javax.mail.Message;
//import javax.mail.MessagingException;
//import javax.mail.PasswordAuthentication;
//import javax.mail.Session;
//import javax.mail.Transport;
//import javax.mail.internet.InternetAddress;
//import javax.mail.internet.MimeMessage;
//
///**
// *
// * @author admin
// */
//public class AlertMail {
//  
//
//    public static ArrayList<String> eid = new ArrayList<String>();
//
//    public static void sendAlertMail(String address, String subject,String name) {
//        try {
//
//            String m_from = "";
//            m_from = "shri.eiosys@gmail.com";
//            String toAddress = "";
//            toAddress = address;
//
//            String m_body = "", m_subject = "";
//            m_subject = subject;
//            m_body = "Dear," + name + "<br>Someone trying to hack your account <br><br>Thanks and Regards,<br><br>HoneyWord Ltd.";
//
//            InternetAddress[] recipientAddress = InternetAddress.parse(toAddress);
//            Session m_Session;
//            Message m_simpleMessage;
//            InternetAddress m_fromAddress;
//            Properties m_properties;
//
//            m_properties = new Properties();
//            m_properties.put("mail.smtp.host", "smtp.gmail.com");
//            m_properties.put("mail.smtp.socketFactory.port", "465");
//            m_properties.put("mail.smtp.socketFactory.class",
//                    "javax.net.ssl.SSLSocketFactory");
//            m_properties.put("mail.smtp.auth", "true");
//            m_properties.put("mail.smtp.port", "465");
//
//            m_Session = Session.getDefaultInstance(m_properties, new Authenticator() {
//                protected PasswordAuthentication getPasswordAuthentication() {
//                    return new PasswordAuthentication("shri.eiosys@gmail.com", "shri@1234"); // username and the password
//                }
//            });
//
//            m_simpleMessage = new MimeMessage(m_Session);
//            m_fromAddress = new InternetAddress(m_from);
////            m_toAddress = new InternetAddress(m_to);
//            m_simpleMessage.setFrom(m_fromAddress);
////            m_simpleMessage.setRecipient(RecipientType.TO, m_toAddress);
//            m_simpleMessage.setRecipients(Message.RecipientType.TO, recipientAddress);
//            m_simpleMessage.setSubject(m_subject);
//            m_simpleMessage.setContent(m_body, "text/html");
//            //m_simpleMessage.setContent(m_body,"text/plain");
//
//            Transport.send(m_simpleMessage);
//            System.out.println("mail has been send ...");
//        } catch (MessagingException ex) {
//            ex.printStackTrace();
//        }
//    }
//
//    
//    public static void main(String[] args) throws SQLException, Exception {
//
//        com.alert.Mail send_mail = new com.alert.Mail();
//        String empName = "Antony Raj S";
//        String title = "<b>Hi !" + empName + " Welcome to DeDuplication</b>";
////      send_mail.sendMail("testproject201@gmail.com", "pranaya.jadhav@eiosys.com", "Please apply for leave for the following dates", title+"<br>by<br><b>HR<b>");
//        send_mail.sendMail("shri.eiosys@gmail.com", "Seed Block data", "Anurath Mane");
//        System.out.println("mail has been send ...");
//    }
//}
//
//
