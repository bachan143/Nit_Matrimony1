
<%@page import="mm.model.MatrimonyInterestDao"%>
<%@page import="mm.db.Users"%>
<%@page import="mm.model.UsersDao"%>
<%@page import="mm.model.MatrimonyMailDao"%>
<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

	<%
		String emailid = (String)session.getAttribute("emailid");
		ResultSet rs=MatrimonyInterestDao.getInterests(emailid);
	
		int n_inbox = MatrimonyInterestDao.getRowsInbox(emailid);
		int n_outbox = MatrimonyInterestDao.getRowsOutbox(emailid);
		
		
	%>
<div class="contact">
  <div class="container">
  	<%
  		if(n_inbox==0)
		{
  	%>
  		<h3>Sorry, You have no messages</h3>
  	<%
  		}
  		else {
  	%>
  		
        <h3>Messages</h3>
        <table class="table">
            
            <tr style="padding-left:15em">
                <td><h4>NAME</h4></td> <td><h4>SENDER EMAIL-ID</h4></td><td><h4>PHOTO</h4></td>
            </tr>
            
            
            <%
            	while(rs.next()) {
            		String name = rs.getString("name");
            		String sender = rs.getString("sender");
            		Users u = new Users();
            		u.setEmailid(sender);
            		String p1 = UsersDao.getPhotoPath(u);
            %>
            <%
        		String p2 = "profileimg/g.jpg";
           		
            %>
             <tr style="padding-left:15em">
                <td><h5><%=name%></h5></td> 
                <td><h5><a href="viewProfile.jsp?emailid=<%=sender%>"><%=sender%></a></h5></td>
                <td>
                	<%
                	if(p1 != null)
      	   		   	   out.println("<a href='viewProfile.jsp?emailid="+sender+"'><img src='"+p1+"'class='img-rect' height='50px'/></a>");
      	   	   		else
      	   				out.println("<a href='viewProfile.jsp?emailid="+sender+"'><img src='"+p2+"' class='img-rect' height='50px'/></a>");
                	%>
                
                </td>
            </tr>
            <%
            	}
  			}	
            %>
        </table>
    </div>
    </div>