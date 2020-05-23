package mm.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mm.db.Users;
import mm.model.UsersDao;
import mm.service.UsersService;

/**
 * Servlet implementation class ForgotPassword
 */
@WebServlet("/mm.controller.ForgotPassword")
public class ForgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgotPassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		Users l = new Users();
		l.setEmailid(request.getParameter("emailid"));
		
		String password=UsersDao.getPassword(l);
		if(password == null)
		{
			response.sendRedirect("forgotPassword.jsp?msg=Invalid Emailid ...");
		}
		else
		{
			l.setPassword(password);
			UsersService.sendPassword (l);
			response.sendRedirect("setPassword.jsp?msg=Invalid Emailid ...");
		}
		
			
	}


	}


