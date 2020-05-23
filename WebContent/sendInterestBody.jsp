
<%@page import="mm.db.MatrimonyMail"%>
<%@page import="mm.db.MatrimonyInterest"%>
<%@page import="mm.model.MatrimonyInterestDao"%>
<%@page import="mm.db.Users"%>
<%@page import="mm.model.UsersDao"%>
<%@page import="mm.model.MatrimonyMailDao"%>
<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

	<%
		String sender = (String)session.getAttribute("emailid");
		String receiver = request.getParameter("emailid");
		Users u = new Users();
		u.setEmailid(sender);
		String name = UsersDao.getName(u);
		MatrimonyInterest matrimonyInterest = new MatrimonyInterest();
		matrimonyInterest.setSender(sender);
		matrimonyInterest.setReceiver(receiver);
		matrimonyInterest.setName(name);
		int status = MatrimonyInterestDao.save(matrimonyInterest);
		if(status > 0)
		{
			// Display in  popup box 
			System.out.println ("Yes Successfuly sent ...");
			response.sendRedirect("www.google.co.in");
		}
		else
		{
			System.out.println ("Not Done ...");
		}
	%>
