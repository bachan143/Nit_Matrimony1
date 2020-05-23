<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
 
<%@page import="mm.model.HoroscopeDao"%>
<%@page import="mm.db.Horoscope"%>
<%@page import="mm.model.FamilyDao"%>
<%@page import="mm.db.Family"%>
<%@page import="mm.db.Match"%>
<%@page import="mm.model.MatchDao"%>
<%@page import="mm.model.UsersDao"%>
<%@page import="mm.db.Users"%>
<%
String emailid = (String)session.getAttribute("emailid");
	Users users = new Users();
	users.setEmailid(emailid);
	  	
	  	Family ff=FamilyDao.getDetails(users);


		String family_type=ff.getFamily_type();        
		String family_values=ff.getFamily_values();
		String family_sattus=ff.getFamily_status();
		String father_status=ff.getFather_status(); 		
		String mother_status=ff.getMother_status();       
		String brothers =ff.getBrothers();		    
		String  sisters =ff.getSisters();            
		String family_location =ff.getFamily_location();	
		String favourite_cousion=ff.getFavourite_cousion();    
		String about_family =ff.getAbout_family(); 		
		String phone=ff.getPhone();               
		String education_details=ff.getEducation_details();    
		String occupation_details=ff.getOccupation_details();    
		String eating_habit=ff.getEating_habit();         
		String drinking_habit=ff.getDrinking_habit(); 		
		String smoking_habit=ff.getSmoking_habit();        
		String district =ff.getDistrict();		    
		String state =ff.getState();
		String ancestral_origin=ff.getAncestral_origin(); 

	  	

	%>


  <div class="container">
   
