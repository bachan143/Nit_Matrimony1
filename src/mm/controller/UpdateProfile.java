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
@WebServlet("/mm.controller.UpdateProfile")
public class UpdateProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		Users up = new Users();
		
		HttpSession session = request.getSession();
		up.setEmailid((String)session.getAttribute("emailid"));
		up.setName(request.getParameter("name"));
		up.setReligion(request.getParameter("religion"));
	
		up.setMother_tounge(request.getParameter("mother_tounge"));
	
		up.setCountry(request.getParameter("country"));
	
		
		up.setAge(request.getParameter("age"));
		up.setEmployed_in(request.getParameter("employed_in"));
		up.setBody(request.getParameter("body"));
		up.setHeight(request.getParameter("height"));
		up.setWeight(request.getParameter("weight"));
		
		
		up.setAddress(request.getParameter("Address"));
		up.setOccupation(request.getParameter("occupation"));
		up.setSalary(request.getParameter("salary"));
		up.setIncome(request.getParameter("income"));
		
		
		
	
		up.setDisability(request.getParameter("disability"));
		up.setAbout_me(request.getParameter("about_me"));
		up.setHighest_education(request.getParameter("highest_education"));
		up.setMartial_status(request.getParameter("martial_status"));
		
		
		int status = UsersDao.updateDetails(up);
		if(status > 0)
		{
			response.sendRedirect("editFamily.jsp?msg= updated suceessfully");	
		}
			
		else
		{
			response.sendRedirect("editprofile.jsp?msg=not updated");
		}
		
	}
}
		
		


		
		


