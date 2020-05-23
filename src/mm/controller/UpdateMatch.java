package mm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mm.db.Match;
import mm.model.MatchDao;
import mm.model.UsersDao;

/**
 * Servlet implementation class UpdateMatch
 */
@WebServlet("/UpdateMatch")
public class UpdateMatch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateMatch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
        Match um = new Match();
		
		HttpSession session = request.getSession();
		um.setHobbies(request.getParameter("hobbies"));
		um.setInterest(request.getParameter("interest"));
	
		um.setLike_to_do(request.getParameter("like_to_do"));
	
		um.setPrefer_style(request.getParameter("prefer_style"));
	
		
		um.setSongs(request.getParameter("songs"));
		um.setMovies(request.getParameter("movies"));
		um.setSports(request.getParameter("sports"));
		um.setFitness(request.getParameter("fitness"));
		um.setWhat_in_partner(request.getParameter("what_in_partner"));
		
		
		um.setResident_state(request.getParameter("resident_state"));
		um.setCitizenship(request.getParameter("citizenship"));
		um.setBride_age(request.getParameter("bride_age"));
		um.setGroom_age(request.getParameter("groom_age"));
		
		
		
	
		um.setAbout_partner(request.getParameter("about_partner"));
		um.setLanguage(request.getParameter("language"));
		
		int status = MatchDao.updateMatch(um);
		if(status > 0)
		{
			response.sendRedirect("updateFamily.jsp?msg= updated suceessfully");	
		}
			
		else
		{
			response.sendRedirect("updateFamily.jsp?msg=not updated");
		}
		
		
		
	}

}