<div style="background-color:yellow; height: 920px; width: 1370px; position:absolute; top:110px;right:0%;">
   
   <img src="images/7030.jpg" height="920px" width="1370px">
   </div>
  <div class="buttons">
				   <div class="vertical"><a href="editProfile.jsp">Update Profile</a></div>
				   <div class="vertical"><a href="editFamily.jsp">Update Family&Info</a></div>
				   <div class="vertical"><a href="editHoroscope.jsp">Horoscope Details Update</div>
				   <div class="vertical"><a href="editActivities.jsp">Update Other Activities</a></div>
				   
			   </div>
   <div class="grid_3">
     <div class="container">
     <div class="breadcrumb1">
 
	
	<form action="mm.controller.UpdateFamily" method="post" id="lform" >
		
   	  <div class="col-sm-10 login_right">
   	  <table>
   	  
   	  <tr>
	  	   
		     <td> <label for="edit-name">family Type <span class="form-required" title="This field is required.">*</span></label></td>
		     <td> <input type="text" id="edit-name" name="family_type" value="<%=ff.getFamily_type() %>" class="form-text required" ></td>
		  
		   </tr>
            
                 
               
		     
		     <tr>
	  	  
		      <td><label for="edit-name">family Status <span class="form-required" title="This field is required.">*</span></label></td>
		      <td><input type="text" id="edit-name" name="family_status" value="<%=ff.getFamily_status() %>" class="form-text required" ></td>
		    </tr>
		    
            
                 
		    
                                <tr>
                 
		      <td><label for="edit-name">family Values <span  title="This field is required.">*</span></label></td>
		      <td><input type="text" id="edit-name" name="family_values" value="<%=ff.getAbout_family()%>" class="form-text required"></td>
		    </tr>
		    
                               <tr>
                  
		      <td><label for="edit-name">Father Status <span  title="This field is required.">*</span></label></td>
		      <td><input type="text" id="edit-name" name="father_status" value="<%=ff.getFather_status() %>" class="form-text required" ></td>
		    </tr>
                
                <tr>
                 
		      <td><label for="edit-name">Mother Status <span  title="This field is required.">*</span></label></td>
		      <td><input type="text" id="edit-name" name="mother_status" value="<%=ff.getMother_status() %>" class="form-text required" ></td>
		   </tr>
		    
                                <tr>
           		
		      <td><label for="edit-name">Brothers <span  title="This field is required.">*</span></label></td>
		      <td><input type="text" id="edit-name" name="brothers" value="<%=ff.getBrothers() %>" class="form-text required" ></td>
		    </tr>
		    
                               <tr>
                  
		      <td><label for="edit-name">Sisters <span class="form-required" title="This field is required.">*</span></label></td>
		      <td><input type="text" id="edit-name" name="sisters" value="<%=ff.getSisters() %>" class="form-text required" ></td>
		    </tr>
		    
               
                 <tr>
                 
		      <td><label for="edit-name">family Location <span  title="This field is required.">*</span></label></td>
		     <td> <input type="text" id="edit-name" name="family_location" value="<%=ff.getAbout_family() %>" class="form-text required" ></td>
		    </tr>
		    
               
                 <tr>
                  
		      <td><label for="edit-name">favourite Cousin <span  title="This field is required.">*</span></label></td>
		      <td><input type="text" id="edit-name" name="favourite_cousion" value="<%=ff.getFavourite_cousion() %>" class="form-text required" ></td>
		    </tr>
		    
               
                 <tr>
                  
		      <td><label for="edit-name">Ancestral Origin <span  title="This field is required.">*</span></label></td>
		      <td><input type="text" id="edit-name" name="ancestral_origin" value="<%=ff.getAncestral_origin() %>" class="form-text required" ></td>
		    </tr>
		    
                               <tr>
                  
		      <td><label for="edit-name">About family <span  title="This field is required.">*</span></label></td>
		      <td><input type="text" id="edit-name" name="about_family" value="<%=ff.getAbout_family() %>" class="form-text required"></td>
		    </tr>
		    
                </div>
                  <div class="clearfix"> </div>
                 </div>
                 <tr>
                
		      <td><label for="edit-name">Phone  <span title="This field is required.">*</span></label></td>
		      <td><input type="text" id="edit-name" name="phone" value="<%=ff.getPhone() %>" class="form-text required" ></td>
		    </tr>
		    
                                 <tr>
                  		      <td><label for="edit-name">Education Details <span  title="This field is required.">*</span></label></td>
		      <td><input type="text" id="edit-name" name="education_details" value="<%=ff.getEducation_details() %>" class="form-text required" ></td>
		    </tr>
		    
               
                 <tr>
                  
		      <td><label for="edit-name">Occupation Details <span  title="This field is required.">*</span></label></td>
		      <td><input type="text" id="edit-name" name="occupation_details" value="<%=ff.getOccupation_details() %>" class="form-text required" ></td>
		    </tr>
		    
                
                 <tr>
                  
		      <td><label for="edit-name">Eating Habit <span  title="This field is required.">*</span></label></td>.
		      <td><input type="text" id="edit-name" name="eating_habit" value="<%=ff.getEating_habit() %>"  ></td>
		    </tr>
		    
                
                 <tr>		   <td>   <label for="edit-name">Drinking Habit <span  title="This field is required.">*</span></label></td>
		  <td>    <input type="text" id="edit-name" name="drinking_habit" value="<%=ff.getDrinking_habit() %>" ></td>
		    </tr>
		    
                               <tr>
                  
		      <td><label for="edit-name">Smoking Habit <span title="This field is required.">*</span></label></td>
		      <td><input type="text" id="edit-name" name="smoking_habit" value="<%=ff.getSmoking_habit() %>"></td>
		</tr>
		    
               
                <tr>
           		
		      <td><label for="edit-name">District  <span  title="This field is required.">*</span></label></td>
		      <td><input type="text" id="edit-name" name="district" value="<%=ff.getDistrict() %>" ></td>
		    </tr>
		    
                
                <tr>
		      <td><label for="edit-name">State<span  title="This field is required.">*</span></label></td>
		      <td><input type="text" id="edit-name" name="state" value="<%=ff.getState() %>" ></td>
		    </tr>
		    
               
                
                  
                
			  <tr>
			  <td colspan="2">  <input type="submit" id="edit-submit" name="submit" value="Submit" class="btn_1 submit"></td>
			  </div></tr>
			  </table>
		 </form>
		 </div>
		 </div>
		 </div>
		 </div>
		 </div>
	  
	  
	
	
		
	
		
		
		
		</div>