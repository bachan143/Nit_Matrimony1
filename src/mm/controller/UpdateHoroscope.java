package mm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mm.db.Horoscope;
import mm.model.HoroscopeDao;


/**
 * Servlet implementation class UpdateHoroscope
 */
@WebServlet("/mm.controller.UpdateHoroscope")
public class UpdateHoroscope extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateHoroscope() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Horoscope uh = new Horoscope();
		
		HttpSession session = request.getSession();
		uh.setEmailid((String)session.getAttribute("emailid"));
		uh.setCaste(request.getParameter("caste"));
		uh.setSub_caste(request.getParameter("sub_caste"));
		uh.setDosh(request.getParameter("dosh"));
	
		uh.setGotra(request.getParameter("gotra"));
	
		uh.setManglik(request.getParameter("manglik"));
	
		
		uh.setPlace_of_birth(request.getParameter("place_of_birth"));
		uh.setTime_of_birth(request.getParameter("time_of_birth"));
		uh.setRasi(request.getParameter("rasi"));
		uh.setStar(request.getParameter("star"));
		
		
	
		
		
		int status = HoroscopeDao.updateHoroscope(uh);
		if(status > 0)
		{
			response.sendRedirect("editActivities.jsp.jsp?msg= updated suceessfully");	
		}
			
		else
		{
			response.sendRedirect("editHoroscope.jsp?msg=not updated");
		}
		
	}

		
	
	
	
	
	
	
	
	
	

}
