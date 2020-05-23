package mm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mm.db.Feedback;
import mm.model.FeedbackDao;
import mm.model.UsersDao;

/**
 * Servlet implementation class UsersFeedback
 */
@WebServlet("/mm.controller.UsersFeedback")
public class UsersFeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsersFeedback() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	 
	Feedback uf = new Feedback();
	uf.setEmailid(request.getParameter("emailid"));
	uf.setName(request.getParameter("name"));
	uf.setSubject(request.getParameter("subject"));
	uf.setFeedback(request.getParameter("feedback"));
	

	

	int status =FeedbackDao.feedbackUsers(uf);
	System.out.println(status);
	
	if(status>0)
	{
		HttpSession session = request.getSession();
		session.setAttribute("emailid", request.getParameter("emailid"));
		response.sendRedirect("contact.jsp?msg1=Successfully Submited");
	}
	else
	{
		response.sendRedirect("contact.jsp?msg2=not Submited");
	}

	
	}

}
