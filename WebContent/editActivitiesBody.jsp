
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
 
<%@page import="mm.model.MatchDao"%>
<%@page import="mm.db.Match"%>
<%@page import="mm.db.Users"%>



 
 
             
 
	
<%
String emailid = (String)session.getAttribute("emailid");
	Users users = new Users();
	users.setEmailid(emailid);
	  	
	  	Match view=MatchDao.getDetails(users);

	  	String hobbies=view.getHobbies();
	  	String interest=view.getInterest();
	  	String like_to_do=view.getLike_to_do();
	  	String prefer_style=view.getPrefer_style();
	  	
	  	String songs=view.getSongs();
	  	String movies=view.getMovies();
	  	String sports=view.getSports();
	  	String fitness=view.getFitness();
	 
	  	String what_in_partner=view.getWhat_in_partner();
	  	String resident_state=view.getResident_state();
	  	String citizenship=view.getCitizenship();
	  	String bride_age=view.getBride_age();
	  	
	  	String groom_age=view.getGroom_age();
	  	String about_partner=view.getAbout_partner();
	  	String language=view.getLanguage();
	  		  	

	%>
	<div>
	<div>
	<div class="grid_3">
  <div class="container">
   <div class="breadcrumb1">
	
	 <div class="buttons">
				   <div class="vertical"><a href="editProfile.jsp">Update Profile</a></div>
				   <div class="vertical"><a href="editFamily.jsp">Update Family&Info</a></div>
				   <div class="vertical"><a href="editHoroscope.jsp">Horoscope Details Update</div>
				   <div class="vertical"><a href="editActivities.jsp">Update Other Activities</a></div>
				   
			   </div>
			   
			   <div class="clearfix"> </div>
		 <div class="clearfix"> </div>
		 <br>
		 <br>
	
	<form action="view.controller.UpdateMatch" method="post" id="lform" >
		<div class="services">
   	  <div class="col-sm-6 login_left">
	     
	  	    <div class="form-group">
		      <label for="edit-name">Hobbies <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="hobbies" value="<%=view.getHobbies() %>" class="form-text required" >
		    </div>
		    
                                 <div class="form-group">
		      <label for="edit-name">Interest  <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="interest" value="<%=view.getInterest() %>" class="form-text required" >
		    </div>
		    
                               <div class="form-group">
		      <label for="edit-name">Like To Do  <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="like_to_do" value="<%=view.getLike_to_do() %>" class="form-text required" >
		    </div>
		    
                 <div class="form-group">
		      <label for="edit-name">Prefer Style <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="prefer_style" value="<%=view.getPrefer_style() %>" class="form-text required" >
		    </div>
		               		 <div class="form-group">
		      <label for="edit-name">Songs <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="songs" value="<%=view.getSongs() %>" class="form-text required" >
		    </div>
		                      <div class="form-group">
		      <label for="edit-name">Movies <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="movies" value="<%=view.getMovies() %>" class="form-text required" >
		    </div>
		                      <div class="form-group">
		      <label for="edit-name">Sports  <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="sports" value="<%=view.getSports() %>" class="form-text required" >
		    </div>
		    
                  <div class="form-group">
		      <label for="edit-name">Fitness <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="fitness" value="<%=view.getFitness() %>" class="form-text required" >
		    </div>
		    
                                <div class="form-group">
		      <label for="edit-name">What In Partner  <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="what_in_partner" value="<%=view.getWhat_in_partner() %>" class="form-text required" >
		    </div>
		    
                                <div class="form-group">
		      <label for="edit-name">Resident State  <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="resident_state" value="<%=view.getResident_state() %>" class="form-text required" >
		    </div>
		                      <div class="form-group">
		      <label for="edit-name">Citizenship  <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="citizenship" value="<%=view.getCitizenship() %>" class="form-text required" >
		    </div>                 
                                   
                  <div class="form-group">
		      <label for="edit-name">About Partner <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="about_partner" value="<%=view.getAbout_partner() %>" class="form-text required" >
		    </div>
		    
                  <div class="form-group">
		      <label for="edit-name">Language <span class="form-required" title="This field is required.">*</span></label>
		      <input type="text" id="edit-name" name="language" value="<%=view.getLanguage() %>" class="form-text required" >
		    </div>
		    
                
                  
                
			  
			  <div class="form-actions">
			    <input type="submit" id="edit-submit" name="submit" value="Submit" class="btn_1 submit">
			  </div>
		 </form>
	  </div>
		
	
	 <!--   <div style="height: 450px;width: 450px; background-color: red; margin: 0 auto; position:50px,150px;">
	  	 
	  
	  </div> -->
	  
	  
	  
	  <div class="clearfix"> </div>
		 <div class="clearfix"> </div>
		  <div class="clearfix"> </div>
		  <div class="clearfix"> </div>
		  <div class="clearfix"> </div>
	
		
		
		</div>
		</div>
		</div>
		</div>
		</div>