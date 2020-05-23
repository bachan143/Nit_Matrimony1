<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
 
<%@page import="mm.model.HoroscopeDao"%>
<%@page import="mm.db.Horoscope"%>
<%@page import="mm.model.FamilyDao"%>
<%@page import="mm.model.UsersDao"%>
<%@page import="mm.db.Users"%>


<div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">

<div class="wrapper row3">
 <div style="background-color:white">
 <div class="buttons">
				   <div class="vertical"><a href="editProfile.jsp">Update Profile</a></div>
				   <div class="vertical"><a href="editFamily.jsp">Update Family&Info</a></div>
				   <div class="vertical"><a href="editHoroscope.jsp">Horoscope Details Update</div>
				   <div class="vertical"><a href="editActivities.jsp">Update Other Activities</a></div>
				   
			   </div>
 <br>
 <br>
 
 
	
<%
 	String emailid = (String)session.getAttribute("emailid");
	  	Users users = new Users();
	  	users.setEmailid(emailid);
	  	
	  	Horoscope hh=HoroscopeDao.getDetails(users);
		
	    String caste=hh.getCaste();
		String sub_caste=hh.getSub_caste();
		String rasi =hh.getRasi();
		String star=hh.getStar();
		String marryother_communities=hh.getMarryother_communities(); 
		String manglik=hh.getManglik();          
		String gotra =hh.getGotra();          
		String time_of_birth =hh.getTime_of_birth();    
		String place_of_birth =hh.getPlace_of_birth();
	
	%>
	<form action="mm.controller.UpdateHoroscope" method="post" id="lform" >
		<div class="services">
   	 
	  	    <div class="form-group">
		      <label for="edit-name">Caste<span  title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="caste" value="<%=hh.getCaste() %>" class="form-text required" >
		    </div>
		    
                  <div class="clearfix"> </div>
                 </div>
                
                
                          
                  <div class="clearfix"> </div>
                 </div>
              </div> <div class="form-group">
		      <label for="edit-name">Sub Caste <span  title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="sub_caste" value="<%=hh.getSub_caste() %>" class="form-text required" >
		    </div>	 		 
                
            <div class="form-group">
		      <label for="edit-name">Dosh<span title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="dosh" value="<%=hh.getDosh() %>" class="form-text required" >
		    </div>
            
                <div class="form-group">
		      <label for="edit-name">Mangkil <span  title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="manglik" value="<%=hh.getManglik() %>" class="form-text required" >
		    </div>
		    
                
                  <div class="clearfix"> </div>
                
                
                
                          
                  <div class="clearfix"> </div>
                      
                 <div class="form-group">
		      <label for="edit-name">Gothra<span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="gotra" value="<%=hh.getGotra() %>" class="form-text required" >
		    </div>
		    
                
                <div class="form-group">
		      <label for="edit-name">Star<span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="star" value="<%=hh.getStar() %>" class="form-text required" >
		    </div>
		    
               
                <div class="form-group">
		      <label for="edit-name">Rasi <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="rasi" value="<%=hh.getRasi() %>" class="form-text required" >
		    </div>
		    
                <
                <div class="form-group">
		      <label for="edit-name">Time of birth<span title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="time_of_birth" value="<%=hh.getTime_of_birth() %>" class="form-text required" >
		    </div>
		    
                
                <div class="form-group">
		      <label for="edit-name">Place of Birth <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="place_of_birth" value="<%=hh.getPlace_of_birth()%>" class="form-text required" >
		    </div>
		    
                            		  <div class="form-actions">
			    <input type="submit" id="edit-submit" name="submit" value="Submit" class="btn_1 submit">
			  </div>
		 </form>
	  </div>               
               
              
	  
	  
	  
	  <div class="clearfix"> </div>
	  
	  <div class="clearfix"> </div>
	  <div class="clearfix"> </div>
	  <div class="clearfix"> </div>
	  <div class="clearfix"> </div>
		
	
		
		</div>
		</div>
		</div>
		</div>