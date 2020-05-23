package mm.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mm.db.Admin;
import mm.db.MatrimonyInterest;
import mm.db.Users;
import mm.model.AdminDao;
import mm.model.MatrimonyInterestDao;
import mm.model.UsersDao;



/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/mm.controller.SendInterest")
public class SendInterest extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		HttpSession session = request.getSession();
				
		String sender = (String)session.getAttribute("emailid");
		String receiver = request.getParameter("emailid");
		Users u = new Users();
		u.setEmailid(sender);
		String name = UsersDao.getName(u);
		MatrimonyInterest matrimonyInterest = new MatrimonyInterest();
		matrimonyInterest.setSender(sender);
		matrimonyInterest.setReceiver(receiver);
		matrimonyInterest.setName(name);
		int status = MatrimonyInterestDao.save(matrimonyInterest);
		if(status > 0)
		{
			// Display in  popup box 
			System.out.println ("Yes Successfuly sent ...");
			response.sendRedirect("interest.jsp?page=1");
		}
		else
		{
			System.out.println ("Not Done ...");
		}
	}
	

	
	
	}

