
<%@page import="mm.db.Users"%>
<%@page import="mm.model.UsersDao"%>
<%@page import="mm.model.MatrimonyMailDao"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <script>
     function bigImg(x)
         {
            x.style.height = "150px";
           x.style.width = "150px";
         }

    function normalImg(x) 
    {
      x.style.height = "50px";
      x.style.width = "50px";
    }
</script>	
    

	<%
		String emailid = (String)session.getAttribute("emailid");
	ResultSet rs=MatrimonyMailDao.getOutboxMessageDetails(emailid);
	
		int n_inbox = MatrimonyMailDao.getRowsInbox(emailid);
		int n_outbox = MatrimonyMailDao.getRowsOutbox(emailid);
		
		
	%>
<div class="contact">
  <div class="container">
  	<%
  		if(n_outbox==0)
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
                <td><h4>NAME</h4></td> <td><h4>SUBJECT</h4></td> <td><h4>MESSAGE</h4></td> <td><h4>RECEIVER</h4></td> <td><h4>DATE</h4></td><td><h4>PHOTO</h4></td>
            </tr>
            
            
            <%
            	while(rs.next()) {
            		String name = rs.getString("name");
            		String receiver = rs.getString("receiver");
            		String date = rs.getString("msg_date");
            		String message = rs.getString("message");
            		String subject = rs.getString("subject");
            		Users u = new Users();
            		u.setEmailid(receiver);
            		String p1 = UsersDao.getPhotoPath(u);
            %>
            <%
        		String p2 = "profileimg/g.jpg";
           		
            %>
             <tr style="padding-left:15em">
                <td><h5><%=name%></h5></td> 
                <td><h5><%=subject%></h5></td> 
                <td><h5><%=message%></h5></td> 
                <td><h5><a href="viewProfile.jsp?emailid=<%=receiver%>"><%=receiver %></a></h5></td>
                <td><h5><%=date%></h5></td> 
                <td>
                	<%
                	if(p1 != null)
      	   		   	   out.println("<a href='viewProfile.jsp?emailid="+receiver+"'><img onmouseover='bigImg(this)' onmouseout='normalImg(this)' src='"+p1+"'class='img-rect' height='50px'/></a>");
      	   	   		else
      	   				out.println("<a href='viewProfile.jsp?emailid="+receiver+"'><img onmouseover='bigImg(this)' onmouseout='normalImg(this)' src='"+p2+"' class='img-rect' height='50px'/></a>");
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