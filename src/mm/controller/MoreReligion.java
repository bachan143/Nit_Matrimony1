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
 * Servlet implementation class MoreReligion
 */
@WebServlet("/mm.controller.MoreReligion")
public class MoreReligion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MoreReligion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		Horoscope r = new Horoscope();
		HttpSession session = request.getSession();
		r.setEmailid((String)session.getAttribute("emailid"));
		r.setStar(request.getParameter("star"));
		r.setRasi(request.getParameter("rasi"));
		r.setGotra(request.getParameter("gotra"));
		r.setManglik(request.getParameter("manglik"));
		r.setTime_of_birth(request.getParameter("time_of_birth"));
		r.setPlace_of_birth(request.getParameter("place_of_birth"));
		
		
		int x =HoroscopeDao.religionMore(r);
		System.out.println(x);
		
		if(x>0)
		{
			response.sendRedirect("hobbies.jsp?msg1=Successfully Registered");
		}
		else
		{
			response.sendRedirect("religion.jsp?msg2=not Registered");
		}

		

	}
	
	}

