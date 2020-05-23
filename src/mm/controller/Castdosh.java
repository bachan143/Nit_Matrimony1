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
 * Servlet implementation class Castdosh
 */
@WebServlet("/mm.controller.Castdosh")
public class Castdosh extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Castdosh() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Horoscope h = new Horoscope();
		HttpSession session = request.getSession();
		h.setEmailid((String)session.getAttribute("emailid"));
		System.out.println(h.getEmailid());
		h.setCaste(request.getParameter("caste"));
		System.out.println("caste");
		h.setSub_caste(request.getParameter("sub_caste"));
		h.setDosh(request.getParameter("dosh"));
		h.setMarryother_communities(request.getParameter("marryother_communities"));

		
		
		int i =HoroscopeDao.registerCastedosh(h);
		System.out.println(i);
		System.out.println(h.getEmailid());
		
		if(i>0)
		{
			response.sendRedirect("details.jsp?msg1=Successfully Registered");
		}
		else
		{
			response.sendRedirect("castdoshSpecial.jsp?msg2=not Registered");
		}	
	}
}
