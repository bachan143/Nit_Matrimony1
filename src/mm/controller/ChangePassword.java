package mm.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mm.db.Users;
import mm.model.UsersDao;

/**
 * Servlet implementation class ChangePassword
 */
@WebServlet("/mm.controller.ChangePassword")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	
	
	{
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		String opass = request.getParameter("opass");
		String npass = request.getParameter("npass");
		String cpass = request.getParameter("cpass");
		
		Users  l = new Users();
		HttpSession session = request.getSession();
		l.setEmailid((String)session.getAttribute("emailid"));
		l.setPassword(opass);
		
		int	status = UsersDao.validate(l);
		if(status > 0 )
		{
			if(npass.equals(cpass))
			{
				l.setPassword(npass);
				int result = UsersDao.doChangePassword(l);
				if(result > 0)
					response.sendRedirect("setPassword.jsp?msg=Password Changed Successfully");
				else
					response.sendRedirect("setPassword.jsp?msg=Error ");
			}
			else
			{
				response.sendRedirect("setPassword.jsp?msg=New Password Mismatch with Confirm Password");
			}
		}
		else
		{
			response.sendRedirect("setPassword.jsp?msg=Invaid Current Password");
		}
		
		
		
	}
	}


