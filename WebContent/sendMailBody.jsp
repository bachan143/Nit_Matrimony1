<%@page import="mm.model.UsersDao"%>
<%@page import="mm.db.Provider"%>
<%@page import="mm.db.Users"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.sun.corba.se.spi.legacy.connection.GetEndPointInfoAgainException"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <style>

</style>
<div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
      </div>
   <center>
   <font color:red; size:20>
   <%
          if(request.getParameter("msg")!=null)
        	  out.print(request.getParameter("msg"));
   
   %>
   </font>
   </center>
   <div class="services">
   
   <%
		String id=request.getParameter("emailid");
   		String msg = request.getParameter("msgstatus");
   		int msgstatus = 0;
   		if(msg != null)
			msgstatus=Integer.parseInt(request.getParameter("msgstatus"));
	%>

		  
   <%
	   	   
		    Users u1=new Users();
	
	   	   u1.setEmailid((String)session.getAttribute("emailid"));
	   	   	String p1 = UsersDao.getPhotoPath(u1);
	   	   	System.out.println (p1);
	   	   	String p2 = "profileimg/g.jpg";
	   	   %>
	   	   <%
	   	   if(p1 != null)
	   	   {
	   		   	   out.println("<img src='"+p1+"'class='img-rect' height='200px' width='200px'/>");
	   		    %>
	   		   	   <br>
	   		   	<%  
	   		   	out.print((String)session.getAttribute("emailid"));
	   		   	   Users u = UsersDao.getDetails(u1);
	   		   	   String name = u.getName() ;
	   		   	   out.println ("<br>"+name);

	   	   }
	   	   
	   	   else
	   	   {
	   		out.println("<img src='"+p2+"' class='img-rect' height='200px' width='200px'/>");
	   		Users u = UsersDao.getDetails(u1);
	   	   	String name = u.getName() ;
	   	   	out.println ("<br>"+name);

	   	 }
	   	 %>
				
		
	  
				</div>
				 
				 <div style="background-color:yellow; height: 200px;width: 200px;position:absolute;top:225px;right:10%;">
				
			<%
				Users u = new Users();
				u.setEmailid(request.getParameter("emailid"));
				
				
					String photos=UsersDao.getPhotoPath(u);
					if(photos == null)
					{

						Users u2 = UsersDao.getDetails(u);
				   	   	String name = u2.getName() ;
				   	   	 p1 = "profileimg/g.jpg";
				%>		 
						<td><%out.println("<img src='"+p1+"' class='img-rounded' height='200px' width='200px'/>"); %></td>
						<%=request.getParameter("emailid") %>
					<%=name %>
				<%
					
					}
					else
					{

						Users u2 = UsersDao.getDetails(u);
				   	   	String name = u2.getName() ;
				   	   	
						
				%>
					<td><%out.println("<img src='"+photos+"' class='img-rounded' height='200px' width='200px'/>"); %></td> 
					<%=request.getParameter("emailid") %>
					<%=name %>
													
				<%	
					
					}
				%>
				</div>	 
				 
				 
	
			 
				 

	  <div class="clearfix"> </div>
	  <br><br>
	 
	  
	  <%if(msgstatus==0) {%>
	  
			
		<%
			String status = request.getParameter("status");
			if(status == null)
			{				
			}
			else 
			{
				if(status . equals("1") )
					out.print("Mail Send Successfully ...");
				if(status . equals("0") )
					out.print("Error in sending ......");
				
			}
		%>
		
		
		  <div style="background-color:white; height: 300px;width: 500px;position:absolute;top:120px;right:32%;">
   
   <img src="images/7032.png" height="300px" width="500px">
   </div>
	  
		
	  <form action="mm.controller.SendMail?emailid=<%=request.getParameter("emailid")%>" method="post">
	  
	  
	  <div class="form-group">
		      <label for="edit-name">To <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="emailid" value=<%=request.getParameter("emailid") %> readonly="readonly" size="60" maxlength="60"  class="form-text required" placeholder="Your Name">
		    </div>
		    
		       <div class="form-group">
		      <label for="edit-name">Name <span class="form-required" title="This field is required.">*</span></label>
		      <textarea name="name" id="edit-name"  value="" height="300" maxlength="400" width="400" class="form-text required" placeholder="Your name"></textarea>
		    </div>
		    
				    <div class="form-group">
		      <label for="edit-name">Your Message <span class="form-required" title="This field is required.">*</span></label>
		      <textarea name="msg" id="edit-name"  value="" height="300" maxlength="400" width="400" class="form-text required" placeholder="Your Messege"></textarea>
		    </div>
		    
		    <div class="form-actions">
			    <input type="submit" id="edit-submit" name="submit" value="Send" class="btn_1 submit">
			  </div>
		</form>   
		<%
					}
				else {
					%>
					<div class ="container">
						<h3>Your message has been sent successfully.</h3>
					</div>
					<%
				}
				%> 
	  
	  
	
   </div>
  </div>
</div>