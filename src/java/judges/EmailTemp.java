
package judges;

import java.util.Arrays;
import java.sql.*;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;

public class EmailTemp { 
    public static void main(String[] args) {
        String to = "pradeepikapeiris231@gmail.com";
        String from = "pikaboteju@gmail.com";
        //String host = "localhost";
        //Properties properties = System.getProperties();
        Properties properties = new Properties();
        properties.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        properties.put("mail.smtp.auth", true);
        properties.put("mail.smtp.starttls.enable", true);
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", 587);
        
        Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("pikaboteju@gmail.com", "pikapika@123");
            }
});        
        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject("Hello...this is a message from Ishan");
            message.setText("This is a testing message");
            
            Transport.send(message);
            System.out.println("message sent successfully");
        }catch(MessagingException ex){
            ex.printStackTrace();
        }
        
        
    }
}


