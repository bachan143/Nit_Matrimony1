package mm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import mm.db.Users;
import mm.model.UsersDao;

/**
 * Servlet implementation class Details
 */
@WebServlet("/mm.controller.Details")
public class Details extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Details() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("1111111111111111");
		Users a = new Users();
		HttpSession session = request.getSession();
		System.out.println("1111133333333331");
		a.setEmailid((String)session.getAttribute("emailid"));
		System.out.println(a.getEmailid());
		a.setHighest_education(request.getParameter("highest_education"));
		System.out.println("1111111111111111");
		a.setEmployed_in(request.getParameter("employed_in"));
		System.out.println("1111111111111111");
		a.setOccupation(request.getParameter("occupation"));
		System.out.println("1111111111111111");
		System.out.println("144444444444411");
		a.setSalary(request.getParameter("salary"));
		System.out.println("1111111111111111");
		a.setIncome(request.getParameter("income"));
		System.out.println("144444444444411");
		a.setBody(request.getParameter("body"));
		System.out.println("1111111111111111");
		a.setHeight(request.getParameter("height"));
		System.out.println("144444444444411");
		a.setMartial_status(request.getParameter("martial_status"));
		System.out.println("1111111111111111");
		
	
		a.setAddress(request.getParameter("address"));
		System.out.println("144444444444411");
		a.setAge(request.getParameter("age"));
		System.out.println("1111111111111111");
		
		System.out.println("144444444444411");
		a.setWeight(request.getParameter("weight"));
		System.out.println("1445555555555555511");
		a.setAbout_me(request.getParameter("about_me"));
		a.setDisability(request.getParameter("disability"));

		



			
		int status =UsersDao.incomeMore(a);
		System.out.println(status);
		System.out.println(a.getEmailid());
		
		if(status>0)
		{
			response.sendRedirect("others.jsp?msg1=Successfully Registered");
		}
		else
		{
			response.sendRedirect("details.jsp?msg2=not Registered");
		}
			
	}

}
