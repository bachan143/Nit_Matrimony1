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

/**
 * Servlet implementation class Hobbies
 */
@WebServlet("/mm.controller.MatchOthers")
public class MatchOthers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MatchOthers() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Match s = new Match();
		HttpSession session = request.getSession();
		s.setEmailid((String)session.getAttribute("emailid"));
		System.out.println(s.getEmailid());
		s.setHobbies(request.getParameter("hobbies"));
		s.setSongs(request.getParameter("songs"));
		
		s.setMovies(request.getParameter("movies"));
		s.setFitness(request.getParameter("fitness"));
		s.setInterest(request.getParameter("interest"));
		s.setLanguage(request.getParameter("language"));
		s.setSports(request.getParameter("sports"));
		



		
		
		int status =MatchDao.matchInfo(s);
		System.out.println(status);
		
		if(status>0)
		{
			response.sendRedirect("userWindow.jsp?msg1=Successfully Registered");
		}
		else
		{
			response.sendRedirect("hobbies.jsp?msg2=not Registered");
		}

		

	}
	
}



		
		
		
	


