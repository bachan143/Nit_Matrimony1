<%@page import="mm.db.Users"%>
<%@page import="mm.model.UsersDao"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>

<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <script>
function bigImg(x) {
    x.style.height = "150px";
    x.style.width = "150px";
}

function normalImg(x) {
    x.style.height = "50px";
    x.style.width = "50px";
}
</script>	

 </style>
 <script type="text/javascript" src="js/animation.js">
</script>   
 <div class="grid_3">
  <div class="container">
   
	   <div class="breadcrumb1">
	      <ul>
	        <a href="index.html"><i class="fa fa-home home_1"></i></a>
	        <span class="divider">&nbsp;|&nbsp;</span>
	        <li class="current-page">Profile</li>
	      </ul>
	   </div>
  <div class="col-md-9 profile_left1">
  
  	<%! int total=3;
	int c = 1 ; 
	
	 %>
	<%
		int pageNumber=Integer.parseInt(request.getParameter("page"));
		String emailid = (String)session.getAttribute("emailid");
		Users u = new Users();
		u.setEmailid(emailid);		
		
		String gender=UsersDao.getGender(u);
		u.setGender(gender);
		int pageid = Integer.parseInt(request.getParameter("page"));
		if(pageid == 1)
		{
			// Do nothing 
		}
		else
		{
			pageid=pageid * total-2;
			// Do something 
		}
		int count_rec = UsersDao.getNoOfRecords(u);
		
		int noofpages = (int)Math.ceil (count_rec/3.0);
		System.out.println (noofpages +"\t"+count_rec);
		
		List<Users> list = UsersDao.getDetailsForPage(gender,pageid,pageid+2);
		out.println ("<h1>PAGE NUMBER : "+pageNumber+"<h1>");
		
  %>
  	<h1>Shortlisted profile</h1>
  	
  	
  
   <%
   	   Users u1 = new Users();
   	  // u1.setEmailid((String)session.getAttribute("emailid"));
   	   
   	    String p2 = "profileimg/g.jpg";
   	  	String path="";
   	  	String name="";
   	  	String age="";
   	  	emailid="";
   	  	/* String sex=UserDao.getSex((String)session.getAttribute("emailid"));
	    String sql="select photo,name,sex,age,emailid from users where sex !=?";
	    Connection con=Provider.getConnection();
	    PreparedStatement pst=con.prepareStatement(sql);
		pst.setString(1, sex);
		ResultSet rs=pst.executeQuery();
		while(rs.next())
	
		{
			path = rs.getString("photo");
			name=rs.getString("name");
			sex=rs.getString("sex");
			age=rs.getString("age");
			emailid=rs.getString("emailid"); */
			
			for(Users u2 : list)
			{
				path = u2.getPhotos();
				name = u2.getName();
				gender = u2.getGender();
				age = u2.getAge();
				emailid=u2.getEmailid();
			
				
			if(path != null)
				{
					//out.println("<img src='"+path+"' class='img-rounded' height='300px'/>");
				%>
				
				  <div class="profile_top">
				  
				  
				  
				  <%
				  out.println ("<a href='viewProfile.jsp?emailid="+emailid+"'>");
				  
				  %> 
				     
				    <div class="col-sm-3 profile_left-top">
				    
				    	<%out.println("<img  src='"+path+"' class='img-rounded' height='150px' width='150px' />"); %>
				    </div>
				    <div class="col-sm-3">
				  			
				  
				    </div>
				  
				<div class="buttons">
				   <div class="vertical"><a href="sendMail.jsp?emailid=<%=emailid %>">Send Mail</a></div>
				   <div class="vertical"><a href="viewProfile.jsp?emailid=<%=emailid %>">View Profile</a></div>
				   <div class="vertical"><a href="mm.controller.SendInterest?emailid=<%=emailid %>">Send Interest</div>
				   <div class="vertical"><a href="sendMessage.jsp?emailid=<%=emailid %>">Send Message</a></div>
			   </div>
					Name:-<%=name %><br>
				    Gender :-<%=gender %><br>
				    Age	:-<%=age %><br>
				    Email Id:-<%=emailid %>
				    </div>
				   <br><br><br>
	  <%
				}
			 else
			 {
				 %>
				 <div class="profile_top">
				 <% 
				 
				 out.println ("<a href='viewProfile.jsp?emailid="+emailid+"'>");
				 %>
				 <div class="col-sm-3 profile_left-top">
				 <% 
			   		out.println("<img  src='"+p2+"' class='img-rounded' height='150px' widh='150px'/>");
			   	
			   %>
			   </div>
			   
			       <div class="col-sm-3">
				  
				 
				 <div class="buttons">
				   <div class="vertical"><a href="sendMail.jsp?emailid=<%=emailid %>">Send Mail</a></div>
				   <div class="vertical"><a href="viewProfile.jsp?emailid=<%=emailid %>">View Profile</a></div>
				   <div class="vertical"><a href="mm.controller.SendInterest?emailid=<%=emailid %>">Send Interest</div>
				   <div class="vertical"><a href="sendMessage.jsp?emailid=<%=emailid %>">Send Message</a></div>
			   </div>
					Name:-<%=name %><br>
				    Gender :-<%=gender %><br>
				    Age	:-<%=age %><br>
				    Email Id:-<%=emailid %>
				    </div>		   <br><br><br>
		    <%
		    }
		}
		


			c = 1;
			for(int i=1 ; i <= noofpages; i++)
			{
				out.println("<a href='matches.jsp?page="+c+"'>"+c+"</a>");
				if(c <= noofpages)
					c++;
			}
			
		%>
   	  
   	   
   	   </div>
     
   
  
  
  	
    <div class="profile_top"><a href="view_profile.jsp"> 
     
	    <div class="col-sm-3 profile_left-top">
	    	<!-- <img src="+p1+"> -->
	    </div>
	    
	   
	  
		    <!-- <div class="buttons">
			   <div class="vertical">Send Mail</div>
			   <div class="vertical">Shortlisted</div>
			   <div class="vertical">Send Interest</div>
		   </div>  -->
	    
	    <div class="clearfix"> </div>
    </a></div>
 </div>
</div>
</div>