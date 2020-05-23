package mm.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mm.db.Family;

import mm.model.FamilyDao;

/**
 * Servlet implementation class Others
 */
@WebServlet("/mm.controller.Others")
public class Others extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Others() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{   
		PrintWriter out = response.getWriter();
		Family f =new Family();
		HttpSession session = request.getSession();
		f.setEmailid((String)session.getAttribute("emailid"));
		System.out.println(f.getEmailid());
		
		
		
		String eating_habit[]= request.getParameterValues("eating_habit");
		String s = "";
		for(int i = 0; i<eating_habit.length;i++)
		{
			
			s = s+" "+eating_habit[i];
		}
		System.out.println(s);
		String drinking_habit[]=request.getParameterValues("drinking_habit");
		String p = "";
		for(int i = 0; i<drinking_habit.length;i++)
		{
			
			p = p+" "+drinking_habit[i];
		}
		System.out.println(p);
		String smoking_habit[] = request.getParameterValues("smoking_habit");
		String q = "";
		for(int i = 0; i<smoking_habit.length;i++)
		{
			
			q = q+" "+smoking_habit[i];
		}
		System.out.println(q);
		
		f.setEating_habit(s);
		f.setDrinking_habit(p);
		f.setSmoking_habit(q);
		
		
		int status =FamilyDao.eatingMore(f);
		System.out.println(status);
		System.out.println(f.getEmailid());
		
		if(status>0)
		{
			response.sendRedirect("personalInfo.jsp?msg1=Successfully Registered");
		}
		else
		{
			response.sendRedirect("Others.jsp?msg2=not Registered");
		}
			
	}

	}


