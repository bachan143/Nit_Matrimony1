package mm.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mm.db.MatrimonyMail;
import mm.model.MatrimonyMailDao;
import mm.service.UsersService;


@WebServlet("/mm.controller.SendMail")
public class SendMail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public SendMail() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String message = request.getParameter("msg");
		String emailid = request.getParameter("emailid");
		
		MatrimonyMail mail=new MatrimonyMail();
		mail.setMessage(message);
		mail.setReceiver(emailid);		
		int status = UsersService.doSendMail(mail);
		
		if(status > 0)
		{
			response.sendRedirect("sendMail.jsp?emailid="+emailid+"&status=1");
		}
		else
		{
			response.sendRedirect("sendMail.jsp?emailid="+emailid+"&status=0");
			
		}
	}
}
