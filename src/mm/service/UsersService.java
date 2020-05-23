package mm.service;

import mm.db.MatrimonyMail;
import mm.db.Users;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;



public class UsersService
{
	public static void sendPassword(Users u)
	 {
		// TODO Auto-generated method stub
		String to=u.getEmailid();
		String subject="Password Sent";
		String message=" Your Password is : "+u.getPassword();
		
		String from="matrimony14u@gmail.com"; // give ur mailid
		String password="matrimony14upass"; // give ur passsword 
		
		try {
			//Authentication with Gmail server
			Properties props=new Properties();
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.socketFactory.port", "465");
			props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.port", "465");
			
			
			Authenticator auth = new Authenticator() {
				public PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(from, password);
				}
			};
			
			Session session = Session.getInstance(props, auth);
			
			//Composing the message
			MimeMessage msg=new MimeMessage(session);
			msg.setFrom(new InternetAddress(from));
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			msg.setSubject(subject);
			msg.setText(message);
			
			//Sending message
			Transport.send(msg);
			System.out.println("Message delivered successfully , Check your mail ...........");
			//response.sendRedirect("mail.jsp?msg=mail delivered");
		} catch (MessagingException e) {
			// TODO: handle exception
			//throw new RuntimeException(e);
			e.printStackTrace();
		}
	}

	public static int doSendMail(MatrimonyMail mail) {
		// TODO Auto-generated method stub
				String to=mail.getReceiver();
				String subject="Sending a Mail ....";
				String message= mail.getMessage();
				
				String from="matrimony14u@gmail.com"; // give ur mailid
				String password="matrimony14upass"; // give ur passsword 
				
				try {
					//Authentication with Gmail server
					Properties props=new Properties();
					props.put("mail.smtp.host", "smtp.gmail.com");
					props.put("mail.smtp.socketFactory.port", "465");
					props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
					props.put("mail.smtp.auth", "true");
					props.put("mail.smtp.port", "465");
					
					
					Authenticator auth = new Authenticator() {
						public PasswordAuthentication getPasswordAuthentication() {
							return new PasswordAuthentication(from, password);
						}
					};
					
					Session session = Session.getInstance(props, auth);
					
					//Composing the message
					MimeMessage msg=new MimeMessage(session);
					msg.setFrom(new InternetAddress(from));
					msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
					msg.setSubject(subject);
					msg.setText(message);
					
					//Sending message
					Transport.send(msg);
					System.out.println("Mail delivered successfully , Check your mail ...........");
					//response.sendRedirect("mail.jsp?msg=mail delivered");
				} catch (MessagingException e) {
					// TODO: handle exception
					//throw new RuntimeException(e);
					e.printStackTrace();
				}

				return 1;
	}
}

