package mm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mm.db.ChatUsers;
import mm.model.ChatUsersDao;

/**
 * Servlet implementation class Logout
 */
@WebServlet("/mm.controller.Logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logout() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	
	{
		HttpSession session = request.getSession();
		ChatUsers u = new ChatUsers();
		u.setEmail((String)session.getAttribute("emailid"));
		
		ChatUsersDao.doStatusInvalid(u);
		session.invalidate();
		
		response.sendRedirect("login.jsp");
	
	}

}
