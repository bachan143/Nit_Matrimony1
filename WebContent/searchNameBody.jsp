<%@page import="mm.model.UsersDao"%>
<%@page import="mm.db.Users"%>
<%@page import="mm.db.Provider"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
     <ul>
        <a href="index.jsp"><i class="fa fa-home home_1"></i></a>
        <span class="divider">&nbsp;|&nbsp;</span>
        <li class="current-page">Search By Profile Name</li>
     </ul>
   </div>
   <div class="col-md-9 profile_left">
   
    <form >	
	  <div class="form_but1">
		<label class="col-sm-5 control-lable1" >Profile Name : </label>
		<div class="col-sm-7 form_radios">
		  <div class="input-group1">
	        <input type="text" name="name" placeholder="Enter Name">
	        <input type="submit" value="Submit">
	      </div>
	    </div>
		<div class="clearfix"> </div>
	 </div>
    </form>
 <div class="paid_people">
   <h1>Results</h1>
   
   
 

   
   
    




</div>

</div>

</div>


  <%
  Connection con=Provider.getConnection();
  String name1=request.getParameter("name");
  String name2 = name1+"%";
  Users u = new Users();
  u.setEmailid((String)session.getAttribute("emailid"));
  String gender=UsersDao.getGender(u);
  String p2 = "profileimg/g.jpg";
  String sql="select * from users where lower (name) like lower(?) and gender!=?";
  PreparedStatement pst=con.prepareStatement(sql);
  pst.setString(1,name2);
  pst.setString(2, gender);
	ResultSet rs = pst.executeQuery();
	if(true) 
	{
	while(rs.next())
	{
	String path = rs.getString("photos");
	String	name=rs.getString("name");
	 gender=rs.getString("gender");
	String	age=rs.getString("age");
	String	emailid=rs.getString("emailid");
   
   
	if(path != null)
	{
		//out.println("<img src='"+path+"' class='img-rounded' height='300px'/>");
	%>
	  <div class="profile_top">
	  
	  <%
	  out.println ("<a href='view_profile.jsp?emailid="+emailid+"'>");
	  
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
	    Sex :-<%=gender %><br>
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
Gender :-<%=gender%><br>
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


