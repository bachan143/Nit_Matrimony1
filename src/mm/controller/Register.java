package mm.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.registry.infomodel.EmailAddress;

import mm.db.Users;
import mm.model.UsersDao;

/**
 * Servlet implementation class Register
 */
@WebServlet("/mm.controller.Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Users u = new Users();
		u.setName(request.getParameter("name"));
		u.setGender(request.getParameter("gender"));
		String dd = request.getParameter("date");
		String mm = request.getParameter("month");
		String yyyy = request.getParameter("year");
        System.out.println(dd+"\t"+mm+"\t"+yyyy);
		String date_of_birth = (dd+"-"+mm+"-"+yyyy);
		u.setDate_of_birth(date_of_birth);
		u.setReligion(request.getParameter("religion"));
		u.setMother_tounge(request.getParameter("mother_tounge"));
		u.setCountry(request.getParameter("country"));
		u.setEmailid(request.getParameter("emailid"));
		u.setPassword(request.getParameter("password"));
		u.setAbout_me(request.getParameter("about_me"));
		
		int i =UsersDao.registerUsers(u);
		System.out.println(i);
		
		if(i>0)
		{
			HttpSession session = request.getSession();
			session.setAttribute("emailid", request.getParameter("emailid"));
			response.sendRedirect("photo.jsp?msg1=Successfully Registered");
		}
		else
		{
			response.sendRedirect("register.jsp?msg2=not Registered");
		}
		
	}
}
