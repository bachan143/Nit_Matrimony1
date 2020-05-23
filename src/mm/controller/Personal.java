package mm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mm.db.Family;
import mm.model.FamilyDao;

/**
 * Servlet implementation class Personal
 */
@WebServlet("/mm.controller.Personal")
public class Personal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Personal() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		
		Family p =new Family();
		HttpSession session = request.getSession();
		p.setEmailid((String)session.getAttribute("emailid"));
		System.out.println(p.getEmailid());
		p.setFamily_status(request.getParameter("family_status"));
		p.setFamily_type(request.getParameter("family_type"));
		p.setFamily_values(request.getParameter("family_values"));
		p.setFather_status(request.getParameter("father_status"));
		p.setMother_status(request.getParameter("mother_status"));
		p.setBrothers(request.getParameter("brothers"));
		p.setSisters(request.getParameter("sisters"));
		p.setFamily_location(request.getParameter("family_location"));
		p.setPhone(request.getParameter("phone"));
		
		
		
		p.setFavourite_cousion(request.getParameter("favourite_cousion"));
		p.setAncestral_origin(request.getParameter("ancestral_origin"));
		
		
		
		
		
		
		
		int status =FamilyDao.familyMore(p);
		System.out.println(status);
		System.out.println(p.getEmailid());
		
		if(status>0)
		{
			response.sendRedirect("moreReligion.jsp?msg1=Successfully Registered");
		}
		else
		{
			response.sendRedirect("personalInfo.jsp?msg2=not Registered");
		}
			
	}

	



		
		

		
	}


