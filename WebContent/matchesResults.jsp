<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="mm.model.UsersDao"%>
<%@page import="mm.db.Users"%>
<%@page import="mm.db.Provider"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.Connection"%>

  <div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
     <ul>
        <a href="index.jsp"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page">Find Matches</li>
     </ul>
   </div>

  <h1>
   &nbsp;&nbsp;
  <u>
      Matches Results:
  </u>
  </h1>
     <%
 Connection con=Provider.getConnection();
 String religion,mother_tounge;
 String p2 = "profileimg/g.jpg";
	
	religion = request.getParameter("religion");
	mother_tounge = request.getParameter("mother_tounge");
     String agefrom=request.getParameter("agefrom");
     String ageto=request.getParameter("ageto");
	

	
	System.out.println(religion +" "+mother_tounge+" "+agefrom+" "+ageto);
	Users u =new Users();
	u.setEmailid((String)session.getAttribute("emailid"));
	String gender=UsersDao.getGender(u);
	String sql= "select * from users where  religion=? AND  mother_tounge = ? AND age between ? and ? and gender!=?";
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setString(1,religion);
	pst.setString(2,mother_tounge);
	pst.setString(3, agefrom);
	pst.setString(4, ageto);
	pst.setString(5, gender);
	
	ResultSet rs = pst.executeQuery();
	if(true) 
	{
	while(rs.next())
	{
		System.out.println ("================");
	String path = rs.getString("photos");
	String	name=rs.getString("name");
	String	age=rs.getString("age");
	String	emailid=rs.getString("emailid");
   
   
	if(path != null)
	{
		//out.println("<img src='"+path+"' class='img-rounded' height='300px'/>");
	%>
	  <div class="profile_top">
	  
	  <%
	  out.println ("<a href='viewProfile.jsp?emailid="+emailid+"'>");
	  
	  %> 
	     
	    <div class="col-sm-3 profile_left-top">
	    	<%out.println("<img src='"+path+"' class='img-rounded' height='150px'/>"); %>
	  
	    </div>
	    <div class="col-sm-3">
	  
	    </div>
	  
		   <div class="buttons">
			   <div class="vertical">Send Mail</div>
			   <div class="vertical">View Profile</div>
			   <div class="vertical">Send Interest</div>
			   </a>
		   </div>
		Name:-<%=name %><br>
	   
	    Age	:-<%=age %><br>
	    Email Id:-<%=emailid %>
	    </div>
	    
	    </div>
	   <br><br><br>
<%
	}
 else
 {
	 %>
	 <div class="profile_top">
	 <% 
	 
	 out.println ("<a href='view_profile.jsp?emailid="+emailid+"'>");
	 %>
	 <div class="col-sm-3 profile_left-top">
	 <% 
   		out.println("<img src='"+p2+"' class='img-rounded' height='150px'/>");
   	
   %>
   </div>
   
       <div class="col-sm-3">
	  
	    </div>
   
   	  <div class="buttons">
	   <div class="vertical">Send Mail</div>
	   <div class="vertical">View Profile</div>
	   <div class="vertical">Send Interest</div>
	   </a>
   </div>
   

	  
Name:-<%=name %><br>
Age	:-<%=age %><br>
Email Id:-<%=emailid %>
</div>
<br><br><br>
<%
 }

}

}
	else
	{
		out.print("<h1>No Result Found</h1>");
		
	}


%>
  
</div>