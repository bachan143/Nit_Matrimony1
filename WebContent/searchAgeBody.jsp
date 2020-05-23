<%@page import="mm.db.Users"%>
<%@page import="mm.model.UsersDao"%>
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
        <li class="current-page">Search By Age</li>
     </ul>
   </div>
   <div class="col-md-9 profile_left">
   
    <form >	
	  <div class="age_select">
		      <label for="edit-pass"> Age from<span class="form-required" title="This field is required.">*</span></label>
		        <div class="age_grid">
		         <div class="col-sm-4 form_box">
                  <div class="select-block1">
                    <select name="agefrom">
                    
                    
	                   <option value="">Select</option>
	                    <option value="18">18</option>
	                    <option value="19">19</option>
	                    <option value="20">20</option>
	                    <option value="21">21</option>
	                    <option value="22">22</option>
	                    <option value="23">23</option>
	                    <option value="24">24</option>
	                    <option value="25">25</option>
	                    <option value="26">26</option>
	                    <option value="27">27</option>
	                    <option value="28">28</option>
	                    <option value="29">29</option>
	                    <option value="30">30</option>
	                    <option value="31">31</option>
	                    <option value="32">32</option>
	                    <option value="33">33</option>
	                    <option value="34">34</option>
	                    <option value="35">35</option>
	                    <option value="36">36</option>
	                    <option value="37">37</option>
	                    <option value="38">38</option>
	                    <option value="39">39</option>
	                    <option value="40">40</option>
	                    
                    </select>
                  </div>
            </div>
            </div>
            </div>
           <br>
            
                        <div class="age_select">
		      <label for="edit-pass"> To Age <span class="form-required" title="This field is required.">*</span></label>
		        <div class="age_grid">
		         <div class="col-sm-4 form_box">
                  <div class="select-block1">
                    <select name="ageto">
	                   <option value="">Select</option>
	                    <option value="18">18</option>
	                    <option value="19">19</option>
	                    <option value="20">20</option>
	                    <option value="21">21</option>
	                    <option value="22">22</option>
	                    <option value="23">23</option>
	                    <option value="24">24</option>
	                    <option value="25">25</option>
	                    <option value="26">26</option>
	                    <option value="27">27</option>
	                    <option value="28">28</option>
	                    <option value="29">29</option>
	                    <option value="30">30</option>
	                    <option value="31">31</option>
	                    <option value="32">32</option>
	                    <option value="33">33</option>
	                    <option value="34">34</option>
	                    <option value="35">35</option>
	                    <option value="36">36</option>
	                    <option value="37">37</option>
	                    <option value="38">38</option>
	                    <option value="39">39</option>
	                    <option value="40">40</option>
	                    
                    </select>
                  </div> 
            
           
 <div class="age_select">
<input type="submit" id="edit-submit" name="op" value="Submit" class="btn_1 submit">
			  </div>
		 </form>
	  </div>
	  
	   </div>
            </div>
           </div>
	  
   
 <div class="paid_people">
   <h1>Results</h1>
   
   
   
   
   
   </div>

</div>


   
      		
           <%
 			Connection con=Provider.getConnection();
 								
 			String p2 = "profileimg/g.jpg";
     		String agefrom=request.getParameter("agefrom");
     		String ageto=request.getParameter("ageto");
     		
		
			 Users u = new Users();
			u.setEmailid((String)session.getAttribute("emailid"));
			String gender=UsersDao.getGender(u);
			String sql= "select * from users where  age between ? and ? and gender!=?";
			PreparedStatement pst = con.prepareStatement(sql);
			
			pst.setString(1,agefrom);
			pst.setString(2,ageto);
			pst.setString(3, gender);
			
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
   
    





