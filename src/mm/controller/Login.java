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
 * Servlet implementation class Login
 */
@WebServlet("/mm.controller.Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	   
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String emailid = request.getParameter("emailid");
		String password = request.getParameter("password");
		
		Users l = new Users();
		l.setEmailid(emailid);
		l.setPassword(password);
		
		int status = UsersDao.validate(l);
		if(status > 0)
		{
			HttpSession session = request.getSession();
			session.setAttribute("emailid", emailid);
			session.setAttribute("name", l.getName());
			
			
			response.sendRedirect("userWindow.jsp");
			
		}
		else
		{
			response.sendRedirect("login.jsp?msg=Invalid Email and Password ...");
		}
		
	}
	
		

		
		
	}


