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
 * Servlet implementation class UpdateFamily
 */
@WebServlet("/mm.controller.UpdateFamily")
public class UpdateFamily extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateFamily() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
              Family uf = new Family();
		
		   HttpSession session = request.getSession();
		uf.setEmailid((String)session.getAttribute("emailid"));
		uf.setFamily_type(request.getParameter("family_type"));
		uf.setFamily_status(request.getParameter("family_status"));
		uf.setFamily_values(request.getParameter("family_values"));
		uf.setFather_status(request.getParameter("father_status"));
		uf.setMother_status(request.getParameter("mother_status"));
		uf.setBrothers(request.getParameter("brothers"));
		uf.setSisters(request.getParameter("sisters"));
		uf.setFavourite_cousion(request.getParameter("favourite_cousion"));
		uf.setFamily_location(request.getParameter("family_location"));
		uf.setAncestral_origin(request.getParameter("ancestral_origin"));
		uf.setAbout_family(request.getParameter("about_family"));
		uf.setPhone(request.getParameter("phone"));
		uf.setEducation_details(request.getParameter("education_details"));
		uf.setOccupation_details(request.getParameter("occupation_details"));
		uf.setEating_habit(request.getParameter("eating_habit"));
		uf.setDrinking_habit(request.getParameter("drinking_habit"));
		uf.setSmoking_habit(request.getParameter("smoking_habit"));
		uf.setDistrict(request.getParameter("district"));
		uf.setState(request.getParameter("state"));
		
		
		int status = FamilyDao.updateFamily(uf);
		if(status > 0)
		{
			response.sendRedirect("editHoroscope.jsp?msg= updated suceessfully");	
		}
			
		else
		{
			response.sendRedirect("editFamily.jsp?msg=not updated");
		}
		
	}
		
		
		
		
		
	

}
